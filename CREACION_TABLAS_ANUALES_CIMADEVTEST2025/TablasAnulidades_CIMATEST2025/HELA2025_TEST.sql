
--
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HELA2025`
--

CREATE TABLE IF NOT EXISTS `HELA2025` (
  `HELDIDXX` int(15) NOT NULL COMMENT 'ID DEL DETALLE DEL TICKET',
  `HELAIDXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID DEL ADJUNTO',
  `HELAPATH` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'PATH DEL ADJUNTO',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`HELAIDXX`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ADJUNTOS DEL DETALLE DEL TICKET' AUTO_INCREMENT=9 ;

