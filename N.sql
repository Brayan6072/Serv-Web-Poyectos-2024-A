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
  `Estatus` varchar(50) DEFAULT 'En proceso',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla notificaciones.reportes: ~17 rows (aproximadamente)
INSERT INTO `reportes` (`Id`, `Fecha`, `EtiquetaU`, `Hora`, `EstdBote`, `Clasificacion`, `Estatus`) VALUES
	(13, '2024-04-17', 'Bote C', '21:38:18', 'Lleno', 'Papel', 'verde'),
	(16, '2024-04-17', 'Bote D', '22:35:19', 'Lleno', 'Papel', 'verde'),
	(17, '2024-04-17', 'Bote N', '22:37:17', 'Lleno', 'Metal', 'verde'),
	(18, '2024-04-17', 'Bote Q', '22:37:23', 'Danado', 'Metal', 'verde'),
	(19, '2024-04-20', 'Bote F', '13:15:52', 'Lleno', 'Vidrio', 'verde'),
	(20, '2024-04-20', 'Bote C', '17:52:52', 'Lleno', 'Papel', 'verde'),
	(21, '2024-04-20', 'Bote D', '19:26:33', 'Lleno', 'Papel', 'verde'),
	(22, '2024-04-20', 'Bote Q', '20:54:21', 'Basura Mezclada', 'Dificil Reciclaje', 'verde'),
	(23, '2024-04-20', 'Bote G', '20:57:35', 'Danado', 'Plasticos', 'verde'),
	(24, '2024-04-20', 'Bote J', '21:15:31', 'Danado', 'Dificil Reciclaje', 'verde'),
	(25, '2024-04-22', 'Bote D', '21:37:30', 'Lleno', 'Plasticos', 'verde'),
	(26, '2024-04-24', 'Bote D', '14:13:28', 'Lleno', 'Papel', 'verde'),
	(27, '2024-04-24', 'Bote C', '14:15:23', 'Lleno', 'Papel', 'verde'),
	(28, '2024-04-24', 'Bote D', '14:17:16', 'Danado', 'Papel', 'verde'),
	(29, '2024-04-24', 'Bote G', '14:18:50', 'Danado', 'Plasticos', 'verde'),
	(30, '2024-04-24', 'Bote Q', '14:26:32', 'Danado', 'Metal', 'verde'),
	(31, '2024-04-24', 'Bote R', '14:26:49', 'Lleno', 'Papel', 'verde'),
	(32, '2024-04-24', 'Bote F', '14:35:27', 'Lleno', 'Plasticos', 'verde'),
	(33, '2024-04-25', 'Bote K', '19:56:10', 'Lleno', 'Metal', 'verde'),
	(34, '2024-04-25', 'Bote G', '19:57:16', 'Lleno', 'Papel', 'verde'),
	(35, '2024-04-25', 'Bote G', '19:58:04', 'Danado', 'Plasticos', 'verde'),
	(36, '2024-04-27', 'Bote C', '23:25:23', 'Lleno', 'Papel', 'verde'),
	(37, '2024-04-28', 'Bote C', '13:31:39', 'Basura Mezclada', 'Organicos', 'verde'),
	(38, '2024-04-28', 'Bote D', '13:32:06', 'Danado', 'Papel', 'verde');

-- Volcando estructura para tabla notificaciones.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(75) DEFAULT NULL,
  `Email` varchar(160) DEFAULT NULL,
  `Telefono` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `TpUser` varchar(80) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT 'Activo',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla notificaciones.usuarios: ~3 rows (aproximadamente)
INSERT INTO `usuarios` (`Id`, `Nombre`, `Email`, `Telefono`, `Password`, `TpUser`, `Estado`) VALUES
	(1, 'Brayan Delgado Diaz', 'brayan.delgado6072@alumnos.udg.mx', '12345659789', '$2a$10$hpGFOCzG3hr97xBBlntBTeS5D1aCEaqIQ.BXL5IgP5O253lH9EZ2q', 'encargado', 'Activo'),
	(2, 'Brayan', 'ben10delgado@gmail.com', '3424242', '$2a$10$MMC7ssl0UTkBoA.kC/CcFuv047wi48uYr0/dHFjscoG4ZCzGHNg86', 'encargado', 'Activo');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
