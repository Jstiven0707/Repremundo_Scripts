
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MVCO2025`
--

CREATE TABLE IF NOT EXISTS `MVCO2025` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'ID CABECERA DEL TICKET',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del do',
  `FACIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Factura',
  `ITEIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Item',
  `OBSOBSXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`HELCCSCX`,`DOCNROXX`,`FACIDXXX`,`ITEIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='MVC Observaciones';

