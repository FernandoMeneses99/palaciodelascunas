-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2024 a las 04:24:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(7) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Nombre`, `Clave`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(90) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('CF001', 'Alimentos básicos', 'Productos esenciales para la alimentación diaria'),
('CF002', 'Lácteos y huevos', 'Leche, queso, yogur, huevos, etc.'),
('CF003', 'Carnes y pescados', 'Carne de res, pollo, cerdo, pescado, mariscos, etc.'),
('CF004', 'Frutas frescas', 'Frutas frescas de temporada'),
('CF005', 'Verduras frescas', 'Verduras frescas de temporada'),
('CF006', 'Panadería y repostería', 'Pan fresco, pasteles, panecillos, etc.'),
('CF007', 'Cereales y granos', 'Arroz, pasta, cereales, harina, etc.'),
('CF008', 'Aceites y grasas', 'Aceite de oliva, aceite vegetal, mantequilla, etc.'),
('CF009', 'Condimentos y especias', 'Sal, pimienta, hierbas aromáticas, etc.'),
('CF010', 'Conservas y enlatados', 'Conservas de verduras, legumbres, pescados, etc.'),
('CF011', 'Bebidas no alcohólicas', 'Agua, jugos, refrescos, etc.'),
('CF012', 'Bebidas alcohólicas', 'Vino, cerveza, licores, etc.'),
('CF013', 'Snacks y golosinas', 'Patatas fritas, chocolates, caramelos, etc.'),
('CF014', 'Productos de limpieza', 'Detergentes, limpiadores multiusos, etc.'),
('CF015', 'Artículos de cuidado personal', 'Jabón, champú, cremas, etc.'),
('CF016', 'Productos de higiene del hogar', 'Papel higiénico, toallas de papel, etc.'),
('CF017', 'Artículos de papel', 'Servilletas, pañuelos de papel, etc.'),
('CF018', 'Medicamentos básicos', 'Analgésicos, antipiréticos, vitaminas, etc.'),
('CF019', 'Artículos para mascotas', 'Alimento para mascotas, arena para gatos, etc.'),
('CF020', 'Productos para bebés y niños', 'Pañales, alimentos para bebés, etc.'),
('CF021', 'Alimentos congelados', 'Vegetales congelados, pizzas, helados, etc.'),
('CF022', 'Productos orgánicos', 'Alimentos cultivados sin pesticidas ni fertilizantes químicos.'),
('CF023', 'Productos sin gluten', 'Alimentos libres de gluten para personas con intolerancia.'),
('CF024', 'Productos vegetarianos', 'Alimentos sin carne para dietas vegetarianas.'),
('CF025', 'Productos veganos', 'Alimentos sin ingredientes de origen animal.'),
('CF026', 'Dulces y chocolates', 'Chocolates, caramelos, galletas dulces, etc.'),
('CF027', 'Productos de panadería', 'Productos horneados como pan y pasteles.'),
('CF028', 'Productos en polvo', 'Leche en polvo, bebidas instantáneas, etc.'),
('CF029', 'Productos dietéticos', 'Alimentos específicos para dietas especiales.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`NIT`, `Nombre`, `NombreCompleto`, `Apellido`, `Clave`, `Direccion`, `Telefono`, `Email`) VALUES
('1054683665', 'Omar99', 'Omar Meneses', 'MENESES', 'e10adc3949ba59abbe56e057f20f883e', 'Cra 81j # 57d-02 sur', '3133677048', 'fernandomenesesda@gmail.com.co'),
('11111111111', 'Pruebasssssss', '', '', '123', 'prueba', '3133677048', 'fernandomenesesda@gmail.com'),
('dL3bPp8KaZ', 'Maria', 'Maria Gomez', 'Gomez', 'b6250f7ca2cc0451a2108f7b7a644bf5', 'Avenida Siempre Viva 742', '0987654321', 'maria.gomez@example.com'),
('dWkVx4MnYd', 'Andrea', 'Andrea Campos', 'Campos', '6162636465666768696a6b6c6d6e6f70', 'Camino del Norte 88', '9988776655', 'andrea.campos@example.com'),
('dWkVx7MnIb', 'Armando', 'Armando Guerrero', 'Guerrero', 'f1f2f3f4f5f6f7f8f9fafbfcfdfeff60', 'Avenida Central 27', '5566778899', 'armando.guerrero@example.com'),
('dXjRm4PnNb', 'Martin', 'Martin Ponce', 'Ponce', '69686766656463626161605f5e5d5c5c', 'Boulevard del Sol 101', '5566778899', 'martin.ponce@example.com'),
('gBkUz7PnFb', 'Isabel', 'Isabel Paredes', 'Paredes', '4142434445464748494a4b4c4d4e4f50', 'Calle de las Estrellas 60', '2233445566', 'isabel.paredes@example.com'),
('gFkBz5HnUq', 'Ana', 'Ana Lopez', 'Lopez', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'Calle Mayor 5', '4433221100', 'ana.lopez@example.com'),
('gPlXp4KoFd', 'Emilio', 'Emilio Peña', 'Peña', 'd1d2d3d4d5d6d7d8d9dadbdcdddedf40', 'Camino del Valle 99', '4455667788', 'emilio.pena@example.com'),
('gWkZp6KnXe', 'Hector', 'Hector Flores', 'Flores', '49484746454443424141403f3e3d3c3c', 'Calle de la Libertad 33', '4455667788', 'hector.flores@example.com'),
('hQkGp6FnUb', 'Marta', 'Marta Morales', 'Morales', 'c3c3c3c3c3c3c3c3c3c3c3c3c3c3c3c3', 'Calle Secundaria 22', '2233445566', 'marta.morales@example.com'),
('hXjGp8FnYc', 'Jorge', 'Jorge Vega', 'Vega', '1112131415161718191a1b1c1d1e1f20', 'Avenida del Parque 333', '5647382910', 'jorge.vega@example.com'),
('kMqLr7PnUc', 'Fernando', 'Fernando Castillo', 'Castillo', 'f6f6f6f6f6f6f6f6f6f6f6f6f6f6f6f6', 'Avenida del Sol 101', '5566778899', 'fernando.castillo@example.com'),
('kWrGz7PnFb', 'Laura', 'Laura Ramirez', 'Ramirez', 'e10adc3949ba59abbe56e057f20f883e', 'Callejón del Beso 1', '1029384756', 'laura.ramirez@example.com'),
('lBrJx6FnYc', 'Luisa', 'Luisa Martinez', 'Martinez', '8e296a067a37563370ded05f5a3bf3ec', 'Calle de las Flores 21', '9988776655', 'luisa.martinez@example.com'),
('lMqLp3KnQe', 'Ricardo', 'Ricardo Reyes', 'Reyes', '7172737475767778797a7b7c7d7e7f80', 'Calle de la Juventud 17', '5566778899', 'ricardo.reyes@example.com'),
('lWkZr2KnRe', 'Alicia', 'Alicia Cruz', 'Cruz', '79787776757473727171606f6e6d6c6c', 'Calle de los Tulipanes 12', '1029384756', 'alicia.cruz@example.com'),
('mBlZp3KoYd', 'Elena', 'Elena Torres', 'Torres', 'd1d0f88bb81924b98772c3c5c62b17c3', 'Camino Real 789', '1092837465', 'elena.torres@example.com'),
('mPlXp3KnXc', 'Roberto', 'Roberto Mendez', 'Mendez', '3132333435363738393a3b3c3d3e3f40', 'Boulevard de los Reyes 202', '8765432109', 'roberto.mendez@example.com'),
('mQlPv4KmIe', 'Carlos', 'Carlos Rodriguez', 'Rodriguez', 'e99a18c428cb38d5f260853678922e03', 'Calle de la Amargura 13', '1122334455', 'carlos.rodriguez@example.com'),
('mQpNr3JnNe', 'Raul', 'Raul Herrera', 'Herrera', '29282726252423222121202019191818', 'Avenida del Parque 100', '8765432109', 'raul.herrera@example.com'),
('mXjGp6KnXb', 'Gustavo', 'Gustavo Navarro', 'Navarro', 'b1b2b3b4b5b6b7b8b9babbbcbdbebf20', 'Avenida del Sol 151', '8765432109', 'gustavo.navarro@example.com'),
('mXjGp9MnFe', 'Natalia', 'Natalia Peña', 'Peña', 'b9b8b7b6b5b4b3b2b1b0bfbeadacaeae', 'Avenida Principal 50', '2233445566', 'natalia.pena@example.com'),
('nWkZp3JnCe', 'Oscar', 'Oscar Herrera', 'Herrera', 'c9c8c7c6c5c4c3c2c1c0cfcecdcacac', 'Boulevard del Mar 99', '4455667788', 'oscar.herrera@example.com'),
('nWkZp3MnOc', 'Sandra', 'Sandra Rojas', 'Rojas', 'c1c2c3c4c5c6c7c8c9cacbcccdcecf30', 'Calle del Recuerdo 72', '2233445566', 'sandra.rojas@example.com'),
('nWkZr6MnUb', 'Rosa', 'Rosa Soto', 'Soto', '2122232425262728292a2b2c2d2e2f30', 'Camino del Valle 77', '1092837465', 'rosa.soto@example.com'),
('nXjGp9MnLc', 'Silvia', 'Silvia Molina', 'Molina', '39383736353433323131302f2e2d2c2c', 'Camino del Norte 99', '2233445566', 'silvia.molina@example.com'),
('nXjRm2QsIk', 'Miguel', 'Miguel Sanchez', 'Sanchez', '5f4dcc3b5aa765d61d8327deb882cf99', 'Avenida de la Paz 99', '6677889900', 'miguel.sanchez@example.com'),
('rAxPbN3mOa', 'Juan', 'Juan Perez', 'Perez', '1a1dc91c907325c69271ddf0c944bc72', 'Calle Falsa 123', '1234567890', 'juan.perez@example.com'),
('rBkUz6PnGd', 'Natalia', 'Natalia Vargas', 'Vargas', 'e1e2e3e4e5e6e7e8e9eaebecedeeef50', 'Calle de las Flores 11', '9988776655', 'natalia.vargas@example.com'),
('rPlXp3MnOc', 'Paula', 'Paula Muñoz', 'Muñoz', '59585756555453525151504f4e4d4c4c', 'Avenida de la Esperanza 88', '9988776655', 'paula.munoz@example.com'),
('rTlNz8UmXf', 'Sergio', 'Sergio Ruiz', 'Ruiz', 'd2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2', 'Boulevard Principal 555', '8765432109', 'sergio.ruiz@example.com'),
('rXjRm6QsIk', 'Victor', 'Victor Guzman', 'Guzman', '5152535455565758595a5b5c5d5e5f60', 'Avenida del Mar 404', '4455667788', 'victor.guzman@example.com'),
('sPqLr4JnXc', 'David', 'David Diaz', 'Diaz', '25f9e794323b453885f5181f1b624d0b', 'Paseo de la Reforma 350', '5647382910', 'david.diaz@example.com'),
('sQpNp2KnLc', 'Alfonso', 'Alfonso Gil', 'Gil', 'a9a8a7a6a5a4a3a2a1a0afaeadaeacac', 'Calle Mayor 6', '8765432109', 'alfonso.gil@example.com'),
('sQpNr2JnWc', 'Laura', 'Laura Chavez', 'Chavez', 'a1a2a3a4a5a6a7a8a9aaabacadaeaf10', 'Boulevard del Rio 44', '1092837465', 'laura.chavez@example.com'),
('sQpNz4JnXb', 'Cristina', 'Cristina Ramos', 'Ramos', '0102030405060708090a0b0c0d0e0f10', 'Calle de los Sueños 55', '1029384756', 'cristina.ramos@example.com'),
('sTlNz6KoLe', 'Monica', 'Monica Espinoza', 'Espinoza', '19181917161615151414131212121110', 'Calle de la Vida 44', '1092837465', 'monica.espinoza@example.com'),
('xBrUz7JnFf', 'Guillermo', 'Guillermo Duarte', 'Duarte', '89888786858483828181707f7e7d7c7c', 'Avenida del Sol 77', '5647382910', 'guillermo.duarte@example.com'),
('xBrUz9JnFb', 'Patricia', 'Patricia Ortiz', 'Ortiz', '8182838485868788898a8b8c8d8e8f90', 'Avenida del Bosque 99', '1029384756', 'patricia.ortiz@example.com'),
('xMqLp2KnTe', 'Beatriz', 'Beatriz Fernandez', 'Fernandez', '01010202030304040505060607070808', 'Calle del Mar 3', '1029384756', 'beatriz.fernandez@example.com'),
('xWkVr2JnQd', 'Luis', 'Luis Ortega', 'Ortega', 'd4d4d4d4d4d4d4d4d4d4d4d4d4d4d4d4', 'Avenida Central 8', '4455667788', 'luis.ortega@example.com'),
('zBlVx9KoIe', 'Julia', 'Julia Alvarez', 'Alvarez', 'e5e5e5e5e5e5e5e5e5e5e5e5e5e5e5e5', 'Calle de la Luna 14', '9988776655', 'julia.alvarez@example.com'),
('zBrUz4JnKf', 'Eduardo', 'Eduardo Salinas', 'Salinas', '09090808070706060505040403030202', 'Boulevard de los Sueños 11', '5647382910', 'eduardo.salinas@example.com'),
('zTlNr6KoJb', 'Adriana', 'Adriana Pineda', 'Pineda', '99989796959493929191808f8e8d8c8c', 'Camino Real 45', '1092837465', 'adriana.pineda@example.com'),
('zTlNz8KoId', 'Mario', 'Mario Mendoza', 'Mendoza', '9192939495969798999a9b9c9d9e9f00', 'Calle del Amanecer 23', '5647382910', 'mario.mendoza@example.com'),
('zWkZr9MnUb', 'Jose', 'Jose Hernandez', 'Hernandez', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'Avenida Libertador 456', '5566778899', 'jose.hernandez@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentabanco`
--

