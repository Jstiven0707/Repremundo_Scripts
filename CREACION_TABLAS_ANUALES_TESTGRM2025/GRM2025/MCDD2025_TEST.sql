
CREATE TABLE IF NOT EXISTS `MCDD2025` (
  `DOCNROXX` int(11) NOT NULL COMMENT 'Numero de Do',
  `DOCACCIX` enum('CREAR','ACTUALIZAR') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera que indica la accion',
  `DOCACTXX` enum('GRM','PRACTIKO','OPEN') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera que indica el actor',
  `DOCINTXX` smallint(3) NOT NULL COMMENT 'Numero de intentos',
  `DOCAPLRE` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ultima respuesta del servicio',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO','FALLIDO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`DOCNROXX`,`DOCACCIX`,`DOCACTXX`,`DOCINTXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='Operacion vs Agendamiento de Cadena de Distribucion de Datos';

