-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2024 a las 00:53:24
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
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `ID_Est` int(11) NOT NULL,
  `Nombre_Est` varchar(50) NOT NULL,
  `Apellido_Est` varchar(50) NOT NULL,
  `Cod_Est` int(13) NOT NULL,
  `Correo_Est` varchar(50) NOT NULL,
  `Edad_Est` int(3) NOT NULL,
  `Num_Cel_Est` tinyint(10) NOT NULL,
  `Direccion_Est` varchar(100) NOT NULL,
  `Usuario_Est` varchar(50) NOT NULL,
  `Password_Est` varchar(25) NOT NULL,
  `Carrera` varchar(100) NOT NULL,
  `Semestre` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`ID_Est`, `Nombre_Est`, `Apellido_Est`, `Cod_Est`, `Correo_Est`, `Edad_Est`, `Num_Cel_Est`, `Direccion_Est`, `Usuario_Est`, `Password_Est`, `Carrera`, `Semestre`) VALUES
(1, 'Erick', 'Caicedo', 1111111, 'a@a.a', 21, 127, 'aaa', 'aas', 'ass', 'a', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`ID_Est`),
  ADD UNIQUE KEY `Usuario_Est` (`Usuario_Est`),
  ADD UNIQUE KEY `Correo_Est` (`Correo_Est`),
  ADD UNIQUE KEY `Num_Cel_Est` (`Num_Cel_Est`),
  ADD UNIQUE KEY `Cod_Est` (`Cod_Est`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `ID_Est` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
