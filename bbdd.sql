-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para base_de_datos_del_conocimiento
CREATE DATABASE IF NOT EXISTS `base_de_datos_del_conocimiento` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `base_de_datos_del_conocimiento`;

-- Volcando estructura para tabla base_de_datos_del_conocimiento.areas
CREATE TABLE IF NOT EXISTS `areas` (
  `id` int NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.bus
CREATE TABLE IF NOT EXISTS `bus` (
  `id` int NOT NULL,
  `bus` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para procedimiento base_de_datos_del_conocimiento.canal
DELIMITER //
CREATE PROCEDURE `canal`(
	IN `Xservicio` varchar(255),
	IN `Xcanal` varchar(255)
)
BEGIN
	SELECT * FROM base_de_datos_del_conocimiento.catalogo_de_servicio
    WHERE servicio_asociado like concat('%',Xservicio,'%') AND canal_aplicativo like concat('%',Xcanal,'%');
END//
DELIMITER ;

-- Volcando estructura para tabla base_de_datos_del_conocimiento.canal_aplicativo
CREATE TABLE IF NOT EXISTS `canal_aplicativo` (
  `id` int NOT NULL,
  `id_servicio` int DEFAULT NULL,
  `canal_aplicativo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`),
  KEY `FK__CANAL_APL__id_se__300424B4` (`id_servicio`),
  CONSTRAINT `FK__CANAL_APL__id_se__300424B4` FOREIGN KEY (`id_servicio`) REFERENCES `servicio_asociado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.capa_tuxedo
CREATE TABLE IF NOT EXISTS `capa_tuxedo` (
  `id` int NOT NULL,
  `capa_tuxedo` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para procedimiento base_de_datos_del_conocimiento.catalogo
DELIMITER //
CREATE PROCEDURE `catalogo`()
BEGIN
	SELECT id,nivel_criticidad, servidor,hostname, ip,bbdd,bus,capa_tuxedo,weblogic,ubicacion
    FROM catalogo_de_servicio;
END//
DELIMITER ;

-- Volcando estructura para tabla base_de_datos_del_conocimiento.catalogo_de_servicio
CREATE TABLE IF NOT EXISTS `catalogo_de_servicio` (
  `nivel_criticidad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `servicio_asociado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `canal_aplicativo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `servidor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sistema_operativo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `vs_so` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bbdd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dbms` varchar(255) DEFAULT NULL,
  `vs_bd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `capa_tuxedo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `weblogic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `f5_comunicaciones` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ip_f5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `port_f5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pools_vs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `otro_servicio_asociado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ubicacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rack` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fila` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `observacion_general` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=758 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.cs_nivel_de_criticidad
CREATE TABLE IF NOT EXISTS `cs_nivel_de_criticidad` (
  `id` int NOT NULL,
  `nivel_criticidad` varchar(50) NOT NULL,
  `color` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `critico` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.f5_comunicaciones
CREATE TABLE IF NOT EXISTS `f5_comunicaciones` (
  `id` int NOT NULL,
  `f5_comunicaciones` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.hostinanme
CREATE TABLE IF NOT EXISTS `hostinanme` (
  `id` int NOT NULL,
  `hostname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.manejador_de_bases_de_datos
CREATE TABLE IF NOT EXISTS `manejador_de_bases_de_datos` (
  `id` int NOT NULL,
  `dbms` varchar(255) NOT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.nombres_de_bases_de_datos
CREATE TABLE IF NOT EXISTS `nombres_de_bases_de_datos` (
  `id` int NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.observaciones_generales
CREATE TABLE IF NOT EXISTS `observaciones_generales` (
  `id` int NOT NULL,
  `observacion_general` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.otros_servicios_asociados
CREATE TABLE IF NOT EXISTS `otros_servicios_asociados` (
  `id` int NOT NULL,
  `otros_servicios_asociados` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para procedimiento base_de_datos_del_conocimiento.servicios
DELIMITER //
CREATE PROCEDURE `servicios`(
	IN `Xservicio` VARCHAR(255)
)
BEGIN
	SELECT id,nivel_criticidad, servidor,hostname, ip,bbdd,bus,capa_tuxedo,weblogic,ubicacion
    FROM catalogo_de_servicio
    WHERE servicio_asociado like concat('%',Xservicio,'%');
END//
DELIMITER ;

-- Volcando estructura para tabla base_de_datos_del_conocimiento.servicio_asociado
CREATE TABLE IF NOT EXISTS `servicio_asociado` (
  `id` int NOT NULL,
  `id_nivel` int DEFAULT NULL,
  `servicio_asociado` varchar(150) DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`),
  KEY `FK__SERVICIO___id_ni__2D27B809` (`id_nivel`),
  CONSTRAINT `FK__SERVICIO___id_ni__2D27B809` FOREIGN KEY (`id_nivel`) REFERENCES `cs_nivel_de_criticidad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.servidores
CREATE TABLE IF NOT EXISTS `servidores` (
  `id` int NOT NULL,
  `Servidores` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.sistemas_operativos
CREATE TABLE IF NOT EXISTS `sistemas_operativos` (
  `id` int NOT NULL,
  `sistema_operativo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.sysdiagrams
CREATE TABLE IF NOT EXISTS `sysdiagrams` (
  `name` varchar(160) NOT NULL,
  `principal_id` int NOT NULL,
  `diagram_id` int NOT NULL,
  `version` int DEFAULT NULL,
  `definition` longblob,
  PRIMARY KEY (`diagram_id`),
  UNIQUE KEY `UK_principal_name` (`principal_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.ubicacion
CREATE TABLE IF NOT EXISTS `ubicacion` (
  `id` int NOT NULL,
  `ubicacion` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.vs_de_base_de_datos
CREATE TABLE IF NOT EXISTS `vs_de_base_de_datos` (
  `id` int NOT NULL,
  `id_dbms` int NOT NULL,
  `vs_bd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__VS_DE_BAS__id_db__5BE2A6F2` (`id_dbms`),
  CONSTRAINT `FK__VS_DE_BAS__id_db__5BE2A6F2` FOREIGN KEY (`id_dbms`) REFERENCES `manejador_de_bases_de_datos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.vs_sistemas_operativos
CREATE TABLE IF NOT EXISTS `vs_sistemas_operativos` (
  `id` int NOT NULL,
  `id_so` int NOT NULL,
  `vs_sistema_operativo` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__VS_SISTEM__id_so__48CFD27E` (`id_so`),
  CONSTRAINT `FK__VS_SISTEM__id_so__48CFD27E` FOREIGN KEY (`id_so`) REFERENCES `sistemas_operativos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla base_de_datos_del_conocimiento.weblogic
CREATE TABLE IF NOT EXISTS `weblogic` (
  `id` int NOT NULL,
  `weblogic` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
