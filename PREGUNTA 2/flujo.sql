-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2022 a las 10:35:38
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `flujo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujo`
--

CREATE TABLE `flujo` (
  `flujo` varchar(3) DEFAULT NULL,
  `proceso` varchar(3) DEFAULT NULL,
  `proceso_siguiente` varchar(5) DEFAULT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  `rol` varchar(10) DEFAULT NULL,
  `pantalla` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `flujo`
--

INSERT INTO `flujo` (`flujo`, `proceso`, `proceso_siguiente`, `tipo`, `rol`, `pantalla`) VALUES
('F1', 'P1', 'P2', 'I', 'Estudiante', 'inicial'),
('F1', 'P2', '', 'C', 'Prefaculta', 'aprobo'),
('F1', 'P3', '', 'F', 'Estudiante', 'nuevaPostulacion'),
('F1', 'P4', 'P5', 'P', 'Prefaculta', 'solicitaCertificado'),
('F1', 'P5', 'P6', 'P', 'Estudiante', 'presentar'),
('F1', 'P6', '', 'C', 'Kardex', 'cumpleRequisitos'),
('F1', 'P7', '', 'F', 'Estudiante', 'observacion'),
('F1', 'P8', '', 'F', 'Kardex', 'inscripcion'),
('F2', 'P1', 'P2', 'I', 'Estudiante', 'solicita'),
('F2', 'P2', 'P3', 'P', 'Decanatura', 'atiendeSolicitud'),
('F2', 'P3', 'P4', 'P', 'Decanatura', 'verificacion'),
('F2', 'P4', '', 'C', 'Kardex', 'terminoPlanEstudio'),
('F2', 'P5', '', 'F', 'Decanatura', 'observacion'),
('F2', 'P6', 'P7', 'P', 'Decanatura', 'extensionCertificado'),
('F2', 'P7', '', 'F', 'Estudiante', 'recibeCertificado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujocondicion`
--

CREATE TABLE `flujocondicion` (
  `flujo` varchar(3) DEFAULT NULL,
  `proceso` varchar(3) DEFAULT NULL,
  `procesoSI` varchar(3) DEFAULT NULL,
  `procesoNO` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `flujocondicion`
--

INSERT INTO `flujocondicion` (`flujo`, `proceso`, `procesoSI`, `procesoNO`) VALUES
('F1', 'P2', 'P4', 'P3'),
('F1', 'P6', 'P8', 'P7'),
('F2', 'P4', 'P6', 'P5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujotramite`
--

CREATE TABLE `flujotramite` (
  `Flujo` varchar(3) DEFAULT NULL,
  `proceso` varchar(3) DEFAULT NULL,
  `nro_tramite` int(11) DEFAULT NULL,
  `fechaini` datetime DEFAULT NULL,
  `fechafin` datetime DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `flujotramite`
--

INSERT INTO `flujotramite` (`Flujo`, `proceso`, `nro_tramite`, `fechaini`, `fechafin`, `usuario`) VALUES
('F1', 'P1', 501, '2022-10-18 11:00:00', NULL, 'matias'),
('F1', 'P2', 501, '2022-10-18 12:30:00', NULL, 'felipe'),
('F1', 'P6', 501, '2022-10-18 11:30:00', NULL, 'maria'),
('F2', 'P1', 500, '2022-10-18 11:00:00', NULL, 'jhon'),
('F2', 'P4', 500, '2022-10-18 11:30:00', NULL, 'maria'),
('F2', 'P2', 500, '2022-10-18 12:30:00', NULL, 'juan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
