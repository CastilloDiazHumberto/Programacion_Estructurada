-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2025 a las 04:36:33
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_libreria`
--
CREATE DATABASE IF NOT EXISTS `bd_libreria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `bd_libreria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL,
  `Nombre del empleado` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Cargo` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Edad` int NOT NULL,
  `Contacto` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Sexo` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_usuario` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `Nombre del empleado`, `Cargo`, `Edad`, `Contacto`, `Sexo`, `id_usuario`) VALUES
(1, 'Beatriz pinzon', 'Bibliotecaria', 34, 'cel: +52 000 0000 correo *****@gmail.com', 'Femenino', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int NOT NULL,
  `Tipo de genero` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Simbolo` varchar(6) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `Tipo de genero`, `Simbolo`) VALUES
(1, 'Fantasia', 'F'),
(2, 'Accion', 'A'),
(3, 'Ciencia Ficcion', 'CF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id_Horarios` int NOT NULL,
  `id_empleado` int DEFAULT NULL,
  `Dia` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `Hora de inicio` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Hora de termino` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id_Horarios`, `id_empleado`, `Dia`, `Hora de inicio`, `Hora de termino`) VALUES
(1, 1, 'Lunes', '8:30', '3:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_Libros` int NOT NULL,
  `Saga de libros` varchar(40) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Titulo` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Editorial` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Numero de paginas` int NOT NULL,
  `Autor` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Estado` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_genero` int DEFAULT NULL,
  `Calificacion` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_Libros`, `Saga de libros`, `Titulo`, `Editorial`, `Numero de paginas`, `Autor`, `Estado`, `id_genero`, `Calificacion`) VALUES
(1, 'Harry Potter', 'Harry Potter y la Piedra Filosofal', 'Oceano de mexico', 256, 'J. K. Rowling', 'Bueno', 1, 4.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_Prestamos` int NOT NULL,
  `Nombre del prestamista` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Libro prestado` varchar(60) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Inicio del prestamo` date NOT NULL,
  `Fin del prestamo` date NOT NULL,
  `Estado del prestamo` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Cantidad de libros prestados` int NOT NULL,
  `Adeudos por retraso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal`
--

CREATE TABLE `principal` (
  `id_principal` int NOT NULL,
  `id_Libros` int NOT NULL,
  `id_Prestamos` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id_Ubicacion` int NOT NULL,
  `Simbolo de seccion` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Fila` varchar(2) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Columna` varchar(2) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_genero` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contraseña` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `permiso` varchar(2) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `contraseña`, `permiso`) VALUES
(1, 'Jesus2373', 'd3857a1d9e774dc982ba024bb2ce2ae3ea9d66413adc01cb499d76cfe8813598', 'si'),
(2, 'invitado', '75cee5b221098c39dc19feca49b7b7cfe46405057d0361b18726990a5f91bf25', 'no'),
(3, 'unberto', '59d5a4d71076e61853c71cc613ccd4e135845963469494e151d6005c5a3c701e', 'si'),
(4, 'JEFETODOPODEROSO', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'si');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`),
  ADD UNIQUE KEY `Nombre del empleado` (`Nombre del empleado`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`),
  ADD UNIQUE KEY `id_usuario_3` (`id_usuario`),
  ADD UNIQUE KEY `id_usuario_5` (`id_usuario`),
  ADD KEY `id_usuario_2` (`id_usuario`),
  ADD KEY `id_usuario_4` (`id_usuario`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`),
  ADD UNIQUE KEY `Tipo de genero` (`Tipo de genero`),
  ADD UNIQUE KEY `Simbolo` (`Simbolo`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_Horarios`),
  ADD UNIQUE KEY `id_empleado` (`id_empleado`),
  ADD UNIQUE KEY `id_empleado_3` (`id_empleado`),
  ADD KEY `id_empleado_2` (`id_empleado`),
  ADD KEY `id_empleado_4` (`id_empleado`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_Libros`),
  ADD UNIQUE KEY `id_genero` (`id_genero`),
  ADD KEY `id_genero_2` (`id_genero`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_Prestamos`),
  ADD UNIQUE KEY `Nombre del prestamista` (`Nombre del prestamista`);

--
-- Indices de la tabla `principal`
--
ALTER TABLE `principal`
  ADD PRIMARY KEY (`id_principal`),
  ADD KEY `id_Libros` (`id_Libros`),
  ADD KEY `id_Prestamos` (`id_Prestamos`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id_Ubicacion`),
  ADD UNIQUE KEY `Simbolo de seccion` (`Simbolo de seccion`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_Horarios` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_Libros` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_Prestamos` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `principal`
--
ALTER TABLE `principal`
  MODIFY `id_principal` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id_Ubicacion` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `principal`
--
ALTER TABLE `principal`
  ADD CONSTRAINT `principal_ibfk_1` FOREIGN KEY (`id_Libros`) REFERENCES `libros` (`id_Libros`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `principal_ibfk_2` FOREIGN KEY (`id_Prestamos`) REFERENCES `prestamos` (`id_Prestamos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `id_genero` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
