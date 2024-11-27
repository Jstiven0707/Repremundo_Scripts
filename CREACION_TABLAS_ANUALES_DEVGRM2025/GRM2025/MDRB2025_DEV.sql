
--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDRB2025`
--

CREATE TABLE IF NOT EXISTS `MDRB2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID DEL CRON',
  `LIMACEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO DEL DO',
  `OBSROBTX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'observacion del robot',
  `CONTERRX` int(1) NOT NULL DEFAULT '0' COMMENT 'Contador de intentos del Robot',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO','PROCESO','FINALIZADO','ERROR') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`DOCNROXX`,`LIMACEXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='AGENDAMIENTO DE ROBOTS VS OPERACION VS ACEPTACION';

