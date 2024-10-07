INSERT INTO productos (nombre, descripcion, categoria, precio, stock) VALUES
('PlayStation 1', 'La consola original de PlayStation lanzada en 1994.', 'consola', 99.99, 50),
('PlayStation 2', 'La consola más vendida de todos los tiempos, lanzada en 2000.', 'consola', 149.99, 30),
('PlayStation 3', 'Una consola potente con soporte para Blu-ray, lanzada en 2006.', 'consola', 249.99, 20),
('PlayStation 4', 'Una consola muy popular con una vasta biblioteca de juegos, lanzada en 2013.', 'consola', 299.99, 15),
('PlayStation 5', 'La consola de última generación con gráficos y velocidad avanzados, lanzada en 2020.', 'consola', 499.99, 10),
('Xbox', 'La consola original de Xbox lanzada en 2001.', 'consola', 149.99, 40),
('Xbox 360', 'Consola popular de la séptima generación, lanzada en 2005.', 'consola', 199.99, 25),
('Xbox One', 'Consola de octava generación con capacidades multimedia, lanzada en 2013.', 'consola', 299.99, 20),
('Xbox Series X', 'La consola más poderosa de Xbox, lanzada en 2020.', 'consola', 499.99, 15),
('Xbox Series S', 'Versión más compacta y asequible de la serie X, lanzada en 2020.', 'consola', 299.99, 10),
('Nintendo Entertainment System (NES)', 'Consola clásica lanzada en 1983 que revitalizó la industria de los videojuegos.', 'consola', 199.99, 30),
('Super Nintendo Entertainment System (SNES)', 'Secuela de la NES, lanzada en 1990, famosa por sus grandes juegos.', 'consola', 249.99, 25),
('Nintendo 64', 'Consola de 64 bits lanzada en 1996, conocida por sus innovadores gráficos en 3D.', 'consola', 199.99, 20),
('Nintendo GameCube', 'Consola lanzada en 2001 con juegos en formato de disco y multijugador local.', 'consola', 149.99, 15),
('Nintendo DS', 'Consola portátil de doble pantalla lanzada en 2004, popular por su innovador diseño.', 'consola', 149.99, 20),
('Nintendo Wii', 'Consola innovadora lanzada en 2006 que popularizó los controles de movimiento.', 'consola', 249.99, 10),
('Nintendo 3DS', 'Consola portátil que ofrece gráficos en 3D sin gafas, lanzada en 2011.', 'consola', 249.99, 12),
('Nintendo Wii U', 'Consola con un controlador único, lanzada en 2012, que permite juegos en pantalla táctil.', 'consola', 299.99, 8),
('Nintendo Switch', 'Consola híbrida lanzada en 2017 que se puede usar en modo portátil o conectado al televisor.', 'consola', 399.99, 12),
('Steam Deck', 'Consola portátil de videojuegos desarrollada por Valve, lanzada en 2022, permite jugar a juegos de PC.', 'consola', 399.99, 15);

INSERT INTO consolas (id, plataforma, generacion) VALUES
(1, 'playstation', 1), -- PlayStation 1
(2, 'playstation', 2), -- PlayStation 2
(3, 'playstation', 3), -- PlayStation 3
(4, 'playstation', 4), -- PlayStation 4
(5, 'playstation', 5), -- PlayStation 5
(6, 'xbox', 1),        -- Xbox
(7, 'xbox', 2),        -- Xbox 360
(8, 'xbox', 3),        -- Xbox One
(9, 'xbox', 4),        -- Xbox Series X
(10, 'xbox', 4),       -- Xbox Series S
(11, 'nintendo', 1),   -- NES
(12, 'nintendo', 2),   -- SNES
(13, 'nintendo', 3),   -- Nintendo 64
(14, 'nintendo', 4),   -- GameCube
(15, 'nintendo', 5),   -- DS
(16, 'nintendo', 6),   -- Wii
(17, 'nintendo', 7),   -- Wii U
(18, 'nintendo', 8),   -- 3DS
(19, 'nintendo', 9),   -- Switch
(20, 'steam', 1);      -- Steam Deck

