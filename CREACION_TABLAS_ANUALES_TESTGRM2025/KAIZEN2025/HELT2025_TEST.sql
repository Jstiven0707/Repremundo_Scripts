
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HELT2025`
--

CREATE TABLE IF NOT EXISTS `HELT2025` (
  `HELCCSCX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Cabecera Ticket',
  `INTERVAX` int(10) NOT NULL COMMENT 'Consecutivo de Intervalo trabajado en el ticket',
  `AGEUSRXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cedula del Agente que realiza el intervalo',
  `HELTINIC` time NOT NULL COMMENT 'Tiempo Inicial del Intervalo',
  `HELTIFIN` time NOT NULL COMMENT 'Tiempo Final del Intervalo',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`HELCCSCX`,`INTERVAX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

