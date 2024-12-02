
-- Base de datos: `WMSLLC`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rfdi2025`
--

CREATE TABLE IF NOT EXISTS `rfdi2025` (
  `idincdet` int(11) NOT NULL AUTO_INCREMENT,
  `idrficxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Automatico',
  `incidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Inconsistencia',
  `ncontenx` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`idincdet`,`idrficxx`,`incidxxx`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle a Nivel de Inconsistencias ' AUTO_INCREMENT=1 ;

