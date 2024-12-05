
--
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rfic2025`
--

CREATE TABLE IF NOT EXISTS `rfic2025` (
  `idrficxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Registro Fotografico e Inconsistencias de la Carga',
  `depidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Deposito',
  `dtrdtrxx` varchar(35) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de transporte',
  `dtrmanxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de manifiesto',
  `dtrplaen` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Planilla de envio',
  `dtrplare` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Planilla de recepcion',
  `dtridxxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de ingreso',
  `aciidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id acta de inconsistencia',
  `salidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador de salida',
  `saldhlxx` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Registro fotografico DHL',
  `aplicinc` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Inconsistencia',
  `aplicfot` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Fotografia',
  `obsrfoic` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones',
  `contxxxx` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipoxxxx` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Entrada' COMMENT 'Tipo de registro fotografico',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`idrficxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera Registro Fotografico e Inconsistencias de la Carga';
