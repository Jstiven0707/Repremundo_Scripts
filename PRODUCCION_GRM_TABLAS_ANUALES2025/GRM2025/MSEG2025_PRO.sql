

CREATE TABLE `MSEG2025` (
  `CONSMSEG` int(11) NOT NULL COMMENT 'Consecutivo',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DO',
  `NFECHBLO` date NOT NULL COMMENT 'Nueva Fecha del Indicador',
  `NHORABLO` time NOT NULL COMMENT 'Nueva Hora del Indicador',
  `OBSERBLO` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion de Justificacion del Indicador',
  `ESTADOMX` enum('PENDIENTE','ERROR','ENVIADO','ACTIVO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PENDIENTE' COMMENT 'Estado de laNotificacion del Vencimiento',
  `ERRORNOX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Error en el envio del Seguimiento por Correo',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Crea Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion del Registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bloqueo vencimiento indicador Gecolsa Y Reliaanz ' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MSEG2025`
--
ALTER TABLE `MSEG2025`
  ADD PRIMARY KEY (`CONSMSEG`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `MSEG2025`
--
ALTER TABLE `MSEG2025`
  MODIFY `CONSMSEG` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo';
COMMIT;


