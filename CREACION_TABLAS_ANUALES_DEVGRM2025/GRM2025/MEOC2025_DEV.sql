
--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MEOC2025`
--

CREATE TABLE IF NOT EXISTS `MEOC2025` (
  `ODCPOXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'PO',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `ODCESTXX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado Orden de Compra',
  `ODCFECXX` date NOT NULL COMMENT 'Fecha del Estado',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00',
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modifico',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`ODCPOXXX`,`CLIIDXXX`,`REGUSRXX`,`REGFECXX`,`REGHORMX`,`ODCESTXX`),
  KEY `ODCESTXX` (`ODCESTXX`),
  KEY `ODCPOXXX` (`ODCPOXXX`,`CLIIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Estado Ordenes de Compra';

