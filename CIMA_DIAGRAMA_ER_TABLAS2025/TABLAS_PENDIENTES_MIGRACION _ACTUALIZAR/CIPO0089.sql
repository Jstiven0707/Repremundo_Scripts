

CREATE TABLE `CIPO0089` (
  `LINEIDXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID DE LA LINEA DE NEGOCIO',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT ' Nit cliente',
  `TIPOPEXX` enum('','IMPORTACION','EXPORTACION','TRANSITO','REGISTRO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'TIPO DE OPERACION',
  `SEGIDXXX` smallint NOT NULL COMMENT 'ID DEL SEGMENTO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='CLIENTE VS LINEAS DE NEGOCIOS VS SEGMENTOS' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIPO0089`
--
ALTER TABLE `CIPO0089`
  ADD PRIMARY KEY (`CLIIDXXX`,`LINEIDXX`,`TIPOPEXX`,`SEGIDXXX`) USING BTREE,
  ADD KEY `CLIIDXXX` (`CLIIDXXX`) USING BTREE,
  ADD KEY `LINEIDXX` (`LINEIDXX`) USING BTREE,
  ADD KEY `SEGIDXXX` (`SEGIDXXX`) USING BTREE;
COMMIT;

/* ACTUALIZACION DICCIONARIO LUCID 
La columna  `SEGIDXXX` smallint NOT NULL COMMENT 'ID DEL SEGMENTO', ya no esta en el diagrama lucid pendiente en si se debe dejar o eliminar 