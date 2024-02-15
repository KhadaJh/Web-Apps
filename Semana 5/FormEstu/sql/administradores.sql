-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2024 a las 01:08:36
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
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `ID_Adm` int(11) NOT NULL,
  `Nombre_Adm` varchar(50) NOT NULL,
  `Apellido_Adm` varchar(50) NOT NULL,
  `Cod_Adm` int(13) NOT NULL,
  `Correo_Adm` varchar(50) NOT NULL,
  `Edad_Adm` int(3) NOT NULL,
  `Num_Cel_Adm` tinyint(10) NOT NULL,
  `Direccion_Adm` varchar(100) NOT NULL,
  `Usuario_Adm` varchar(50) NOT NULL,
  `Password_Adm` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`ID_Adm`),
  ADD UNIQUE KEY `Usuario_Adm` (`Usuario_Adm`),
  ADD UNIQUE KEY `Correo_Adm` (`Correo_Adm`),
  ADD UNIQUE KEY `Num_Cel_Adm` (`Num_Cel_Adm`),
  ADD UNIQUE KEY `Cod_Adm` (`Cod_Adm`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `ID_Adm` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
