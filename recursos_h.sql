-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-09-2020 a las 05:04:23
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `recursos_h`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `IdCargo` int(11) NOT NULL,
  `IdNoResolucion` int(11) NOT NULL,
  `IdNoGrupoescala` int(11) NOT NULL,
  `IdNoCatocupacional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_requisito`
--

CREATE TABLE `cargo_requisito` (
  `IdCargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `Idcontrato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `IdDpto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `DPI` int(11) NOT NULL,
  `IdEtnia` varchar(20) NOT NULL,
  `IdEstadoCivil` varchar(20) NOT NULL,
  `IdColorPelo` varchar(20) NOT NULL,
  `IdNivelEscolaridad` varchar(20) NOT NULL,
  `IdCargo` varchar(30) NOT NULL,
  `Idcontrato` varchar(20) NOT NULL,
  `IdDpto` varchar(20) NOT NULL,
  `IdEstado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadocivil`
--

CREATE TABLE `estadocivil` (
  `IdEstadocivil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etnia`
--

CREATE TABLE `etnia` (
  `IdEtnia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagosempleados`
--

CREATE TABLE `pagosempleados` (
  `DPI` int(11) NOT NULL,
  `IdPagos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planilla`
--

CREATE TABLE `planilla` (
  `IdCargo` int(11) NOT NULL,
  `IdDpto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tlaboral`
--

CREATE TABLE `tlaboral` (
  `IdTrayectoriaLaboral` int(11) NOT NULL,
  `DPI` int(11) NOT NULL,
  `IdCargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabaja_en`
--

CREATE TABLE `trabaja_en` (
  `DPI` int(11) NOT NULL,
  `IdDpto` varchar(20) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`IdCargo`),
  ADD UNIQUE KEY `IdNoResolucion` (`IdNoResolucion`),
  ADD UNIQUE KEY `IdNoGrupoescala` (`IdNoGrupoescala`),
  ADD UNIQUE KEY `IdNoCatocupacional` (`IdNoCatocupacional`);

--
-- Indices de la tabla `cargo_requisito`
--
ALTER TABLE `cargo_requisito`
  ADD PRIMARY KEY (`IdCargo`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`Idcontrato`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`IdDpto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`DPI`);

--
-- Indices de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  ADD PRIMARY KEY (`IdEstadocivil`);

--
-- Indices de la tabla `etnia`
--
ALTER TABLE `etnia`
  ADD PRIMARY KEY (`IdEtnia`);

--
-- Indices de la tabla `pagosempleados`
--
ALTER TABLE `pagosempleados`
  ADD PRIMARY KEY (`DPI`),
  ADD UNIQUE KEY `IdPagos` (`IdPagos`);

--
-- Indices de la tabla `planilla`
--
ALTER TABLE `planilla`
  ADD PRIMARY KEY (`IdCargo`),
  ADD UNIQUE KEY `IdDpto` (`IdDpto`);

--
-- Indices de la tabla `tlaboral`
--
ALTER TABLE `tlaboral`
  ADD PRIMARY KEY (`IdTrayectoriaLaboral`);

--
-- Indices de la tabla `trabaja_en`
--
ALTER TABLE `trabaja_en`
  ADD PRIMARY KEY (`DPI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
