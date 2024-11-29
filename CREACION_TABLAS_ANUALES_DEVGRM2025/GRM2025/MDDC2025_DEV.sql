
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDDC2025`
--

CREATE TABLE IF NOT EXISTS `MDDC2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'sucursal',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'sufijo',
  `LIMACEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de aceptacion',
  `LIMGRAXX` decimal(18,5) NOT NULL COMMENT 'arancel open',
  `LIMSUBTX` decimal(18,5) NOT NULL COMMENT 'IVA open',
  `SUBSALTL` decimal(18,5) NOT NULL COMMENT 'salvaguardia open',
  `SUBDCOTL` decimal(18,5) NOT NULL COMMENT 'derechos compensatorios OPEN',
  `SUBANTTL` decimal(18,5) NOT NULL COMMENT 'derechos antidumping open',
  `SUBSANTL` decimal(18,5) NOT NULL COMMENT 'sancion open',
  `SUBRESTL` decimal(18,5) NOT NULL COMMENT 'rescate open',
  `LIMGRAGX` decimal(18,5) NOT NULL COMMENT 'arancel Gecolsa',
  `LIMSUBTG` decimal(18,5) NOT NULL COMMENT 'IVA Gecolsa',
  `SUBSALTG` decimal(18,5) NOT NULL COMMENT 'Salvaguardia Gecolsa',
  `SUBDCOTG` decimal(18,5) NOT NULL COMMENT 'Derechos compensatorios Gecolsa',
  `SUBANTTG` decimal(18,5) NOT NULL COMMENT 'derechos antidumping Gecolsa',
  `SUBSANTG` decimal(18,5) NOT NULL COMMENT 'sancion Gecolsa',
  `SUBRESTG` decimal(18,5) NOT NULL COMMENT 'rescate Gecolsa',
  `OBSOBSXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones Robot',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','PROCESO','FINALIZADO','INACTIVO','ERROR') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`DOCNROXX`,`SUCIDXXX`,`DOCSUFXX`,`LIMACEXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Discrepancias entre archivos gecolsa y open';


