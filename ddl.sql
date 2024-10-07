drop database if exists videojuegos;
create database videojuegos;
use videojuegos;

create table generos(
    id int primary key auto_increment,
    nombre varchar(50) unique
);

create table productos(
    id int primary key auto_increment,
    nombre varchar(50),
    descripcion varchar(200),
    categoria enum("videojuego","consola","accesorio"),
    precio double(7, 2),
    stock int,
    check (stock >= 0),
    check (precio >= 0)
);

create table videojuegos(
    id int primary key,
    plataforma enum("xbox","nintendo","playstation","steam","epic"),
    pegi enum("3","4","6","7","12","16","18"),
    foreign key (id) references productos(id)
);

create table vid_genero(
    id_videojuego int,
    id_genero int,
    primary key (id_videojuego, id_genero),
    foreign key (id_videojuego) references videojuegos(id),
    foreign key (id_genero) references generos(id)
);

create table consolas(
    id int primary key,
    plataforma enum("xbox","nintendo","playstation","steam"),
    generacion int(2),
    check (generacion > 0),
    foreign key (id) references productos(id)
);

create table accesorios(
    id int primary key,
    tipo enum("anillo","collar","figura","llavero","pin"),
    foreign key (id) references productos(id)
);

create table clientes(
    id int primary key auto_increment,
    nombre varchar(50),
    correo varchar(50) unique,
    telefono varchar(15)
);

create table empleados(
    id int primary key auto_increment,
    nombre varchar(50),
    puesto enum("vendedor","inventario"),
    fecha_contratacion date
);

create table facturas(
    id int primary key auto_increment,
    id_cliente int,
    id_empleado int,
    fecha date,
    foreign key (id_cliente) references clientes(id),
    foreign key (id_empleado) references empleados(id)
);

create table ventas(
    id_factura int,
    id_producto int,
    cantidad int,
    primary key (id_factura, id_producto),
    foreign key (id_factura) references facturas(id),
    foreign key (id_producto) references productos(id)
);

create table proveedores(
    id int primary key auto_increment,
    nombre_empresa varchar(50),
    nombre_contacto varchar(60),
    telefono varchar(15),
    direccion varchar(50),
    UNIQUE (nombre_empresa, nombre_contacto)
);

create table compra(
    id int primary key auto_increment,
    id_proveedor int,
    id_producto int,
    fecha date,
    cantidad int,
    foreign key (id_proveedor) references proveedores(id),
    foreign key (id_producto) references productos(id)
);