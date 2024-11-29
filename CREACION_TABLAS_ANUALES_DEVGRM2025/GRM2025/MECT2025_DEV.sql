
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MECT2025`
--

CREATE TABLE IF NOT EXISTS `MECT2025` (
  `DOCNROXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `LIMACEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Aceptacion',
  `XMLENVIA` text COLLATE utf8_unicode_ci NOT NULL,
  `CODERROR` int(11) NOT NULL COMMENT 'Codigo de error respuesta WS',
  `ERRMENSA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mensaje de error de respuesta',
  `CODRESXX` int(11) NOT NULL COMMENT 'Codigo de Respuesta valida',
  `MENSRESP` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mensaje de WS',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`DOCNROXX`,`LIMACEXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Transmision Complemento Declaraciones a Texmoda';

