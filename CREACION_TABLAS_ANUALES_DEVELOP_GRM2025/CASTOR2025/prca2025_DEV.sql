
CREATE TABLE IF NOT EXISTS `prca2025` (
  `pricidxx` int NOT NULL AUTO_INCREMENT COMMENT 'Id pricing',
  `fecinica` date NOT NULL COMMENT 'Fecha inicial de cargue',
  `fecvigen` date NOT NULL COMMENT 'Fecha vigencia',
  `typetari` enum('AEREO','MARITIMO','TERRESTRE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipo de tarifario',
  `clasitar` enum('CONDICIONES LOCALES','GENERAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Clasificacion del tarifario',
  `pathadjx` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ruta Archivo adjunto tarifario',
  `regusrxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario creacion del registro',
  `regfecxx` date NOT NULL COMMENT 'fecha de creacion del registro',
  `reghorxx` time NOT NULL COMMENT 'hora de creacion del registro',
  `regusrmx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario de modificacion',
  `regfecmx` date NOT NULL COMMENT 'fecha de modificacion del registro',
  `reghormx` time NOT NULL COMMENT 'hora de modificacion del registro',
  `regestxx` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'modificado',
  PRIMARY KEY (`pricidxx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PRICING CABECERA' AUTO_INCREMENT=132 ;

