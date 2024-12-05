
CREATE TABLE IF NOT EXISTS `RETA2025` (
  `EMPNITXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nit de empresa',
  `NUMREQXX` bigint NOT NULL COMMENT 'Número de requisición',
  `INDPRREQ` int NOT NULL COMMENT 'Id datos individuales',
  `ITPROIDX` int DEFAULT NULL COMMENT 'Identificador de Productos (tabla ITPRODUC)',
  `ITPRODES` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Descripción del producto',
  `PROITIDX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Nit Proveedor',
  `PRVPRODX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'SI' COMMENT 'Bandera de proveedor cargado desde productos',
  `CURRENCY` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Tipo de moneda',
  `NUMCANTX` decimal(12,2) DEFAULT NULL COMMENT 'Cantidad',
  `VALPRODU` decimal(12,2) DEFAULT NULL COMMENT 'Valor',
  `TOTPRODU` decimal(12,2) DEFAULT NULL COMMENT 'Valor total',
  `UNITCANT` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Unidad de medida',
  `CENTCOST` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Centro de costo',
  `SUBCOSTX` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Sub centro de costo',
  `OBSERVXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Observaciones',
  `AUTUSIDX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Usuario que autoriza',
  `SEGMENID` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Segmento',
  `FAMILIID` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Familia',
  `APROBITX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Aprobado por el director IT',
  `USIDAPPR` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que realiza la aprobacion',
  `FECHRECI` date DEFAULT NULL COMMENT 'Fecha recibida',
  `INFACTXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'factura',
  `FACTRECT` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera de la factura en la que se carga el item',
  `FACFECXX` date NOT NULL COMMENT 'Fecha en la que se carga el item',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date DEFAULT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time DEFAULT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date DEFAULT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time DEFAULT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NULL DEFAULT NULL COMMENT 'Actualizacion',
  PRIMARY KEY (`NUMREQXX`,`EMPNITXX`,`INDPRREQ`),
  KEY `NUMREQXX` (`NUMREQXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

