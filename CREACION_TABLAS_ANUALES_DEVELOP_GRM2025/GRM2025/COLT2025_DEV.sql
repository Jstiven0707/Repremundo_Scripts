
CREATE TABLE IF NOT EXISTS `COLT2025` (
  `BLXXXXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de BL',
  `DOCNROXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de DO',
  `DOCTRANS` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Do de Transito',
  `FACIDXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Factura',
  `ITEIDXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Item de Factura',
  `PROIDXXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Codigo de Proveedor',
  `PRODESFA` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Descripcion del Proveedor',
  `TOTALFAC` decimal(18,2) NOT NULL COMMENT 'Total de Factura',
  `ITECANXX` decimal(18,2) NOT NULL COMMENT 'Saldo Factura',
  `ARCIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Partida arancelaria',
  `CANTNACX` decimal(18,3) NOT NULL COMMENT 'Cantidad a nacionalizar',
  `VALUNIXX` decimal(18,3) NOT NULL COMMENT 'Valor unitario',
  `VALTOLXX` decimal(18,3) NOT NULL COMMENT 'Total',
  `FLETEXXX` decimal(18,3) NOT NULL COMMENT 'Flete',
  `FLETETXX` decimal(18,3) NOT NULL COMMENT 'FLETE TOTAL POR FACTURA',
  `GDXXXXXX` decimal(18,3) NOT NULL COMMENT 'GD',
  `GDTOTALX` decimal(18,3) NOT NULL COMMENT 'VALOR GD TOTAL',
  `ASOFACTX` enum('PENDIENTE','FINALIZADO','CARGADO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Asociacion a Factura',
  `ASOESTAX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Respuesta de la Asociacion',
  `ASODOCXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado de los Documentos del BL',
  `ASOESTDO` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Observacion de los Docuemntos Asociados al BL',
  `REGUSRXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creación',
  `REGUSRMX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`BLXXXXXX`,`DOCNROXX`,`FACIDXXX`,`ITEIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Saldos de FActuras Asociados a BL para Coltabaco';


