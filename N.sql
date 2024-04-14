-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.3.0 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para notificaciones
CREATE DATABASE IF NOT EXISTS `notificaciones` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `notificaciones`;

-- Volcando estructura para tabla notificaciones.reportes
CREATE TABLE IF NOT EXISTS `reportes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `EtiquetaU` varchar(50) ,
  `Hora` time DEFAULT NULL,
  `EstdBote` varchar(50) ,
  `Clasificacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 ;

-- Volcando datos para la tabla notificaciones.reportes: ~1 rows (aproximadamente)
INSERT INTO `reportes` (`Id`, `Fecha`, `EtiquetaU`, `Hora`, `EstdBote`, `Clasificacion`) VALUES
	(1, '2024-04-14', 'Bote B', '13:22:13', 'Lleno', 'Plasticos');

-- Volcando estructura para tabla notificaciones.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(75) DEFAULT NULL,
  `Email` varchar(160) DEFAULT NULL,
  `Telefono` int DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `TpUser` varchar(80) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT 'Activo',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 ;

-- Volcando datos para la tabla notificaciones.usuarios: ~1 rows (aproximadamente)
INSERT INTO `usuarios` (`Id`, `Nombre`, `Email`, `Telefono`, `Password`, `TpUser`, `Estado`) VALUES
	(1, 'Brayan6072', 'brayan.delgado6072@alumnos.udg.mx', 123456789, '123456', 'Encargado', 'Activo');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