-- videojuegos en productos
INSERT INTO productos (nombre, descripcion, categoria, precio, stock) VALUES
('The Last of Us Part II', 'Juego de acción y aventura en un mundo post-apocalíptico.', 'videojuego', 59.99, 25),
('God of War', 'Aventura épica basada en la mitología nórdica.', 'videojuego', 49.99, 20),
('Halo Infinite', 'El último capítulo de la saga Halo, lleno de acción y exploración.', 'videojuego', 59.99, 30),
('Super Mario Odyssey', 'Aventura de plataformas con Mario en mundos vibrantes.', 'videojuego', 59.99, 18),
('The Legend of Zelda: Breath of the Wild', 'Aventura de acción en un vasto mundo abierto de Hyrule.', 'videojuego', 59.99, 22),
('Fortnite', 'Battle royale gratuito con construcción y acción en tiempo real.', 'videojuego', 0.00, 50),
('Call of Duty: Modern Warfare', 'Juego de disparos en primera persona con multijugador intenso.', 'videojuego', 59.99, 15),
('Red Dead Redemption 2', 'Juego de acción y aventura en el viejo oeste americano.', 'videojuego', 59.99, 12),
('Animal Crossing: New Horizons', 'Simulador de vida en una isla paradisíaca.', 'videojuego', 59.99, 30),
('Overwatch', 'Juego de disparos en equipo con héroes únicos.', 'videojuego', 39.99, 25),
('FIFA 23', 'Simulación de fútbol con equipos y ligas de todo el mundo.', 'videojuego', 69.99, 10),
('Mortal Kombat 11', 'Juego de lucha con combates sangrientos y personajes icónicos.', 'videojuego', 49.99, 20),
('Final Fantasy VII Remake', 'Reimaginación del clásico RPG de aventuras y acción.', 'videojuego', 59.99, 15),
('Resident Evil Village', 'Survival horror en un ambiente terrorífico y misterioso.', 'videojuego', 59.99, 18),
('Ghost of Tsushima', 'Aventura samurái en un mundo abierto inspirado en Japón.', 'videojuego', 59.99, 12),
('Apex Legends', 'Battle royale gratuito con personajes únicos y habilidades.', 'videojuego', 0.00, 40),
('Hades', 'Roguelike con acción rápida y narrativa profunda.', 'videojuego', 24.99, 25),
("Assassin's Creed Valhalla", 'Aventura épica ambientada en la era vikinga.', 'videojuego', 59.99, 15),
('Cyberpunk 2077', 'RPG de mundo abierto ambientado en un futuro distópico.', 'videojuego', 59.99, 10),
("Marvel's Spider-Man", 'Aventura de acción en un mundo abierto con el famoso superhéroe.', 'videojuego', 49.99, 20),
('The Witcher 3: Wild Hunt', 'RPG épico basado en las novelas de Geralt de Rivia.', 'videojuego', 39.99, 22),
('Persona 5 Royal', 'RPG japonés con una narrativa cautivadora y estilo único.', 'videojuego', 59.99, 10),
('Cuphead', 'Juego de plataformas con arte estilo dibujos animados de los años 30.', 'videojuego', 19.99, 18),
('Celeste', 'Juego de plataformas que trata sobre la superación personal.', 'videojuego', 19.99, 20),
('Stardew Valley', 'Simulador de granja y vida rural con elementos RPG.', 'videojuego', 14.99, 25),
('Sekiro: Shadows Die Twice', 'Juego de acción y aventura con un enfoque en la habilidad.', 'videojuego', 59.99, 15),
('Dragon Quest XI: Echoes of an Elusive Age', 'RPG clásico con una historia envolvente.', 'videojuego', 59.99, 12),
('Genshin Impact', 'RPG de acción de mundo abierto con elementos de gacha.', 'videojuego', 0.00, 30),
('Gran Turismo 7', 'Simulador de carreras con vehículos realistas y gráficos impresionantes.', 'videojuego', 69.99, 10),
("Tony Hawk's Pro Skater 1+2", 'Remasterización de los clásicos juegos de patinaje.', 'videojuego', 39.99, 20),
('Battlefield 2042', 'Juego de disparos en primera persona con grandes batallas multijugador.', 'videojuego', 59.99, 15),
('The Elder Scrolls V: Skyrim', 'RPG de mundo abierto en un vasto mundo de fantasía.', 'videojuego', 39.99, 20);

