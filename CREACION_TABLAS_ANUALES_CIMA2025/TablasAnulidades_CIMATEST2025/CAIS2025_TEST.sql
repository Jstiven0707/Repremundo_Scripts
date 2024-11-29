CREATE TABLE `CAIS2025` (
  `CAISCAMX` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre de campo a agendar_S cuando es superior_I cuando es inferior',
  `CAISTADO` bigint NOT NULL COMMENT 'ID DE LA TAREA(TARCYYY) O NUMERO DE DO (MDOSYYY)',
  `CAISNOTA` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NOMBRE DE LA TABLA DONDE SE ENCUENTRA EL CAMPO',
  `CAISCANT` tinyint NOT NULL COMMENT 'Cantidad de intentos para el calculo',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AGENDAMIENTO DE INDICADORES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CAIS2025`
--
ALTER TABLE `CAIS2025`
  ADD PRIMARY KEY (`CAISCAMX`,`CAISTADO`,`CAISNOTA`) USING BTREE,
  ADD KEY `CAESTADO` (`CAISTADO`);
COMMIT;
