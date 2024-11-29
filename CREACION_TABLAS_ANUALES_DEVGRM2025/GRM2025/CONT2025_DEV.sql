
CREATE TABLE IF NOT EXISTS `CONT2025` (
  `NUMPOLXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Poliza',
  `CONTRAXX` int(9) NOT NULL COMMENT 'Consecutivo de la Trazabilidad',
  `DESTRAXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion de la Trazabilidad',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`NUMPOLXX`,`CONTRAXX`) COMMENT 'PRIMARIA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Trazabilidad Polizas';

