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
  `EtiquetaU` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `EstdBote` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Clasificacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla notificaciones.reportes: ~1 rows (aproximadamente)
INSERT INTO `reportes` (`Id`, `Fecha`, `EtiquetaU`, `Hora`, `EstdBote`, `Clasificacion`) VALUES
	(1, '2024-03-19', 'Bote A', '20:09:22', 'Dañado', 'Papel'),
	(2, '2024-03-24', 'Bote B', '18:37:03', 'Lleno', 'Papel'),
	(3, '2024-03-24', 'Bote Ã', '18:39:01', 'Lleno', 'Papel'),
	(4, '2024-03-24', 'Bote G', '18:39:37', 'Danado', 'Metal'),
	(5, '2024-03-24', 'Bote G', '18:40:02', 'Lleno', 'Papel'),
	(6, '2024-03-24', 'Bote G', '18:40:18', 'Danado', 'Metal'),
	(7, '2024-03-24', 'Bote I', '18:40:37', 'Basura Mezclada', 'Dificil Reciclaje'),
	(8, '2024-03-24', 'Bote E', '19:04:37', 'Danado', 'Plasticos'),
	(9, '2024-03-24', 'Bote P', '19:05:23', 'Basura Mezclada', 'Dificil Reciclaje');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;