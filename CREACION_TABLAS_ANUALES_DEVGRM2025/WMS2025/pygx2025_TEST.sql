
--
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pygx2025`
--

CREATE TABLE IF NOT EXISTS `pygx2025` (
  `anioxxxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Año',
  `codcontx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Codigo contable',
  `nomcomxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre',
  `ccoidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id centro de costo',
  `ccoidsub` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id subcentro de costo',
  `eneroxxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Enero',
  `febrerox` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Febrero',
  `marzoxxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Marzo',
  `abrilxxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Abril',
  `mayoxxxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mayo',
  `junioxxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Junio',
  `julioxxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Julio',
  `agostoxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Agosto',
  `septixxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Septiembre',
  `octubrex` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Octubre',
  `noviemxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Noviembre',
  `diciemxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Diciembre',
  `tiposerx` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numrelxx` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Número de release',
  `numocxxx` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Orden de compra',
  `numsadxx` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'sad',
  `idxxxxxx` int(11) NOT NULL COMMENT 'Consecutivo',
  `interidx` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `numrecxx` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Número de recibo',
  `proidinx` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'id interno proveedor',
  `estinven` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado de inventario',
  `comentxx` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inptjson` longtext COLLATE utf8_unicode_ci COMMENT 'Json de entrada para la creacion del recibo',
  `regusrxx` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario que crea registro',
  `regfecxx` date DEFAULT NULL COMMENT 'Fecha creación registro',
  `reghorxx` time DEFAULT NULL COMMENT 'Hora creación registro',
  `regfecmx` date DEFAULT NULL COMMENT 'Fecha de modificación registro',
  `reghormx` time DEFAULT NULL COMMENT 'Hora modificación registro',
  `regestxx` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado de registro',
  `regstamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='PYG Consolidado';

