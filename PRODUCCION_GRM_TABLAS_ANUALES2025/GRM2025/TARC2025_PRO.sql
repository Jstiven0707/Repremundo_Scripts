

CREATE TABLE `TARC2025` (
  `IDTAREAX` int(11) NOT NULL COMMENT 'Identificador de la tarea',
  `TITUTARE` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Titulo de la tarea',
  `DOCNROXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `FVENTARE` date NOT NULL COMMENT 'Fecha de vencimiento de la tarea',
  `USRASIGX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del usuario Asignado',
  `ASUIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del asunto de la tarea',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('PENDIENTE','SOLUCIONADO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera de las tareas del APP' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `TARC2025`
--
ALTER TABLE `TARC2025`
  ADD PRIMARY KEY (`IDTAREAX`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `TARC2025`
--
ALTER TABLE `TARC2025`
  MODIFY `IDTAREAX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tarea';
COMMIT;


