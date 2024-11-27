
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ITRF2025`
--

CREATE TABLE IF NOT EXISTS `ITRF2025` (
  `EMPNITXX` varchar(20) NOT NULL COMMENT 'Id empresa',
  `NUMREQXX` bigint(20) NOT NULL COMMENT 'Número de requisición',
  `ITFACSQX` varchar(10) NOT NULL COMMENT 'Secuencia Archivo',
  `GENNODOX` varchar(50) NOT NULL COMMENT 'Id Nodo Principal',
  `SECNODOX` varchar(50) NOT NULL COMMENT 'Id Nodo Hijo',
  `FIDNODOX` varchar(200) NOT NULL COMMENT 'Id Archivo Asociado',
  `ATMNFILX` enum('SI','NO') NOT NULL DEFAULT 'SI' COMMENT 'Bandera de archivos asociados',
  `FACDESLI` varchar(30) NOT NULL COMMENT 'Descripcion Archivo',
  `FACLINKX` varchar(300) NOT NULL COMMENT 'Link Archivo',
  `REGUSRXX` varchar(20) DEFAULT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date DEFAULT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time DEFAULT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) DEFAULT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date DEFAULT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time DEFAULT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` varchar(10) DEFAULT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Actualizacion',
  PRIMARY KEY (`EMPNITXX`,`NUMREQXX`,`ITFACSQX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registro de Archivos para Requisicion y Orden de Servicio Modulo Facturas';


