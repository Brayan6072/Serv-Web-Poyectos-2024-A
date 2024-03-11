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

-- Volcando estructura para tabla notificaciones.botes
CREATE TABLE IF NOT EXISTS `botes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Etiqueta` varchar(50) DEFAULT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Id_Condiciones` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_Condiciones` (`Id_Condiciones`),
  CONSTRAINT `FK_botes_estadosbts` FOREIGN KEY (`Id_Condiciones`) REFERENCES `estadosbts` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla notificaciones.botes: ~2 rows (aproximadamente)
INSERT INTO `botes` (`Id`, `Etiqueta`, `Tipo`, `Id_Condiciones`) VALUES
	(1, 'A1', 'papel', 1),
	(2, 'B1', 'Plastico', 4);

-- Volcando estructura para tabla notificaciones.estadosbts
CREATE TABLE IF NOT EXISTS `estadosbts` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Estado` varchar(50) DEFAULT 'Vacio',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla notificaciones.estadosbts: ~5 rows (aproximadamente)
INSERT INTO `estadosbts` (`Id`, `Estado`) VALUES
	(1, 'Lleno'),
	(2, 'Vacio'),
	(3, 'Roto'),
	(4, 'Mezclado'),
	(5, 'Sucio');

-- Volcando estructura para tabla notificaciones.reportes
CREATE TABLE IF NOT EXISTS `reportes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Mensaje` varchar(50) DEFAULT NULL,
  `Id_Bote` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_Bote` (`Id_Bote`),
  CONSTRAINT `FK_reportes_botes` FOREIGN KEY (`Id_Bote`) REFERENCES `botes` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla notificaciones.reportes: ~1 rows (aproximadamente)
INSERT INTO `reportes` (`Id`, `Fecha`, `Mensaje`, `Id_Bote`) VALUES
	(1, '2024-03-09', 'ddd', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;