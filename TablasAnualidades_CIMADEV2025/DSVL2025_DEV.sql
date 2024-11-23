-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DSVL2025`
--

DROP TABLE IF EXISTS `DSVL2025`;
CREATE TABLE `DSVL2025` (
  `CLIIDXXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id del cliente',
  `IDPROXXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Proveedor',
  `FACIDXXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de la factura',
  `SECITEXX` int NOT NULL COMMENT 'Secuencia del Item',
  `LOTITEXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Lotes del item',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('PENDIENTE','ENVIADO','PROCESADO','ERROR','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera de Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='SALDOS DE FACTURA CLIENTE, FACTURA, ITEM VS LOTES' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DSVL2025`
--
ALTER TABLE `DSVL2025`
  ADD PRIMARY KEY (`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`,`SECITEXX`,`LOTITEXX`) USING BTREE,
  ADD KEY `CLIIDXXX` (`CLIIDXXX`) USING BTREE,
  ADD KEY `FACIDXXX` (`FACIDXXX`) USING BTREE,
  ADD KEY `SECITEXX` (`SECITEXX`) USING BTREE,
  ADD KEY `IDPROXXX` (`IDPROXXX`) USING BTREE;
COMMIT;
