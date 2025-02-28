CREATE TABLE `CIPO0214` (
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del proveedor (CIPO0050)',
  `TIPPROID` int NOT NULL COMMENT 'ID DEL TIPO DE PRODUCTO',
  `TIPOVARX` enum('','FIJA EN PRODUCTO','POR OPERACION','TIPO SERIAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipo Variable',
  `NOMBVARX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre Variable',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='cliente proveedor tipo de producto VS Tipo Variable' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIPO0214`
--
ALTER TABLE `CIPO0214`
  ADD PRIMARY KEY (`CLIIDXXX`,`IDPROXXX`,`TIPPROID`,`TIPOVARX`);
COMMIT;

-- ACTUALIZACION 
 ALTER TABLE `CIPO0214` DROP PRIMARY KEY;
  
  ALTER TABLE `CIPO0214`
  ADD PRIMARY KEY (`CLIIDXXX`,`IDPROXXX`,`TIPPROID`),
  ADD KEY IDX_CLIIDXXX(CLIIDXXX),
  ADD KEY IDX_IDPROXXX(IDPROXXX),
  ADD KEY IDX_TIPPROID(TIPPROID)
				