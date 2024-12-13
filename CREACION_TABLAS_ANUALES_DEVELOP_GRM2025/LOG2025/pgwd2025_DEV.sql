

CREATE TABLE IF NOT EXISTS `pgwd2025` (
  `numordco` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'concatenaciÃ³n prefijo de pedido con nÃºmero de pedido',
  `numoplxx` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'concatenaciÃ³n del prefijo de la  factura con el nÃºmero de la factura',
  `idarticu` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'id del articulo o sku',
  `descripx` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Descripcion articulo',
  `unicomxx` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Unidad de compra',
  `precioun` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Precio Unitario',
  `cantidad` int NOT NULL COMMENT 'cantidad',
  `cantentr` int NOT NULL COMMENT 'cantidad entregada',
  `cantdevx` int NOT NULL COMMENT 'cantidad devuelta',
  `estadoxx` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'estado de la entrega',
  `causalxx` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'nÃºmero de la novedad',
  `respnove` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Responsable de la novedad',
  `observac` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'observaciones',
  `regfecxx` date NOT NULL COMMENT 'fecha de creaciÃ³n',
  `reghorxx` time NOT NULL COMMENT 'hora de creaciÃ³n',
  `regmodxx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'usuarios que modifican',
  `regfmodx` date NOT NULL COMMENT 'fecha de modificaciÃ³n de registro ',
  `reghmodx` time NOT NULL COMMENT 'hora de modificaciÃ³n de registro',
  `regusrxx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'usuario que crea ',
  `regestxx` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`numoplxx`,`idarticu`,`numordco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Detalle de pedidos  de GWS';
