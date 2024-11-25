--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DTTP2025`
--

DROP TABLE IF EXISTS `DTTP2025`;
CREATE TABLE `DTTP2025` (
  `DTRCNICO` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTRDSCIT` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Item de Documento de Transporte (PK)',
  `TIPPROXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Producto ',
  `IDARCHXX` int NOT NULL COMMENT 'ID del archivo',
  `DTRCDOTR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTRDBULT` decimal(20,5) NOT NULL COMMENT 'Bultos',
  `DTRDNUPE` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero Pedido',
  `REGUSRXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Detalle Tipos de Producto por Item de Documento de Transporte' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTTP2025`
--
ALTER TABLE `DTTP2025`
  ADD PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`,`DTRDSCIT`,`IDARCHXX`,`TIPPROXX`) USING BTREE,
  ADD KEY `DTRCDOTR` (`DTRCDOTR`),
  ADD KEY `DTRCNICO` (`DTRCNICO`),
  ADD KEY `DTRDSCIT` (`DTRDSCIT`),
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;