INSERT INTO videojuegos (id, plataforma, pegi) VALUES
(21, 'playstation', "18"), -- The Last of Us Part II
(22, 'playstation', "18"), -- God of War
(23, 'xbox',        "16"), -- Halo Infinite
(24, 'nintendo',    "7"),  -- Super Mario Odyssey
(25, 'nintendo',    "12"), -- Breath of the Wild
(26, 'epic',        "12"), -- Fortnite
(27, 'xbox',        "18"), -- Call of Duty: Modern Warfare
(28, 'playstation', "18"), -- Red Dead Redemption 2
(29, 'nintendo',    "3"),  -- Animal Crossing: New Horizons
(30, 'steam',       "12"), -- Overwatch
(31, 'xbox',        "3"),  -- FIFA 23
(32, 'playstation', "18"), -- Mortal Kombat 11
(33, 'playstation', "16"), -- Final Fantasy VII Remake
(34, 'playstation', "18"), -- Resident Evil Village
(35, 'playstation', "18"), -- Ghost of Tsushima
(36, 'epic',        "12"), -- Apex Legends
(37, 'playstation', "16"), -- Hades
(38, 'playstation', "18"), -- Assassin's Creed Valhalla
(39, 'steam',       "18"), -- Cyberpunk 2077
(40, 'playstation', "16"), -- Marvel's Spider-Man
(41, 'playstation', "16"), -- The Witcher 3: Wild Hunt
(42, 'nintendo',    "12"), -- Persona 5 Royal
(43, 'steam',       "7"),  -- Cuphead
(44, 'steam',       "3"),  -- Celeste
(45, 'nintendo',    "3"),  -- Stardew Valley
(46, 'playstation', "18"), -- Sekiro: Shadows Die Twice
(47, 'nintendo',    "12"), -- Dragon Quest XI: Echoes of an Elusive Age
(48, 'epic',        "12"), -- Genshin Impact
(49, 'playstation', "3"),  -- Gran Turismo 7
(50, 'playstation', "12"), -- Tony Hawk's Pro Skater 1+2
(51, 'xbox',        "16"), -- Battlefield 2042
(52, 'playstation', "12"); -- The Elder Scrolls V: Skyrim


