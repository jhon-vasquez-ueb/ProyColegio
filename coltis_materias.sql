CREATE TABLE IF NOT EXISTS `estudiante` (
  `codigo` varchar(15) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `materia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `creditos` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `materia` (`id`, `nombre`, `creditos`) VALUES
(1, 'Python', 3),
(2, 'Java', 5);

CREATE TABLE IF NOT EXISTS `matricula` (
  `codigo` varchar(15) NOT NULL,
  `id_materia` int NOT NULL,
  PRIMARY KEY (`codigo`,`id_materia`),
  KEY `id_materia` (`id_materia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;
