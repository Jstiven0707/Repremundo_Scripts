
--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDOU2025`
--

CREATE TABLE IF NOT EXISTS `MDOU2025` (
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOCTIPXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOCPESTX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador o Peso del Estado',
  `DOCESTXX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado DO',
  `NOTISTBK` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Notificar estado a RIO',
  `DOCEST2X` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado Do Para BackBone',
  `DOCDESTX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documentos del Estado',
  `DOCFESTX` date NOT NULL COMMENT 'Fecha del Estado',
  `DOCHESTX` time NOT NULL COMMENT 'Hora del Estado',
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGMODXX` date NOT NULL,
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`DOCNROXX`,`REGFECXX`,`REGHORXX`,`REGUSRXX`),
  KEY `DOCTIPXX` (`DOCTIPXX`),
  KEY `SUCIDXXX` (`SUCIDXXX`),
  KEY `DOCNROXX` (`DOCNROXX`,`DOCESTXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='Estados de DO';

