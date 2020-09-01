-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-09-2020 a las 05:04:16
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
-- Base de datos: `contabilidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `IdCategoria` int(11) NOT NULL,
  `NombreCategoria` varchar(20) NOT NULL,
  `Descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriascompras`
--

CREATE TABLE `categoriascompras` (
  `IdCategoriaCompra` int(11) NOT NULL,
  `NombreCategoriacompra` int(11) NOT NULL,
  `Descripcioncompra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Idcliente` int(11) NOT NULL,
  `NombreCliente` varchar(20) NOT NULL,
  `NombreContacto` varchar(20) NOT NULL,
  `CargoContacto` varchar(20) NOT NULL,
  `Direccion` int(11) NOT NULL,
  `Ciudad` varchar(30) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `Telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `Idcompras` int(11) NOT NULL,
  `FechaCompra` date NOT NULL,
  `Encargadocompra` varchar(20) NOT NULL,
  `IdEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallecompra`
--

CREATE TABLE `detallecompra` (
  `Idcompras` int(11) NOT NULL,
  `IdExistencia` int(11) NOT NULL,
  `IdProveedor` int(11) NOT NULL,
  `PrecioUnidad` varchar(20) NOT NULL,
  `Cantidad` varchar(20) NOT NULL,
  `Descuento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `IdVenta` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `PrecioUnidad` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Descuento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `IdEmpresa` int(11) NOT NULL,
  `Direccion` varchar(20) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Giro` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `existencias`
--

CREATE TABLE `existencias` (
  `IdExistencia` int(11) NOT NULL,
  `NombreExitencia` varchar(20) NOT NULL,
  `IdCategoriaCompra` int(11) NOT NULL,
  `PrecioCompra` varchar(20) NOT NULL,
  `IdEmpresa` int(11) NOT NULL,
  `UnidadesEnExistencia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `IdProducto` int(11) NOT NULL,
  `NombreProducto` varchar(30) NOT NULL,
  `IdCategoria` int(11) NOT NULL,
  `PrecioUnidad` int(11) NOT NULL,
  `IdEmpresa` int(11) NOT NULL,
  `Marca` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `IdProveedor` int(11) NOT NULL,
  `NombreCompania` varchar(20) NOT NULL,
  `NombreContacto` varchar(20) NOT NULL,
  `Direccion` varchar(20) NOT NULL,
  `Ciudad` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `Telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `IdVendedor` int(11) NOT NULL,
  `Apellidos` varchar(20) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Fechanacimiento` date NOT NULL,
  `Fechacontratacion` date NOT NULL,
  `Direccion` varchar(30) NOT NULL,
  `Ciudad` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `Teldomicilio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `IdVenta` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `IdVendedor` int(11) NOT NULL,
  `FechaVenta` int(11) NOT NULL,
  `HoraVenta` int(11) NOT NULL,
  `IdEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`IdCategoria`);

--
-- Indices de la tabla `categoriascompras`
--
ALTER TABLE `categoriascompras`
  ADD PRIMARY KEY (`IdCategoriaCompra`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Idcliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`Idcompras`),
  ADD UNIQUE KEY `IdEmpresa` (`IdEmpresa`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`IdVenta`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`IdEmpresa`);

--
-- Indices de la tabla `existencias`
--
ALTER TABLE `existencias`
  ADD PRIMARY KEY (`IdExistencia`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IdProducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`IdProveedor`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`IdVendedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`IdVenta`),
  ADD UNIQUE KEY `IdEmpresa` (`IdEmpresa`),
  ADD UNIQUE KEY `IdVendedor` (`IdVendedor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`IdEmpresa`) REFERENCES `empresa` (`IdEmpresa`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`IdVendedor`) REFERENCES `vendedores` (`IdVendedor`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`IdVenta`) REFERENCES `vendedores` (`IdVendedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
