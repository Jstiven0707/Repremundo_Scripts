

CREATE TABLE IF NOT EXISTS `MDDS2025` (
  `DOCNROXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sucursal del DO',
  `DOCSUFXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sufijo del Do',
  `NUMSAEXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `MDDSNUSR` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Serie',
  `MDDSCODD` int NOT NULL COMMENT 'Id del Documento',
  `MDDSDESC` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Descripcion del Documento',
  `MDDSNUMD` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero del Documento',
  `MDDSIDEM` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Identificacion del Emisor',
  `MDDSNMEM` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nombre del Emisor',
  `MDDSFEEX` date NOT NULL COMMENT 'Fecha de Expedicion',
  `MDDSFEVE` date NOT NULL COMMENT 'Fecha de Vencimiento',
  `MDDSMONX` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Codigo de la Moneda',
  `MDDSMOND` decimal(9,2) NOT NULL COMMENT 'Monto del Documento',
  `MDDSUNCM` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Codigo de la Unidad',
  `MDDSCANX` decimal(9,2) NOT NULL COMMENT 'Cantidad Unidad Comercial',
  `MDDSVRRE` decimal(9,2) NOT NULL COMMENT 'VALOR A REINTEGRAR',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora de creacion',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de modificacion',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOCNROXX`,`NUMSAEXX`,`MDDSCODD`,`MDDSNUMD`) USING BTREE,
  KEY `DOCNROXX` (`DOCNROXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Documentos Soporte DEX';

