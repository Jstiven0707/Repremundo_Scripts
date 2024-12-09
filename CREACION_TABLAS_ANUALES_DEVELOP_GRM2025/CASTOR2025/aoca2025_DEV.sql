

CREATE TABLE IF NOT EXISTS `aoca2025` (
  `aocaidxx` int NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo',
  `provfact` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Proveedor',
  `factnumx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Factura',
  `caridxxx` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'id Cargo',
  `cardesxx` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Descripción cargo',
  `carconpr` int NOT NULL COMMENT 'id Concepto (Practiko)',
  `carvalxx` decimal(12,2) NOT NULL COMMENT 'Valor del cargo',
  `carmonxx` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Moneda',
  `cartecox` enum('TERCERO','COSTO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tercero/Costo',
  `regusrxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario creacion del registro',
  `regfecxx` date NOT NULL COMMENT 'fecha de creacion del registro',
  `reghorxx` time NOT NULL COMMENT 'hora de creacion del registro',
  `regusrmx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario de modificacion',
  `regfecmx` date NOT NULL COMMENT 'fecha de modificacion del registro',
  `reghormx` time NOT NULL COMMENT 'hora de modificacion del registro',
  `regestxx` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'modificado',
  PRIMARY KEY (`aocaidxx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CABECERA FACTURAS' AUTO_INCREMENT=17 ;


