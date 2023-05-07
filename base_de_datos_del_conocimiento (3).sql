-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-05-2023 a las 18:25:36
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_de_datos_del_conocimiento`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `catalogo` ()  BEGIN
	SELECT nivel_criticidad, servidor,hostname, ip,bbdd,bus,capa_tuxedo,weblogic,ubicacion
    FROM catalogo_de_servicio;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `servicios` (IN `Xservicio` VARCHAR(255))  BEGIN
	SELECT nivel_criticidad, servidor,hostname, ip,bbdd,bus,capa_tuxedo,weblogic,ubicacion
    FROM catalogo_de_servicio
    WHERE servicio_asociado = Xservicio ;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `descripcion` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `area`, `descripcion`) VALUES
(1, 'BD', NULL),
(2, 'BACKUP', NULL),
(3, 'COMUNICACIONES', NULL),
(4, 'UNIX', NULL),
(5, 'UNIX - ALTAMIRA', NULL),
(6, 'UNIX - BD', NULL),
(7, 'WINDOWS', NULL),
(8, 'N/A', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `bus` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bus`
--

INSERT INTO `bus` (`id`, `bus`, `descripcion`) VALUES
(1, 'BUS DE PAGOS Y RECARGAS1 ', NULL),
(2, 'BUS DE PAGOS Y RECARGAS2 ', NULL),
(3, 'BUS EXTERNO', NULL),
(4, 'BUS INTERNO', NULL),
(5, 'N/A', NULL),
(6, 'TV DIGITAL', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canal_aplicativo`
--

CREATE TABLE `canal_aplicativo` (
  `id` int(11) NOT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `canal_aplicativo` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `descripcion` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `canal_aplicativo`
--

INSERT INTO `canal_aplicativo` (`id`, `id_servicio`, `canal_aplicativo`, `descripcion`) VALUES
(1, 1, 'ALTAMIRA - PREPAGO', NULL),
(2, 1, 'POSTPAGO - ICS', NULL),
(3, 1, 'POSTPAGO- FACTEL', NULL),
(4, 1, 'POSTPAGO FIDELIZAME  - MCRAS1', NULL),
(5, 2, 'APP', NULL),
(6, 2, 'BANCOS Y GRE', NULL),
(7, 2, 'MM', NULL),
(8, 3, 'INTERMEDIATE', NULL),
(9, 4, 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', NULL),
(10, 5, 'APP CAPTURE', NULL),
(11, 5, 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', NULL),
(12, 5, 'CVSC', NULL),
(13, 5, 'GESTOR DOCUMENTAL', NULL),
(14, 6, 'ACTIVACION', NULL),
(15, 7, 'DNS', NULL),
(16, 7, 'DNS - COLGATE', NULL),
(17, 7, 'M-CONTENIDO', NULL),
(18, 7, 'PORTAL SENIAT', NULL),
(19, 7, 'REMEDI TI', NULL),
(20, 7, 'REMEDY', NULL),
(21, 7, 'REMEDY EMPRESA', NULL),
(22, 8, 'ALTAMIRA - PREPAGO', NULL),
(23, 8, 'POSTPAGO - ICS', NULL),
(24, 8, 'POSTPAGO- FACTEL', NULL),
(25, 8, 'POSTPAGO FIDELIZAME  - MCRAS1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capa_tuxedo`
--

CREATE TABLE `capa_tuxedo` (
  `id` int(11) NOT NULL,
  `capa_tuxedo` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `capa_tuxedo`
--

INSERT INTO `capa_tuxedo` (`id`, `capa_tuxedo`, `descripcion`) VALUES
(1, 'BATCHRAT', NULL),
(2, 'BBS_GW', NULL),
(3, 'CVSC_GW', NULL),
(4, 'CVSCBDC', NULL),
(5, 'CVSCPSP', NULL),
(6, 'CVSCWSP', NULL),
(7, 'DATOSRAT', NULL),
(8, 'FASTWAY', NULL),
(9, 'FNCDMA', NULL),
(10, 'FNDATOS ', NULL),
(11, 'FNGSM', NULL),
(12, 'GPSPAA', NULL),
(13, 'GTUXBILL', NULL),
(14, 'IME', NULL),
(15, 'KANNEL', NULL),
(16, 'N/A', NULL),
(17, 'PREBDAT', NULL),
(18, 'PREBRAT', NULL),
(19, 'PSPOL', NULL),
(20, 'SMSRAT', NULL),
(21, 'TRANF_BE ', NULL),
(22, 'TRANFSAL ', NULL),
(23, 'TUXBBS', NULL),
(24, 'VOZRATING', NULL);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `catalogo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `catalogo` (
`nivel_criticidad` varchar(255)
,`color` char(10)
,`servicio_asociado` varchar(255)
,`canal_aplicativo` varchar(255)
,`area` varchar(255)
,`servidor` varchar(255)
,`ip` varchar(255)
,`hostname` varchar(255)
,`bbdd` varchar(255)
,`bus` varchar(255)
,`capa_tuxedo` varchar(255)
,`weblogic` varchar(255)
,`ubicacion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `catalogoactivacion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `catalogoactivacion` (
`nivel_criticidad` varchar(255)
,`servicio_asociado` varchar(255)
,`canal_aplicativo` varchar(255)
,`servidor` varchar(255)
,`ip` varchar(255)
,`hostname` varchar(255)
,`bbdd` varchar(255)
,`bus` varchar(255)
,`capa_tuxedo` varchar(255)
,`weblogic` varchar(255)
,`ubicacion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `catalogo_contact_center`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `catalogo_contact_center` (
`nivel_criticidad` varchar(255)
,`servicio_asociado` varchar(255)
,`canal_aplicativo` varchar(255)
,`servidor` varchar(255)
,`ip` varchar(255)
,`hostname` varchar(255)
,`bbdd` varchar(255)
,`bus` varchar(255)
,`capa_tuxedo` varchar(255)
,`weblogic` varchar(255)
,`ubicacion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_de_servicio`
--

CREATE TABLE `catalogo_de_servicio` (
  `nivel_criticidad` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `servicio_asociado` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `canal_aplicativo` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `servidor` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `sistema_operativo` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `vs_so` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bbdd` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `dbms` varchar(255) DEFAULT NULL,
  `vs_bd` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bus` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `capa_tuxedo` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `weblogic` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `f5_comunicaciones` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ip_f5` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `port_f5` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `pools_vs` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `otro_servicio_asociado` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ubicacion` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `rack` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `fila` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `observacion_general` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `catalogo_de_servicio`
--

INSERT INTO `catalogo_de_servicio` (`nivel_criticidad`, `servicio_asociado`, `canal_aplicativo`, `area`, `servidor`, `ip`, `hostname`, `sistema_operativo`, `vs_so`, `bbdd`, `dbms`, `vs_bd`, `bus`, `capa_tuxedo`, `weblogic`, `f5_comunicaciones`, `ip_f5`, `port_f5`, `pools_vs`, `otro_servicio_asociado`, `ubicacion`, `rack`, `fila`, `observacion_general`) VALUES
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX - BD', 'TMP078', '10.164.14.81', 'TMP078', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'FASTW1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AJ07', '7', 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX - BD', 'TMP079', '10.164.14.85', 'TMP079', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'FASTW2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AM14', '14', 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX - BD', 'TCA149', '10.161.222.195', 'TCA149', 'SUNOS', 'SUNOS 5.10', 'PERS1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX - BD', 'TMP133', '10.164.21.106', 'TMP133', 'SUNOS', 'SUNOS 5.11', 'IVR1', 'ORACLE', '11-2-0-4-0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY1'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX - BD', 'TMP134', '10.164.21.107', 'TMP134', 'SUNOS', 'SUNOS 5.11', 'IVR2', 'ORACLE', '11-2-0-4-0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY1'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TMP039', '10.164.12.97', 'TMP039', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'FASTWAY', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AK18', '18', 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TMP075', '10.164.14.65', 'TMP075', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'FNDATOS ', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AL14', '14', 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TMP075', '10.164.14.65', 'TMP075', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'FNGSM', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AL14', '14', 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TMP074', '10.164.14.61', 'TMP074', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'FNCDMA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AJ07', '7', 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TMP165', '10.164.21.75', 'TMP165', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.8 (MAIPO)', 'N/A', 'ORACLE', NULL, 'TV DIGITAL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TMP166', '10.164.21.76', 'TMP166', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.8 (MAIPO)', 'N/A', 'ORACLE', NULL, 'TV DIGITAL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TMP167', '10.164.21.77', 'TMP167', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.8 (MAIPO)', 'N/A', 'ORACLE', NULL, 'TV DIGITAL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TVPRDSRVFSTC01', '10.164.14.87', 'TVPRDSRVFSTC01', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.8 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - FASTWAY GSM', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TVPRDSRVFSTC02', '10.164.14.88', 'TVPRDSRVFSTC02', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.8 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - FASTWAY GSM', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TVPRDSRVFSTC01', '10.164.14.87', 'TVPRDSRVFSTC01', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.8 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0  - FASTWAY CDMA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TVPRDSRVFSTC02', '10.164.14.88', 'TVPRDSRVFSTC02', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.8 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0  - FASTWAY CDMA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'UNIX', 'TCOLP091', '10.161.168.109', 'TCOLP091', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.5 (MAIPO)', 'FASTCP', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'COMUNICACIONES', 'TMP165', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.157', '100005-10003', 'VS_BUSPROV', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'COMUNICACIONES', 'TMP166', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.158', '10009-10007', 'VS_BUSPROV', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'COMUNICACIONES', 'TMP167', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.159', '10013-10011', 'VS_BUSPROV', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'COMUNICACIONES', 'TVPRDSRVFSTC01', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 ALTAMIRA', '10.164.14.87', '17050', 'AA_FCT_VS1', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)', 'COMUNICACIONES', 'TVPRDSRVFSTC02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 ALTAMIRA', '10.164.14.88', '17050', 'AA_FCT_VS1', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TVPRDMOOD01', '10.161.135.5', 'N/A', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PORTAL APLICATE ', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TVPRDMOOD02', '10.161.222.247', 'N/A', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PORTAL APLICATE ', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TVPRDMIDESB01', '10.161.46.5', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TVPRDMIDESB02', '10.161.46.7', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TVPRDMIDESB03', '10.161.46.9', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TVPRDSRVOHS01', '10.161.46.1', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'OHS', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TVPRDSRVOHS02', '10.161.46.3', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'OHS', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TCANP039', '10.161.22.205', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.5 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ORQUESTADOR', 'CANAIMA', 'N/A', 'N/A', 'VDC  CANAIMA II'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TCANP040', '10.161.22.206', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.5 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX - BD', 'TCANP041', '10.161.22.207', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.5 (MAIPO)', 'MDOC', 'ORACLE', '12.2.0.1.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TCANP072', '10.161.22.244', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.5 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TMP055', '10.164.12.197', 'TMP055', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TMP056', '10.164.12.198', 'TMP056', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TMP057', '10.164.12.199', 'TMP057', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TMP076', '10.164.14.69', 'LCL CVSC', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL CVSC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AN14', '14', 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'UNIX', 'TMP077', '10.164.14.73', 'LCL CVSC', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL CVSC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AJ07', '7', 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'COMUNICACIONES', 'TVPRDSRVOHS01', '', 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'AUTOGESTION', '10.161.46.1', '8001', 'POOL EXT APP MG', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'COMUNICACIONES', 'TVPRDSRVOHS02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'AUTOGESTION', '10.161.46.3', '8001', 'POOL EXT APP MG', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'COMUNICACIONES', 'TMP076', '10.164.14.69', 'LCL CVSC', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.14.69', '26003-26004-26005-26006', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'COMUNICACIONES', 'TMP077', '10.164.14.73', 'LCL CVSC', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.14.73', '26003-26004-26005-26006-26007', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'COMUNICACIONES', 'TMP055', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.57', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'COMUNICACIONES', 'TMP056', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.50', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'COMUNICACIONES', 'TMP057', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.36', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'COMUNICACIONES', 'TVPRDMIDESB01', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.46.7', '7103-7104', 'VS_ESB_EXT12C', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'COMUNICACIONES', 'TVPRDMIDESB02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.46.8', '7103-7104', 'VS_ESB_EXT12C', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION', 'APP CAPTURE', 'COMUNICACIONES', 'TVPRDMIDESB03', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.46.10', '7103-7104', 'VS_ESB_EXT12C', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TVPRDMIDESB01', '10.161.46.5', 'TVPRDMIDESB01', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TVPRDMIDESB02', '10.161.46.7', 'TVPRDMIDESB02', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TVPRDMIDESB03', '10.161.46.9', 'TVPRDMIDESB03', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TVPRDSRVOHS01', '10.161.46.1', 'OSH01', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'OHS', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TVPRDSRVOHS02', '10.161.46.3', 'OSH02', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'OHS', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TCANP039', '10.161.22.205', 'TCANP039', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.5 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ORQUESTADOR', 'CANAIMA', 'N/A', 'N/A', 'VDC  CANAIMA II'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TCANP040', '10.161.22.206', 'TCANP040', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.5 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TCANP041', '10.161.22.207', 'TCANP041', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.5 (MAIPO)', 'MDOC', 'ORACLE', '12.2.0.1.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TCANP072', '10.161.22.244', 'TCANP072', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.5 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TMP055', '10.164.12.197', 'TMP055', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TMP056', '10.164.12.198', 'TMP056', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TMP057', '10.164.12.199', 'TMP057', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TMP076', '10.164.14.69', 'LCL CVSC', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL CVSC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AN14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'UNIX', 'TMP077', '10.164.14.73', 'LCL CVSC', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL CVSC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AJ07', '7', 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'COMUNICACIONES', 'TVPRDSRVOHS01', '', 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'AUTOGESTION', '10.161.46.1', '8001', 'POOL EXT APP MG', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'COMUNICACIONES', 'TVPRDSRVOHS02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'AUTOGESTION', '10.161.46.3', '8001', 'POOL EXT APP MG', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'COMUNICACIONES', 'TVPRDSRVOHS01', '', 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.46.1', '7777', 'POOL_OSH_ESB12C', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'COMUNICACIONES', 'TVPRDSRVOHS02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.46.3', '7777', 'POOL_OSH_ESB12C', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'COMUNICACIONES', 'TMP076', '10.164.14.69', 'LCL CVSC', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.14.69', '26003-26004-26005-26006', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'COMUNICACIONES', 'TMP077', '10.164.14.73', 'LCL CVSC', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.14.73', '26003-26004-26005-26006-26007', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'COMUNICACIONES', 'TMP055', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.57', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'COMUNICACIONES', 'TMP056', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.50', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'GESTOR DOCUMENTAL', 'COMUNICACIONES', 'TMP057', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.36', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TCANP051', '10.161.170.56', 'TCANP051', 'SUNOS', 'SUNOS  5.11 1', 'N/A', 'ORACLE', NULL, 'N/A', 'CVSC_GW', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TCANP051', '10.161.170.56', 'TCANP051', 'SUNOS', 'SUNOS  5.11 1', 'N/A', 'ORACLE', NULL, 'N/A', 'CVSCBDC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TCANP053', '10.161.22.215', 'TCANP053', 'SUNOS', 'SUNOS 3 5.11 ', 'N/A', 'ORACLE', NULL, 'N/A', 'CVSCWSP', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TCANP053', '10.161.22.215', 'TCANP053', 'SUNOS', 'SUNOS 3 5.11 ', 'N/A', 'ORACLE', NULL, 'N/A', 'CVSC_GW', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TMP040', '10.164.12.147', 'TMP040', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'TUXBBS', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AN14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TMP040', '10.164.12.147', 'TMP040', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'BBS_GW', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AN14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TMP041', '10.164.12.151', 'TMP041', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'TUXBBS', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AM14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TMP041', '10.164.12.151', 'TMP041', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'BBS_GW', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AM14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLBOLIVAR1', '10.161.22.129', 'WLBOLIVAR1', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FACTEL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLSUCUENTA0PRE', '10.161.22.127', 'WLSUCUENTA0PRE', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FACTEL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLSUCUENTA', '10.161.2.66', 'K2 BATCH', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'K2 BATCH', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLSUCUENTA1', '10.161.22.131', 'K2OL', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'K2OL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLBOLIVAR1', '10.161.22.129', 'K2OL2', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'K2OL2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLSUCUENTA0', '10.161.22.124', 'K2OL3', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'K2OL3', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLBOLIVAR0', '10.161.22.124', 'K2OL4', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'K2OL4', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLSUCUENTA', '10.161.2.66', 'FCT BATCH', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FCT BATCH', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLSUCUENTA1', '10.161.22.131', 'FCTOL', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FCTOL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLBOLIVAR0', '10.161.22.124', 'FCTOL2', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FCTOL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CARACAS', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLBOLIVAR0PRE', '10.161.22.125', 'FCT PROV1', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FCT PROV1', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CARACAS', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLSUCUENTA3', '10.161.22.132', 'FCT PROV2', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FCT PROV2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CARACAS', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLBOLIVAR0', '10.161.22.124', 'FCT PROV3', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FCT PROV3', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CARACAS', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLSUCUENTA1', '10.161.22.131', 'FCT PROV4', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FCT PROV4', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TCA109', '10.161.222.31', 'K2MMO1', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'K2MMO1', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AS24', '1', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TCA110', '10.161.222.27', 'K2MMO2', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'K2MMO2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AS24', '1', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'SRVCCSVIRK2A', '10.161.6.231', 'K2MMOVIRK2A', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'K2MMOVIRK2A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'SRVCCSVIRK2B', '10.161.6.232', 'K2MMOVIRK2B', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'K2MMOVIRK2B', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLSUCUENTA', '10.161.2.66', 'FIELIZAMEBATCH', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FIELIZAMEBATCH', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLBOLIVAR0', '10.161.22.124', 'FILEDIZAME MCRASS1', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FILEDIZAME MCRASS1', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'WLBOLIVAR0', '10.161.22.124', 'FILEDIZAME MCRASS2', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'FILEDIZAME MCRASS2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TMP055', '10.164.12.197', 'TMP055', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TMP056', '10.164.12.198', 'TMP056', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TMP057', '10.164.12.199', 'TMP057', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TMP076', '10.164.14.69', 'LCL CVSC', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'LCL CVSC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AN14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX', 'TMP077', '10.164.14.73', 'LCL CVSC', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'LCL CVSC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AJ07', '7', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCLUAGW3', '10.164.4.133', 'T-CONECTA', 'WINDOWS', 'WINDOWS SERVERN 2008 R2 ENTERPRISE', 'T-CONECTA', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AT11', '11', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCLUAGW4', '10.164.4.134', 'T-CONECTA', 'WINDOWS', 'WINDOWS SERVERN 2008 R2 ENTERPRISE', 'T-CONECTA', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AT11', '11', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TMP104', '10.164.12.113 ', 'TMP104', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.2 (SANTIAGO)', 'HBILLING1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'BA14', '14', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TMP105', '10.164.12.127', 'TMP105', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.2 (SANTIAGO)', 'HBILLING2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AF11', '11', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TCA149', '10.161.222.195', 'TCA149', 'SUNOS', 'SUNOS 5.10', 'PERS1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TCA151', '10.161.222.196', 'TCA151', 'SUNOS', 'SUNOS 5.10', 'PERS2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TMP036', '10.164.12.139', 'TMP036', 'SUNOS', 'SUNOS 5.11', 'RATING1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY2'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TMP037', '10.164.12.143', 'TMP037', 'SUNOS', 'SUNOS 5.11', 'RATING2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY2'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TMP034', '10.164.12.132', 'TMP034', 'SUNOS', 'SUNOS 5.10', 'BILLING1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AG07', '7', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TMP035', '10.164.12.135', 'TMP035', 'SUNOS', 'SUNOS 5.10', 'BILLING2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AG07', '7', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'GBDAMP01', '172.21.2.78', 'GBDAMP01', 'SUNOS', 'SUNOS 5.10', 'ONLINE ', 'ORACLE', '9.2.0.8.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AI58', '4', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'EPAGOS', '200.35.65.107', 'EPAGOS', 'SUNOS', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TCA068', '172.16.50.208', 'BDC', 'HP-UX', 'N/A', 'BDC', 'ORACLE', '9.2.0.6.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - B', 'G10', '2', 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TMP133', '10.164.21.106', 'IVR1', 'SUNOS', 'SUNOS 5.11', 'IVR1', 'ORACLE', '11-2-0-4-0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY1'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TMP134', '10.164.21.107', 'IVR2', 'SUNOS', 'SUNOS 5.11', 'IVR2', 'ORACLE', '11-2-0-4-0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY1'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TMP133', '10.164.21.106', 'USUARIO CIES', 'SUNOS', 'SUNOS 5.11', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY1'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'TMP134', '10.164.21.107', 'USUARIO CIES', 'SUNOS', 'SUNOS 5.11', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY1'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'UNIX - BD', 'PUNTO BD01', '200.35.64.60', 'PUNTO BD01', 'N/A', 'N/A', 'PUNTO', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYQFLOW04', '10.164.3.133', 'N/A', 'WINDOWS', 'WINDOWS  SERVER 2008 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'QFLOW', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYQFLOW05', '10.164.3.134', 'N/A', 'WINDOWS', 'WINDOWS  SERVER 2008 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'QFLOW', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC02', '10.164.15.86', 'N/A', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CDS - CALLCENTER', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC03', '10.164.15.87', 'N/A', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CDS - CALLCENTER', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC04', '10.164.15.88', 'SERVIDOR INTERNOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CDS - CALLCENTER', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC05', '10.164.15.89', 'SERVIDOR INTERNOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CDS - CALLCENTER', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC08', '10.164.15.92', 'SERVIDOR INTERNOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CDS - CALLCENTER', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC14 ', '10.164.15.98', 'SERVIDOR INTERNOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CDS - CALLCENTER', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC15', '10.164.15.99', 'SERVIDOR INTERNOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CDS - CALLCENTER', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC17', '10.164.15.101', 'SERVIDOR INTERNOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CDS - CALLCENTER', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC18', '10.164.15.102', 'SERVIDOR INTERNOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CDS - CALLCENTER', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC20', '10.164.15.104', 'SERVIDOR INTERNOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC24', '10.164.15.108', 'TERCERIOIZADOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC25', '10.164.15.109', 'TERCERIOIZADOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC26', '10.164.15.110', 'TERCERIOIZADOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC31', '10.164.15.115', 'TERCERIOIZADOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVMRYCVSC33', '10.164.15.117', 'TERCERIOIZADOS ', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCCSCVSC03VPN', '10.162.128.74', 'SERVIDORES AGENTES', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AGENTES', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCCSCVSC04VPN', '10.162.128.75', 'SERVIDORES AGENTES', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AGENTES', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCCSCVSC05VPN', '10.162.128.76', 'SERVIDORES AGENTES', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AGENTES', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCCSCVSC08VPN', '10.162.128.79', 'SERVIDORES AGENTES', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AGENTES', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCCSCVSC11VPN', '10.162.128.82', 'SERVIDORES AGENTES', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 STANDARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AGENTES', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCCSCVSC15', '10.162.128.86', 'SERVIDORES AGENTES', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 ENTERPRISE', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AGENTES', 'CANAIMA', 'N/A', 'N/A', 'SRVCCSCLUHV01'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCCSCVSC16', '10.162.128.87', 'SERVIDORES AGENTES', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 ENTERPRISE', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AGENTES', 'CANAIMA', 'N/A', 'N/A', 'SRVCCSCLUHV01'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCCSCVSC17', '10.162.128.88', 'SERVIDORES AGENTES', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 ENTERPRISE', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AGENTES', 'CANAIMA', 'N/A', 'N/A', 'SRVCCSCLUHV01'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCCSCVSC18', '10.162.128.89', 'SERVIDORES AGENTES', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 ENTERPRISE', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AGENTES', 'CANAIMA', 'N/A', 'N/A', 'SRVCCSCLUHV01'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCCSCVSC19', '10.162.128.90', 'SERVIDORES AGENTES', 'WINDOWS', 'WINDOWS  SERVER 2012 R2 ENTERPRISE', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AGENTES', 'CANAIMA', 'N/A', 'N/A', 'SRVCCSCLUHV01'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'SRVCCSCVSC09', '10.162.128.80', 'SERVIDORES AGENTES', 'WINDOWS', 'WINDOWS  SERVER 2008 R2 ENTERPRISE', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AGENTES', 'CANAIMA', 'N/A', 'N/A', 'SRVCCSCLUHV01'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'TMP283', '10.164.65.12', 'CRM - SECUNDARIO', 'WINDOWS', 'WINDOWS SERVER 2019 STADARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'TMP284', '10.164.65.13', 'CRM - PRIMARIO', 'WINDOWS', 'WINDOWS SERVER 2019 STADARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'WINDOWS', 'TCOLP162', '10.161.190.56', 'CRM - DR', 'WINDOWS', 'WINDOWS SERVER 2019 STADARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'WBOLIVAR0', NULL, 'K2OL', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.134', '17001', 'POOL_K2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'WBOLIVAR1', NULL, 'K2OL2', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.135', '17001', 'POOL_K2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'WLSUCUENTA0', NULL, 'K2OL3', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.143', '17001', 'POOL_K2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'WLSUCUENTA1', NULL, 'K2OL4', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.146', '17050', 'POOL_K2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'WLSUCUENTA1', NULL, 'FCTOL - PROV4', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.146', '17050', 'POOL_FASTCONNECT', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'WBOLIVAR0', NULL, 'FCTOL2 - PROV3', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.134', '17050', 'POOL_FASTCONNECT', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'WLBOLIVAR0PRE', NULL, 'PROV1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.142', '17050', 'POOL_FASTCONNECTBASH', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'WLSUCUENTA3', NULL, 'PROV2', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.147', '17050', 'POOL_FASTCONNECTBASH', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'FACTEL WEB', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.5', '80', 'VS_FACTELWEB', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'WLBOLIVAR1', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNTE CANAIMA', '10.161.22.129', '20000-20001', 'POOL_FACTEL', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'WLSUCUENTA0PRE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNTE CANAIMA', '10.161.22.125', '20000-20001', 'POOL_FACTEL', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC15', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.86', '80', 'POOL_CVSC_VPN_AA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC16', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.87', '80', 'POOL_CVSC_VPN_AA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC17', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.88', '80', 'POOL_CVSC_VPN_AA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC18', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.89', '80', 'POOL_CVSC_VPN_AA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC18', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.90', '80', 'POOL_CVSC_VPN_AA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'TCA109', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.217', '14150', 'POOL_AGK2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'TCA110', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.198', '14150', 'POOL_AGK2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSVIRK2A', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.198', '17001', 'POOL_K2MMO_1', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSVIRK2B', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.217', '17001', 'POOL_K2MMO_1', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'QFLOW', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.3.133', '80', 'POOL_QFLOW', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'QFLOW', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.3.134', '80', 'POOL_QFLOW', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'WLBOLIVAR0', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNTE CANAIMA', '10,161,22,124', '17501', 'VS_MRC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSCVSC03', NULL, 'SERVIDORES AGENTES', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.74', '80', 'VS_CVSC_VPNAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSCVSC04', NULL, 'SERVIDORES AGENTES', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.75', '80', 'VS_CVSC_VPNAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSCVSC05', NULL, 'SERVIDORES AGENTES', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.76', '80', 'VS_CVSC_VPNAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSCVSC08', NULL, 'SERVIDORES AGENTES', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.79', '80', 'VS_CVSC_VPNAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSCVSC09', NULL, 'SERVIDORES AGENTES', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.80', '80', 'VS_CVSC_VPNAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSCVSC11', NULL, 'SERVIDORES AGENTES', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.82', '80', 'VS_CVSC_VPNAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSCVSC15', NULL, 'SERVIDORES AGENTES', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.86', '80', 'VS_CVSC_VPNAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSCVSC16', NULL, 'SERVIDORES AGENTES', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.87', '80', 'VS_CVSC_VPNAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSCVSC17', NULL, 'SERVIDORES AGENTES', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.88', '80', 'VS_CVSC_VPNAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSCVSC18', NULL, 'SERVIDORES AGENTES', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.89', '80', 'VS_CVSC_VPNAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVCCSCVSC19', NULL, 'SERVIDORES AGENTES', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.90', '80', 'VS_CVSC_VPNAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC40', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.85', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC21', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.105', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC22', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.106', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A');
INSERT INTO `catalogo_de_servicio` (`nivel_criticidad`, `servicio_asociado`, `canal_aplicativo`, `area`, `servidor`, `ip`, `hostname`, `sistema_operativo`, `vs_so`, `bbdd`, `dbms`, `vs_bd`, `bus`, `capa_tuxedo`, `weblogic`, `f5_comunicaciones`, `ip_f5`, `port_f5`, `pools_vs`, `otro_servicio_asociado`, `ubicacion`, `rack`, `fila`, `observacion_general`) VALUES
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC23', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.107', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC24', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.108', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC25', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.109', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC26', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.110', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC27', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.111', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC28', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.112', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC29', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.113', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC30', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.114', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC31', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.115', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC32', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.116', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC33', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.117', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC34', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.118', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC35', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.119', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC36', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.120', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC37', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.121', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC38', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.122', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC39', NULL, 'TERCERIOIZADOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.123', '80', 'POOL_RRCC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC02', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.86', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC03', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.87', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC04', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.88', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC05', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.89', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC06', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.90', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC07', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.91', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC08', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.92', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC09', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.93', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC10', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.94', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC11', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.95', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC12', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.96', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC13', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.97', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC14', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.98', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC15', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.99', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC16', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.100', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC17', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.101', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC18', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.102', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC19', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.103', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'ACTIVACION ', 'CVSC', 'COMUNICACIONES', 'SRVMRYCVSC20', NULL, 'SERVIDOR INTERNOS ', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.15.104', '80', 'VS_RRIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TCOLP029', '10.161.176.7', 'N/A', 'WINDOWS', 'WINDOWS SERVER 2012 R2', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'SRVCLUCTC01', '10.18.28.81', 'N/A', 'WINDOWS', 'WINDOWS SERVER 2012 R2', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AQ25', '25', 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'SRVCLUCTC02', '10.18.28.82', 'N/A', 'WINDOWS', 'WINDOWS SERVER 2012 R2', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AY14', '14', 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSRVCOLCTC20', '10.161.188.20', 'N/A', 'WINDOWS', 'WINDOWS SERVER 2012 R2', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'BD', 'TCOLP029', '10.161.168.80', 'N/A', 'WINDOWS', 'WINDOWS SERVER 2012 R2', 'SQLREPCT01', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC02', '10.161.188.2', 'TVPSVRCOLCTC02', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIA SERVER1', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC03', '10.161.188.3', 'TVPSVRCOLCTC03', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIA SERVER2', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC25', '10.161.188.25', 'TVPSVRCOLCTC25', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERCOL11', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC04', '10.161.188.4', 'TVPSVRCOLCTC04', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIA SERVER3', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC26', '10.161.188.26', 'TVPSVRCOLCTC26', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERCOL12', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC05', '10.161.188.5', 'TVPSVRCOLCTC05', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIA SERVER4', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC27', '10.161.188.27', 'TVPSVRCOLCTC27', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERCOL13', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC06', '10.161.188.6', 'TVPSVRCOLCTC06', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIA SERVER5', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC28', '10.161.188.28', 'TVPSVRCOLCTC28', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERCOL14', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC07', '10.161.188.7', 'TVPSVRCOLCTC07', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIA SERVER6', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC30', '10.161.188.30', 'TVPSVRCOLCTC30', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERCOL15', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC08', '10.161.188.8', 'TVPSVRCOLCTC08', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIA SERVER7', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC31', '10.161.188.31', 'TVPSVRCOLCTC31', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERCOL16', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC09', '10.161.188.9', 'TVPSVRCOLCTC09', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIA SERVER8', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC32', '10.161.188.32', 'TVPSVRCOLCTC32', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERCOL17', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC10', '10.161.188.10', 'TVPSVRCOLCTC10', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIA SERVER9', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC33', '10.161.188.33', 'TVPSVRCOLCTC33', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERCOL18', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC11', '10.161.188.11', 'TVPSVRCOLCTC11', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIA SERVER10', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC34', '10.161.188.34', 'TVPSVRCOLCTC34', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERCOL19', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC35', '10.161.188.35', 'TVPSVRCOLCTC35', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERCOL20', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC20', '10.161.188.20', 'TVPSVRCOLCTC20', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CIC-ACD-COL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC36', '10.161.188.36', 'TVPSVRCOLCTC36', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERCOL21', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC15', '10.161.188.15', 'TVPSVRCOLCTC15', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CICIVRCOL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC23', '10.161.188.23', 'TVPSVRCOLCTC23', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CICIVRCOL02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC18', '10.161.188.18', 'TVPSVRCOLCTC18', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SIPPROXYCOL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC44', '10.161.188.44', 'TVPSVRCOLCTC44', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SIPPROXYCOL02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC22', '10.161.188.22', 'TVPSVRCOLCTC22', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'TTSCOL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC43', '10.161.188.43', 'TVPSVRCOLCTC43', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ASRCOL04', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC12', '10.161.188.12', 'TVPSVRCOLCTC12', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'REMOTECONTENTCOL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC14', '10.161.188.14', 'TVPSVRCOLCTC14', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CAMPAIGNSERVERCOL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC40', '10.161.188.40', 'TVPSVRCOLCTC40', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CAMPAIGNSERVERCOL02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC17', '10.161.188.17', 'TVPSVRCOLCTC17', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'WEBSERVERCOL01', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP072', '10.164.14.53', 'TMP072', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'GPSPAA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AL14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP073', '10.164.14.57', 'TMP073', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'GPSPAA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AM14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP074', '10.164.14.61', 'TMP074', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'GPSPAA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AJ07', '7', 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP075', '10.164.14.65', 'TMP075', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'GPSPAA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AL14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP072', '10.164.14.53', 'TMP072', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'PSPOL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AL14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'WBOLIVAR0', NULL, 'K2OL', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.134', '17050', 'POOL_K2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'WBOLIVAR1', NULL, 'K2OL2', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.135', '17001', 'POOL_K2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'WLSUCUENTA0', NULL, 'K2OL3', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.143', '17001', 'POOL_K2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'WLSUCUENTA1', NULL, 'K2OL4', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.146', '17050', 'POOL_K2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'WLSUCUENTA1', NULL, 'FCTOL - PROV4', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.146', '17060', 'POOL_FASTCONNECT', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'WBOLIVAR0', NULL, 'FCTOL2 - PROV3', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.134', '17050', 'POOL_FASTCONNECT', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'WLBOLIVAR0PRE', NULL, 'PROV1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.142', '17050', 'POOL_FASTCONNECTBASH', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'WLSUCUENTA3', NULL, 'PROV2', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.161.6.147', '17050', 'POOL_FASTCONNECTBASH', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'TMP055', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.57', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'TMP056', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.50', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'TMP057', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.36', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'TCOLP001', NULL, 'BUS DE PAGOS Y RECARGAS 1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.5', 'N/A', 'VS_OSB1_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'TCOLP002', NULL, 'BUS DE PAGOS Y RECARGAS 1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.9', '7003', 'VS_OSB1_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'TCOLP003', NULL, 'BUS DE PAGOS Y RECARGAS 1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.11', '7007', 'VS_OSB1_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'TCOLP004', NULL, 'BUS DE PAGOS Y RECARGAS 2', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.13', '7003', 'VS_OSB2_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'TCOLP005', NULL, 'BUS DE PAGOS Y RECARGAS 2', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.15', '7007', 'VS_OSB2_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'TCOLP002', NULL, 'BUS DE PAGOS Y RECARGAS OLB', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.9', '7003', 'VS_OSB_PAGOS_Y_RECARGAS_OLB', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'COMUNICACIONES', 'TCOLP003', NULL, 'BUS DE PAGOS Y RECARGAS OLB', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.11', '7007', 'VS_OSB_PAGOS_Y_RECARGAS_OLB', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCA109', '10.161.222.31', 'TCA109', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'KANNEL', 'CANAIMA - A', 'AS24', '24', 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCA110', '10.161.222.27', 'TCA110', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'KANNEL', 'CANAIMA - A', 'AS24', '24', 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCANP032', '10.161.22.195', 'LCL COLGATE', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL COLGATE', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCANP033', '10.161.22.196', 'LCL COLGATE', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL COLGATE', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCANP051', '10.161.170.56', 'TCANP051', 'SUNOS', 'SUNOS  5.11 1', 'N/A', 'ORACLE', NULL, 'N/A', 'TRANFSAL ', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCANP099', '10.162.135.10', 'TCANP099', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.7 (MAIPO)', 'APP', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCANP102', '10.162.135.12', 'TCANP102', 'LINUX', 'RED HAT ENTERPRISE LINUX RELEASE 8.4 (OOTPA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'APLICATIVO APP', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TMP075', '10.164.14.65', 'TMP075', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'TRANF_BE ', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AL14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TMP076', '10.164.14.69', 'LCL CVSC', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL CVSC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AN14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TMP077', '10.164.14.73', 'LCL CVSC', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL CVSC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AJ07', '7', 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TMP159', '10.164.12.204', 'LCL MMO', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.6 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL MMO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TMP160', '10.164.12.129', 'LCL MMO', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.6 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL MMO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TMP178', '10.164.12.93', 'TMP178', 'SUNOS', 'SUNOS 5.11', 'SUR', 'ORACLE', '12.2.0.1.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY1'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TMP178', '10.164.12.93', 'TMP178', 'SUNOS', 'SUNOS 5.11', 'FASTCPP', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY1'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCA149', '10.161.222.195', 'TCA149', 'SUNOS', 'SUNOS 5.10', 'PERS1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TVPRDMIDESB01', '10.161.46.5', 'BUS EXTERNO', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'BUS EXTERNO', 'N/A', 'WEBLOGIC3.0-BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TVPRDMIDESB02', '10.161.46.7', 'BUS EXTERNO', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'BUS EXTERNO', 'N/A', 'WEBLOGIC3.0-BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TVPRDMIDESB03', '10.161.46.9', 'BUS EXTERNO', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'BUS EXTERNO', 'N/A', 'WEBLOGIC3.0-BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TVPRDSRVOHS01', '10.161.46.1', 'TVPRDSRVOHS01', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'OHS', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TVPRDSRVOHS02', '10.161.46.3', 'TVPRDSRVOHS02', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'OHS', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCANP025', '10.161.46.11', 'API-MICROSERVICIOS', 'LINUX', 'RED HAT ENTERPRISE LINUX RELEASE 8.3 (OOTPA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PODS- MASTER NODE', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCOLP114', '10.161.191.3', 'API-MICROSERVICIOS', 'LINUX', 'RED HAT ENTERPRISE LINUX RELEASE 8.3 (OOTPA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PODS- MASTER NODE', 'COLGATE', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TMP227', '10.164.30.12', 'API-MICROSERVICIOS', 'LINUX', 'RED HAT ENTERPRISE LINUX RELEASE 8.3 (OOTPA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PODS- MASTER NODE', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C1 NEW'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCANP026', '10.161.46.12', 'API-MICROSERVICIOS', 'LINUX', 'RED HAT ENTERPRISE LINUX RELEASE 8.3 (OOTPA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PODS- WORKER NODE', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCOLP113', '10.161.191.2', 'API-MICROSERVICIOS', 'LINUX', 'RED HAT ENTERPRISE LINUX RELEASE 8.6 (OOTPA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PODS- WORKER NODE', 'COLGATE', 'N/A', 'N/A', 'REDHAT CLUSTER COLGATE'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TMP228', '10.164.30.13', 'API-MICROSERVICIOS', 'LINUX', 'RED HAT ENTERPRISE LINUX RELEASE 8.3 (OOTPA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PODS- WORKER NODE', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C1 NEW'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TCOLP112', '10.161.191.1', 'API-MICROSERVICIOS', 'LINUX', 'RED HAT ENTERPRISE LINUX RELEASE 8.3 (OOTPA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PODS- SERVIDORES DE REPOSITORIO', 'COLGATE', 'N/A', 'N/A', 'REDHAT CLUSTER COLGATE'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX', 'TMP230', '10.164.30.14', 'API-MICROSERVICIOS', 'LINUX', 'RED HAT ENTERPRISE LINUX RELEASE 8.3 (OOTPA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PODS- SERVIDORES DE REPOSITORIO', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C1 NEW'),
('MUY ALTO', 'RECARGAS', 'APP', 'UNIX - BD', 'TMP178', '10.164.12.93', 'SUR', 'SUNOS', 'SUNOS 5.11', 'SUR', 'ORACLE', '11-2-0-4-0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'COMUNICACIONES', 'TVPRDSRVOSH01', '10.161.46.3', 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', 'N/A', '8001', 'EXT_APP_MG', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'COMUNICACIONES', 'TVPRDSRVOSH02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', 'N/A', '8001', 'EXT_APP_MG', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'COMUNICACIONES', 'TMP076', '10.164.14.69', 'LCL CVSC', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.14.69', '26003-26004-26005-26006', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'COMUNICACIONES', 'TMP077', '10.164.14.73', 'LCL CVSC', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.14.73', '26003-26004-26005-26006-26007', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'COMUNICACIONES', 'TMP159', '10.164.12.204', 'LCL MMO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.12.204', '26003 - 26004 - 26005', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'COMUNICACIONES', 'TMP160', '10.164.12.129', 'LCL MMO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.12.129', '26003 - 26004 - 26005', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'COMUNICACIONES', 'TCANP032', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.6.210', '26003-26004-26005-26006-26007-26008-26009-26010-26011-26012', 'VS_LCL_COLGATE', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'COMUNICACIONES', 'TCANP033', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.6.211', '26003-26004-26005-26006-26007-26008-26009-26010-26011-26012', 'VS_LCL_COLGATE', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'COMUNICACIONES', 'TCA109', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.217', '14150', 'POOL_AGK2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'APP', 'COMUNICACIONES', 'TCA110', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.198', '14150', 'POOL_AGK2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA093', '10.161.38.2', 'TCA093', 'SUNOS', 'ORACLE SOLARIS 11.4 SPARC', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - FRONTEND', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA094', '10.161.38.3', 'TCA094', 'SUNOS', 'ORACLE SOLARIS 11.4 SPARC', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - FRONTEND', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA095', '10.161.38.4', 'TCA095', 'SUNOS', 'ORACLE SOLARIS 11.4 SPARC', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - FRONTEND', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AO21', '21', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA111', '10.161.38.12', 'TCA111', 'SUNOS', 'ORACLE SOLARIS 11.4 SPARC', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - FRONTEND', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AO21', '21', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA097', '10.161.22.149', 'TCA097', 'SUNOS', 'ORACLE SOLARIS 10 1/13 S10S_U11WOS_24A SPARC', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - BACKEND', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA3'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA098', '10.161.22.134', 'TCA098', 'SUNOS', 'ORACLE SOLARIS 10 1/13 S10S_U11WOS_24A SPARC', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - BACKEND', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AO21', '21', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA109', '10.161.222.31', 'TCA109', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - BACKEND', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AS24', '24', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA110', '10.161.222.27', 'TCA110', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - BACKEND', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AS24', '24', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TVPRDMDMM05', '10.161.22.220', 'TVPRDMDMM05', 'SUNOS', 'ORACLE SOLARIS 10 1/13 S10S_U11WOS_24A SPARC', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - BACKEND', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA3'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TVPRDMDMM06', '10.161.22.221', 'TVPRDMDMM06', 'SUNOS', 'ORACLE SOLARIS 10 1/13 S10S_U11WOS_24A SPARC', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - BACKEND', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA3'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA109', '10.161.222.31', 'TCA109', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - AGK2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AS24', '24', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA110', '10.161.222.27', 'TCA110', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - AGK2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AS24', '24', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA109', '10.161.222.31', 'TCA109', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 -K2MMO1', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AS24', '24', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA110', '10.161.222.27', 'TCA110', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 - K2MMO2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AS24', '24', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP076', '10.164.14.69', 'LCL CVSC', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL CVSC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AN14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP077', '10.164.14.73', 'LCL CVSC', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL CVSC', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AJ07', '7', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP159', '10.164.12.204', 'LCL MMO', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.6 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL MMO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP160', '10.164.12.129', 'LCL MMO', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.6 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0-LCL MMO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TVPRDMIDESB01', '10.161.46.5', 'BUS EXTERNO', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'BUS EXTERNO', 'N/A', 'WEBLOGIC3.0-BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TVPRDMIDESB02', '10.161.46.7', 'BUS EXTERNO', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'BUS EXTERNO', 'N/A', 'WEBLOGIC3.0-BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TVPRDMIDESB03', '10.161.46.9', 'BUS EXTERNO', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) ', 'N/A', 'ORACLE', NULL, 'BUS EXTERNO', 'N/A', 'WEBLOGIC3.0-BUS EXTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCOLP001', '10.161.174.161', 'BUS DE PAGOS Y RECARGAS 1', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'BUS DE PAGOS Y RECARGAS1 ', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'XIUS_PROD_POOL'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCOLP002', '10.161.174.162', 'BUS DE PAGOS Y RECARGAS 1', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'BUS DE PAGOS Y RECARGAS1 ', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'XIUS_PROD_POOL'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCOLP003', '10.161.174.163', 'BUS DE PAGOS Y RECARGAS 1', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'BUS DE PAGOS Y RECARGAS1 ', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'XIUS_PROD_POOL'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCOLP004', '10.161.174.164', 'BUS DE PAGOS Y RECARGAS 2', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'BUS DE PAGOS Y RECARGAS2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'XIUS_PROD_POOL'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCOLP005', '10.161.174.165', 'BUS DE PAGOS Y RECARGAS 2', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'BUS DE PAGOS Y RECARGAS2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'XIUS_PROD_POOL'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP055', '10.164.12.197', 'TMP055', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP056', '10.164.12.198', 'TMP056', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP057', '10.164.12.199', 'TMP057', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'SRVCCSVIRK2A', '10.161.6.231', 'SRVCCSVIRK2A', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'SRVCCSVIRK2B', '10.161.6.232', 'SRVCCSVIRK2B', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TUXSRV-E', '10.161.222.57', 'TUXSRV-E', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AV42', '42', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TUXSRV-F', '10.161.222.59', 'TUXSRV-F', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AV42', '42', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TMP036', '10.164.12.139', 'TMP036', 'SUNOS', 'SUNOS 5.11', 'RATING1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PLATAFORMA POSTPAGO', 'MARACAY', 'AL14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TMP037', '10.164.12.143', 'TMP037', 'SUNOS', 'SUNOS 5.11', 'RATING2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PLATAFORMA POSTPAGO', 'MARACAY', 'AJ14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TMP034', '10.164.12.132', 'TMP034', 'SUNOS', 'SUNOS 5.10', 'BILLING1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PLATAFORMA POSTPAGO', 'MARACAY', 'AG07', '7', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TMP035', '10.164.12.135', 'TMP035', 'SUNOS', 'SUNOS 5.10', 'BILLING2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PLATAFORMA POSTPAGO', 'MARACAY', 'AG07', '7', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TMP104', '10.164.12.113 ', 'TMP104', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.2 (SANTIAGO)', 'HBILLING1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PLATAFORMA POSTPAGO', 'MARACAY', 'BA14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TMP105', '10.164.12.127', 'TMP105', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.2 (SANTIAGO)', 'HBILLING2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PLATAFORMA POSTPAGO', 'MARACAY', 'AF11', '11', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TCA149', '10.161.222.195', 'TCA149', 'SUNOS', 'SUNOS 5.10', 'PERS1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PLATAFORMA POSTPAGO', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TCA151', '10.161.222.196', 'TCA151', 'SUNOS', 'SUNOS 5.10', 'PERS2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PLATAFORMA POSTPAGO', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'GBDAMP01', '172.21.2.78', 'GBDAMP01', 'SUNOS', 'SUNOS 5.10', 'ONLINE ', 'ORACLE', '9.2.0.8.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PLATAFORMA POSTPAGO', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'EPAGOS', '200.35.65.107', 'EPAGOS', 'SUNOS', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'WINDOWS', 'SRVCLUAGW3', '10.164.4.133', 'T-CONECTA', 'WINDOWS', 'WINDOWS SERVERN 2008 R2 ENTERPRISE', 'T-CONECTA', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AT11', '11', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'WINDOWS', 'SRVCLUAGW4', '10.164.4.134', 'T-CONECTA', 'WINDOWS', 'WINDOWS SERVERN 2008 R2 ENTERPRISE', 'T-CONECTA', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AT11', '1', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TELPERSONA-B', '172.21.2.63', 'TELPERSONA-B', 'N/A', 'N/A', 'TELPERSONA-B', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AS28', '28', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TCA068', '172.16.50.208', 'BDC', 'HP-UX', 'N/A', 'BDC', 'ORACLE', '9.2.0.6.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - B', 'G10', '10', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TMP133', '10.164.21.106', 'IVR1', 'SUNOS', 'SUNOS 5.11', 'IVR1', 'ORACLE', '11-2-0-4-0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY1'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TMP134', '10.164.21.107', 'IVR2', 'SUNOS', 'SUNOS 5.11', 'IVR2', 'ORACLE', '11-2-0-4-0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY1'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TMP178', '10.164.12.93', 'SUR', 'SUNOS', 'SUNOS 5.11', 'SUR', 'ORACLE', '11-2-0-4-0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY1'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'PUNTO BD01', '200.35.64.60', 'PUNTO BD01', 'N/A', 'N/A', 'PUNTO', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP075', '10.164.14.65', 'TMP075', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'TRANF_BE', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AL14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP040', '10.164.12.147', 'TMP040', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'TUXBBS', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AN14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP040', '10.164.12.147', 'TMP040', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'BBS_GW', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AN14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP041', '10.164.12.151', 'TMP041', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'TUXBBS', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AM14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TMP041', '10.164.12.151', 'TMP041', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'BBS_GW', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AM14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCANP051', '10.161.170.56', 'TCANP051', 'SUNOS', 'SUNOS  5.11 1', 'N/A', 'ORACLE', NULL, 'N/A', 'CVSC_GW', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCANP053', '10.161.22.215', 'TCANP053', 'SUNOS', 'SUNOS 3 5.11 ', 'N/A', 'ORACLE', NULL, 'N/A', 'CVSC_GW', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCANP053', '10.161.22.215', 'TCANP053', 'SUNOS', 'SUNOS 3 5.11 ', 'N/A', 'ORACLE', NULL, 'N/A', 'CVSCPSP', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA109', '10.161.222.31', 'TCA109', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'KANNEL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CLAVE OTP', 'CANAIMA - A', 'AS24', '24', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCA110', '10.161.222.27', 'TCA110', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'KANNEL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CLAVE OTP', 'CANAIMA - A', 'AS24', '24', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCANP009', '10.161.38.5', 'TCANP009', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'OSH MM', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCANP010', '10.161.38.16', 'TCANP010', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'OSH MM', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TVPRDAPPRELAY01', '200.35.65.9', 'TVPRDAPPRELAY01', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DESPACHADORES DE CORREO ELECTRONICO', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TVPRDAPPRELAY02', '200.35.65.10', 'TVPRDAPPRELAY02', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DESPACHADORES DE CORREO ELECTRONICO', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA');
INSERT INTO `catalogo_de_servicio` (`nivel_criticidad`, `servicio_asociado`, `canal_aplicativo`, `area`, `servidor`, `ip`, `hostname`, `sistema_operativo`, `vs_so`, `bbdd`, `dbms`, `vs_bd`, `bus`, `capa_tuxedo`, `weblogic`, `f5_comunicaciones`, `ip_f5`, `port_f5`, `pools_vs`, `otro_servicio_asociado`, `ubicacion`, `rack`, `fila`, `observacion_general`) VALUES
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TVPRDAPPRELAY03', '200.35.65.11', 'TVPRDAPPRELAY03', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DESPACHADORES DE CORREO ELECTRONICO', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TVPRDAPPRELAY04', '200.35.65.12', 'TVPRDAPPRELAY04', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DESPACHADORES DE CORREO ELECTRONICO', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'WINDOWS', 'TMP254', '10.164.3.181', 'MERCHANT ', 'WINDOWS', 'WINDOWS SERVER 2016 STADARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PASARELA DE PAGO', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV03'),
('MUY ALTO', 'RECARGAS', 'MM', 'WINDOWS', 'TMP255', '10.164.3.182', 'MERCHANT ', 'WINDOWS', 'WINDOWS SERVER 2016 STADARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PASARELA DE PAGO', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV03'),
('MUY ALTO', 'RECARGAS', 'MM', 'WINDOWS', 'TMP256', '10.164.3.183', 'MERCHANT ', 'WINDOWS', 'WINDOWS SERVER 2016 STADARD', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'PASARELA DE PAGO', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV03'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'TCANP012', '10.161.6.32', 'TCANP012', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'CLUSTER USSD', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TELPAGO1-B', '10.161.2.40', 'TELPAGO1-B', 'SUNOS', 'SUNOS 5.10', 'OLTP1', 'ORACLE', '9.2.0.8.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TELPAGO1-C', '10.161.2.41', 'TELPAGO1-C', 'SUNOS', 'SUNOS 5.10', 'OLTP2', 'ORACLE', '9.2.0.8.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX - BD', 'TCA070', '172.16.50.207', 'TCA070', 'HP-UX', 'N/A', 'CLUSTER BDC', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - B', 'Q10', '2', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'SMSC-G', '10.161.2.25', 'SMSC-G', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO CANAIMA', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'SMSC-H', '10.161.2.26', 'SMSC-H', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE', '87-15', '15', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'SMSC-I', '10.161.2.27', 'SMSC-I', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO CANAIMA', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'SMSC-J', '10.161.2.28', 'SMSC-J', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO CANAIMA', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'SMSC-L', '10.161.222.45', 'SMSC-L', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO CANAIMA', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'SMS-INY-E', '10.161.2.117', 'SMS-INY-E', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AS29', '1', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'UNIX', 'SMS-INY-F', '101.612.151', 'SMS-INY-F', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AS29', '1', 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TMP076', '10.164.14.69', 'LCL CVSC', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.14.69', '26003-26004-26005-26006', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TMP077', '10.164.14.73', 'LCL CVSC', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.14.73', '26003-26004-26005-26006-26007', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TMP159', '10.164.12.204', 'LCL MMO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.12.204', '26003 - 26004 - 26005', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TMP160', '10.164.12.129', 'LCL MMO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.12.129', '26003 - 26004 - 26005', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCOLP002', '', 'BUS DE PAGOS Y RECARGAS 1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.9', '7005', 'VS_OSB1_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCOLP003', NULL, 'BUS DE PAGOS Y RECARGAS 1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.11', '7009', 'VS_OSB1_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCOLP004', NULL, 'BUS DE PAGOS Y RECARGAS 1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.13', '7005', 'VS_OSB2_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCOLP005', NULL, 'BUS DE PAGOS Y RECARGAS 2', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.15', '7009', 'VS_OSB2_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TMP055', NULL, 'BUS INTERNO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.50', '26003-26004-26009-26008-26012-26013-26010-26011', 'VS_RORAIMA_BUS_INT2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TMP056', NULL, 'BUS INTERNO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.51', '26003-26004-26009-26008-26012-26013-26010-26011', 'VS_RORAIMA_BUS_INT2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TMP057', NULL, 'BUS INTERNO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.36', '26003-26004-26009-26008-26012-26013-26010-26011', 'VS_RORAIMA_BUS_INT2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCOLP001', NULL, 'BUS DE PAGOS Y RECARGAS 1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.5', 'N/A', 'VS_OSB1_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCOLP002', NULL, 'BUS DE PAGOS Y RECARGAS 1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.9', '7003', 'VS_OSB1_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCOLP003', NULL, 'BUS DE PAGOS Y RECARGAS 1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.11', '7007', 'VS_OSB1_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCOLP004', NULL, 'BUS DE PAGOS Y RECARGAS 2', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.13', '7003', 'VS_OSB2_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCOLP005', NULL, 'BUS DE PAGOS Y RECARGAS 2', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 XIUS', '10.161.171.15', '7007', 'VS_OSB2_XIUS_DOMAIN', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TMP055', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.57', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TMP056', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.50', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TMP057', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNET CANAIMA', '10.164.24.36', '26005-26006', 'POOL_RORAIMA_BUS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TVPRDMIDESB01', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.46.6', '7103-7104', 'VS_ESB_EXT12C', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TVPRDMIDESB02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.46.8', '7103-7104', 'VS_ESB_EXT12C', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TVPRDMIDESB03', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.46.10', '7103-7104', 'VS_ESB_EXT12C', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCA109', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.217', '14150', 'POOL_AGK2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCA110', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.198', '14150', 'POOL_AGK2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'MIPUNTO', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.183', '80', 'VS_MIPUNTO_RECARGAS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCA109', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10,161,222,31', '370009', 'POOL_KANNEL_MM_OTP', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TCA110', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.222.27', '370009', 'POOL_KANNEL_MM_OTP', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'SRVCCASMIDTIER01', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.213', '80', 'POOL_MMO_INCIDENCIAS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'SRVCCASMIDTIER02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.8', '80', 'POOL_MMO_INCIDENCIAS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'FRONTEND', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10,162,128,70', '443', 'VS_FE_MMO_CDS', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'PAGINA WEB', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.38.24', '80', 'POOL_WWW.MOVISTAR.COM.VE', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TUXSRV-E', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.222.57', '14155', 'VS_AGK2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'TUXSRV-F', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.222.59', '14155', 'VS_AGK2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'SRVCCSVIRK2A', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.198', '17001', 'POOL_K2MMO_1', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'MM', 'COMUNICACIONES', 'SRVCCSVIRK2B', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.217', '17001', 'POOL_K2MMO_1', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX', 'TCANP059', '10.161.22.12', 'TCANP059', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 7.5 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX', 'TCANP060', '10.161.22.13', 'TCANP060', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 7.4 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX', 'TCANP061', '10.161.22.15', 'TCANP061', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 7.4 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX', 'TCANP062', '10.161.22.16', 'TCANP062', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 7.4 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX', 'TCOLP051', '10.161.170.56', 'TCOLP051', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX', 'SRVMRYAXE01', '10.164.3.128', 'SRVMRYAXE01', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 6.4 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX - BD', 'TMP080', '10.164.14.78', 'IRPT', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 7.9 (MAIPO)', 'IRPT', 'ORACLE', '11.2.0.3.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'WINDOWS', 'SRVCCSCOM3', '10.161.50.4', 'SRVCCSCOM3', 'WINDOWS', 'MICROSOFT WINDOWS SERVER 2003', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'WINDOWS', 'SRVCCSCOM4', '10.161.50.5', 'SRVCCSCOM4', 'WINDOWS', 'MICROSOFT WINDOWS SERVER 2003', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'WINDOWS', 'SRVCCSCOM5', '10.161.50.6', 'SRVCCSCOM5', 'WINDOWS', 'MICROSOFT WINDOWS SERVER 2003', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'WINDOWS', 'SRVCCSCOM6', '10.161.50.7', 'SRVCCSCOM6', 'WINDOWS', 'MICROSOFT WINDOWS SERVER 2003', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'WINDOWS', 'SRVCCSCOM8', '10.161.50.9', 'SRVCCSCOM8', 'WINDOWS', 'MICROSOFT WINDOWS SERVER 2003', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX', 'TCANP061', '10.161.22.15', 'TCANP061', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 7.4 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX', 'TCANP062', '10.161.22.16', 'TCANP062', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 7.4 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX', 'TCOLP051', '10.161.170.56', 'TCOLP051', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX', 'SRVMRYAXE01', '10.164.3.128', 'SRVMRYAXE01', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 6.4 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'UNIX - BD', 'TMP080', '10.164.14.78', 'IRPT', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER 7.9 (MAIPO)', 'IRPT', 'ORACLE', '11.2.0.3.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'WINDOWS', 'SRVCCSCOM3', '10.161.50.4', 'SRVCCSCOM3', 'WINDOWS', 'MICROSOFT WINDOWS SERVER 2003', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'WINDOWS', 'SRVCCSCOM4', '10.161.50.5', 'SRVCCSCOM4', 'WINDOWS', 'MICROSOFT WINDOWS SERVER 2003', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'WINDOWS', 'SRVCCSCOM5', '10.161.50.6', 'SRVCCSCOM5', 'WINDOWS', 'MICROSOFT WINDOWS SERVER 2003', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'WINDOWS', 'SRVCCSCOM6', '10.161.50.7', 'SRVCCSCOM6', 'WINDOWS', 'MICROSOFT WINDOWS SERVER 2003', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACIÓN', 'INTERMEDIATE', 'WINDOWS', 'SRVCCSCOM8', '10.161.50.9', 'SRVCCSCOM8', 'WINDOWS', 'MICROSOFT WINDOWS SERVER 2003', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP043', '10.164.12.159', 'GTUXTAS10', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'VOZRATING', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AJ14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP043', '10.164.12.159', 'GTUXTAS10', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'SMSRAT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AJ14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP044', '10.164.12.163', 'GTUXTAS11', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'VOZRATING', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AK14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP044', '10.164.12.163', 'GTUXTAS11', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'SMSRAT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AK14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP040', '10.164.12.147', 'GTUXBILL05', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'PREBDAT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AN14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP040', '10.164.12.147', 'GTUXBILL05', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'PREBRAT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AN14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP041', '10.164.12.151', 'GTUXBILL06', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'PREBDAT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AM14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP041', '10.164.12.151', 'GTUXBILL06', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'PREBRAT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AM14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP042', '10.164.12.155', 'GTUXTAS09', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'DATOSRAT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AL14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TCA106', '10.161.222.13', 'GTUXTAS07', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'DATOSRAT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - B', 'M13', '1', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP003A', '10.164.4.66', 'GTUXTAS08', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'IME', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AI07', '7', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP003A', '10.164.4.66', 'GTUXTAS08', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'BATCHRAT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AI07', '7', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX - BD', 'TMP036', '10.164.12.139', 'TMP036', 'SUNOS', 'SUNOS 5.11', 'RATING1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY2'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX - BD', 'TMP037', '10.164.12.143', 'TMP037', 'SUNOS', 'SUNOS 5.11', 'RATING2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_MARACAY2'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX - BD', 'TMP034', '10.164.12.132', 'TMP034', 'SUNOS', 'SUNOS 5.10', 'BILLING1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AG07', '7', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX - BD', 'TMP035', '10.164.12.135', 'TMP035', 'SUNOS', 'SUNOS 5.10', 'BILLING2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AG07', '7', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX - BD', 'GBDAMP01', '172.21.2.78', 'GBDAMP01', 'SUNOS', 'SUNOS 5.10', 'ONLINE ', 'ORACLE', '9.2.0.8.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'PSPSRV7', '10.161.222.165', 'PSPSRV7', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DESPACHADORES SMS - PSPSMS', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TCA088A', '10.161.22.94', 'PSPSRV4', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DESPACHADORES SMS - PSPSMS', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'PSPSRV7', '10.161.222.165', 'PSPSRV7', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CONEXIONES POSTPAGO MAN2', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TCA089A', '10.161.22.84', 'PSPSRV6', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CONEXIONES POSTPAGO MAN1', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP043', '10.164.12.159', 'GTUXTAS10', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DESPACHADORES VOZ POSTPAGO - VOZRATING', 'MARACAY', 'AJ14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'TMP044', '10.164.12.163', 'GTUXTAS11', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DESPACHADORES VOZ POSTPAGO - VOZRATING', 'MARACAY', 'AK14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'VB-PO', '192.168.237.85', 'VB-PO', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DESPACHADORES BALANCEO CONEXIONES A TASACION  - SCPRAT', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'VB-PO', '192.168.237.85', 'VB-PO', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DESPACHADORES DATOS', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'GTUXBILL01', '172.21.2.74', 'GTUXBILL01', 'SUNOS', 'SUNOS 5.9 SUN4U', 'N/A', 'ORACLE', NULL, 'N/A', 'GTUXBILL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AE59', '5', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX', 'GTUXBILL02', '172.21.2.80', 'GTUXBILL02', 'SUNOS', 'SUNOS 5.9 SUN4U', 'N/A', 'ORACLE', NULL, 'N/A', 'GTUXBILL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA - A', 'AC57', '6', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX - BD', 'TMP104', '10.164.12.113 ', 'TMP104', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.2 (SANTIAGO)', 'HBILLING1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'BA14', '14', 'N/A'),
('MUY ALTO', 'TASACION POSTPAGO', 'FACTURACION POSTPAGO DE VOZ - DATOS - SMS', 'UNIX - BD', 'TMP105', '10.164.12.127', 'TMP105', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.2 (SANTIAGO)', 'HBILLING2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AF11', '11', 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC24', '10.161.188.24', 'TVPSVRCOLCTC24', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'WEBSERVERCOL02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC19', '10.161.188.19', 'TVPSVRCOLCTC19', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SESSIONMANAGERCOL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC01', '10.161.188.1', 'TVPSVRCOLCTC01', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'INTERACTIONMONITORCOL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC21', '10.161.188.21', 'TVPSVRCOLCTC21', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SESSIONMANAGERCOL02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC41', '10.161.188.41', 'TVPSVRCOLCTC41', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SESSIONMANAGERCOL03', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC42', '10.161.188.42', 'TVPSVRCOLCTC42', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'EXTREMEQUERYCOL01 ', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'SRVCLUCT01', '10.161.188.222', 'SRVCLUCT01', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DATABASE SERVER 1', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'SRVCLUCT02', '10.161.188.223', 'SRVCLUCT02', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'DATABASE SERVER 2', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'N/A', 'N/A', '10.161.188.221', 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'INSTANCIA SQL1 (VIRTUAL) - DATABASE SERVER 1', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'N/A', 'N/A', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'INSTANCIA SQL1 (VIRTUAL) - DATABASE SERVER 2', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC16', '10.161.169.4', 'TVPSVRCOLCTC16', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIA SERVER QA', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRCOLCTC29', '10.161.169.5', 'TVPSVRCOLCTC29', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CIC-IVR QA', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVTSVRCOLCTC37', '10.161.169.1', 'TVTSVRCOLCTC37', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CIC ACD QA SERVER', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVTSVRCOLCTC38', '10.161.169.2', 'TVTSVRCOLCTC38', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CIC ACD QA SWITCHOVER SERVER', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVTSVRCOLCTC39', '10.161.169.3', 'TVTSVRCOLCTC39', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CAMPAIGN SERVER QA', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC01', '10.161.148.1', 'TVPSVRVALCTC01', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC22', '10.161.148.22', 'TVPSVRVALCTC22', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL12', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC02', '10.161.148.2', 'TVPSVRVALCTC02', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC23', '10.161.148.23', 'TVPSVRVALCTC23', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL13', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC03', '10.161.148.3', 'TVPSVRVALCTC03', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL03', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC24', '10.161.148.24', 'TVPSVRVALCTC24', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL14', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC04', '10.161.148.4', 'TVPSVRVALCTC04', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL04', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC25', '10.161.148.25', 'TVPSVRVALCTC25', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL15', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC05', '10.161.148.5', 'TVPSVRVALCTC05', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL05', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC26', '10.161.148.26', 'TVPSVRVALCTC26', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL16', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC06', '10.161.148.6', 'TVPSVRVALCTC06', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL06', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC27', '10.161.148.27', 'TVPSVRVALCTC27', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL17', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC08', '10.161.148.8', 'TVPSVRVALCTC08', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CIC-ACD-VAL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC09', '10.161.148.9', 'TVPSVRVALCTC09', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL07', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC30', '10.161.148.30', 'TVPSVRVALCTC30', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL18', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC10', '10.161.148.10', 'TVPSVRVALCTC10', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL08', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC31', '10.161.148.31', 'TVPSVRVALCTC31', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL19', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC11', '10.161.148.11', 'TVPSVRVALCTC11', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL09', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC32', '10.161.148.32', 'TVPSVRVALCTC32', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL20', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC12', '10.161.148.12', 'TVPSVRVALCTC12', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL10', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC33', '10.161.148.33', 'TVPSVRVALCTC33', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL21', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC13', '10.161.148.13', 'TVPSVRVALCTC13', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MEDIASERVERVAL11', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC34', '10.161.148.34', 'TVPSVRVALCTC34', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CICIVRVAL02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC14', '10.161.148.14', 'TVPSVRVALCTC14', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CICIVRVAL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC16', '10.161.148.16', 'TVPSVRVALCTC16', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SIPPROXYVAL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC36', '10.161.148.36', 'TVPSVRVALCTC36', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SIPPROXYVAL02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC19', '10.161.148.19', 'TVPSVRVALCTC19', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'TTSVAL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC40', '10.161.148.40', 'TVPSVRVALCTC40', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ASRVAL03', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC20', '10.161.148.20', 'TVPSVRVALCTC20', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ASRVAL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC41', '10.161.148.41', 'TVPSVRVALCTC41', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ASRVAL04', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC21', '10.161.148.21', 'TVPSVRVALCTC21', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ASRVAL02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC07', '10.161.148.7', 'TVPSVRVALCTC07', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CAMPAIGNSERVERVAL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC28', '10.161.148.28', 'TVPSVRVALCTC28', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CAMPAIGNSERVERVAL02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC29', '10.161.148.29', 'TVPSVRVALCTC29', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'REMOTECONTENTVAL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC35', '10.161.148.35', 'TVPSVRVALCTC35', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'WEBSERVERVAL 02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC15', '10.161.148.15', 'TVPSVRVALCTC15', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'WEBSERVERVAL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC37', '10.161.148.37', 'TVPSVRVALCTC37', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'INTERACTIONMONITORVAL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC17', '10.161.148.17', 'TVPSVRVALCTC17', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SESSIONMANAGERVAL01', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC38', '10.161.148.38', 'TVPSVRVALCTC38', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SESSIONMANAGERVAL03', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC18', '10.161.148.18', 'TVPSVRVALCTC18', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SESSIONMANAGERVAL02', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'CONTACT-CENTER', 'ACTIVACION', 'WINDOWS', 'TVPSVRVALCTC39', '10.161.148.39', 'TVPSVRVALCTC39', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'EXTREMEQUERYVAL01 ', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'DNS', 'UNIX', 'GLDNS01', '10.161.192.100', 'N/A', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SERVIDOR ZONA GLOBAL   DNS01,DNS03,DNS05', 'CANAIMA - A', 'AE59', '5', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'DNS', 'UNIX', 'GLDNS02', '10.161.192.101', 'N/A', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SERVIDOR ZONA GLOBAL   DNS02,DNS04', 'CANAIMA - A', 'AE59', '5', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'DNS', 'UNIX', 'TCA120', '10.161.222.145', 'N/A', 'SUNOS', 'SUNOS 5.11', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SERVIDOR LDOM T5  DNS08, DNS09', 'CANAIMA - A', 'AC58', '6', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'DNS', 'UNIX', 'TCA121', '10.161.222.148', 'N/A', 'SUNOS', 'SUNOS 5.11', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SERVIDOR LDOM T5  DNS10', 'CANAIMA - A', 'AC58', '6', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'DNS', 'UNIX', 'DNSMRY01\nDNSMCY-CC-001', '10.164.14.231', 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SERVIDOR DNSMR01', 'MARACAY', 'AP07', '7', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'DNS', 'UNIX', 'DNSMRY02\nDNSMCY-CC-002', '10.164.14.233', 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SERVIDOR DNSMR02', 'MARACAY', 'AP07', '7', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOLP129', '10.161.160.24 ', 'N/A', 'WINDOWS', 'VMWARE - ESX/ESXI', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'OPERANDO MAQUINA VIRTUAL BA10DNSMON_CC_001 (TCOLP159) ', 'COLGATE', 'AR25', '25', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOLP130', '10.161.160.25 ', 'N/A', 'WINDOWS', 'VMWARE - ESX/ESXI', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'OPERANDO MAQUINA VIRTUAL BA10DNSMON_CC_002 (TCOLP160) ', 'COLGATE', 'AR25', '25', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOLP133', '10.161.174.113', 'N/A', 'WINDOWS', 'VMWARE - ESX/ESXI', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'BA21', '21', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOLP134', '10.161.174.114', 'N/A', 'WINDOWS', 'VMWARE - ESX/ESXI', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'BA21', '21', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOLP043', '10.161.174.16', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.9 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'REDHAT CLUSTER COLGATE'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOLP044', '10.161.174.17', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.9 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'REDHAT CLUSTER COLGATE'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOPL045', '10.161.174.18', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.9 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'REDHAT CLUSTER COLGATE'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOLP046', '10.161.174.19', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.9 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'REDHAT CLUSTER COLGATE'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOPL047', '10.161.174.20', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.9 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'REDHAT CLUSTER COLGATE'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOLP048', '10.161.174.21', 'N/A', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.9 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'REDHAT CLUSTER COLGATE'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOLP049', '10.161.174.22', 'AUTHORITY', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.9 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'REDHAT CLUSTER COLGATE'),
('MEDIA', 'EMPRESARIALES', 'DNS - COLGATE', 'UNIX', 'TCOLP050', '10.161.174.23', 'AUTHORITY', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.9 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'REDHAT CLUSTER COLGATE'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'UNIX', 'TMP055', '10.164.12.197', 'TMP055', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'LCL MCONTENIDO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'UNIX', 'TMP056', '10.164.12.198', 'TMP056', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'LCL MCONTENIDO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'UNIX', 'TMP057', '10.164.12.199', 'TMP057', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'LCL MCONTENIDO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'UNIX', 'TMP041', '10.164.12.151', 'TMP041', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'GTUXBILL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AM14', '14', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'UNIX', 'TMP072', '10.164.14.53', 'TMP072', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'GPSPAA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AL14', '14', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'UNIX', 'TMP073', '10.164.14.57', 'TMP073', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'GPSPAA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AM14', '14', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'UNIX', 'TMP074', '10.164.14.61', 'TMP074', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'GPSPAA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AJ07', '7', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'UNIX', 'TMP075', '10.164.14.65', 'TMP075', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'GPSPAA', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AL14', '14', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'UNIX', 'TMP072', '10.164.14.53', 'TMP072', 'SOLARIS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'PSPOL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AL14', '14', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'UNIX - BD', 'TCA149', '10.161.222.195', 'TCA149', 'SUNOS', 'SUNOS 5.10', 'PERS1', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'UNIX - BD', 'TCA151', '10.161.222.196', 'TCA151', 'SUNOS', 'SUNOS 5.10', 'PERS2', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'COMUNICACIONES', 'TMP055', NULL, 'BUS INTERNO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.50', '26005-26006-26007', 'VS_RORAIMA2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'COMUNICACIONES', 'TMP056', NULL, 'BUS INTERNO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.51', '26005-26006-26007', 'VS_RORAIMA2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'COMUNICACIONES', 'TMP057', NULL, 'BUS INTERNO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.36', '26005-26006-26007', 'VS_RORAIMA2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'COMUNICACIONES', 'TMP055', NULL, 'LCL MCONTENIDO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.36', '26003-26004-26009-26008-26012-26013-26010-26011', 'VS_RORAIMA_BUS_INT2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'COMUNICACIONES', 'TMP056', NULL, 'LCL MCONTENIDO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.36', '26003-26004-26009-26008-26012-26013-26010-26011', 'VS_RORAIMA_BUS_INT2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'M-CONTENIDO', 'COMUNICACIONES', 'TMP057', NULL, 'LCL MCONTENIDO', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.36', '26003-26004-26009-26008-26012-26013-26010-26011', 'VS_RORAIMA_BUS_INT2', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'PORTAL SENIAT', 'WINDOWS', 'SRVMRYTF02', '10.164.24.45', 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AT11', '11', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'PORTAL SENIAT', 'UNIX', 'TVPRDAPPSENIAT01', '10.164.12.20', 'LINUX - RED HAT', 'LINUX', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'EMPRESARIALES', 'PORTAL SENIAT', 'UNIX', 'TVPRDAPPSENIAT02', '10.164.12.21', 'LINUX - RED HAT', 'LINUX', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'EMPRESARIALES', 'PORTAL SENIAT', 'UNIX', 'TMP149', '10.164.25.90', 'LINUX - RED HAT', 'LINUX', 'N/A', 'PTSENIAT', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AF11', '11', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'PORTAL SENIAT', 'UNIX', 'TMP150', '10.164.25.91', 'LINUX - RED HAT', 'LINUX', 'N/A', 'PTSENIAT', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'BA14', '14', 'N/A');
INSERT INTO `catalogo_de_servicio` (`nivel_criticidad`, `servicio_asociado`, `canal_aplicativo`, `area`, `servidor`, `ip`, `hostname`, `sistema_operativo`, `vs_so`, `bbdd`, `dbms`, `vs_bd`, `bus`, `capa_tuxedo`, `weblogic`, `f5_comunicaciones`, `ip_f5`, `port_f5`, `pools_vs`, `otro_servicio_asociado`, `ubicacion`, `rack`, `fila`, `observacion_general`) VALUES
('MEDIA', 'EMPRESARIALES', 'PORTAL SENIAT', 'WINDOWS', 'TVPRDSRVFESNT01', '10.164.3.88', 'WINDOWS', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'EMPRESARIALES', 'PORTAL SENIAT', 'WINDOWS', 'TVPRDSRVFESNT02', '10.164.3.81', 'WINDOWS', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'EMPRESARIALES', 'PORTAL SENIAT', 'COMUNICACIONES', 'TVPRDSRVFESNT01', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.164.3.88', 'POOL_PTSENIAT', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'PORTAL SENIAT', 'COMUNICACIONES', 'TVPRDSRVFESNT02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.164.3.81', 'POOL_PTSENIAT', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'PORTAL SENIAT', 'COMUNICACIONES', 'TVPRDAPPSENIAT01', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.12.20', 'POOL_PTSENIAT', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'PORTAL SENIAT', 'COMUNICACIONES', 'TVPRDAPPSENIAT02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.12.21', 'POOL_PTSENIAT', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDI TI', 'WINDOWS', 'TMP235', '10.164.4.216', 'N/A', 'WINDOWS', 'N/A', 'BD', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY SAP PI'),
('MEDIA', 'EMPRESARIALES', 'REMEDI TI', 'WINDOWS', 'TMP232', '10.164.3.228', 'ARS1', 'WINDOWS', 'N/A', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SERVIDORES APLICATIVO', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY SAP PI'),
('MEDIA', 'EMPRESARIALES', 'REMEDI TI', 'WINDOWS', 'TMP231', '10.164.3.221', 'ARS2', 'WINDOWS', 'N/A', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SERVIDORES APLICATIVO', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY SAP PI'),
('MEDIA', 'EMPRESARIALES', 'REMEDI TI', 'WINDOWS', 'TMP233', '10.164.3.224', 'MID-TIER1', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SERVIDORES WEB', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV03'),
('MEDIA', 'EMPRESARIALES', 'REMEDI TI', 'WINDOWS', 'TMP234', '10.164.3.225', 'MID-TIER2', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SERVIDORES WEB', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV03'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'UNIX - BD', 'WLL-A', '172.21.6.81', 'N/A', 'SUNOS', 'SUNOS 5.10 ', 'WLGES91', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'REMEDY ATC', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'UNIX - BD', 'SG01-01', '192.168.59.86', 'N/A', 'SUNOS', 'SUNOS 5.10 ', 'ARSYSTEM', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'REMEDY REDES', 'CANAIMA - A', 'AL60', '3', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'UNIX - BD', 'TCOLP025', '10.161.174.15', 'N/A', 'LINUX', 'ORACLE LINUX SERVER RELEASE 6.10', 'ARSYSTEM', 'ORACLE', '11.2.0.4.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'REMEDY REDES', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'UNIX - BD', 'ARSSRV', '10.161.6.41', 'N/A', 'N/A', 'N/A', 'HDESK', 'ORACLE', '9.2.0.7.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'REMEDY TI', 'CANAIMA - B', 'L13', '1', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'UNIX - BD', 'ARSSRV', '10.161.6.41', 'N/A', 'N/A', 'N/A', 'TTRAC', 'ORACLE', '9.2.0.7.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'REMEDY TI', 'CANAIMA - B', 'L13', '1', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'UNIX', 'TCANP013', '10.161.22.172', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.9 (SANTIAGO', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'REMEDY ATC', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'UNIX', 'TCANP014', '10.161.22.173', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.9 (SANTIAGO', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'REMEDY ATC', 'CANAIMA', 'N/A', 'N/A', 'RED HAT CLUSTER CANAIMA'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'UNIX', 'TMP090', '10.164.24.123', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ITSM - REMEDY EMPRESA', 'MARACAY', 'AU11', '11', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'UNIX', 'TMP091', '10.164.24.124', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ITSM - REMEDY EMPRESA', 'MARACAY', 'AU11', '11', 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'WINDOWS', 'SRVCASOS5', '10.162.128.39', 'N/A', 'WINDOWS', 'N/A', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MIDTIER - REMEDY ATC', 'CANAIMA', 'N/A', 'N/A', 'SRVCCSCLUHV01'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'WINDOWS', 'SRVCCSMIDTIER01', '10.161.6.213', 'N/A', 'WINDOWS', 'N/A', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'REMEDY MMO ', 'CANAIMA', 'N/A', 'N/A', 'SRVCCSCLUHV01'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'WINDOWS', 'SRVCCSMIDTIER01', '10.161.6.8', 'N/A', 'WINDOWS', 'N/A', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'REMEDY MMO ', 'CANAIMA', 'N/A', 'N/A', 'SRVCCSCLUHV01'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'WINDOWS', 'SRVSMSCDC1', '10.164.4.185', 'N/A', 'WINDOWS', 'N/A', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'SRVMCYCLUHV02'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'COMUNICACIONES', 'TCANP013', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.148', '32000', 'VS_REMEDY_ATC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'COMUNICACIONES', 'TCANP014', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.149', '32000', 'VS_REMEDY_ATC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'COMUNICACIONES', 'SRVCCSMIDTIER01', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.9', '80', 'VS_REMEDYAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'COMUNICACIONES', 'SRVCCSMIDTIER02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.161.6.26', '80', 'VS_REMEDYAA', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'COMUNICACIONES', 'TMP232', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.3.228', '32000', 'VS_REMEDY_ITSM', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'COMUNICACIONES', 'TMP231', '', 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.3.221', '32000', 'VS_REMEDY_ITSM', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'COMUNICACIONES', 'TMP232', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.3.228', '9427', 'VS_CMDB_REMEDY', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'COMUNICACIONES', 'TMP232', '10.164.15.211', 'BALANCEADOR', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.3.228', '7443', 'VS_CMDB_REMEDY', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY', 'COMUNICACIONES', 'TMP232', '10..164.15.211', 'BALANCEADOR', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.3.228', '32000', 'VS_REMEDY_ITSM', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY EMPRESA', 'COMUNICACIONES', 'REMEDY EMPRESA', NULL, 'MIDTIER', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10,.164.24.123', '32000', 'POOL_REMEDY', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'EMPRESARIALES', 'REMEDY EMPRESA', 'COMUNICACIONES', 'REMEDY EMPRESA', NULL, 'MIDTIER', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.24.124', '32000', 'POOL_REMEDY', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBEBDSDP1', '10.164.75.6', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBEBDSDP2', '10.164.75.7', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBEBDSDP3', '10.164.75.8', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBEBDSDP4', '10.164.75.9', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBEBDSDP5', '10.164.75.10', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBEBDSDP6', '10.164.75.11', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBEBDSDP7', '10.164.75.12', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBEBDSDP8', '10.164.75.13', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBEBDSDP9', '10.164.75.14', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBEBDSDP10', '10.164.75.15', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP1', '10.164.75.16', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP2', '10.164.75.17', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP3', '10.164.75.18', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP4', '10.164.75.19', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP5', '10.164.75.20', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP6', '10.164.75.21', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP11', '10.164.75.243', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP12', '10.164.75.244', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP13', '10.164.75.245', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP14', '10.164.75.246', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP15', '10.164.75.247', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBESDP16', '10.164.75.248', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARFEDSDP1', '10.164.75.22', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARFEDSDP2', '10.164.75.23', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARFEDSDP3', '10.164.75.24', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARFEDSDP4', '10.164.75.25', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARFEDSDP5', '10.164.75.26', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARFEDSDP6', '10.164.75.27', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARFEDSDP7', '10.164.75.28', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARFEDSDP8', '10.164.75.29', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AR14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMAREGSDP1', '10.164.75.30', 'SDP1', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BEBDSDP1', '10.161.164.11', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BEBDSDP2', '10.161.164.12', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BEBDSDP3', '10.161.164.13', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BEBDSDP4', '10.161.164.14', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BEBDSDP5', '10.161.164.15', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BEBDSDP6', '10.161.164.16', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BEBDSDP7', '10.161.164.17', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BEBDSDP8', '10.161.164.18', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BEBDSDP9', '10.161.164.19', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BEBDSDP10', '10.161.164.20', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP1', '10.161.164.21', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP2', '10.161.164.22', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP3', '10.161.164.23', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP4', '10.161.164.24', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP5', '10.161.164.25', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP6', '10.161.164.26', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP11', '10.161.164.57', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP12', '10.161.164.58', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP13', '10.161.164.59', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP14', '10.161.164.60', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP15', '10.161.164.61', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BESDP16', '10.161.164.62', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2FEDSDP1', '10.161.164.27', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2FEDSDP2', '10.161.164.28', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2FEDSDP3', '10.161.164.29', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2FEDSDP4', '10.161.164.30', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2FEDSDP5', '10.161.164.31', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2FEDSDP6', '10.161.164.32', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2FEDSDP7', '10.161.164.33', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2FEDSDP8', '10.161.164.34', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2EGSDP1', '10.161.164.35', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2EGBDSDP1', '10.161.164.36', 'SDP3', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AX11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VMARBEBDSDP1', '10.164.75.121', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)', 'BD SDP1', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AS14', '14', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOL2BEBDSDP1', '10.161.164.11', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'BD SDP3', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'AW11', '11', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLBESG13', '10.161.77.83', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'BD PPGA', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLBESG14', '10.161.77.84 ', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'BD PPGA', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLBESG15', '10.161.77.85 ', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'BD PPGA', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLBESG16', '10.161.77.86 ', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'BD PPGA', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLBESG17', '10.161.77.87', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'BD PPGA', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLBESG13', '10.161.77.83', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'BD OPGE', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLBESG14', '10.161.77.84 ', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'BD OPGE', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLBESG15', '10.161.77.85 ', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'BD OPGE', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLBESG16', '10.161.77.86 ', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'BD OPGE', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLBESG17', '10.161.77.87', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'BD OPGE', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLFESG1', '10.161.77.18 ', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLFESWG2', '10.161.77.19', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG2 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLFEWSG1', '10.161.77.22', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.5 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG2 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX - ALTAMIRA', 'VCOLFEWSG2', '10.161.77.23', 'N/A', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 5.5 (TIKANGA)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MTSO COLGATE (ALTAMIRA)', 'ALTAMIRA SG1 - 19', '19', 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX', 'CVFACT03', '10.161.6.77', 'CVFACT03', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 FCT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX', 'CVFACT04', '10.161.6.175', 'CVFACT04', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 FCT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX', 'SRVCCSVIRK2A', '10.161.6.231', 'SRVCCSVIRK2A', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 FCT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX', 'SRVCCSVIRK2B', '10.161.6.232', 'SRVCCSVIRK2B', 'SUNOS', 'SUNOS 5.10', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 FCT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX', 'TMP159', '10.164.12.204', 'TMP159', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.6 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 FCT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'UNIX', 'TMP160', '10.164.12.129', 'TMP160', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.6 (MAIPO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 3.0 FCT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'COMUNICACIONES', 'CVFACT03', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 ALTAMIRA', '10.161.6.77', '17050', 'VS AA_FCT_VS1', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'COMUNICACIONES', 'CVFACT04', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 ALTAMIRA', '10.161.6.175', '17050', 'VS AA_FCT_VS1', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'COMUNICACIONES', 'SRVCCSVIRK2A', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 ALTAMIRA', '10.161.6.231', '17050', 'VS AA_FCT_VS1', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'COMUNICACIONES', 'SRVCCSVIRK2B', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 ALTAMIRA', '10.161.6.232', '17050', 'VS AA_FCT_VS1', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'COMUNICACIONES', 'TMP159', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.12.204', '26003 - 26004 - 26005', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('N/A', 'FACTURACION', 'ALTAMIRA - PREPAGO', 'COMUNICACIONES', 'TMP160', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 MARACAY', '10.164.12.129', '26003 - 26004 - 26005', 'VS_RORAIMA_LCL_CVSC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO - ICS', 'UNIX', 'TVPRDAPPICS01', '10.164.21.19', 'TVPRDAPPICS01', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC ICS1', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'FACTURACION', 'POSTPAGO - ICS', 'UNIX', 'TVPRDAPPICS02', '10.164.21.20', 'TVPRDAPPICS02', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC ICS2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'FACTURACION', 'POSTPAGO - ICS', 'UNIX', 'TVPRDAPPICS03', '10.164.21.21', 'TVPRDAPPICS03', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC ICS3', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'FACTURACION', 'POSTPAGO - ICS', 'UNIX', 'TVPRDAPPICS04', '10.164.21.22', 'TVPRDAPPICS04', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC ICS4', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C2'),
('MEDIA', 'FACTURACION', 'POSTPAGO - ICS', 'COMUNICACIONES', 'SRVDOC1WEB2', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.7', '80', 'VS_FACTELWEB', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO - ICS', 'COMUNICACIONES', 'SRVDOC1WEB1', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.6', '80', 'VS_FACTELWEB', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO - ICS', 'COMUNICACIONES', 'WLBOLIVAR0PRE', NULL, 'N/A', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC FACTEL', 'F5 INTERNTE CANAIMA', '10.161.22.129', '20000-20001', 'POOL_FACTEL', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO - ICS', 'COMUNICACIONES', 'WLBOLIVAR1', NULL, 'N/A', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC FACTEL', 'F5 INTERNTE CANAIMA', '10.161.22.125', '20000-20001', 'POOL_FACTEL', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO - ICS', 'COMUNICACIONES', 'WLBOLIVAR0', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNTE CANAIMA', '10,161,22,124', '17501', 'VS_MRC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO - ICS', 'COMUNICACIONES', 'TVPRDAPPICS01', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.164.21.19', '3080', 'POOL_ICS_HTTP', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO - ICS', 'COMUNICACIONES', 'TVPRDAPPICS02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.164.21.20', '3080', 'POOL_ICS_HTTP', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO- FACTEL', 'WINDOWS', 'SRVDOC1WEB2', '10.162.128.7', 'N/A', 'WINDOWS', 'WINDOWS SERVER 2003 R2', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'FRONTEND DE FACTEL ', 'CANAIMA - B', 'E7', '3', 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO- FACTEL', 'WINDOWS', 'SRVDOC1WEB', '10.162.128.6', 'N/A', 'WINDOWS', 'WINDOWS SERVER 2003 R2', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'FRONTEND DE FACTEL ', 'CANAIMA - B', 'F7', '3', 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO- FACTEL', 'UNIX', 'WLBOLIVAR0PRE', '10.161.22.125', 'N/A', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC FACTEL', 'F5 INTERNTE CANAIMA', '10.161.22.129', '20000-20001', 'POOL_FACTEL', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'FACTURACION', 'POSTPAGO- FACTEL', 'UNIX', 'WLBOLIVAR1', '10.161.22.129', 'N/A', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC FACTEL', 'F5 INTERNTE CANAIMA', '10.161.22.125', '20000-20001', 'POOL_FACTEL', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'FACTURACION', 'POSTPAGO- FACTEL', 'UNIX', 'SRVDOC1VLT1', '10.161.155.79', 'N/A', 'WINDOWS', 'WINDOWS SERVER 2003 R2', 'N/A', 'MICROSOFT SQL SERVER', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SERVICIO VAULT', 'CANAIMA', 'N/A', 'N/A', 'SRVCCSCLUHV01'),
('MEDIA', 'FACTURACION', 'POSTPAGO- FACTEL', 'COMUNICACIONES', 'SRVDOC1WEB2', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.7', '80', 'VS_FACTELWEB', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO- FACTEL', 'COMUNICACIONES', 'SRVDOC1WEB1', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.162.128.6', '80', 'VS_FACTELWEB', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO- FACTEL', 'COMUNICACIONES', 'SRVDOC1VLT1', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO FIDELIZAME  - MCRAS1', 'UNIX', 'WLBOLIVAR0', '10.161.22.124', 'N/A', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC FIDELIZAME', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'FACTURACION', 'POSTPAGO FIDELIZAME  - MCRAS1', 'UNIX', 'WLBOLIVAR1', '10.161.22.129', 'N/A', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC FIDELIZAME', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MEDIA', 'FACTURACION', 'POSTPAGO FIDELIZAME  - MCRAS1', 'COMUNICACIONES', 'WLBOLIVAR0', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 INTERNTE CANAIMA', '10,161,22,124', '17501', 'VS_MRC', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO FIDELIZAME  - MCRAS1', 'COMUNICACIONES', 'TVPRDAPPICS01', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.164.21.19', '3080', 'POOL_ICS_HTTP', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MEDIA', 'FACTURACION', 'POSTPAGO FIDELIZAME  - MCRAS1', 'COMUNICACIONES', 'TVPRDAPPICS02', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'F5 AUTOGESTION', '10.164.21.20', '3080', 'POOL_ICS_HTTP', 'N/A', 'N/A', NULL, NULL, 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP055', '10.164.12.197', 'TMP055', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP056', '10.164.12.198', 'TMP056', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP057', '10.164.12.199', 'TMP057', 'LINUX', 'ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)', 'N/A', 'ORACLE', NULL, 'BUS INTERNO', 'N/A', 'WEBLOGIC 3.0-BUS INTERNO', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'AH14', '14', 'N/A'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP062', '10.164.12.231', 'TELCO', 'LINUX', 'RED HAT 4.8.5-44', 'TELCO1', 'ORACLE', '11.2.0.3.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C1'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP063', '10.164.12.233', 'TELCO', 'LINUX', 'RED HAT 4.8.5-44', 'TELCO2', 'ORACLE', '11.2.0.3.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C1'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP060', '10.164.12.223', 'OLB', 'LINUX', 'RED HAT 4.8.5-44', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ENLACE PRINCIPAL', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C1'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TMP061', '10.164.12.225', 'OLB', 'LINUX', 'RED HAT 4.8.5-44', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ENLACE SECUNDARIO', 'MARACAY', 'N/A', 'N/A', 'RHEV MARACAY C1'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TCA107', '10.161.222.15', 'N/A', 'SUNOS', 'SUNOS 5.10 SUN4V', 'N/A', 'ORACLE', NULL, 'N/A', 'PSPOL', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'WLSUCUENTA1', '10.161.22.131', 'K2OL-FCTCNT', 'SUNOS', 'SUNOS 5.10 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 2.0-K2OL/FCTCNT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'WLBOLIVAR1', '10.161.22.129', 'K2OL2-FCTCNT', 'SUNOS', 'SUNOS 5.10 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 2.0-K2OL2/FCTCNT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'CANAIMA', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'WLSUCUENTA0', '10.161.22.126', 'K2OL3-FCTCNT', 'SUNOS', 'SUNOS 5.10 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 2.0-K2OL3/FCTCNT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'WLBOLIVAR0', '10.161.22.124', 'K2OL4-FCTCNT', 'SUNOS', 'SUNOS 5.10 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 2.0-K2OL4/FCTCNT', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'WLSUCUENTA', '10.161.2.66', 'K2 BATCH-FCTCNT BATCH', 'SUNOS', 'SUNOS 5.10 ', 'N/A', 'ORACLE', NULL, 'N/A', 'N/A', 'WEBLOGIC 2.0-K2BATCH/FCTCNT BATCH', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'LDOM_CANAIMA2 '),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TCOLP001', '10.161.174.161', 'BUS DE PAGOS Y RECARGAS 1', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'BUS DE PAGOS Y RECARGAS1 ', 'N/A', 'WEBLOGIC 3.0', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MARACAY', 'N/A', 'N/A', 'XIUS_PROD_POOL'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TCOLP002', '10.161.174.162', 'BUS DE PAGOS Y RECARGAS 1', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'BUS DE PAGOS Y RECARGAS1 ', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'XIUS_PROD_POOL'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TCOLP003', '10.161.174.163', 'BUS DE PAGOS Y RECARGAS 1', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'BUS DE PAGOS Y RECARGAS1 ', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'XIUS_PROD_POOL'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TCOLP004', '10.161.174.164', 'BUS DE PAGOS Y RECARGAS 2', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'BUS DE PAGOS Y RECARGAS2 ', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'XIUS_PROD_POOL'),
('MUY ALTO', 'RECARGAS', 'BANCOS Y GRE', 'UNIX', 'TCOLP005', '10.161.174.165', 'BUS DE PAGOS Y RECARGAS 2', 'LINUX', 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.7 ', 'N/A', 'ORACLE', NULL, 'BUS DE PAGOS Y RECARGAS2 ', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'COLGATE', 'N/A', 'N/A', 'XIUS_PROD_POOL');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `catalogo_de_servicio_completo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `catalogo_de_servicio_completo` (
`nivel_criticidad` varchar(255)
,`color` char(10)
,`critico` tinyint(1)
,`servicio_asociado` varchar(255)
,`canal_aplicativo` varchar(255)
,`area` varchar(255)
,`servidor` varchar(255)
,`ip` varchar(255)
,`hostname` varchar(255)
,`sistema_operativo` varchar(255)
,`vs_so` varchar(255)
,`bbdd` varchar(255)
,`dbms` varchar(255)
,`vs_bd` varchar(255)
,`bus` varchar(255)
,`capa_tuxedo` varchar(255)
,`weblogic` varchar(255)
,`f5_comunicaciones` varchar(255)
,`port_f5` varchar(255)
,`ip_f5` varchar(255)
,`pools_vs` varchar(255)
,`otro_servicio_asociado` varchar(255)
,`ubicacion` varchar(255)
,`rack` varchar(255)
,`fila` varchar(255)
,`observacion_general` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `catalogo_empresariales`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `catalogo_empresariales` (
`nivel_criticidad` varchar(255)
,`servicio_asociado` varchar(255)
,`canal_aplicativo` varchar(255)
,`servidor` varchar(255)
,`ip` varchar(255)
,`hostname` varchar(255)
,`bbdd` varchar(255)
,`bus` varchar(255)
,`capa_tuxedo` varchar(255)
,`weblogic` varchar(255)
,`ubicacion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `catalogo_facturacion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `catalogo_facturacion` (
`nivel_criticidad` varchar(255)
,`servicio_asociado` varchar(255)
,`canal_aplicativo` varchar(255)
,`servidor` varchar(255)
,`ip` varchar(255)
,`hostname` varchar(255)
,`bbdd` varchar(255)
,`bus` varchar(255)
,`capa_tuxedo` varchar(255)
,`weblogic` varchar(255)
,`ubicacion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `catalogo_general`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `catalogo_general` (
`nivel_criticidad` varchar(255)
,`color` char(10)
,`critico` tinyint(1)
,`servicio_asociado` varchar(255)
,`canal_aplicativo` varchar(255)
,`area` varchar(255)
,`servidor` varchar(255)
,`ip` varchar(255)
,`hostname` varchar(255)
,`sistema_operativo` varchar(255)
,`vs_so` varchar(255)
,`bbdd` varchar(255)
,`dbms` varchar(255)
,`vs_bd` varchar(255)
,`bus` varchar(255)
,`capa_tuxedo` varchar(255)
,`weblogic` varchar(255)
,`f5_comunicaciones` varchar(255)
,`port_f5` varchar(255)
,`ip_f5` varchar(255)
,`pools_vs` varchar(255)
,`otro_servicio_asociado` varchar(255)
,`ubicacion` varchar(255)
,`rack` varchar(255)
,`fila` varchar(255)
,`observacion_general` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `catalogo_recargas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `catalogo_recargas` (
`nivel_criticidad` varchar(255)
,`servicio_asociado` varchar(255)
,`canal_aplicativo` varchar(255)
,`servidor` varchar(255)
,`ip` varchar(255)
,`hostname` varchar(255)
,`bbdd` varchar(255)
,`bus` varchar(255)
,`capa_tuxedo` varchar(255)
,`weblogic` varchar(255)
,`ubicacion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `catalogo_tasacion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `catalogo_tasacion` (
`nivel_criticidad` varchar(255)
,`servicio_asociado` varchar(255)
,`canal_aplicativo` varchar(255)
,`servidor` varchar(255)
,`ip` varchar(255)
,`hostname` varchar(255)
,`bbdd` varchar(255)
,`bus` varchar(255)
,`capa_tuxedo` varchar(255)
,`weblogic` varchar(255)
,`ubicacion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `catalogo_tasacion_postpago`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `catalogo_tasacion_postpago` (
`nivel_criticidad` varchar(255)
,`servicio_asociado` varchar(255)
,`canal_aplicativo` varchar(255)
,`servidor` varchar(255)
,`ip` varchar(255)
,`hostname` varchar(255)
,`bbdd` varchar(255)
,`bus` varchar(255)
,`capa_tuxedo` varchar(255)
,`weblogic` varchar(255)
,`ubicacion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cs_nivel_de_criticidad`
--

CREATE TABLE `cs_nivel_de_criticidad` (
  `id` int(11) NOT NULL,
  `nivel_criticidad` varchar(50) NOT NULL,
  `color` char(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `critico` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cs_nivel_de_criticidad`
--

INSERT INTO `cs_nivel_de_criticidad` (`id`, `nivel_criticidad`, `color`, `critico`) VALUES
(1, 'N/A', 'BLANCO', 0),
(2, 'MUY ALTO', 'ROJO', 1),
(3, 'ALTO', 'NARANJA', 1),
(4, 'MEDIA', 'AMARILLO', 0),
(5, 'BAJO', 'AZUL', 0),
(6, 'MUY BAJO', 'VERDE', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f5_comunicaciones`
--

CREATE TABLE `f5_comunicaciones` (
  `id` int(11) NOT NULL,
  `f5_comunicaciones` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `f5_comunicaciones`
--

INSERT INTO `f5_comunicaciones` (`id`, `f5_comunicaciones`, `descripcion`) VALUES
(1, 'AUTOGESTION', NULL),
(2, 'F5 ALTAMIRA', NULL),
(3, 'F5 AUTOGESTION', NULL),
(4, 'F5 INTERNET CANAIMA', NULL),
(5, 'F5 INTERNTE CANAIMA', NULL),
(6, 'F5 MARACAY', NULL),
(7, 'F5 XIUS', NULL),
(8, 'N/A', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostinanme`
--

CREATE TABLE `hostinanme` (
  `id` int(11) NOT NULL,
  `hostname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hostinanme`
--

INSERT INTO `hostinanme` (`id`, `hostname`) VALUES
(1, 'API-MICROSERVICIOS'),
(2, 'ARS1'),
(3, 'ARS2'),
(4, 'AUTHORITY'),
(5, 'BALANCEADOR'),
(6, 'BDC'),
(7, 'BUS DE PAGOS Y RECARGAS 1'),
(8, 'BUS DE PAGOS Y RECARGAS 2'),
(9, 'BUS DE PAGOS Y RECARGAS OLB'),
(10, 'BUS EXTERNO'),
(11, 'BUS INTERNO'),
(12, 'CRM - DR'),
(13, 'CRM - PRIMARIO'),
(14, 'CRM - SECUNDARIO'),
(15, 'CVFACT03'),
(16, 'CVFACT04'),
(17, 'EPAGOS'),
(18, 'FCT BATCH'),
(19, 'FCT PROV1'),
(20, 'FCT PROV2'),
(21, 'FCT PROV3'),
(22, 'FCT PROV4'),
(23, 'FCTOL'),
(24, 'FCTOL - PROV4'),
(25, 'FCTOL2'),
(26, 'FCTOL2 - PROV3'),
(27, 'FIELIZAMEBATCH'),
(28, 'FILEDIZAME MCRASS1'),
(29, 'FILEDIZAME MCRASS2'),
(30, 'GBDAMP01'),
(31, 'GTUXBILL01'),
(32, 'GTUXBILL02'),
(33, 'GTUXBILL05'),
(34, 'GTUXBILL06'),
(35, 'GTUXTAS07'),
(36, 'GTUXTAS08'),
(37, 'GTUXTAS09'),
(38, 'GTUXTAS10'),
(39, 'GTUXTAS11'),
(40, 'IRPT'),
(41, 'IVR1'),
(42, 'IVR2'),
(43, 'K2 BATCH'),
(44, 'K2 BATCH-FCTCNT BATCH'),
(45, 'K2MMO1'),
(46, 'K2MMO2'),
(47, 'K2MMOVIRK2A'),
(48, 'K2MMOVIRK2B'),
(49, 'K2OL'),
(50, 'K2OL2'),
(51, 'K2OL2-FCTCNT'),
(52, 'K2OL3'),
(53, 'K2OL3-FCTCNT'),
(54, 'K2OL4'),
(55, 'K2OL4-FCTCNT'),
(56, 'K2OL-FCTCNT'),
(57, 'LCL COLGATE'),
(58, 'LCL CVSC'),
(59, 'LCL MCONTENIDO'),
(60, 'LCL MMO'),
(61, 'LINUX - RED HAT'),
(62, 'MERCHANT '),
(63, 'MIDTIER'),
(64, 'MID-TIER1'),
(65, 'MID-TIER2'),
(66, 'N/A'),
(67, 'OLB'),
(68, 'OSH01'),
(69, 'OSH02'),
(70, 'PROV1'),
(71, 'PROV2'),
(72, 'PSPSRV4'),
(73, 'PSPSRV6'),
(74, 'PSPSRV7'),
(75, 'PUNTO BD01'),
(76, 'SDP1'),
(77, 'SDP3'),
(78, 'SERVIDOR INTERNOS '),
(79, 'SERVIDORES AGENTES'),
(80, 'SMSC-G'),
(81, 'SMSC-H'),
(82, 'SMSC-I'),
(83, 'SMSC-J'),
(84, 'SMSC-L'),
(85, 'SMS-INY-E'),
(86, 'SMS-INY-F'),
(87, 'SRVCCSCOM3'),
(88, 'SRVCCSCOM4'),
(89, 'SRVCCSCOM5'),
(90, 'SRVCCSCOM6'),
(91, 'SRVCCSCOM8'),
(92, 'SRVCCSVIRK2A'),
(93, 'SRVCCSVIRK2B'),
(94, 'SRVCLUCT01'),
(95, 'SRVCLUCT02'),
(96, 'SRVMRYAXE01'),
(97, 'SUR'),
(98, 'TCA070'),
(99, 'TCA093'),
(100, 'TCA094'),
(101, 'TCA095'),
(102, 'TCA097'),
(103, 'TCA098'),
(104, 'TCA109'),
(105, 'TCA110'),
(106, 'TCA111'),
(107, 'TCA149'),
(108, 'TCA151'),
(109, 'TCANP009'),
(110, 'TCANP010'),
(111, 'TCANP012'),
(112, 'TCANP039'),
(113, 'TCANP040'),
(114, 'TCANP041'),
(115, 'TCANP051'),
(116, 'TCANP053'),
(117, 'TCANP059'),
(118, 'TCANP060'),
(119, 'TCANP061'),
(120, 'TCANP062'),
(121, 'TCANP072'),
(122, 'TCANP099'),
(123, 'TCANP102'),
(124, 'TCOLP051'),
(125, 'TCOLP091'),
(126, 'T-CONECTA'),
(127, 'TELCO'),
(128, 'TELPAGO1-B'),
(129, 'TELPAGO1-C'),
(130, 'TELPERSONA-B'),
(131, 'TERCERIOIZADOS '),
(132, 'TMP034'),
(133, 'TMP035'),
(134, 'TMP036'),
(135, 'TMP037'),
(136, 'TMP039'),
(137, 'TMP040'),
(138, 'TMP041'),
(139, 'TMP055'),
(140, 'TMP056'),
(141, 'TMP057'),
(142, 'TMP072'),
(143, 'TMP073'),
(144, 'TMP074'),
(145, 'TMP075'),
(146, 'TMP078'),
(147, 'TMP079'),
(148, 'TMP104'),
(149, 'TMP105'),
(150, 'TMP133'),
(151, 'TMP134'),
(152, 'TMP159'),
(153, 'TMP160'),
(154, 'TMP165'),
(155, 'TMP166'),
(156, 'TMP167'),
(157, 'TMP178'),
(158, 'TUXSRV-E'),
(159, 'TUXSRV-F'),
(160, 'TVPRDAPPICS01'),
(161, 'TVPRDAPPICS02'),
(162, 'TVPRDAPPICS03'),
(163, 'TVPRDAPPICS04'),
(164, 'TVPRDAPPRELAY01'),
(165, 'TVPRDAPPRELAY02'),
(166, 'TVPRDAPPRELAY03'),
(167, 'TVPRDAPPRELAY04'),
(168, 'TVPRDMDMM05'),
(169, 'TVPRDMDMM06'),
(170, 'TVPRDMIDESB01'),
(171, 'TVPRDMIDESB02'),
(172, 'TVPRDMIDESB03'),
(173, 'TVPRDSRVFSTC01'),
(174, 'TVPRDSRVFSTC02'),
(175, 'TVPRDSRVOHS01'),
(176, 'TVPRDSRVOHS02'),
(177, 'TVPSVRCOLCTC01'),
(178, 'TVPSVRCOLCTC02'),
(179, 'TVPSVRCOLCTC03'),
(180, 'TVPSVRCOLCTC04'),
(181, 'TVPSVRCOLCTC05'),
(182, 'TVPSVRCOLCTC06'),
(183, 'TVPSVRCOLCTC07'),
(184, 'TVPSVRCOLCTC08'),
(185, 'TVPSVRCOLCTC09'),
(186, 'TVPSVRCOLCTC10'),
(187, 'TVPSVRCOLCTC11'),
(188, 'TVPSVRCOLCTC12'),
(189, 'TVPSVRCOLCTC14'),
(190, 'TVPSVRCOLCTC15'),
(191, 'TVPSVRCOLCTC16'),
(192, 'TVPSVRCOLCTC17'),
(193, 'TVPSVRCOLCTC18'),
(194, 'TVPSVRCOLCTC19'),
(195, 'TVPSVRCOLCTC20'),
(196, 'TVPSVRCOLCTC21'),
(197, 'TVPSVRCOLCTC22'),
(198, 'TVPSVRCOLCTC23'),
(199, 'TVPSVRCOLCTC24'),
(200, 'TVPSVRCOLCTC25'),
(201, 'TVPSVRCOLCTC26'),
(202, 'TVPSVRCOLCTC27'),
(203, 'TVPSVRCOLCTC28'),
(204, 'TVPSVRCOLCTC29'),
(205, 'TVPSVRCOLCTC30'),
(206, 'TVPSVRCOLCTC31'),
(207, 'TVPSVRCOLCTC32'),
(208, 'TVPSVRCOLCTC33'),
(209, 'TVPSVRCOLCTC34'),
(210, 'TVPSVRCOLCTC35'),
(211, 'TVPSVRCOLCTC36'),
(212, 'TVPSVRCOLCTC40'),
(213, 'TVPSVRCOLCTC41'),
(214, 'TVPSVRCOLCTC42'),
(215, 'TVPSVRCOLCTC43'),
(216, 'TVPSVRCOLCTC44'),
(217, 'TVPSVRVALCTC01'),
(218, 'TVPSVRVALCTC02'),
(219, 'TVPSVRVALCTC03'),
(220, 'TVPSVRVALCTC04'),
(221, 'TVPSVRVALCTC05'),
(222, 'TVPSVRVALCTC06'),
(223, 'TVPSVRVALCTC07'),
(224, 'TVPSVRVALCTC08'),
(225, 'TVPSVRVALCTC09'),
(226, 'TVPSVRVALCTC10'),
(227, 'TVPSVRVALCTC11'),
(228, 'TVPSVRVALCTC12'),
(229, 'TVPSVRVALCTC13'),
(230, 'TVPSVRVALCTC14'),
(231, 'TVPSVRVALCTC15'),
(232, 'TVPSVRVALCTC16'),
(233, 'TVPSVRVALCTC17'),
(234, 'TVPSVRVALCTC18'),
(235, 'TVPSVRVALCTC19'),
(236, 'TVPSVRVALCTC20'),
(237, 'TVPSVRVALCTC21'),
(238, 'TVPSVRVALCTC22'),
(239, 'TVPSVRVALCTC23'),
(240, 'TVPSVRVALCTC24'),
(241, 'TVPSVRVALCTC25'),
(242, 'TVPSVRVALCTC26'),
(243, 'TVPSVRVALCTC27'),
(244, 'TVPSVRVALCTC28'),
(245, 'TVPSVRVALCTC29'),
(246, 'TVPSVRVALCTC30'),
(247, 'TVPSVRVALCTC31'),
(248, 'TVPSVRVALCTC32'),
(249, 'TVPSVRVALCTC33'),
(250, 'TVPSVRVALCTC34'),
(251, 'TVPSVRVALCTC35'),
(252, 'TVPSVRVALCTC36'),
(253, 'TVPSVRVALCTC37'),
(254, 'TVPSVRVALCTC38'),
(255, 'TVPSVRVALCTC39'),
(256, 'TVPSVRVALCTC40'),
(257, 'TVPSVRVALCTC41'),
(258, 'TVTSVRCOLCTC37'),
(259, 'TVTSVRCOLCTC38'),
(260, 'TVTSVRCOLCTC39'),
(261, 'USUARIO CIES'),
(262, 'VB-PO'),
(263, 'WINDOWS'),
(264, 'WLBOLIVAR1'),
(265, 'WLSUCUENTA0PRE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manejador_de_bases_de_datos`
--

CREATE TABLE `manejador_de_bases_de_datos` (
  `id` int(11) NOT NULL,
  `dbms` varchar(255) NOT NULL,
  `descripcion` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `manejador_de_bases_de_datos`
--

INSERT INTO `manejador_de_bases_de_datos` (`id`, `dbms`, `descripcion`) VALUES
(1, 'ORACLE', NULL),
(2, 'MICROSOFT SQL SERVER', NULL),
(3, 'IBM DB2', NULL),
(4, 'TERADATA', NULL),
(5, 'SAP SYBASE', NULL),
(6, 'MYSQL', NULL),
(7, 'MARIA DB', NULL),
(8, 'POSTGRESQL', NULL),
(9, 'MONGO DB', NULL),
(10, 'COUCHBASE SERVER', NULL),
(11, 'MARK LOGIC SERVER', NULL),
(12, 'ELASTIC SEARCH', NULL),
(13, 'REDIS', NULL),
(14, 'RIAK', NULL),
(15, 'MICROSOFT AZURE TABLE STORAGE', NULL),
(16, 'APACHE CASSANDRA', NULL),
(17, 'APACHE HBASE', NULL),
(18, 'NEO4J', NULL),
(19, 'INFINITE GRAPH', NULL),
(20, 'AMAZON SIMPLEDB', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombres_de_bases_de_datos`
--

CREATE TABLE `nombres_de_bases_de_datos` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nombres_de_bases_de_datos`
--

INSERT INTO `nombres_de_bases_de_datos` (`id`, `nombres`, `descripcion`) VALUES
(2, 'APP', NULL),
(3, 'ARSYSTEM', NULL),
(4, 'BD', NULL),
(5, 'BD OPGE', NULL),
(6, 'BD PPGA', NULL),
(7, 'BD SDP1', NULL),
(8, 'BD SDP3', NULL),
(9, 'BDC', NULL),
(10, 'BILLING1', NULL),
(11, 'BILLING2', NULL),
(12, 'CLUSTER BDC', NULL),
(13, 'FASTCP', NULL),
(14, 'FASTCPP', NULL),
(15, 'FASTW1', NULL),
(16, 'FASTW2', NULL),
(17, 'HBILLING1', NULL),
(18, 'HBILLING2', NULL),
(19, 'HDESK', NULL),
(20, 'IRPT', NULL),
(21, 'IVR1', NULL),
(22, 'IVR2', NULL),
(23, 'MDOC', NULL),
(24, 'N/A', NULL),
(25, 'OLTP1', NULL),
(26, 'OLTP2', NULL),
(27, 'ONLINE ', NULL),
(28, 'PERS1', NULL),
(29, 'PERS2', NULL),
(30, 'PTSENIAT', NULL),
(31, 'PUNTO', NULL),
(32, 'RATING1', NULL),
(33, 'RATING2', NULL),
(34, 'SQLREPCT01', NULL),
(35, 'SUR', NULL),
(36, 'T-CONECTA', NULL),
(37, 'TELCO1', NULL),
(38, 'TELCO2', NULL),
(39, 'TELPERSONA-B', NULL),
(40, 'TTRAC', NULL),
(41, 'WLGES91', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observaciones_generales`
--

CREATE TABLE `observaciones_generales` (
  `id` int(11) NOT NULL,
  `observacion_general` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `observaciones_generales`
--

INSERT INTO `observaciones_generales` (`id`, `observacion_general`, `descripcion`) VALUES
(1, 'LDOM_CANAIMA', NULL),
(2, 'LDOM_CANAIMA2 ', NULL),
(3, 'LDOM_CANAIMA3', NULL),
(4, 'LDOM_MARACAY1', NULL),
(5, 'LDOM_MARACAY2', NULL),
(6, 'N/A', NULL),
(7, 'RED HAT CLUSTER CANAIMA', NULL),
(8, 'REDHAT CLUSTER COLGATE', NULL),
(9, 'RHEV MARACAY C1', NULL),
(10, 'RHEV MARACAY C1 NEW', NULL),
(11, 'RHEV MARACAY C2', NULL),
(12, 'RHEV MARACAY SAP PI', NULL),
(13, 'SRVCCSCLUHV01', NULL),
(14, 'SRVMCYCLUHV02', NULL),
(15, 'SRVMCYCLUHV03', NULL),
(16, 'VDC  CANAIMA II', NULL),
(17, 'XIUS_PROD_POOL', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros_servicios_asociados`
--

CREATE TABLE `otros_servicios_asociados` (
  `id` int(11) NOT NULL,
  `otros_servicios_asociados` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `otros_servicios_asociados`
--

INSERT INTO `otros_servicios_asociados` (`id`, `otros_servicios_asociados`, `descripcion`) VALUES
(1, 'AGENTES', NULL),
(2, 'APLICATIVO APP', NULL),
(3, 'ASRCOL04', NULL),
(4, 'ASRVAL01', NULL),
(5, 'ASRVAL02', NULL),
(6, 'ASRVAL03', NULL),
(7, 'ASRVAL04', NULL),
(8, 'CAMPAIGN SERVER QA', NULL),
(9, 'CAMPAIGNSERVERCOL01', NULL),
(10, 'CAMPAIGNSERVERCOL02', NULL),
(11, 'CAMPAIGNSERVERVAL01', NULL),
(12, 'CAMPAIGNSERVERVAL02', NULL),
(13, 'CDS - CALLCENTER', NULL),
(14, 'CIC ACD QA SERVER', NULL),
(15, 'CIC ACD QA SWITCHOVER SERVER', NULL),
(16, 'CIC-ACD-COL01', NULL),
(17, 'CIC-ACD-VAL01', NULL),
(18, 'CIC-IVR QA', NULL),
(19, 'CICIVRCOL01', NULL),
(20, 'CICIVRCOL02', NULL),
(21, 'CICIVRVAL01', NULL),
(22, 'CICIVRVAL02', NULL),
(23, 'CLAVE OTP', NULL),
(24, 'CONEXIONES POSTPAGO MAN1', NULL),
(25, 'CONEXIONES POSTPAGO MAN2', NULL),
(26, 'DATABASE SERVER 1', NULL),
(27, 'DATABASE SERVER 2', NULL),
(28, 'DESPACHADORES BALANCEO CONEXIONES A TASACION  - SCPRAT', NULL),
(29, 'DESPACHADORES DATOS', NULL),
(30, 'DESPACHADORES DE CORREO ELECTRONICO', NULL),
(31, 'DESPACHADORES SMS - PSPSMS', NULL),
(32, 'DESPACHADORES VOZ POSTPAGO - VOZRATING', NULL),
(33, 'ENLACE PRINCIPAL', NULL),
(34, 'ENLACE SECUNDARIO', NULL),
(35, 'EXTREMEQUERYCOL01 ', NULL),
(36, 'EXTREMEQUERYVAL01 ', NULL),
(37, 'FRONTEND DE FACTEL ', NULL),
(38, 'INSTANCIA SQL1 (VIRTUAL) - DATABASE SERVER 1', NULL),
(39, 'INSTANCIA SQL1 (VIRTUAL) - DATABASE SERVER 2', NULL),
(40, 'INTERACTIONMONITORCOL01', NULL),
(41, 'INTERACTIONMONITORVAL01', NULL),
(42, 'ITSM - REMEDY EMPRESA', NULL),
(43, 'KANNEL', NULL),
(44, 'MEDIA SERVER QA', NULL),
(45, 'MEDIA SERVER1', NULL),
(46, 'MEDIA SERVER10', NULL),
(47, 'MEDIA SERVER2', NULL),
(48, 'MEDIA SERVER3', NULL),
(49, 'MEDIA SERVER4', NULL),
(50, 'MEDIA SERVER5', NULL),
(51, 'MEDIA SERVER6', NULL),
(52, 'MEDIA SERVER7', NULL),
(53, 'MEDIA SERVER8', NULL),
(54, 'MEDIA SERVER9', NULL),
(55, 'MEDIASERVERCOL11', NULL),
(56, 'MEDIASERVERCOL12', NULL),
(57, 'MEDIASERVERCOL13', NULL),
(58, 'MEDIASERVERCOL14', NULL),
(59, 'MEDIASERVERCOL15', NULL),
(60, 'MEDIASERVERCOL16', NULL),
(61, 'MEDIASERVERCOL17', NULL),
(62, 'MEDIASERVERCOL18', NULL),
(63, 'MEDIASERVERCOL19', NULL),
(64, 'MEDIASERVERCOL20', NULL),
(65, 'MEDIASERVERCOL21', NULL),
(66, 'MEDIASERVERVAL01', NULL),
(67, 'MEDIASERVERVAL02', NULL),
(68, 'MEDIASERVERVAL03', NULL),
(69, 'MEDIASERVERVAL04', NULL),
(70, 'MEDIASERVERVAL05', NULL),
(71, 'MEDIASERVERVAL06', NULL),
(72, 'MEDIASERVERVAL07', NULL),
(73, 'MEDIASERVERVAL08', NULL),
(74, 'MEDIASERVERVAL09', NULL),
(75, 'MEDIASERVERVAL10', NULL),
(76, 'MEDIASERVERVAL11', NULL),
(77, 'MEDIASERVERVAL12', NULL),
(78, 'MEDIASERVERVAL13', NULL),
(79, 'MEDIASERVERVAL14', NULL),
(80, 'MEDIASERVERVAL15', NULL),
(81, 'MEDIASERVERVAL16', NULL),
(82, 'MEDIASERVERVAL17', NULL),
(83, 'MEDIASERVERVAL18', NULL),
(84, 'MEDIASERVERVAL19', NULL),
(85, 'MEDIASERVERVAL20', NULL),
(86, 'MEDIASERVERVAL21', NULL),
(87, 'MIDTIER - REMEDY ATC', NULL),
(88, 'N/A', NULL),
(89, 'OHS', NULL),
(90, 'OPERANDO MAQUINA VIRTUAL BA10DNSMON_CC_001 (TCOLP159) ', NULL),
(91, 'OPERANDO MAQUINA VIRTUAL BA10DNSMON_CC_002 (TCOLP160) ', NULL),
(92, 'ORQUESTADOR', NULL),
(93, 'OSH MM', NULL),
(94, 'PASARELA DE PAGO', NULL),
(95, 'PLATAFORMA POSTPAGO', NULL),
(96, 'PODS- MASTER NODE', NULL),
(97, 'PODS- SERVIDORES DE REPOSITORIO', NULL),
(98, 'PODS- WORKER NODE', NULL),
(99, 'PORTAL APLICATE ', NULL),
(100, 'QFLOW', NULL),
(101, 'REMEDY ATC', NULL),
(102, 'REMEDY MMO ', NULL),
(103, 'REMEDY REDES', NULL),
(104, 'REMEDY TI', NULL),
(105, 'REMOTECONTENTCOL01', NULL),
(106, 'REMOTECONTENTVAL01', NULL),
(107, 'SERVICIO VAULT', NULL),
(108, 'SERVIDOR DNSMR01', NULL),
(109, 'SERVIDOR DNSMR02', NULL),
(110, 'SERVIDOR LDOM T5  DNS08, DNS09', NULL),
(111, 'SERVIDOR LDOM T5  DNS10', NULL),
(112, 'SERVIDOR ZONA GLOBAL   DNS01,DNS03,DNS05', NULL),
(113, 'SERVIDOR ZONA GLOBAL   DNS02,DNS04', NULL),
(114, 'SERVIDORES APLICATIVO', NULL),
(115, 'SERVIDORES WEB', NULL),
(116, 'SESSIONMANAGERCOL01', NULL),
(117, 'SESSIONMANAGERCOL02', NULL),
(118, 'SESSIONMANAGERCOL03', NULL),
(119, 'SESSIONMANAGERVAL01', NULL),
(120, 'SESSIONMANAGERVAL02', NULL),
(121, 'SESSIONMANAGERVAL03', NULL),
(122, 'SIPPROXYCOL01', NULL),
(123, 'SIPPROXYCOL02', NULL),
(124, 'SIPPROXYVAL01', NULL),
(125, 'SIPPROXYVAL02', NULL),
(126, 'TTSCOL01', NULL),
(127, 'TTSVAL01', NULL),
(128, 'WEBSERVERCOL01', NULL),
(129, 'WEBSERVERCOL02', NULL),
(130, 'WEBSERVERVAL 02', NULL),
(131, 'WEBSERVERVAL01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_asociado`
--

CREATE TABLE `servicio_asociado` (
  `id` int(11) NOT NULL,
  `id_nivel` int(11) DEFAULT NULL,
  `servicio_asociado` varchar(150) DEFAULT NULL,
  `descripcion` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicio_asociado`
--

INSERT INTO `servicio_asociado` (`id`, `id_nivel`, `servicio_asociado`, `descripcion`) VALUES
(1, 1, 'FACTURACION', NULL),
(2, 2, 'RECARGAS', NULL),
(3, 2, 'TASACIÓN', NULL),
(4, 2, 'TASACION POSTPAGO', NULL),
(5, 4, 'ACTIVACION', NULL),
(6, 4, 'CONTACT-CENTER', NULL),
(7, 4, 'EMPRESARIALES', NULL),
(8, 4, 'FACTURACION', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servidores`
--

CREATE TABLE `servidores` (
  `id` int(11) NOT NULL,
  `Servidores` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servidores`
--

INSERT INTO `servidores` (`id`, `Servidores`) VALUES
(1, 'ARSSRV'),
(2, 'CVFACT03'),
(3, 'CVFACT04'),
(4, 'DNSMRY01\nDNSMCY-CC-001'),
(5, 'DNSMRY02\nDNSMCY-CC-002'),
(6, 'EPAGOS'),
(7, 'FACTEL WEB'),
(8, 'FRONTEND'),
(9, 'GBDAMP01'),
(10, 'GLDNS01'),
(11, 'GLDNS02'),
(12, 'GTUXBILL01'),
(13, 'GTUXBILL02'),
(14, 'MIPUNTO'),
(15, 'N/A'),
(16, 'PAGINA WEB'),
(17, 'PSPSRV7'),
(18, 'PUNTO BD01'),
(19, 'QFLOW'),
(20, 'REMEDY EMPRESA'),
(21, 'SG01-01'),
(22, 'SMSC-G'),
(23, 'SMSC-H'),
(24, 'SMSC-I'),
(25, 'SMSC-J'),
(26, 'SMSC-L'),
(27, 'SMS-INY-E'),
(28, 'SMS-INY-F'),
(29, 'SRVCASOS5'),
(30, 'SRVCCASMIDTIER01'),
(31, 'SRVCCASMIDTIER02'),
(32, 'SRVCCSCOM3'),
(33, 'SRVCCSCOM4'),
(34, 'SRVCCSCOM5'),
(35, 'SRVCCSCOM6'),
(36, 'SRVCCSCOM8'),
(37, 'SRVCCSCVSC03'),
(38, 'SRVCCSCVSC03VPN'),
(39, 'SRVCCSCVSC04'),
(40, 'SRVCCSCVSC04VPN'),
(41, 'SRVCCSCVSC05'),
(42, 'SRVCCSCVSC05VPN'),
(43, 'SRVCCSCVSC08'),
(44, 'SRVCCSCVSC08VPN'),
(45, 'SRVCCSCVSC09'),
(46, 'SRVCCSCVSC11'),
(47, 'SRVCCSCVSC11VPN'),
(48, 'SRVCCSCVSC15'),
(49, 'SRVCCSCVSC16'),
(50, 'SRVCCSCVSC17'),
(51, 'SRVCCSCVSC18'),
(52, 'SRVCCSCVSC19'),
(53, 'SRVCCSMIDTIER01'),
(54, 'SRVCCSMIDTIER02'),
(55, 'SRVCCSVIRK2A'),
(56, 'SRVCCSVIRK2B'),
(57, 'SRVCLUAGW3'),
(58, 'SRVCLUAGW4'),
(59, 'SRVCLUCT01'),
(60, 'SRVCLUCT02'),
(61, 'SRVCLUCTC01'),
(62, 'SRVCLUCTC02'),
(63, 'SRVDOC1VLT1'),
(64, 'SRVDOC1WEB'),
(65, 'SRVDOC1WEB1'),
(66, 'SRVDOC1WEB2'),
(67, 'SRVMRYAXE01'),
(68, 'SRVMRYCVSC02'),
(69, 'SRVMRYCVSC03'),
(70, 'SRVMRYCVSC04'),
(71, 'SRVMRYCVSC05'),
(72, 'SRVMRYCVSC06'),
(73, 'SRVMRYCVSC07'),
(74, 'SRVMRYCVSC08'),
(75, 'SRVMRYCVSC09'),
(76, 'SRVMRYCVSC10'),
(77, 'SRVMRYCVSC11'),
(78, 'SRVMRYCVSC12'),
(79, 'SRVMRYCVSC13'),
(80, 'SRVMRYCVSC14'),
(81, 'SRVMRYCVSC15'),
(82, 'SRVMRYCVSC16'),
(83, 'SRVMRYCVSC17'),
(84, 'SRVMRYCVSC18'),
(85, 'SRVMRYCVSC19'),
(86, 'SRVMRYCVSC20'),
(87, 'SRVMRYCVSC21'),
(88, 'SRVMRYCVSC22'),
(89, 'SRVMRYCVSC23'),
(90, 'SRVMRYCVSC24'),
(91, 'SRVMRYCVSC25'),
(92, 'SRVMRYCVSC26'),
(93, 'SRVMRYCVSC27'),
(94, 'SRVMRYCVSC28'),
(95, 'SRVMRYCVSC29'),
(96, 'SRVMRYCVSC30'),
(97, 'SRVMRYCVSC31'),
(98, 'SRVMRYCVSC32'),
(99, 'SRVMRYCVSC33'),
(100, 'SRVMRYCVSC34'),
(101, 'SRVMRYCVSC35'),
(102, 'SRVMRYCVSC36'),
(103, 'SRVMRYCVSC37'),
(104, 'SRVMRYCVSC38'),
(105, 'SRVMRYCVSC39'),
(106, 'SRVMRYCVSC40'),
(107, 'SRVMRYQFLOW04'),
(108, 'SRVMRYQFLOW05'),
(109, 'SRVMRYTF02'),
(110, 'SRVSMSCDC1'),
(111, 'TCA068'),
(112, 'TCA070'),
(113, 'TCA088A'),
(114, 'TCA089A'),
(115, 'TCA093'),
(116, 'TCA094'),
(117, 'TCA095'),
(118, 'TCA097'),
(119, 'TCA098'),
(120, 'TCA106'),
(121, 'TCA107'),
(122, 'TCA109'),
(123, 'TCA110'),
(124, 'TCA111'),
(125, 'TCA120'),
(126, 'TCA121'),
(127, 'TCA149'),
(128, 'TCA151'),
(129, 'TCANP009'),
(130, 'TCANP010'),
(131, 'TCANP012'),
(132, 'TCANP013'),
(133, 'TCANP014'),
(134, 'TCANP025'),
(135, 'TCANP026'),
(136, 'TCANP032'),
(137, 'TCANP033'),
(138, 'TCANP039'),
(139, 'TCANP040'),
(140, 'TCANP041'),
(141, 'TCANP051'),
(142, 'TCANP053'),
(143, 'TCANP059'),
(144, 'TCANP060'),
(145, 'TCANP061'),
(146, 'TCANP062'),
(147, 'TCANP072'),
(148, 'TCANP099'),
(149, 'TCANP102'),
(150, 'TCOLP001'),
(151, 'TCOLP002'),
(152, 'TCOLP003'),
(153, 'TCOLP004'),
(154, 'TCOLP005'),
(155, 'TCOLP025'),
(156, 'TCOLP029'),
(157, 'TCOLP043'),
(158, 'TCOLP044'),
(159, 'TCOLP046'),
(160, 'TCOLP048'),
(161, 'TCOLP049'),
(162, 'TCOLP050'),
(163, 'TCOLP051'),
(164, 'TCOLP091'),
(165, 'TCOLP112'),
(166, 'TCOLP113'),
(167, 'TCOLP114'),
(168, 'TCOLP129'),
(169, 'TCOLP130'),
(170, 'TCOLP133'),
(171, 'TCOLP134'),
(172, 'TCOLP162'),
(173, 'TCOPL045'),
(174, 'TCOPL047'),
(175, 'TELPAGO1-B'),
(176, 'TELPAGO1-C'),
(177, 'TELPERSONA-B'),
(178, 'TMP003A'),
(179, 'TMP034'),
(180, 'TMP035'),
(181, 'TMP036'),
(182, 'TMP037'),
(183, 'TMP039'),
(184, 'TMP040'),
(185, 'TMP041'),
(186, 'TMP042'),
(187, 'TMP043'),
(188, 'TMP044'),
(189, 'TMP055'),
(190, 'TMP056'),
(191, 'TMP057'),
(192, 'TMP060'),
(193, 'TMP061'),
(194, 'TMP062'),
(195, 'TMP063'),
(196, 'TMP072'),
(197, 'TMP073'),
(198, 'TMP074'),
(199, 'TMP075'),
(200, 'TMP076'),
(201, 'TMP077'),
(202, 'TMP078'),
(203, 'TMP079'),
(204, 'TMP080'),
(205, 'TMP090'),
(206, 'TMP091'),
(207, 'TMP104'),
(208, 'TMP105'),
(209, 'TMP133'),
(210, 'TMP134'),
(211, 'TMP149'),
(212, 'TMP150'),
(213, 'TMP159'),
(214, 'TMP160'),
(215, 'TMP165'),
(216, 'TMP166'),
(217, 'TMP167'),
(218, 'TMP178'),
(219, 'TMP227'),
(220, 'TMP228'),
(221, 'TMP230'),
(222, 'TMP231'),
(223, 'TMP232'),
(224, 'TMP233'),
(225, 'TMP234'),
(226, 'TMP235'),
(227, 'TMP254'),
(228, 'TMP255'),
(229, 'TMP256'),
(230, 'TMP283'),
(231, 'TMP284'),
(232, 'TUXSRV-E'),
(233, 'TUXSRV-F'),
(234, 'TVPRDAPPICS01'),
(235, 'TVPRDAPPICS02'),
(236, 'TVPRDAPPICS03'),
(237, 'TVPRDAPPICS04'),
(238, 'TVPRDAPPRELAY01'),
(239, 'TVPRDAPPRELAY02'),
(240, 'TVPRDAPPRELAY03'),
(241, 'TVPRDAPPRELAY04'),
(242, 'TVPRDAPPSENIAT01'),
(243, 'TVPRDAPPSENIAT02'),
(244, 'TVPRDMDMM05'),
(245, 'TVPRDMDMM06'),
(246, 'TVPRDMIDESB01'),
(247, 'TVPRDMIDESB02'),
(248, 'TVPRDMIDESB03'),
(249, 'TVPRDMOOD01'),
(250, 'TVPRDMOOD02'),
(251, 'TVPRDSRVFESNT01'),
(252, 'TVPRDSRVFESNT02'),
(253, 'TVPRDSRVFSTC01'),
(254, 'TVPRDSRVFSTC02'),
(255, 'TVPRDSRVOHS01'),
(256, 'TVPRDSRVOHS02'),
(257, 'TVPRDSRVOSH01'),
(258, 'TVPRDSRVOSH02'),
(259, 'TVPSRVCOLCTC20'),
(260, 'TVPSVRCOLCTC01'),
(261, 'TVPSVRCOLCTC02'),
(262, 'TVPSVRCOLCTC03'),
(263, 'TVPSVRCOLCTC04'),
(264, 'TVPSVRCOLCTC05'),
(265, 'TVPSVRCOLCTC06'),
(266, 'TVPSVRCOLCTC07'),
(267, 'TVPSVRCOLCTC08'),
(268, 'TVPSVRCOLCTC09'),
(269, 'TVPSVRCOLCTC10'),
(270, 'TVPSVRCOLCTC11'),
(271, 'TVPSVRCOLCTC12'),
(272, 'TVPSVRCOLCTC14'),
(273, 'TVPSVRCOLCTC15'),
(274, 'TVPSVRCOLCTC16'),
(275, 'TVPSVRCOLCTC17'),
(276, 'TVPSVRCOLCTC18'),
(277, 'TVPSVRCOLCTC19'),
(278, 'TVPSVRCOLCTC20'),
(279, 'TVPSVRCOLCTC21'),
(280, 'TVPSVRCOLCTC22'),
(281, 'TVPSVRCOLCTC23'),
(282, 'TVPSVRCOLCTC24'),
(283, 'TVPSVRCOLCTC25'),
(284, 'TVPSVRCOLCTC26'),
(285, 'TVPSVRCOLCTC27'),
(286, 'TVPSVRCOLCTC28'),
(287, 'TVPSVRCOLCTC29'),
(288, 'TVPSVRCOLCTC30'),
(289, 'TVPSVRCOLCTC31'),
(290, 'TVPSVRCOLCTC32'),
(291, 'TVPSVRCOLCTC33'),
(292, 'TVPSVRCOLCTC34'),
(293, 'TVPSVRCOLCTC35'),
(294, 'TVPSVRCOLCTC36'),
(295, 'TVPSVRCOLCTC40'),
(296, 'TVPSVRCOLCTC41'),
(297, 'TVPSVRCOLCTC42'),
(298, 'TVPSVRCOLCTC43'),
(299, 'TVPSVRCOLCTC44'),
(300, 'TVPSVRVALCTC01'),
(301, 'TVPSVRVALCTC02'),
(302, 'TVPSVRVALCTC03'),
(303, 'TVPSVRVALCTC04'),
(304, 'TVPSVRVALCTC05'),
(305, 'TVPSVRVALCTC06'),
(306, 'TVPSVRVALCTC07'),
(307, 'TVPSVRVALCTC08'),
(308, 'TVPSVRVALCTC09'),
(309, 'TVPSVRVALCTC10'),
(310, 'TVPSVRVALCTC11'),
(311, 'TVPSVRVALCTC12'),
(312, 'TVPSVRVALCTC13'),
(313, 'TVPSVRVALCTC14'),
(314, 'TVPSVRVALCTC15'),
(315, 'TVPSVRVALCTC16'),
(316, 'TVPSVRVALCTC17'),
(317, 'TVPSVRVALCTC18'),
(318, 'TVPSVRVALCTC19'),
(319, 'TVPSVRVALCTC20'),
(320, 'TVPSVRVALCTC21'),
(321, 'TVPSVRVALCTC22'),
(322, 'TVPSVRVALCTC23'),
(323, 'TVPSVRVALCTC24'),
(324, 'TVPSVRVALCTC25'),
(325, 'TVPSVRVALCTC26'),
(326, 'TVPSVRVALCTC27'),
(327, 'TVPSVRVALCTC28'),
(328, 'TVPSVRVALCTC29'),
(329, 'TVPSVRVALCTC30'),
(330, 'TVPSVRVALCTC31'),
(331, 'TVPSVRVALCTC32'),
(332, 'TVPSVRVALCTC33'),
(333, 'TVPSVRVALCTC34'),
(334, 'TVPSVRVALCTC35'),
(335, 'TVPSVRVALCTC36'),
(336, 'TVPSVRVALCTC37'),
(337, 'TVPSVRVALCTC38'),
(338, 'TVPSVRVALCTC39'),
(339, 'TVPSVRVALCTC40'),
(340, 'TVPSVRVALCTC41'),
(341, 'TVTSVRCOLCTC37'),
(342, 'TVTSVRCOLCTC38'),
(343, 'TVTSVRCOLCTC39'),
(344, 'VB-PO'),
(345, 'VCOL2BEBDSDP1'),
(346, 'VCOL2BEBDSDP10'),
(347, 'VCOL2BEBDSDP2'),
(348, 'VCOL2BEBDSDP3'),
(349, 'VCOL2BEBDSDP4'),
(350, 'VCOL2BEBDSDP5'),
(351, 'VCOL2BEBDSDP6'),
(352, 'VCOL2BEBDSDP7'),
(353, 'VCOL2BEBDSDP8'),
(354, 'VCOL2BEBDSDP9'),
(355, 'VCOL2BESDP1'),
(356, 'VCOL2BESDP11'),
(357, 'VCOL2BESDP12'),
(358, 'VCOL2BESDP13'),
(359, 'VCOL2BESDP14'),
(360, 'VCOL2BESDP15'),
(361, 'VCOL2BESDP16'),
(362, 'VCOL2BESDP2'),
(363, 'VCOL2BESDP3'),
(364, 'VCOL2BESDP4'),
(365, 'VCOL2BESDP5'),
(366, 'VCOL2BESDP6'),
(367, 'VCOL2EGBDSDP1'),
(368, 'VCOL2EGSDP1'),
(369, 'VCOL2FEDSDP1'),
(370, 'VCOL2FEDSDP2'),
(371, 'VCOL2FEDSDP3'),
(372, 'VCOL2FEDSDP4'),
(373, 'VCOL2FEDSDP5'),
(374, 'VCOL2FEDSDP6'),
(375, 'VCOL2FEDSDP7'),
(376, 'VCOL2FEDSDP8'),
(377, 'VCOLBESG13'),
(378, 'VCOLBESG14'),
(379, 'VCOLBESG15'),
(380, 'VCOLBESG16'),
(381, 'VCOLBESG17'),
(382, 'VCOLFESG1'),
(383, 'VCOLFESWG2'),
(384, 'VCOLFEWSG1'),
(385, 'VCOLFEWSG2'),
(386, 'VMARBEBDSDP1'),
(387, 'VMARBEBDSDP10'),
(388, 'VMARBEBDSDP2'),
(389, 'VMARBEBDSDP3'),
(390, 'VMARBEBDSDP4'),
(391, 'VMARBEBDSDP5'),
(392, 'VMARBEBDSDP6'),
(393, 'VMARBEBDSDP7'),
(394, 'VMARBEBDSDP8'),
(395, 'VMARBEBDSDP9'),
(396, 'VMARBESDP1'),
(397, 'VMARBESDP11'),
(398, 'VMARBESDP12'),
(399, 'VMARBESDP13'),
(400, 'VMARBESDP14'),
(401, 'VMARBESDP15'),
(402, 'VMARBESDP16'),
(403, 'VMARBESDP2'),
(404, 'VMARBESDP3'),
(405, 'VMARBESDP4'),
(406, 'VMARBESDP5'),
(407, 'VMARBESDP6'),
(408, 'VMAREGSDP1'),
(409, 'VMARFEDSDP1'),
(410, 'VMARFEDSDP2'),
(411, 'VMARFEDSDP3'),
(412, 'VMARFEDSDP4'),
(413, 'VMARFEDSDP5'),
(414, 'VMARFEDSDP6'),
(415, 'VMARFEDSDP7'),
(416, 'VMARFEDSDP8'),
(417, 'WBOLIVAR0'),
(418, 'WBOLIVAR1'),
(419, 'WLBOLIVAR0'),
(420, 'WLBOLIVAR0PRE'),
(421, 'WLBOLIVAR1'),
(422, 'WLL-A'),
(423, 'WLSUCUENTA'),
(424, 'WLSUCUENTA0'),
(425, 'WLSUCUENTA0PRE'),
(426, 'WLSUCUENTA1'),
(427, 'WLSUCUENTA3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistemas_operativos`
--

CREATE TABLE `sistemas_operativos` (
  `id` int(11) NOT NULL,
  `sistema_operativo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sistemas_operativos`
--

INSERT INTO `sistemas_operativos` (`id`, `sistema_operativo`) VALUES
(1, 'HP-UX'),
(2, 'LINUX'),
(3, 'N/A'),
(4, 'SOLARIS'),
(5, 'SUNOS'),
(6, 'WINDOWS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sysdiagrams`
--

CREATE TABLE `sysdiagrams` (
  `name` varchar(160) NOT NULL,
  `principal_id` int(11) NOT NULL,
  `diagram_id` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `definition` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id` int(11) NOT NULL,
  `ubicacion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id`, `ubicacion`) VALUES
(1, 'CANAIMA'),
(2, 'CANAIMA - A'),
(3, 'CANAIMA - B'),
(4, 'CARACAS'),
(5, 'COLGATE'),
(6, 'MARACAY'),
(7, 'MTSO CANAIMA'),
(8, 'MTSO COLGATE'),
(9, 'MTSO COLGATE (ALTAMIRA)'),
(10, 'N/A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vs_de_base_de_datos`
--

CREATE TABLE `vs_de_base_de_datos` (
  `id` int(11) NOT NULL,
  `id_dbms` int(11) NOT NULL,
  `vs_bd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vs_de_base_de_datos`
--

INSERT INTO `vs_de_base_de_datos` (`id`, `id_dbms`, `vs_bd`) VALUES
(1, 1, NULL),
(2, 1, '11.2.0.3.0'),
(3, 1, '11.2.0.4.0'),
(4, 1, '11-2-0-4-0'),
(5, 1, '12.2.0.1.0'),
(6, 1, '9.2.0.6.0'),
(7, 1, '9.2.0.7.0'),
(8, 1, '9.2.0.8.0'),
(9, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vs_sistemas_operativos`
--

CREATE TABLE `vs_sistemas_operativos` (
  `id` int(11) NOT NULL,
  `id_so` int(11) NOT NULL,
  `vs_sistema_operativo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vs_sistemas_operativos`
--

INSERT INTO `vs_sistemas_operativos` (`id`, `id_so`, `vs_sistema_operativo`) VALUES
(1, 1, 'N/A'),
(2, 2, 'ENTERPRISE LINUX SERVER RELEASE 5.11 (TIKANGA)'),
(3, 2, 'ENTERPRISE LINUX SERVER RELEASE 5.5 (TIKANGA)'),
(4, 2, 'ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)'),
(5, 2, 'ENTERPRISE LINUX SERVER RELEASE 6.2 (SANTIAGO)'),
(6, 2, 'ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO)'),
(7, 2, 'ENTERPRISE LINUX SERVER RELEASE 6.7 '),
(8, 2, 'ENTERPRISE LINUX SERVER RELEASE 6.7 (SANTIAGO)'),
(9, 2, 'ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)'),
(10, 2, 'ENTERPRISE LINUX SERVER RELEASE 6.9 (SANTIAGO'),
(11, 2, 'N/A'),
(12, 2, 'ORACLE LINUX SERVER RELEASE 6.10'),
(13, 2, 'RED HAT 4.8.5-44'),
(14, 2, 'RED HAT ENTERPRISE LINUX RELEASE 8.3 (OOTPA)'),
(15, 2, 'RED HAT ENTERPRISE LINUX RELEASE 8.4 (OOTPA)'),
(16, 2, 'RED HAT ENTERPRISE LINUX RELEASE 8.6 (OOTPA)'),
(17, 2, 'RED HAT ENTERPRISE LINUX SERVER 6.4 (SANTIAGO)'),
(18, 2, 'RED HAT ENTERPRISE LINUX SERVER 6.8 (SANTIAGO)'),
(19, 2, 'RED HAT ENTERPRISE LINUX SERVER 7.4 (MAIPO)'),
(20, 2, 'RED HAT ENTERPRISE LINUX SERVER 7.5 (MAIPO)'),
(21, 2, 'RED HAT ENTERPRISE LINUX SERVER 7.9 (MAIPO)'),
(22, 2, 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.10 (SANTIAGO)'),
(23, 2, 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.6 (SANTIAGO) '),
(24, 2, 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.7 '),
(25, 2, 'RED HAT ENTERPRISE LINUX SERVER RELEASE 6.8 (SANTIAGO)'),
(26, 2, 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.5 (MAIPO)'),
(27, 2, 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.6 (MAIPO)'),
(28, 2, 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.7 (MAIPO)'),
(29, 2, 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.8 (MAIPO)'),
(30, 2, 'RED HAT ENTERPRISE LINUX SERVER RELEASE 7.9 (MAIPO)'),
(31, 3, 'N/A'),
(32, 4, 'SUNOS 5.10 SUN4V'),
(33, 5, 'N/A'),
(34, 5, 'ORACLE SOLARIS 10 1/13 S10S_U11WOS_24A SPARC'),
(35, 5, 'ORACLE SOLARIS 11.4 SPARC'),
(36, 5, 'SUNOS  5.11 1'),
(37, 5, 'SUNOS 3 5.11 '),
(38, 5, 'SUNOS 5.10'),
(39, 5, 'SUNOS 5.10 SUN4V'),
(40, 5, 'SUNOS 5.11'),
(41, 5, 'SUNOS 5.9 SUN4U'),
(42, 6, 'MICROSOFT WINDOWS SERVER 2003'),
(43, 6, 'N/A'),
(44, 6, 'VMWARE - ESX/ESXI'),
(45, 6, 'WINDOWS  SERVER 2008 R2 ENTERPRISE'),
(46, 6, 'WINDOWS  SERVER 2008 R2 STANDARD'),
(47, 6, 'WINDOWS  SERVER 2012 R2 ENTERPRISE'),
(48, 6, 'WINDOWS  SERVER 2012 R2 STANDARD'),
(49, 6, 'WINDOWS SERVER 2003 R2'),
(50, 6, 'WINDOWS SERVER 2012 R2'),
(51, 6, 'WINDOWS SERVER 2016 STADARD'),
(52, 6, 'WINDOWS SERVER 2019 STADARD'),
(53, 6, 'WINDOWS SERVERN 2008 R2 ENTERPRISE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weblogic`
--

CREATE TABLE `weblogic` (
  `id` int(11) NOT NULL,
  `weblogic` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `weblogic`
--

INSERT INTO `weblogic` (`id`, `weblogic`, `descripcion`) VALUES
(1, 'BUS EXTERNO', NULL),
(2, 'CLUSTER USSD', NULL),
(3, 'FACTEL', NULL),
(4, 'FCT BATCH', NULL),
(5, 'FCT PROV1', NULL),
(6, 'FCT PROV2', NULL),
(7, 'FCT PROV3', NULL),
(8, 'FCT PROV4', NULL),
(9, 'FCTOL', NULL),
(10, 'FIELIZAMEBATCH', NULL),
(11, 'FILEDIZAME MCRASS1', NULL),
(12, 'FILEDIZAME MCRASS2', NULL),
(13, 'K2 BATCH', NULL),
(14, 'K2MMO1', NULL),
(15, 'K2MMO2', NULL),
(16, 'K2MMOVIRK2A', NULL),
(17, 'K2MMOVIRK2B', NULL),
(18, 'K2OL', NULL),
(19, 'K2OL2', NULL),
(20, 'K2OL3', NULL),
(21, 'K2OL4', NULL),
(22, 'LCL CVSC', NULL),
(23, 'LCL MCONTENIDO', NULL),
(24, 'N/A', NULL),
(25, 'WEBLOGIC 2.0-K2BATCH/FCTCNT BATCH', NULL),
(26, 'WEBLOGIC 2.0-K2OL/FCTCNT', NULL),
(27, 'WEBLOGIC 2.0-K2OL2/FCTCNT', NULL),
(28, 'WEBLOGIC 2.0-K2OL3/FCTCNT', NULL),
(29, 'WEBLOGIC 2.0-K2OL4/FCTCNT', NULL),
(30, 'WEBLOGIC 3.0', NULL),
(31, 'WEBLOGIC 3.0  - FASTWAY CDMA', NULL),
(32, 'WEBLOGIC 3.0 - AGK2', NULL),
(33, 'WEBLOGIC 3.0 - BACKEND', NULL),
(34, 'WEBLOGIC 3.0 - FASTWAY GSM', NULL),
(35, 'WEBLOGIC 3.0 - FRONTEND', NULL),
(36, 'WEBLOGIC 3.0 - K2MMO2', NULL),
(37, 'WEBLOGIC 3.0 FCT', NULL),
(38, 'WEBLOGIC 3.0 -K2MMO1', NULL),
(39, 'WEBLOGIC 3.0-BUS INTERNO', NULL),
(40, 'WEBLOGIC 3.0-LCL COLGATE', NULL),
(41, 'WEBLOGIC 3.0-LCL CVSC', NULL),
(42, 'WEBLOGIC 3.0-LCL MMO', NULL),
(43, 'WEBLOGIC FACTEL', NULL),
(44, 'WEBLOGIC FIDELIZAME', NULL),
(45, 'WEBLOGIC ICS1', NULL),
(46, 'WEBLOGIC ICS2', NULL),
(47, 'WEBLOGIC ICS3', NULL),
(48, 'WEBLOGIC ICS4', NULL),
(49, 'WEBLOGIC3.0-BUS EXTERNO', NULL);

-- --------------------------------------------------------

--
-- Estructura para la vista `catalogo`
--
DROP TABLE IF EXISTS `catalogo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catalogo`  AS SELECT `catalogo_de_servicio`.`nivel_criticidad` AS `nivel_criticidad`, `cs_nivel_de_criticidad`.`color` AS `color`, `catalogo_de_servicio`.`servicio_asociado` AS `servicio_asociado`, `catalogo_de_servicio`.`canal_aplicativo` AS `canal_aplicativo`, `catalogo_de_servicio`.`area` AS `area`, `catalogo_de_servicio`.`servidor` AS `servidor`, `catalogo_de_servicio`.`ip` AS `ip`, `catalogo_de_servicio`.`hostname` AS `hostname`, `catalogo_de_servicio`.`bbdd` AS `bbdd`, `catalogo_de_servicio`.`bus` AS `bus`, `catalogo_de_servicio`.`capa_tuxedo` AS `capa_tuxedo`, `catalogo_de_servicio`.`weblogic` AS `weblogic`, `catalogo_de_servicio`.`ubicacion` AS `ubicacion` FROM (`catalogo_de_servicio` join `cs_nivel_de_criticidad` on((`catalogo_de_servicio`.`nivel_criticidad` = convert(`cs_nivel_de_criticidad`.`nivel_criticidad` using utf8mb4)))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `catalogoactivacion`
--
DROP TABLE IF EXISTS `catalogoactivacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catalogoactivacion`  AS SELECT `catalogo_de_servicio`.`nivel_criticidad` AS `nivel_criticidad`, `catalogo_de_servicio`.`servicio_asociado` AS `servicio_asociado`, `catalogo_de_servicio`.`canal_aplicativo` AS `canal_aplicativo`, `catalogo_de_servicio`.`servidor` AS `servidor`, `catalogo_de_servicio`.`ip` AS `ip`, `catalogo_de_servicio`.`hostname` AS `hostname`, `catalogo_de_servicio`.`bbdd` AS `bbdd`, `catalogo_de_servicio`.`bus` AS `bus`, `catalogo_de_servicio`.`capa_tuxedo` AS `capa_tuxedo`, `catalogo_de_servicio`.`weblogic` AS `weblogic`, `catalogo_de_servicio`.`ubicacion` AS `ubicacion` FROM (`catalogo_de_servicio` join `cs_nivel_de_criticidad` on((`catalogo_de_servicio`.`nivel_criticidad` = convert(`cs_nivel_de_criticidad`.`nivel_criticidad` using utf8mb4)))) WHERE (`catalogo_de_servicio`.`servicio_asociado` = 'ACTIVACION') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `catalogo_contact_center`
--
DROP TABLE IF EXISTS `catalogo_contact_center`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catalogo_contact_center`  AS SELECT `catalogo_de_servicio`.`nivel_criticidad` AS `nivel_criticidad`, `catalogo_de_servicio`.`servicio_asociado` AS `servicio_asociado`, `catalogo_de_servicio`.`canal_aplicativo` AS `canal_aplicativo`, `catalogo_de_servicio`.`servidor` AS `servidor`, `catalogo_de_servicio`.`ip` AS `ip`, `catalogo_de_servicio`.`hostname` AS `hostname`, `catalogo_de_servicio`.`bbdd` AS `bbdd`, `catalogo_de_servicio`.`bus` AS `bus`, `catalogo_de_servicio`.`capa_tuxedo` AS `capa_tuxedo`, `catalogo_de_servicio`.`weblogic` AS `weblogic`, `catalogo_de_servicio`.`ubicacion` AS `ubicacion` FROM (`catalogo_de_servicio` join `cs_nivel_de_criticidad` on((`catalogo_de_servicio`.`nivel_criticidad` = convert(`cs_nivel_de_criticidad`.`nivel_criticidad` using utf8mb4)))) WHERE (`catalogo_de_servicio`.`servicio_asociado` = 'CONTACT_CENTER') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `catalogo_de_servicio_completo`
--
DROP TABLE IF EXISTS `catalogo_de_servicio_completo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catalogo_de_servicio_completo`  AS SELECT `catalogo_de_servicio`.`nivel_criticidad` AS `nivel_criticidad`, `cs_nivel_de_criticidad`.`color` AS `color`, `cs_nivel_de_criticidad`.`critico` AS `critico`, `catalogo_de_servicio`.`servicio_asociado` AS `servicio_asociado`, `catalogo_de_servicio`.`canal_aplicativo` AS `canal_aplicativo`, `catalogo_de_servicio`.`area` AS `area`, `catalogo_de_servicio`.`servidor` AS `servidor`, `catalogo_de_servicio`.`ip` AS `ip`, `catalogo_de_servicio`.`hostname` AS `hostname`, `catalogo_de_servicio`.`sistema_operativo` AS `sistema_operativo`, `catalogo_de_servicio`.`vs_so` AS `vs_so`, `catalogo_de_servicio`.`bbdd` AS `bbdd`, `catalogo_de_servicio`.`dbms` AS `dbms`, `catalogo_de_servicio`.`vs_bd` AS `vs_bd`, `catalogo_de_servicio`.`bus` AS `bus`, `catalogo_de_servicio`.`capa_tuxedo` AS `capa_tuxedo`, `catalogo_de_servicio`.`weblogic` AS `weblogic`, `catalogo_de_servicio`.`f5_comunicaciones` AS `f5_comunicaciones`, `catalogo_de_servicio`.`port_f5` AS `port_f5`, `catalogo_de_servicio`.`ip_f5` AS `ip_f5`, `catalogo_de_servicio`.`pools_vs` AS `pools_vs`, `catalogo_de_servicio`.`otro_servicio_asociado` AS `otro_servicio_asociado`, `catalogo_de_servicio`.`ubicacion` AS `ubicacion`, `catalogo_de_servicio`.`rack` AS `rack`, `catalogo_de_servicio`.`fila` AS `fila`, `catalogo_de_servicio`.`observacion_general` AS `observacion_general` FROM (`catalogo_de_servicio` join `cs_nivel_de_criticidad` on((`catalogo_de_servicio`.`nivel_criticidad` = convert(`cs_nivel_de_criticidad`.`nivel_criticidad` using utf8mb4)))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `catalogo_empresariales`
--
DROP TABLE IF EXISTS `catalogo_empresariales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catalogo_empresariales`  AS SELECT `catalogo_de_servicio`.`nivel_criticidad` AS `nivel_criticidad`, `catalogo_de_servicio`.`servicio_asociado` AS `servicio_asociado`, `catalogo_de_servicio`.`canal_aplicativo` AS `canal_aplicativo`, `catalogo_de_servicio`.`servidor` AS `servidor`, `catalogo_de_servicio`.`ip` AS `ip`, `catalogo_de_servicio`.`hostname` AS `hostname`, `catalogo_de_servicio`.`bbdd` AS `bbdd`, `catalogo_de_servicio`.`bus` AS `bus`, `catalogo_de_servicio`.`capa_tuxedo` AS `capa_tuxedo`, `catalogo_de_servicio`.`weblogic` AS `weblogic`, `catalogo_de_servicio`.`ubicacion` AS `ubicacion` FROM (`catalogo_de_servicio` join `cs_nivel_de_criticidad` on((`catalogo_de_servicio`.`nivel_criticidad` = convert(`cs_nivel_de_criticidad`.`nivel_criticidad` using utf8mb4)))) WHERE (`catalogo_de_servicio`.`servicio_asociado` = 'EMPRESARIALES') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `catalogo_facturacion`
--
DROP TABLE IF EXISTS `catalogo_facturacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catalogo_facturacion`  AS SELECT `catalogo_de_servicio`.`nivel_criticidad` AS `nivel_criticidad`, `catalogo_de_servicio`.`servicio_asociado` AS `servicio_asociado`, `catalogo_de_servicio`.`canal_aplicativo` AS `canal_aplicativo`, `catalogo_de_servicio`.`servidor` AS `servidor`, `catalogo_de_servicio`.`ip` AS `ip`, `catalogo_de_servicio`.`hostname` AS `hostname`, `catalogo_de_servicio`.`bbdd` AS `bbdd`, `catalogo_de_servicio`.`bus` AS `bus`, `catalogo_de_servicio`.`capa_tuxedo` AS `capa_tuxedo`, `catalogo_de_servicio`.`weblogic` AS `weblogic`, `catalogo_de_servicio`.`ubicacion` AS `ubicacion` FROM (`catalogo_de_servicio` join `cs_nivel_de_criticidad` on((`catalogo_de_servicio`.`nivel_criticidad` = convert(`cs_nivel_de_criticidad`.`nivel_criticidad` using utf8mb4)))) WHERE (`catalogo_de_servicio`.`servicio_asociado` = 'FACTURACION') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `catalogo_general`
--
DROP TABLE IF EXISTS `catalogo_general`;

CREATE ALGORITHM=UNDEFINED DEFINER=`catalogo_general`@`%` SQL SECURITY DEFINER VIEW `catalogo_general`  AS SELECT `catalogo_de_servicio`.`nivel_criticidad` AS `nivel_criticidad`, `cs_nivel_de_criticidad`.`color` AS `color`, `cs_nivel_de_criticidad`.`critico` AS `critico`, `catalogo_de_servicio`.`servicio_asociado` AS `servicio_asociado`, `catalogo_de_servicio`.`canal_aplicativo` AS `canal_aplicativo`, `catalogo_de_servicio`.`area` AS `area`, `catalogo_de_servicio`.`servidor` AS `servidor`, `catalogo_de_servicio`.`ip` AS `ip`, `catalogo_de_servicio`.`hostname` AS `hostname`, `catalogo_de_servicio`.`sistema_operativo` AS `sistema_operativo`, `catalogo_de_servicio`.`vs_so` AS `vs_so`, `catalogo_de_servicio`.`bbdd` AS `bbdd`, `catalogo_de_servicio`.`dbms` AS `dbms`, `catalogo_de_servicio`.`vs_bd` AS `vs_bd`, `catalogo_de_servicio`.`bus` AS `bus`, `catalogo_de_servicio`.`capa_tuxedo` AS `capa_tuxedo`, `catalogo_de_servicio`.`weblogic` AS `weblogic`, `catalogo_de_servicio`.`f5_comunicaciones` AS `f5_comunicaciones`, `catalogo_de_servicio`.`port_f5` AS `port_f5`, `catalogo_de_servicio`.`ip_f5` AS `ip_f5`, `catalogo_de_servicio`.`pools_vs` AS `pools_vs`, `catalogo_de_servicio`.`otro_servicio_asociado` AS `otro_servicio_asociado`, `catalogo_de_servicio`.`ubicacion` AS `ubicacion`, `catalogo_de_servicio`.`rack` AS `rack`, `catalogo_de_servicio`.`fila` AS `fila`, `catalogo_de_servicio`.`observacion_general` AS `observacion_general` FROM (`catalogo_de_servicio` join `cs_nivel_de_criticidad` on((`catalogo_de_servicio`.`nivel_criticidad` = convert(`cs_nivel_de_criticidad`.`nivel_criticidad` using utf8mb4)))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `catalogo_recargas`
--
DROP TABLE IF EXISTS `catalogo_recargas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catalogo_recargas`  AS SELECT `catalogo_de_servicio`.`nivel_criticidad` AS `nivel_criticidad`, `catalogo_de_servicio`.`servicio_asociado` AS `servicio_asociado`, `catalogo_de_servicio`.`canal_aplicativo` AS `canal_aplicativo`, `catalogo_de_servicio`.`servidor` AS `servidor`, `catalogo_de_servicio`.`ip` AS `ip`, `catalogo_de_servicio`.`hostname` AS `hostname`, `catalogo_de_servicio`.`bbdd` AS `bbdd`, `catalogo_de_servicio`.`bus` AS `bus`, `catalogo_de_servicio`.`capa_tuxedo` AS `capa_tuxedo`, `catalogo_de_servicio`.`weblogic` AS `weblogic`, `catalogo_de_servicio`.`ubicacion` AS `ubicacion` FROM (`catalogo_de_servicio` join `cs_nivel_de_criticidad` on((`catalogo_de_servicio`.`nivel_criticidad` = convert(`cs_nivel_de_criticidad`.`nivel_criticidad` using utf8mb4)))) WHERE (`catalogo_de_servicio`.`servicio_asociado` = 'RECARGAS') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `catalogo_tasacion`
--
DROP TABLE IF EXISTS `catalogo_tasacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catalogo_tasacion`  AS SELECT `catalogo_de_servicio`.`nivel_criticidad` AS `nivel_criticidad`, `catalogo_de_servicio`.`servicio_asociado` AS `servicio_asociado`, `catalogo_de_servicio`.`canal_aplicativo` AS `canal_aplicativo`, `catalogo_de_servicio`.`servidor` AS `servidor`, `catalogo_de_servicio`.`ip` AS `ip`, `catalogo_de_servicio`.`hostname` AS `hostname`, `catalogo_de_servicio`.`bbdd` AS `bbdd`, `catalogo_de_servicio`.`bus` AS `bus`, `catalogo_de_servicio`.`capa_tuxedo` AS `capa_tuxedo`, `catalogo_de_servicio`.`weblogic` AS `weblogic`, `catalogo_de_servicio`.`ubicacion` AS `ubicacion` FROM (`catalogo_de_servicio` join `cs_nivel_de_criticidad` on((`catalogo_de_servicio`.`nivel_criticidad` = convert(`cs_nivel_de_criticidad`.`nivel_criticidad` using utf8mb4)))) WHERE (`catalogo_de_servicio`.`servicio_asociado` = 'TASACION') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `catalogo_tasacion_postpago`
--
DROP TABLE IF EXISTS `catalogo_tasacion_postpago`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catalogo_tasacion_postpago`  AS SELECT `catalogo_de_servicio`.`nivel_criticidad` AS `nivel_criticidad`, `catalogo_de_servicio`.`servicio_asociado` AS `servicio_asociado`, `catalogo_de_servicio`.`canal_aplicativo` AS `canal_aplicativo`, `catalogo_de_servicio`.`servidor` AS `servidor`, `catalogo_de_servicio`.`ip` AS `ip`, `catalogo_de_servicio`.`hostname` AS `hostname`, `catalogo_de_servicio`.`bbdd` AS `bbdd`, `catalogo_de_servicio`.`bus` AS `bus`, `catalogo_de_servicio`.`capa_tuxedo` AS `capa_tuxedo`, `catalogo_de_servicio`.`weblogic` AS `weblogic`, `catalogo_de_servicio`.`ubicacion` AS `ubicacion` FROM (`catalogo_de_servicio` join `cs_nivel_de_criticidad` on((`catalogo_de_servicio`.`nivel_criticidad` = convert(`cs_nivel_de_criticidad`.`nivel_criticidad` using utf8mb4)))) WHERE (`catalogo_de_servicio`.`servicio_asociado` = 'TASACION_POSTPAGO') ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canal_aplicativo`
--
ALTER TABLE `canal_aplicativo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__CANAL_APL__id_se__300424B4` (`id_servicio`);

--
-- Indices de la tabla `capa_tuxedo`
--
ALTER TABLE `capa_tuxedo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cs_nivel_de_criticidad`
--
ALTER TABLE `cs_nivel_de_criticidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f5_comunicaciones`
--
ALTER TABLE `f5_comunicaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hostinanme`
--
ALTER TABLE `hostinanme`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `manejador_de_bases_de_datos`
--
ALTER TABLE `manejador_de_bases_de_datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nombres_de_bases_de_datos`
--
ALTER TABLE `nombres_de_bases_de_datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `observaciones_generales`
--
ALTER TABLE `observaciones_generales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otros_servicios_asociados`
--
ALTER TABLE `otros_servicios_asociados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicio_asociado`
--
ALTER TABLE `servicio_asociado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__SERVICIO___id_ni__2D27B809` (`id_nivel`);

--
-- Indices de la tabla `servidores`
--
ALTER TABLE `servidores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sistemas_operativos`
--
ALTER TABLE `sistemas_operativos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sysdiagrams`
--
ALTER TABLE `sysdiagrams`
  ADD PRIMARY KEY (`diagram_id`),
  ADD UNIQUE KEY `UK_principal_name` (`principal_id`,`name`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vs_de_base_de_datos`
--
ALTER TABLE `vs_de_base_de_datos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__VS_DE_BAS__id_db__5BE2A6F2` (`id_dbms`);

--
-- Indices de la tabla `vs_sistemas_operativos`
--
ALTER TABLE `vs_sistemas_operativos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__VS_SISTEM__id_so__48CFD27E` (`id_so`);

--
-- Indices de la tabla `weblogic`
--
ALTER TABLE `weblogic`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canal_aplicativo`
--
ALTER TABLE `canal_aplicativo`
  ADD CONSTRAINT `FK__CANAL_APL__id_se__300424B4` FOREIGN KEY (`id_servicio`) REFERENCES `servicio_asociado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `servicio_asociado`
--
ALTER TABLE `servicio_asociado`
  ADD CONSTRAINT `FK__SERVICIO___id_ni__2D27B809` FOREIGN KEY (`id_nivel`) REFERENCES `cs_nivel_de_criticidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vs_de_base_de_datos`
--
ALTER TABLE `vs_de_base_de_datos`
  ADD CONSTRAINT `FK__VS_DE_BAS__id_db__5BE2A6F2` FOREIGN KEY (`id_dbms`) REFERENCES `manejador_de_bases_de_datos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vs_sistemas_operativos`
--
ALTER TABLE `vs_sistemas_operativos`
  ADD CONSTRAINT `FK__VS_SISTEM__id_so__48CFD27E` FOREIGN KEY (`id_so`) REFERENCES `sistemas_operativos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
