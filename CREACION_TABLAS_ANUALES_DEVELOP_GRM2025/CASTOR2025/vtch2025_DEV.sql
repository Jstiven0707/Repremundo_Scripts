

CREATE TABLE IF NOT EXISTS `vtch2025` (
  `chidxxxx` int NOT NULL AUTO_INCREMENT COMMENT 'Id cargo',
  `cotnumxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Número cotización',
  `providxx` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Proveedor',
  `idconcep` int DEFAULT NULL COMMENT 'Concepto',
  `monedaid` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Moneda',
  `taricost` decimal(12,2) DEFAULT NULL COMMENT 'Tarifa costo',
  `tarminco` decimal(12,2) DEFAULT NULL COMMENT 'Tarifa minima costo',
  `costousd` decimal(12,2) DEFAULT NULL COMMENT 'Valor USD costo',
  `ivacosto` decimal(12,2) DEFAULT NULL COMMENT 'IVA',
  `canticos` int DEFAULT NULL COMMENT 'Cantidad',
  `varicosx` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Variable Cobro',
  `totcosto` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo',
  `cliidxxx` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Cliente',
  `ingremap` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ingreso Map Cargo',
  `tarivent` decimal(12,2) DEFAULT NULL COMMENT 'Tarifa venta',
  `tarminve` decimal(12,2) DEFAULT NULL COMMENT 'Tarifa minima venta',
  `ventausd` decimal(12,2) DEFAULT NULL COMMENT 'Valor USD venta',
  `ivaventa` decimal(12,2) DEFAULT NULL COMMENT 'IVA',
  `cantiven` decimal(12,2) DEFAULT NULL COMMENT 'Cantidad',
  `varivenx` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Variable Venta',
  `totventa` decimal(12,2) DEFAULT NULL COMMENT 'Total Venta',
  `typechar` enum('SEGURO DE MERCANCIAS','AGENCIAMIENTO ADUANERO','ALMACENAJE DEPOSITO ADUANERO','ALMACENAJE CEDIS','TRANSPORTE NACIONAL','TRANSPORTE URBANO','TRANSPORTE OTM','TRANSPORTE CV','TRASLADO','EMPAQUE - EMBALAJE','CARGUE','COURIER - FLETE INTERNACIONAL','ENTREGA ULTIMA MILLA','CONDICIONES LOCALES','GASTOS EN ORIGEN','GASTOS EN DESTINO','FLETE INTERNACIONAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipo de cargo',
  `observac` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Observaciones cargo',
  `regusrxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario creacion del registro',
  `regfecxx` date NOT NULL COMMENT 'fecha de creacion del registro',
  `reghorxx` time NOT NULL COMMENT 'hora de creacion del registro',
  `regusrmx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario de modificacion',
  `regfecmx` date NOT NULL COMMENT 'fecha de modificacion del registro',
  `reghormx` time NOT NULL COMMENT 'hora de modificacion del registro',
  `regestxx` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'modificado',
  PRIMARY KEY (`chidxxxx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='VENTAS CARGOS' AUTO_INCREMENT=80 ;


