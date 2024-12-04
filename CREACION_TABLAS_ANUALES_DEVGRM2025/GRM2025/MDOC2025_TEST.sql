
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDOC2025`
--

CREATE TABLE IF NOT EXISTS `MDOC2025` (
  `ODCPOXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'PO',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `SUCIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCTIPXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Do',
  `DOCNROXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nro Do',
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00',
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modifico',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`ODCPOXXX`,`CLIIDXXX`,`DOCNROXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle DOs Ordenes de Compra';

