
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDOD2025`
--

CREATE TABLE IF NOT EXISTS `MDOD2025` (
  `DOCNROXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo',
  `IPCIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Informacion Pendiente del Cliente',
  `AREAXXXX` int(10) NOT NULL COMMENT 'Indica el area en Genio',
  `SERIEXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Serie Documental',
  `TIPOXXXX` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre Maquina',
  `IDOBSXXX` int(10) NOT NULL COMMENT 'Consecutivo de la observacion',
  `DESOBSXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`DOCNROXX`,`SUCIDXXX`,`DOCSUFXX`,`IPCIDXXX`,`AREAXXXX`,`SERIEXXX`,`TIPOXXXX`,`IDOBSXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='Documentos por DO Observaciones';

