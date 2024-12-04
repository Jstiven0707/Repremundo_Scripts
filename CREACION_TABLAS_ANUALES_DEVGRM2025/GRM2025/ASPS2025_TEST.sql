

CREATE TABLE IF NOT EXISTS `ASPS2025` (
  `IDPUSAXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del puesto satelital',
  `IDASIPUX` int(9) NOT NULL COMMENT 'Secuencia de asignacion del puesto',
  `USRACTXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador del usuario actual del puesto',
  `USRAUTXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador del usuario que autoriza el puesto',
  `TIPASIGX` enum('FIJA','PARCIAL') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Indica el tipo de asignacion',
  `ASGIFECX` date NOT NULL COMMENT 'Indica el limite inferior de la asignacion',
  `ASGSFECX` date NOT NULL COMMENT 'Indica el limite superior de la asignacion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` enum('ACTIVO','HISTORIAL','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de la asignacion',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Actualizacion',
  PRIMARY KEY (`IDPUSAXX`,`IDASIPUX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Asignacion puestos satelitales';


