
--
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DSAE2025`
--

CREATE TABLE IF NOT EXISTS `DSAE2025` (
  `ANTIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Concecutivo',
  `COMREFXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Concepto',
  `ANTTIPXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo PCC o IP',
  `ANTVLRXX` decimal(17,2) NOT NULL COMMENT 'Valor',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `REGMODXX` date NOT NULL,
  `REGESTXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`ANTIDXXX`,`COMREFXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle de Anticipos Expo';


