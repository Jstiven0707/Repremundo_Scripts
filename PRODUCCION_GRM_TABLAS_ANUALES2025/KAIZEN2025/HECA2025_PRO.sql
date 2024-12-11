

CREATE TABLE `HECA2025` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'ID CABECERA DEL TICKET',
  `IDCAUSAL` int(10) NOT NULL COMMENT 'Id de la Causal',
  `OBSCAUSA` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion de la Causal',
  `HELCESTA` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Ticket',
  `TIPTICKX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Ticket',
  `HELCIDCL` int(5) NOT NULL COMMENT 'Id de la Clasificacion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Auditoria Causales de Devolucion';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HECA2025`
--
ALTER TABLE `HECA2025`
  ADD PRIMARY KEY (`HELCCSCX`,`IDCAUSAL`);
COMMIT;


