-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2024 a las 00:54:23
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cuentas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `ID_Doc` int(11) NOT NULL,
  `Nombre_Doc` varchar(50) NOT NULL,
  `Apellido_Doc` varchar(50) NOT NULL,
  `Cod_Doc` int(13) NOT NULL,
  `Correo_Doc` varchar(50) NOT NULL,
  `Edad_Doc` int(3) NOT NULL,
  `Num_Cel_Doc` tinyint(10) NOT NULL,
  `Direccion_Doc` varchar(100) NOT NULL,
  `Usuario_Doc` varchar(50) NOT NULL,
  `Password_Doc` varchar(25) NOT NULL,
  `Carrera` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`ID_Doc`),
  ADD UNIQUE KEY `Usuario_Est` (`Usuario_Doc`),
  ADD UNIQUE KEY `Correo_Est` (`Correo_Doc`),
  ADD UNIQUE KEY `Num_Cel_Est` (`Num_Cel_Doc`),
  ADD UNIQUE KEY `Cod_Doc` (`Cod_Doc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `ID_Doc` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