CREATE TABLE `cuentabanco` (
  `id` int(50) NOT NULL,
  `NumeroCuenta` varchar(100) NOT NULL,
  `NombreBanco` varchar(100) NOT NULL,
  `NombreBeneficiario` varchar(100) NOT NULL,
  `TipoCuenta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cuentabanco`
--

INSERT INTO `cuentabanco` (`id`, `NumeroCuenta`, `NombreBanco`, `NombreBeneficiario`, `TipoCuenta`) VALUES
(1, '9999999', 'Bogota', 'Omar Meneses', 'Ahorros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL,
  `PrecioProd` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`NumPedido`, `CodigoProd`, `CantidadProductos`, `PrecioProd`) VALUES
(1, 'P002', 1, 698.00),
(2, 'P010', 2, 77430.00),
(2, 'P003', 10, 4850.00),
(2, 'P002', 1, 698.00),
(3, 'P001', 10, 3890.00),
(3, 'P005', 3, 7770.00),
(3, 'P010', 1, 77430.00),
(4, 'P001', 12, 3890.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Descuento` int(2) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Descuento`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`, `Estado`) VALUES
(1, 'P001', 'Leche Deslactosada x6 1100ml', 'CF002', 3890.00, 0, 'Leche', 'Alquería', 128, '11109876', 'P001.png', 'admin', 'Activo'),
(3, 'P003', 'Arroz DIANA (1000 gr)', 'CF007', 4850.00, 0, 'Arroz', 'DIANA', 668, '0606543', 'P003.png', 'admin', 'Activo'),
(4, 'P004', 'ACEITE PREMIER GIRASOL 2700ML', 'CF008', 43992.00, 0, 'ACEITES', 'PREMIER', 289, '900123456', 'P004.png', 'admin', 'Activo'),
(5, 'P005', 'NUGGETS DE POLLO APANADOS FRES', 'CF003', 7770.00, 0, 'Congelados', 'Frescampo', 122, '55554321', 'P005.png', 'admin', 'Activo'),
(6, 'P006', 'Jugo HIT Mango Caja (1000 ml)', 'CF011', 4130.00, 5, 'Bebidas', 'HIT', 300, '0202109', 'P006.png', 'admin', 'Activo'),
(7, 'P007', 'ESPARCIBLE LIGHT VASO RAMA 500', 'CF008', 17.75, 15, 'Grasas', 'ESPARCIBLE LIGHT VASO RAMA 500', 125, '900123456', 'P007.png', 'admin', 'Activo'),
(8, 'P008', 'Huevo Rojo A X 30 SMN 30 und', 'CF002', 12890.00, 0, '.', 'Huevos rojos', 310, '77776543', 'P008.png', 'admin', 'Activo'),
(9, 'P009', 'Limón Tahití Malla TAEQ 1000 g', 'CF004', 9590.00, 0, 'Frutas', 'Limón Tahití Malla TAEQ 1000 g', 289, '600543210', 'P009.png', 'admin', 'Activo'),
(10, 'P002', 'Choclitos', 'CF001', 698.00, 0, 'Tortillas de maiz con el inten', 'Pepsico', 676, '900123456', 'P002.png', 'admin', 'Activo'),
(11, 'P010', 'Ramón Bilbao', 'CF012', 89000.00, 13, 'Bebidas Alcoholicas', 'Vino Tinto Ramón Bilbao Crianz', 297, '88887654', 'P010.png', 'admin', 'Activo'),
(12, 'P012', 'JET', 'CF013', 11650.00, 0, 'Dulces', 'Wafer JET (132 gr)', 678, '99998765', 'P012.png', 'admin', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`) VALUES
('0010987', 'Alimentos Balanceados y Nutrit', 'Calle 25 #12-18, Bogotá', '+57 1 234 5678', 'http://www.alimentosbalanceado'),
('0101098', 'Distribuidora de Productos Eco', 'Avenida 30 #22-10, Cali', '+57 2 456 7890', 'http://www.productosecologicos'),
('0202109', 'Fábrica de Jugos Naturales Tro', 'Carrera 18 #18-20, Medellín', '+57 4 567 8901', 'http://www.jugostropicales.com'),
('0303210', 'Productos Frescos del Huerto S', 'Calle 20 #25-30, Cartagena', '+57 5 432 1098', 'http://www.productosdelhuerto.'),
('0404321', 'Distribuidora de Bebidas Energ', 'Carrera 10 #5-10, Pereira', '+57 6 678 5432', 'http://www.bebidasenergeticas.'),
('0505432', 'Dulces y Postres Artesanales L', 'Avenida 12 #20-15, Barranquilla', '+57 5 321 6543', 'http://www.dulcesartesanales.c'),
('0606543', 'Alimentos Saludables y Nutriti', 'Calle 25 #12-18, Bogotá', '+57 1 234 5678', 'http://www.alimentossaludables'),
('0707654', 'Distribuidora de Productos Nat', 'Avenida 30 #22-10, Cali', '+57 2 456 7890', 'http://www.productosnaturistas'),
('0808765', 'Fábrica de Jugos Exóticos Ltda', 'Carrera 18 #18-20, Medellín', '+57 4 567 8901', 'http://www.jugosexoticos.com'),
('0909876', 'Productos del Mar del Pacífico', 'Calle 20 #25-30, Cartagena', '+57 5 432 1098', 'http://www.productosdelpacific'),
('100098765', 'Productos de Limpieza EcoFresh', 'Carrera 5 #12-30, Cali', '+57 2 456 7890', 'http://www.ecofresh.com'),
('11109876', 'Distribuidora de Lácteos Fresc', 'Carrera 10 #5-10, Pereira', '+57 6 678 5432', 'http://www.lacteosfrescos.com'),
('200109876', 'Distribuidora de Productos Org', 'Avenida 30 #22-10, Medellín', '+57 4 567 8901', 'http://www.productosorganicos.'),
('22221098', 'Panadería La Tradición S.A.', 'Avenida 12 #20-15, Barranquilla', '+57 5 321 6543', 'http://www.panerialatradicion.'),
('300210987', 'Fábrica de Jugos Naturales S.A', 'Carrera 12 #18-25, Bogotá', '+57 1 345 6789', 'http://www.jugosnaturales.com'),
('33332109', 'Productos Naturales y Orgánico', 'Calle 25 #12-18, Bogotá', '+57 1 234 5678', 'http://www.productosnaturales.'),
('400321098', 'Panadería y Repostería Delicia', 'Calle 8 #5-20, Cartagena', '+57 5 432 1098', 'http://www.deliciaspan.com'),
('44443210', 'Distribuidora de Frutas Tropic', 'Carrera 30 #22-10, Cali', '+57 2 456 7890', 'http://www.frutastropicales.co'),
('500432109', 'Carnes El Ranchero S.A.', 'Avenida 25 #10-15, Pereira', '+57 6 543 2109', 'http://www.carneselranchero.co'),
('55554321', 'Carnes Finas Del Valle Ltda.', 'Calle 15 #18-20, Medellín', '+57 4 567 8901', 'http://www.carnesfinas.com'),
('600543210', 'Distribuidora de Frutas y Verd', 'Carrera 15 #30-40, Barranquilla', '+57 5 678 9012', 'http://www.distribuidoradefrut'),
('66665432', 'Pescados y Mariscos del Caribe', 'Carrera 20 #25-30, Cartagena', '+57 5 432 1098', 'http://www.pescadosycaribe.com'),
('700654321', 'Distribuidora de Bebidas Colom', 'Avenida 20 #15-10, Cali', '+57 2 555 1234', 'http://www.distribuidoradebebi'),
('77776543', 'Productos Agrícolas del Valle ', 'Avenida 8 #5-10, Pereira', '+57 6 678 5432', 'http://www.productosagricolas.'),
('800987654', 'Productos de Limpieza y Hogar ', 'Calle 5 #15-25, Medellín', '+57 4 321 9876', 'http://www.productosdelimpieza'),
('88887654', 'Distribuidora de Bebidas Refre', 'Carrera 18 #20-15, Barranquilla', '+57 5 321 6543', 'http://www.bebidasrefrescantes'),
('900123456', 'Productos Alimenticios S.A.S.', 'Carrera 10 #20-30, Bogotá', '+57 1 234 5678', 'http://www.productosalimentici'),
('99998765', 'Fábrica de Dulces y Chocolates', 'Calle 10 #15-18, Bogotá', '+57 1 234 5678', 'http://www.el-paraiso.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL,
  `NumeroDeposito` varchar(50) NOT NULL,
  `TipoEnvio` varchar(37) NOT NULL,
  `Adjunto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`NumPedido`, `Fecha`, `NIT`, `TotalPagar`, `Estado`, `NumeroDeposito`, `TipoEnvio`, `Adjunto`) VALUES
(1, '22-06-2024', '1054683665', 698.00, 'Pendiente', '11111', 'Recoger Por Tienda', 'comprobante_1.png'),
(2, '23-06-2024', '1054683665', 204058.00, 'Enviado', '11111', 'Envio Por Currier', 'comprobante_2.png'),
(3, '23-06-2024', '1054683665', 139640.00, 'Pendiente', '11111', '', 'comprobante_3.png'),
(4, '23-06-2024', '1054683665', 46680.00, 'Pendiente', '11111', 'Recoger Por Tienda', 'comprobante_4.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