INSERT INTO productos (nombre, descripcion, categoria, precio, stock) VALUES
('Anillo de la suerte', 'Anillo con diseño especial para gamers.', 'accesorio', 19.99, 50),
('Collar de Zelda', 'Collar inspirado en el juego The Legend of Zelda.', 'accesorio', 24.99, 30),
('Figura de Mario', 'Figura coleccionable de Mario, ideal para exhibir.', 'accesorio', 29.99, 20),
('Llavero de Sonic', 'Llavero con la figura de Sonic, el erizo veloz.', 'accesorio', 9.99, 40),
('Pin de PlayStation', 'Pin decorativo de la consola PlayStation.', 'accesorio', 4.99, 100),
('Anillo de invocación', 'Anillo mágico inspirado en juegos de rol.', 'accesorio', 15.99, 45),
('Collar de Pikachu', 'Collar con la figura de Pikachu, el famoso Pokémon.', 'accesorio', 21.99, 25),
('Figura de Link', 'Figura coleccionable de Link de The Legend of Zelda.', 'accesorio', 29.99, 15),
('Llavero de Mario', 'Llavero con la figura de Mario, el héroe de los videojuegos.', 'accesorio', 8.99, 35),
('Pin de Mario Kart', 'Pin decorativo de Mario Kart.', 'accesorio', 5.99, 80),
('Anillo de compromiso gamer', 'Anillo de compromiso con temática gamer.', 'accesorio', 49.99, 10),
('Collar de la Casa Stark', 'Collar inspirado en Juego de Tronos.', 'accesorio', 22.99, 20),
('Figura de Geralt', 'Figura coleccionable de Geralt de Rivia de The Witcher.', 'accesorio', 34.99, 15),
('Llavero de Genshin Impact', 'Llavero con personajes de Genshin Impact.', 'accesorio', 11.99, 30),
("Pin de Assassin's Creed", "Pin decorativo de Assassin's Creed.", 'accesorio', 6.99, 75),
('Anillo de los elfos', 'Anillo inspirado en las leyendas de elfos y magia.', 'accesorio', 18.99, 20),
('Collar de Lara Croft', 'Collar inspirado en Tomb Raider.', 'accesorio', 23.99, 10),
('Figura de Ryu', 'Figura coleccionable de Ryu de Street Fighter.', 'accesorio', 32.99, 12),
('Llavero de Cloud', 'Llavero con la figura de Cloud de Final Fantasy.', 'accesorio', 10.99, 25),
('Pin de Overwatch', 'Pin decorativo de personajes de Overwatch.', 'accesorio', 7.99, 60);

INSERT INTO accesorios (id, tipo) VALUES
(53, 'anillo'),
(54, 'collar'),
(55, 'figura'),
(56, 'llavero'),
(57, 'pin'),
(58, 'anillo'),
(59, 'collar'),
(60, 'figura'),
(61, 'llavero'),
(62, 'pin'),
(63, 'anillo'),
(64, 'collar'),
(65, 'figura'),
(66, 'llavero'),
(67, 'pin'),
(68, 'anillo'),
(69, 'collar'),
(70, 'figura'),
(71, 'llavero'),
(72, 'pin');

INSERT INTO clientes (nombre, correo, telefono) VALUES
('Juan Pérez', 'juan.perez@example.com', '555-1234'),
('María López', 'maria.lopez@example.com', '555-2345'),
('Carlos García', 'carlos.garcia@example.com', '555-3456'),
('Ana Fernández', 'ana.fernandez@example.com', '555-4567'),
('Luis Martínez', 'luis.martinez@example.com', '555-5678'),
('Laura González', 'laura.gonzalez@example.com', '555-6789'),
('David Ramírez', 'david.ramirez@example.com', '555-7890'),
('Sofía Díaz', 'sofia.diaz@example.com', '555-8901'),
('Fernando Torres', 'fernando.torres@example.com', '555-9012'),
('Isabel Morales', 'isabel.morales@example.com', '555-0123'),
('Jorge Castro', 'jorge.castro@example.com', '555-1235'),
('Patricia Ruiz', 'patricia.ruiz@example.com', '555-2346'),
('Samuel Herrera', 'samuel.herrera@example.com', '555-3457'),
('Valeria Romero', 'valeria.romero@example.com', '555-4568'),
('Andrés Vargas', 'andres.vargas@example.com', '555-5679'),
('Lucía Mendoza', 'lucia.mendoza@example.com', '555-6780'),
('Diego Silva', 'diego.silva@example.com', '555-7891'),
('Natalia Jiménez', 'natalia.jimenez@example.com', '555-8902'),
('Ricardo Castillo', 'ricardo.castillo@example.com', '555-9013'),
('Teresa Paredes', 'teresa.paredes@example.com', '555-0124'),
('Victor Soto', 'victor.soto@example.com', '555-1236'),
('Gisela Ortega', 'gisela.ortega@example.com', '555-2347'),
('Manuel López', 'manuel.lopez@example.com', '555-3458'),
('Carla Ríos', 'carla.rios@example.com', '555-4569'),
('Alberto Méndez', 'alberto.mendez@example.com', '555-5670'),
('Sonia Peña', 'sonia.pena@example.com', '555-6781'),
('Tomás León', 'tomas.leon@example.com', '555-7892'),
('Mariana Salas', 'mariana.salas@example.com', '555-8903'),
('Hugo Cordero', 'hugo.cordero@example.com', '555-9014'),
('Renata Serrano', 'renata.serrano@example.com', '555-0125'),
('Eduardo Galindo', 'eduardo.galindo@example.com', '555-1237'),
('Carmen Castillo', 'carmen.castillo@example.com', '555-2348');

