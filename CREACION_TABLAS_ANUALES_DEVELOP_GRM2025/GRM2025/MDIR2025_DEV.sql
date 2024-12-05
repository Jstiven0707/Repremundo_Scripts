
CREATE TABLE IF NOT EXISTS `MDIR2025` (
  `DOCNROXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCSUFXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sufijo',
  `NUMSAEXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `PROIDXXX` varchar(167) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Identificador del producto',
  `IDCONSXX` int NOT NULL COMMENT 'Secuencia de Tramitex',
  `NUMDEXIX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero del DEX Inicial',
  `NUMDEXFX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero del DEX Final',
  `UNIINIXX` decimal(18,6) NOT NULL COMMENT 'Unidades Iniciales del ITEM',
  `UNIFINXX` decimal(18,6) NOT NULL COMMENT 'Unidades Finales del ITEM',
  `PESNEXXX` decimal(18,6) NOT NULL COMMENT 'Peso neto con que se elaboro el ITEM',
  `PESFINXX` decimal(18,6) NOT NULL COMMENT 'Peso neto con que finalizo el ITEM',
  `VALFOBIX` decimal(18,6) NOT NULL COMMENT 'Valor FOB con que se elaboro el ITEM',
  `VALFOBFX` decimal(18,6) NOT NULL COMMENT 'Valor FOB con que finalizo el ITEM',
  `ITMREGXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Regimen con que finalizo la operacion',
  `ITMADMXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Aduana de ingreso',
  `ITMFECFI` date NOT NULL COMMENT 'Fecha de finalizacion del ITEM',
  `ITMNFINX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de documento con que finalizo',
  `ITMOBSXX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Observaciones de la finalizacion del ITEM',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOCNROXX`,`SUCIDXXX`,`DOCSUFXX`,`NUMSAEXX`,`PROIDXXX`,`IDCONSXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='items de la factura para control de reexportaciones';


