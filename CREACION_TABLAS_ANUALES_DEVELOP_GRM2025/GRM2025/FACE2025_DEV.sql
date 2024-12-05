

CREATE TABLE IF NOT EXISTS `FACE2025` (
  `DOCNROXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `NUMSAEXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `SUCIDXXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sucursal',
  `ADMINXXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Administracion Presentacion',
  `AEROPUXX` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Aero/Pto',
  `NUMFACXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `FECFACTX` date NOT NULL COMMENT 'Fecha de Factura',
  `FACGALXX` decimal(10,2) NOT NULL COMMENT 'Galones Factura',
  `FACMT3XX` decimal(10,2) NOT NULL COMMENT 'Metros Cubicos Factura',
  `FACUSDXX` decimal(10,2) NOT NULL COMMENT 'Valor Total Factura USD',
  `FACTRMXX` decimal(10,2) NOT NULL COMMENT 'Valor TRM Factura',
  `FACCOPXX` decimal(40,2) NOT NULL COMMENT 'Valor COP Factura',
  `FACSEMAN` int NOT NULL COMMENT 'Numero de Semana Factura',
  `ENVSEMAN` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Marca de Envio Semanal',
  `ENVMENSX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Marca de Envio Mensual',
  `FECREFFA` date NOT NULL COMMENT 'FECHA DE RECEPCION DE LA FACTURA',
  `HORRECFA` time NOT NULL COMMENT 'Hora de recepcion factura',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGMODXX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`DOCNROXX`,`NUMSAEXX`,`NUMFACXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Detalle Factura SAE y DEX';

