
--
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HELP2025`
--

CREATE TABLE IF NOT EXISTS `HELP2025` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'id del Ticket',
  `TICPESID` int(9) NOT NULL COMMENT 'Id del Peso',
  `PESCATXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Categoria',
  `CATPUNXX` int(9) NOT NULL COMMENT 'Indica la Puntuacion de la Categoria',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`HELCCSCX`,`TICPESID`,`PESCATXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Peso de los Tickets';

