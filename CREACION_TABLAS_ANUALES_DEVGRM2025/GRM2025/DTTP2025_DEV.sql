
--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DTTP2025`
--

CREATE TABLE IF NOT EXISTS `DTTP2025` (
  `DTRDSCIT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Item de Documento de Transporte (PK)',
  `DTRCNICO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTRCDOTR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `TIPPROXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Producto ',
  `DTRDBULT` decimal(18,5) NOT NULL COMMENT 'Bultos',
  `DTRDNUPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Pedido',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` date NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DTRDSCIT`,`DTRCNICO`,`DTRCDOTR`,`TIPPROXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Tipos de Producto por Item de Documento de Transporte';

