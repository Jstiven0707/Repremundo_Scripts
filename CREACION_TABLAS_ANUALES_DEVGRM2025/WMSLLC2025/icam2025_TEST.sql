
CREATE TABLE IF NOT EXISTS `icam2025` (
  `idingcam` int(10) NOT NULL COMMENT 'Id ingreso',
  `depidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito',
  `camplaxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Placa de camion',
  `tdtidxxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de ingreso del camion',
  `dtridxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de ingreso a deposito',
  `fecingxx` date NOT NULL COMMENT 'Fecha de ingreso',
  `horingxx` time NOT NULL COMMENT 'Hora de ingreso',
  `fecapexx` date NOT NULL COMMENT 'Fecha de inicio identificacion',
  `horapexx` time NOT NULL COMMENT 'Hora de inicio identificacion',
  `fecciexx` date NOT NULL COMMENT 'Fecha de cierre camion',
  `horciexx` time NOT NULL COMMENT 'Hora de cierre camion',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`idingcam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='información de ingreso de camiones';

