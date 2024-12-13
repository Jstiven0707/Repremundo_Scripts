

CREATE TABLE IF NOT EXISTS `SHRO2025` (
  `SHNUMBER` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la operacion',
  `OPNUMREF` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de guia',
  `OPTRINUM` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Vuelo/Viaje',
  `COUNTRYO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de origen',
  `REGIONXO` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Region de origen',
  `CODPORTO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del puerto de origen',
  `NAMPORTO` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Puerto de origen',
  `COUNTRYD` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de destino',
  `REGIONXD` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Region de destino',
  `CODPORTD` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del puerto de destino',
  `NAMPORTD` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Puerto de destino',
  `PAIENTRE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Pais de  entrega',
  `NAMENTRE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ciudad de entrega',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`SHNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ruta puertos del embarque';

