
--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MCMA2025`
--

CREATE TABLE IF NOT EXISTS `MCMA2025` (
  `MANIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Manifiesto',
  `MANFECXX` date NOT NULL COMMENT 'Fecha Manifiesto',
  `SUCIDXXX` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal',
  `TRANIDXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Transportador o Naviera',
  `LINIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Linea Importacion',
  `MOTIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Motonave',
  `MANFRLXX` date NOT NULL COMMENT 'Fecha Real de Llegada',
  `VIAIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Viaje',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`MANIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Manifiesto';


