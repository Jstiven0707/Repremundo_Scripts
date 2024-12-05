
--
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rdcd2025`
--

CREATE TABLE IF NOT EXISTS `rdcd2025` (
  `redccscx` varchar(9) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de Reporte',
  `csccieca` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo cierre de caja',
  `comidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comcodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comcscxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comcsc2x` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cliidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Cliente',
  `clinomxx` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre cliente',
  `dtrdtrxx` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de transporte',
  `comfecvc` date NOT NULL COMMENT 'Fecha vencimiento',
  `comvlrxx` decimal(12,2) NOT NULL COMMENT 'Valor ',
  `comretxx` decimal(12,2) NOT NULL COMMENT 'Retenciones',
  `comforma` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Forma de Pago',
  `comtipox` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Pago',
  `comusuxx` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuaio que lo Elaboro',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`redccscx`,`csccieca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle de Reportes Diarios de Caja';


