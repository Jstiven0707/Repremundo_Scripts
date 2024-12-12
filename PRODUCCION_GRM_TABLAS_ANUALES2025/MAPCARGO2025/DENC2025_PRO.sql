

CREATE TABLE `DENC2025` (
  `NITUSRXX` varchar(12) DEFAULT NULL COMMENT 'Empresa Usuario Logeado',
  `KEYDENSX` varchar(50) NOT NULL,
  `TYPEXXXX` varchar(45) DEFAULT NULL COMMENT 'Tipo de carga o pedido',
  `NUMBERXX` varchar(5) DEFAULT NULL COMMENT 'Numero de carga o pedido',
  `MSNXXXXX` varchar(10) DEFAULT NULL COMMENT 'MSN',
  `MASTERPO` varchar(10) DEFAULT NULL COMMENT 'Master PO',
  `SUBPEDXX` varchar(10) DEFAULT NULL COMMENT 'Subpedido -  Master PO',
  `PARTNUMX` varchar(25) DEFAULT NULL COMMENT 'Parte número Avianca',
  `REGUSRXX` varchar(20) NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cabecera Densificacion Avianca';
COMMIT;
;
