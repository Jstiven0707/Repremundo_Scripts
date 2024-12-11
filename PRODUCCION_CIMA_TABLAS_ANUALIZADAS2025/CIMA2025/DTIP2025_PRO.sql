
CREATE TABLE `DTIP2025` (
  `DTRCDOTR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTRCNICO` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTRPEDXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Pedido',
  `DTRDSCIT` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Item de Documento de Transporte (PK)',
  `IDARCHXX` int NOT NULL COMMENT 'ID del archivo',
  `REGUSRXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Pedidos por Documento de Transporte' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTIP2025`
--
ALTER TABLE `DTIP2025`
  ADD PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`,`DTRPEDXX`,`DTRDSCIT`,`IDARCHXX`) USING BTREE,
  ADD KEY `DTRDSCIT` (`DTRDSCIT`),
  ADD KEY `DTRCDOTR` (`DTRCDOTR`),
  ADD KEY `DTRCNICO` (`DTRCNICO`),
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;


