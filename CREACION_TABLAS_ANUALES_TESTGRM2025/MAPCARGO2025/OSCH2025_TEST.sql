

CREATE TABLE IF NOT EXISTS `OSCH2025` (
  `IDXXXXXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo',
  `OSNOMRES` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la reservacion',
  `STATUSXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado del cargo',
  `TYPEXXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tipo de cargo',
  `DESCRIPT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del cargo',
  `VALUECOP` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'valor del cargo',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`IDXXXXXX`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='cargos de las reservacion' AUTO_INCREMENT=37604 ;

