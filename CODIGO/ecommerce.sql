-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2024 a las 20:46:13
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
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `imagen`, `estado`) VALUES
(1, 'CAMAS', '20240731174337.jpg', 1),
(2, 'CAMA CUNA', '20240731174453.jpg', 1),
(3, 'COLECHOS', '20240731174640.jpg', 1),
(4, 'HABITACIÓN NIÑO', '20240731174816.jpg', 1),
(5, 'HABITACIÓN NIÑA', '20240731175024.jpg', 1),
(6, 'TOLDILLOS', '20240731175349.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `host_smtp` varchar(100) NOT NULL,
  `user_smtp` varchar(100) NOT NULL,
  `pass_smtp` varchar(100) NOT NULL,
  `puerto_smtp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `nombre`, `telefono`, `correo`, `whatsapp`, `direccion`, `host_smtp`, `user_smtp`, `pass_smtp`, `puerto_smtp`) VALUES
(1, 'El Palacio de las Cunas', '3024622552', 'serviciocliente@elpalacio.com', '3024622552', 'Kr 79 # 42a - 24 sur', 'smtp.gmail.com', 'serviciocliente@elpalacio.com', 'ikhnyjislfpyzhgj', 465);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `cantidad`, `precio`, `producto`, `id_producto`, `id_venta`) VALUES
(1, 1, 425000.00, 'CAMA - NIÑO', 6, 1),
(2, 1, 425000.00, 'CAMA - NIÑO', 6, 2),
(3, 1, 425000.00, 'CAMA - NIÑO', 6, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `ventas` int(11) NOT NULL DEFAULT 0,
  `imagen` varchar(150) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `ventas`, `imagen`, `estado`, `id_categoria`) VALUES
(6, 'CAMA - NIÑO', 'La colección SMILE fue diseñada pensando en la comodidad de tú bebé y en ti para que saques el mayor provecho a los espacios por medio de la variedad de accesorios que puedes adquirir, los cuales no solo son funcionales, si no también son muy elegantes.\r\n\r\nLa colección hace énfasis en las cunas convertibles pues ellas te permiten además de darle la comodidad en sus primeros años, convertirlas en un cuarto moderno y funcional para su adolescencia. Adquieres un producto para muchos años, que no pasa de moda.', 425000.00, 20, 3, '20240731181227.jpg', 1, 2),
(7, 'CUNA - NIÑA', 'La colección SMILE fue diseñada pensando en la comodidad de tú bebé y en ti para que saques el mayor provecho a los espacios por medio de la variedad de accesorios que puedes adquirir, los cuales no solo son funcionales, si no también son muy elegantes.\r\n\r\nLa colección hace énfasis en las cunas convertibles pues ellas te permiten además de darle la comodidad en sus primeros años, convertirlas en un cuarto moderno y funcional para su adolescencia. Adquieres un producto para muchos años, que no pasa de moda.', 475000.00, 80, 0, '20240731180520.jpg', 1, 5),
(8, 'CAMA - NIÑA', 'La colección SMILE fue diseñada pensando en la comodidad de tú bebé y en ti para que saques el mayor provecho a los espacios por medio de la variedad de accesorios que puedes adquirir, los cuales no solo son funcionales, si no también son muy elegantes.\r\n\r\nLa colección hace énfasis en las cunas convertibles pues ellas te permiten además de darle la comodidad en sus primeros años, convertirlas en un cuarto moderno y funcional para su adolescencia. Adquieres un producto para muchos años, que no pasa de moda.', 376000.00, 0, 0, '20240731193016.jpg', 1, 1),
(9, 'HABITACIÓN - NIÑO', 'La colección SMILE fue diseñada pensando en la comodidad de tú bebé y en ti para que saques el mayor provecho a los espacios por medio de la variedad de accesorios que puedes adquirir, los cuales no solo son funcionales, si no también son muy elegantes.\r\n\r\nLa colección hace énfasis en las cunas converibles pues ellas te permiten además de darle la comodidad en sus primeros años, convertirlas en un cuarto moderno y funcional para su adolescencia. Adquieres un producto para muchos años, que no pasa de moda.', 1765000.00, 3, 0, '20240731193205.jpg', 1, 4),
(10, 'TOLDILLO ', '', 150000.00, 45, 0, '20240731193306.jpg', 1, 6),
(11, 'COLECHO -NIÑA', '', 263000.00, 1, 0, '20240731193354.jpg', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `clave` varchar(100) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `tipo` int(11) NOT NULL,
  `perfil` varchar(100) DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0,
  `token` varchar(100) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `nombre`, `apellido`, `clave`, `direccion`, `tipo`, `perfil`, `verify`, `token`, `estado`) VALUES
(1, 'ana.info1999@gmail.com', 'admin', 'ADMINISTRADOR', '$2y$10$YJPEpg7HtOh4dkGwyi2HeeZokS6oJcwi4ttaav/pSDecXaXyuFIGi', 'PERÚ', 1, NULL, 0, NULL, 0),
(5, 'info@gmail.com', 'Ana Lopez', NULL, '$2y$10$IU0DrPBACYGug8YsXmKZyONddMoPawVy0XoRqSmW90Tqh7GEHfHD.', NULL, 2, NULL, 0, NULL, 0),
(6, 'yuli@gmail.com', 'Yuli Lopez', NULL, '$2y$10$1Q3quBslnwBhbuQ1QLJlPOfe92s57H94769tfr2G.YYUL.a8BC132', NULL, 2, NULL, 0, NULL, 0),
(7, 'yuliasencios@gmail.com', 'Yuli Asencios', NULL, '$2y$10$m68Aty7PfV8Rr5uak01byOoh6tZJucKn7W8Vx4UuLPRZGNhzMmqcu', NULL, 2, NULL, 0, NULL, 0),
(8, 'yampier19es@gmail.com', 'oscar', NULL, '$2y$10$DznN1c/FoYXtE4.5FzCWNuoOdj88splT9B66GJLvw5jTaSH3CueEi', NULL, 2, NULL, 0, NULL, 0),
(10, 'virgo13alexa@gmail.com', 'Andrea', NULL, '$2y$10$nslhkvepnIn3.X6wn32Yy.lm9IEUTQRqQGbseDrE/YFdJrH/QjZJ2', NULL, 2, NULL, 0, NULL, 0),
(11, 'fernandomenesesda@gmail.com', 'Omar', 'Meneses', '$2y$10$xMV9d/x2fcP9wsIevck1KOCwDHg1nJzEQd3Srjjb1AtVQVTFHVCCi', 'Bogotá', 1, NULL, 0, NULL, 1),
(12, 'omarfru99@gmail.com', 'Omar', 'Meneses', '$2y$10$hWukgrnRszXPTYEChBFq5u.gNnvOKfiHnQ/kC8H1.Be/jBjDdw6m6', 'Kr 81j #57d-02 sur', 1, NULL, 0, NULL, 1),
(13, 'omar@etb.com', 'OMAR', 'MENESES', NULL, 'Kr 81j # 57d-02 sur Etapa 2, Apto 504, Torre F', 2, NULL, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `transaccion` varchar(100) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `pago` decimal(10,2) NOT NULL DEFAULT 0.00,
  `nombre` varchar(150) DEFAULT NULL,
  `apellido` varchar(150) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `cod` varchar(20) DEFAULT NULL,
  `envio` decimal(10,2) DEFAULT 0.00,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `proceso` int(11) NOT NULL DEFAULT 1,
  `tipo` int(11) NOT NULL DEFAULT 1,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `transaccion`, `total`, `pago`, `nombre`, `apellido`, `direccion`, `telefono`, `ciudad`, `pais`, `cod`, `envio`, `fecha`, `proceso`, `tipo`, `estado`, `id_usuario`) VALUES
(1, NULL, 425000.00, 500000.00, 'oscar ', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, '2024-07-31 23:16:22', 1, 2, 1, 11),
(2, NULL, 425000.00, 500000.00, 'oscar ', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, '2024-07-31 23:20:55', 1, 2, 1, 11),
(3, NULL, 425000.00, 500000.00, 'Omar Meneses', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, '2024-08-01 00:00:33', 1, 2, 1, 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
