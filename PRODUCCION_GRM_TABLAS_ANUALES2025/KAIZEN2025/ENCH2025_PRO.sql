
CREATE TABLE `ENCH2025` (
  `NUMTKTXX` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'Numero de Ticket',
  `FACCONXX` int(5) NOT NULL COMMENT 'Facilidad de Contacto',
  `RESINCXX` int(5) NOT NULL COMMENT 'Resolucion Incidencia',
  `TIMERESX` int(5) NOT NULL COMMENT 'Tiempo de Respuesta',
  `SERSOPXX` int(5) NOT NULL COMMENT 'Servicio de Soporte',
  `COMENTXX` text CHARACTER SET utf8 NOT NULL COMMENT 'Comentarios',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion del Registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` varchar(9) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ENCH2025`
--
ALTER TABLE `ENCH2025`
  ADD PRIMARY KEY (`NUMTKTXX`);
COMMIT;


