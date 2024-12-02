
--
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fljd2024`
--

CREATE TABLE IF NOT EXISTS `fljd2024` (
  `comidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de consecutivo',
  `comcodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de comprobante',
  `comcscxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de comprobante',
  `codfacxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo de factura',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`comidxxx`,`comcodxx`,`comcscxx`,`codfacxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='RelaciÃ³n entre liquidaciones y facturas';

