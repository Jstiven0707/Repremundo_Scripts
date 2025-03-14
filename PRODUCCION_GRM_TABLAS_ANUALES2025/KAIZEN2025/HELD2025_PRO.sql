

CREATE TABLE `HELD2025` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'CONSECUTIVO DE CABECERA DEL TICKET',
  `HELDIDXX` int(15) NOT NULL COMMENT 'Consecutivo detalle ',
  `HELCDESC` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'DESCRIPCION DEL TICKET',
  `HELCESTA` enum('PENDIENTE','SOLUCIONADO','EN ESPERA','EN PROCESO','DEVUELTO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del seguimiento del ticket',
  `TIPTICKX` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `HELCIDCL` int(5) NOT NULL,
  `HELSNRAP` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Opcion de causal de reapertura',
  `HELOTRAP` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion otra causal de reapertura',
  `HELDREAX` enum('','EL AGENTE NO SOLUCIONO EL TICKET','LA SOLUCION NO FUE CLARA','SE VOLVIO A PRESENTAR ERRORES','OTRA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'indica la causal de reapertura',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Del Ticket';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HELD2025`
--
ALTER TABLE `HELD2025`
  ADD PRIMARY KEY (`HELDIDXX`),
  ADD KEY `HELCCSCX` (`HELCCSCX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `HELD2025`
--
ALTER TABLE `HELD2025`
  MODIFY `HELDIDXX` int(15) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo detalle ';
COMMIT;

