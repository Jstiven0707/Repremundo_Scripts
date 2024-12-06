
CREATE TABLE IF NOT EXISTS `aisd2025` (
  `idarchad` varchar(10) NOT NULL COMMENT 'Consecutivo de archivo',
  `depidxxx` varchar(10) NOT NULL COMMENT 'Deposito',
  `dtrdtrxx` varchar(35) NOT NULL COMMENT 'Documento de transporte',
  `consecxx` varchar(10) NOT NULL COMMENT 'Consecutivo de ingreso y salida del documento',
  `secuenxx` varchar(10) NOT NULL COMMENT 'Secuencia de Archivos adjuntos',
  `tipoxxxx` varchar(10) NOT NULL COMMENT 'Tipo de registro',
  `rutaxxxx` varchar(300) NOT NULL COMMENT 'Ruta del registro',
  `regusrxx` varchar(20) NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en la que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en la que se crea el registro',
  `regestxx` varchar(10) NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`idarchad`,`secuenxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Adjuntos ingreso y salida de deposito';


