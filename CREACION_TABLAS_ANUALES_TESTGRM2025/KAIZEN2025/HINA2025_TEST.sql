
--
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HINA2025`
--

CREATE TABLE IF NOT EXISTS `HINA2025` (
  `TRAMITEX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de la Solitud',
  `TABLAXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la Tabla',
  `CAMPOXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre Campo por Analizar',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que Crea el Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se Crea el Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se Crea el Registro',
  `REGUSRMX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se Modifica el Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se Modifica el Registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TRAMITEX`,`TABLAXXX`,`CAMPOXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Historial Agendamiento de Indicadores';

