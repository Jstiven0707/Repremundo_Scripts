
CREATE TABLE IF NOT EXISTS `slmt2025` (
  `numsolix` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de solicitud',
  `maniidxx` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero manifiesto',
  `estadoxx` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado manifiesto',
  `fechesta` date NOT NULL COMMENT 'Fecha estado',
  `horaesta` time NOT NULL COMMENT 'Hoara estado',
  `regusrxx` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario crea',
  `regfecxx` date NOT NULL COMMENT 'Fecha crea',
  `reghorxx` time NOT NULL COMMENT 'Hora crea',
  `regusrmx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario modifica',
  `regfecmx` date NOT NULL COMMENT 'Fecha modifica',
  `reghormx` time NOT NULL COMMENT 'Hora modifica',
  `regestxx` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`numsolix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT COMMENT='Trazabilidad manifiesto';

