

CREATE TABLE IF NOT EXISTS `DINP2025` (
  `NUMPOLXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la Poliza',
  `NUMIDPRE` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la distribución de presupuesto',
  `ANOPPOXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Año del presupuesto',
  `AREAPPOX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Area de presupuesto',
  `SEGPPOXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segmento',
  `FAMPPXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Familia',
  `CCIDXXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de costo',
  `SCCIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subcentro de costo',
  `VALDISXX` decimal(10,2) NOT NULL COMMENT 'Valor designado para la distribución',
  `OBSPPOLX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observación del presupuesto',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro ',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`NUMPOLXX`,`CCIDXXXX`,`SCCIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='DISTRIBUCION DE PRESUPUESTO DE LA POLIZA ';
