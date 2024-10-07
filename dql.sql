use videojuegos;

-- 1. Listar todos los videojuegos de una plataforma específica (por ejemplo, "PlayStation").
delimiter //
create procedure if not exists videojuegosPlataforma (in plataforma varchar(15))
begin
	select productos.nombre, productos.descripcion, productos.precio, group_concat(generos.nombre separator ', ') as generos from videojuegos
    join productos on videojuegos.id = productos.id
    join vid_genero on videojuegos.id = vid_genero.id_videojuego
    join generos on vid_genero.id_genero = generos.id
    where videojuegos.plataforma = plataforma
    group by videojuegos.id;
end //
delimiter ;
-- playstation, xbox, nintendo, steam, epic
call videojuegosPlataforma("playstation");

-- 2. Obtener todos los productos en una categoría (videojuegos, consolas o accesorios) cuyo stock sea inferior a un valor dado.

delimiter //
create procedure if not exists productosCategoriaStock (in stock int, in categoria varchar(15))
begin
	case categoria
    when "videojuegos" then 
		select productos.nombre, productos.descripcion, productos.precio, group_concat(generos.nombre separator ', ') as generos from videojuegos
		join productos on videojuegos.id = productos.id
		join vid_genero on videojuegos.id = vid_genero.id_videojuego
		join generos on vid_genero.id_genero = generos.id
		where productos.stock < stock
		group by videojuegos.id;
	when "consolas" then
		select productos.nombre, productos.descripcion, productos.precio, consolas.plataforma, consolas.generacion from consolas
		join productos on consolas.id = productos.id
		where productos.stock < stock;
	when "accesorios" then
		select productos.nombre, productos.descripcion, productos.precio, accesorios.tipo from accesorios
		join productos on accesorios.id = productos.id
		where productos.stock < stock;
	else 
		select 'Categoria no valida' as Error;
    end case;
end //
delimiter ;
-- videojuegos, consolas, accesorios
call productosCategoriaStock(20,"consolas");

--- 3. Mostrar todas las ventas realizadas por un cliente específico en un rango de fechas.

delimiter //
create procedure if not exists ventasClienteFechas(in idCliente int, in fechaInicio date, in fechaFin date)
begin
	select clientes.nombre, facturas.fecha, group_concat(concat(productos.nombre,": ",ventas.cantidad) separator ', ') as ventas from facturas
    join clientes on facturas.id_cliente = clientes.id
    join ventas on facturas.id = ventas.id_factura
    join productos on ventas.id_producto = productos.id
    where clientes.id = idCliente and facturas.fecha >= fechaInicio and facturas.fecha <= fechaFin
    group by facturas.id;
end //
delimiter ;
call ventasClienteFechas(1,"2023-10-01", "2023-10-31");

-- 4. Calcular el total de ventas de un empleado en un mes dado.

DROP FUNCTION IF EXISTS ventasEmpleadoMes;
DELIMITER //
CREATE FUNCTION ventasEmpleadoMes(idEmpleado INT, mes INT)
RETURNS INT
reads sql data
BEGIN 
    DECLARE totalVentas INT;
    SELECT count(ventas.id_factura) into totalVentas
    FROM facturas
    JOIN ventas ON ventas.id_factura = facturas.id
    where facturas.id_empleado = idEmpleado
    group by facturas.id_empleado;
    RETURN totalVentas;
END //

DELIMITER ;

SELECT distinct facturas.id_empleado, ventasEmpleadoMes(facturas.id_empleado,10) from facturas;

-- 5. Listar los productos más vendidos en un período determinado.

SELECT 
    p.nombre AS producto, 
    SUM(v.cantidad) AS total_vendido
FROM 
    ventas v
JOIN 
    facturas f ON v.id_factura = f.id
JOIN 
    productos p ON v.id_producto = p.id
WHERE 
    f.fecha BETWEEN '2024-01-01' AND '2024-12-31' -- Ajusta las fechas según el período deseado
GROUP BY 
    p.nombre
ORDER BY 
    total_vendido DESC;

-- 6. Consultar el stock disponible de un producto por su nombre.

DELIMITER //
CREATE FUNCTION stockProductoXnombre (nombreProducto varchar(50))
RETURNS int
reads sql data
BEGIN
    DECLARE stockProducto int;
    
    select productos.stock into stockProducto
	from productos
	where productos.nombre = nombreProducto;
        
    RETURN stockProducto;
END //;
DELIMITER ;

select stockProductoXnombre("Halo Infinite") as CantidadStock;

-- 7. Mostrar las órdenes de compra realizadas a un proveedor específico en el último año.

DELIMITER $$

CREATE PROCEDURE ordenesCompraProveedorAñoActual(
    IN nombreProveedor varchar(50)
)
BEGIN
	SELECT proveedores.nombre_empresa, compra.id as idCompra, compra.id_producto, compra.fecha, compra.cantidad
    FROM compra
    join proveedores on proveedores.id = compra.id_proveedor
    WHERE proveedores.nombre_empresa = nombreProveedor
    AND compra.fecha >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

END $$

DELIMITER ;

CALL ordenesCompraProveedorAñoActual("TechGaming");

-- 8. Listar los empleados que han trabajado más de un año en la tienda.

DELIMITER $$

CREATE PROCEDURE empleadosMasDeUnAño()
BEGIN
	SELECT empleados.nombre, empleados.fecha_contratacion as FechaContratacion, empleados.puesto
    FROM empleados
    WHERE (TIMESTAMPDIFF(YEAR, empleados.fecha_contratacion, CURDATE()) >= 1) ;

END $$

DELIMITER ;

CALL empleadosMasDeUnAño();

-- 9. Obtener la cantidad total de productos vendidos en un día específico.

DELIMITER //
CREATE FUNCTION cantidadProductosDiaEspecifico (fechaEspecifica date)
RETURNS int
reads sql data
BEGIN
    DECLARE cantidadProductos int;
    
    select sum(ventas.cantidad) into cantidadProductos
	from facturas
    join ventas on facturas.id = ventas.id_factura
	where facturas.fecha = fechaEspecifica;
        
    RETURN IFNULL(cantidadProductos, 0);
END //;
DELIMITER ;

select cantidadProductosDiaEspecifico("2023-10-3") as CantidadProductosVendidos;

-- 10. Consultar las ventas de un producto específico (por nombre o ID) y cuántas unidades se vendieron.

DELIMITER //
CREATE FUNCTION unidadesVendidasProducto (nombreProducto varchar(50))
RETURNS int
reads sql data
BEGIN
    DECLARE unidadesVendidas int;
    
    select sum(ventas.cantidad) into unidadesVendidas
	from ventas
    join productos on ventas.id_producto = productos.id
    where productos.nombre = nombreProducto
    ;
    
    RETURN IFNULL(unidadesVendidas, 0);
END //;
DELIMITER ;

select unidadesVendidasProducto("PlayStation 2") as CantidadProductosVendidos;
