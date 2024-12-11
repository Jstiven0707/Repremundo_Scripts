
CREATE TABLE `HETA2025` (
  `IDAGETIE` int(10) NOT NULL COMMENT 'Id autoincremental de registro',
  `USRIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cedula del Usuario',
  `AGENTEID` int(10) NOT NULL COMMENT 'Id de agente',
  `TIPOXXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo al que pertenece la persona logueada',
  `ESTADOXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Usuario',
  `FECCAMES` date NOT NULL COMMENT 'Fecha del Cambio del Estado',
  `HORCAMES` time NOT NULL COMMENT 'Hora de cambio de estado',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO','HISTORIAL') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Relacion Tiempo Agentes Conectados';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HETA2025`
--
ALTER TABLE `HETA2025`
  ADD PRIMARY KEY (`IDAGETIE`,`USRIDXXX`);
COMMIT;


