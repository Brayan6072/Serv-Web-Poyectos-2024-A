-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.3.0 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------




-- Volcando estructura de base de datos para notificaciones
CREATE DATABASE IF NOT EXISTS `notificaciones` 
USE `notificaciones`;

-- Volcando estructura para tabla notificaciones.reportes
CREATE TABLE IF NOT EXISTS `reportes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `EtiquetaU` varchar(50) DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `EstdBote` varchar(50) DEFAULT NULL,
  `Clasificacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=31;

-- Volcando datos para la tabla notificaciones.reportes: ~5 rows (aproximadamente)
INSERT INTO `reportes` (`Id`, `Fecha`, `EtiquetaU`, `Hora`, `EstdBote`, `Clasificacion`) VALUES
	(1, '2024-03-19', 'Bote A', '20:09:22', 'Dañado', 'Papel'),
	(2, '2024-03-24', 'Bote B', '18:37:03', 'Lleno', 'Papel'),
	(3, '2024-03-24', 'Bote Ã', '18:39:01', 'Lleno', 'Papel'),
	(4, '2024-03-24', 'Bote G', '18:39:37', 'Danado', 'Metal'),
	(5, '2024-03-24', 'Bote G', '18:40:02', 'Lleno', 'Papel');

