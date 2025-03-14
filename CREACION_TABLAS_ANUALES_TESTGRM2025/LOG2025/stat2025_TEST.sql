
CREATE TABLE IF NOT EXISTS `stat2025` (
  `idordenx` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id orden',
  `cumprefe` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cumplimiento Referencia',
  `ordenxxx` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Orden de compra',
  `cumprart` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cumplimiento Articulo',
  `refproid` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia producto',
  `statusxx` enum('RECIBIDO','DESPACHADO','CANCELADO','APLAZADO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Status orden compra',
  `fechdesp` date NOT NULL COMMENT 'Fecha estimada despacho',
  `horadesp` time NOT NULL COMMENT 'Hora estimada despacho',
  `transpor` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa Transportadora',
  `numguixx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Guía transportadora ',
  `suppcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'prefijo código cumplimiento',
  `namefile` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del archivo sftp',
  `regusrxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Usuario Creador Registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha Registro',
  `reghorxx` time NOT NULL COMMENT 'Hora de Registro',
  `regusrmx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Usuario Modifica',
  `regfecmx` date NOT NULL COMMENT 'Fecha de Modificacion',
  `reghormx` time NOT NULL COMMENT 'Hora Modificacion',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Esatdo del Registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'DateTime Modificacion',
  PRIMARY KEY (`idordenx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='Status ordenes emma' AUTO_INCREMENT=351 ;