INSERT INTO empleados (nombre, puesto, fecha_contratacion) VALUES
('Pedro Gómez', 'vendedor', '2022-01-15'),
('Lucía Herrera', 'vendedor', '2021-06-10'),
('Marcos Torres', 'inventario', '2020-03-25'),
('Elena Ramírez', 'vendedor', '2023-07-30'),
('José Sánchez', 'inventario', '2019-11-05'),
('Claudia Morales', 'vendedor', '2022-02-20'),
('Rafael Díaz', 'inventario', '2021-05-12'),
('Patricia Silva', 'vendedor', '2020-08-18'),
('Daniel Ortega', 'inventario', '2018-12-01'),
('Sofía Jiménez', 'vendedor', '2024-09-14');

INSERT INTO generos (nombre) VALUES 
('Acción'),
('Aventura'),
('RPG'),
('Deportes'),
('Simulación'),
('Estrategia'),
('Plataformas'),
('Tiro en primera persona'),
('Lucha'),
('Puzzle');

-- Relación entre videojuegos y géneros
INSERT INTO vid_genero (id_videojuego, id_genero) VALUES 
(21, 1), -- The Last of Us Part II - Acción
(21, 2), -- The Last of Us Part II - Aventura
(22, 1), -- God of War - Acción
(22, 2), -- God of War - Aventura
(23, 1), -- Halo Infinite - Acción
(23, 8), -- Halo Infinite - Tiro en primera persona
(24, 1), -- Super Mario Odyssey - Acción
(24, 7), -- Super Mario Odyssey - Plataformas
(25, 1), -- Breath of the Wild - Acción
(25, 2), -- Breath of the Wild - Aventura
(26, 1), -- Fortnite - Acción
(26, 5), -- Fortnite - Simulación
(27, 1), -- Call of Duty: Modern Warfare - Acción
(27, 8), -- Call of Duty: Modern Warfare - Tiro en primera persona
(28, 1), -- Red Dead Redemption 2 - Acción
(28, 2), -- Red Dead Redemption 2 - Aventura
(29, 5), -- Animal Crossing: New Horizons - Simulación
(30, 1), -- Overwatch - Acción
(30, 8), -- Overwatch - Tiro en primera persona
(31, 4), -- FIFA 23 - Deportes
(32, 9), -- Mortal Kombat 11 - Lucha
(33, 3), -- Final Fantasy VII Remake - RPG
(34, 1), -- Resident Evil Village - Acción
(34, 9), -- Resident Evil Village - Horror
(35, 1), -- Ghost of Tsushima - Acción
(36, 1), -- Apex Legends - Acción
(36, 8), -- Apex Legends - Tiro en primera persona
(37, 3), -- Hades - RPG
(38, 1), -- Assassin's Creed Valhalla - Acción
(39, 3), -- Cyberpunk 2077 - RPG
(40, 1), -- Marvel's Spider-Man - Acción
(41, 3), -- The Witcher 3: Wild Hunt - RPG
(42, 3), -- Persona 5 Royal - RPG
(43, 7), -- Cuphead - Plataformas
(44, 7), -- Celeste - Plataformas
(45, 5), -- Stardew Valley - Simulación
(46, 1), -- Sekiro: Shadows Die Twice - Acción
(47, 3), -- Dragon Quest XI - RPG
(48, 3), -- Genshin Impact - RPG
(49, 4), -- Gran Turismo 7 - Deportes
(50, 4), -- Tony Hawk's Pro Skater 1+2 - Deportes   
(51, 1), -- Battlefield 2042 - Acción
(52, 3); -- The Elder Scrolls V: Skyrim - RPG

