
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDSD2025`
--

CREATE TABLE IF NOT EXISTS `MDSD2025` (
  `DOCNROXX` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) NOT NULL COMMENT 'Sucursal Del DO',
  `DOCSUFXX` varchar(3) NOT NULL COMMENT 'Sufijo Del DO',
  `IDCLASDA` int(11) NOT NULL COMMENT 'ID de la clasificacion',
  `NUMSDAXX` varchar(20) NOT NULL COMMENT 'NUMERO DE SDA',
  `OBSSDAXX` text NOT NULL COMMENT 'Observacion SDA',
  `FECRSDAX` date NOT NULL COMMENT 'FECHA DE APERTURA DEL SDA',
  `FECCSDAX` date NOT NULL COMMENT 'FECHA DE CIERRE DEL SDA',
  `REGUSRXX` varchar(20) NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`DOCNROXX`,`SUCIDXXX`,`DOCSUFXX`,`IDCLASDA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OPERACIONES VS SDA';


