
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDET2025`
--

CREATE TABLE IF NOT EXISTS `MDET2025` (
  `ENTRIDXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID Registro',
  `AEMIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID Acta',
  `DOCNROXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero DO',
  `FECENTXX` date NOT NULL COMMENT 'Fecha Entrega al Transportador',
  `HORENTXX` time NOT NULL COMMENT 'Hora Entrega al Transportador',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'TimeStamp Modificacion',
  PRIMARY KEY (`ENTRIDXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Fecha y Hora Entrega al Transportador' AUTO_INCREMENT=1 ;