INSERT INTO proveedores (nombre_empresa, nombre_contacto, telefono, direccion) VALUES 
('TechGaming', 'Luis Martínez', '123456789', 'Calle de los Gamer 101'),
('Accesorios Pro', 'Ana López', '987654321', 'Av. del Videojuego 42'),
('Distribuciones Gamer', 'Carlos Herrera', '555555555', 'Paseo de los Consolas 77'),
('Gadgets y Más', 'Sofía Torres', '444444444', 'Calle de la Tecnología 28'),
('Gaming Supplies', 'Fernando Ruiz', '333333333', 'Calle de la Diversión 16'),
('Mundo Videojuegos', 'Laura Jiménez', '222222222', 'Av. de los Videojuegos 84'),
('Geek Store', 'Javier Gómez', '111111111', 'Calle de los Acertijos 33'),
('Accesorios Creativos', 'Isabel Fernández', '666666666', 'Calle de los Creativos 19'),
('Epic Gear', 'María Castro', '777777777', 'Calle de los Videojuegos 52'),
('Level Up Supplies', 'Pedro Sánchez', '888888888', 'Calle de los Niveles 40');

INSERT INTO compra (id_proveedor, id_producto, fecha, cantidad) VALUES 
(1, 1, '2024-01-15', 10),  -- TechGaming compra 10 Anillos de la suerte
(2, 2, '2024-01-20', 5),   -- Accesorios Pro compra 5 Collares de Zelda
(3, 3, '2024-01-25', 15),  -- Distribuciones Gamer compra 15 Figuras de Mario
(4, 4, '2024-02-01', 20),  -- Gadgets y Más compra 20 Llaveros de Sonic
(5, 5, '2024-02-05', 30),  -- Gaming Supplies compra 30 Pines de PlayStation
(6, 6, '2024-02-10', 8),   -- Mundo Videojuegos compra 8 Anillos de invocación
(7, 7, '2024-02-15', 12),  -- Geek Store compra 12 Collares de Pikachu
(8, 8, '2024-02-20', 7),   -- Accesorios Creativos compra 7 Figuras de Link
(9, 9, '2024-02-25', 14),  -- Epic Gear compra 14 Llaveros de Mario
(10, 10, '2024-03-01', 6);  -- Level Up Supplies compra 6 Pines de Mario Kart

-- Inserción de datos en la tabla facturas
INSERT INTO facturas (id_cliente, id_empleado, fecha) VALUES
(1, 2, '2023-10-01'), -- cliente 1, empleado 2
(2, 4, '2023-10-02'), -- cliente 2, empleado 4
(3, 1, '2023-10-03'), -- cliente 3, empleado 1
(4, 3, '2023-10-04'), -- cliente 4, empleado 3
(5, 2, '2023-10-05'); -- cliente 5, empleado 2

-- Inserción de datos en la tabla ventas
INSERT INTO ventas (id_factura, id_producto, cantidad) VALUES
(1, 1, 2), -- factura 1, producto 1
(1, 2, 5), -- factura 1, producto 2
(2, 3, 1), -- factura 2, producto 3
(3, 1, 10), -- factura 3, producto 1
(3, 4, 6), -- factura 3, producto 4
(4, 2, 8), -- factura 4, producto 2
(5, 5, 1); -- factura 5, producto 5
