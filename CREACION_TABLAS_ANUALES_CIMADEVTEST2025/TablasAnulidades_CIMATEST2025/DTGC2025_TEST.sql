--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DTGC2025`
--

DROP TABLE IF EXISTS `DTGC2025`;
CREATE TABLE `DTGC2025` (
  `DTRCDOTR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTRCNICO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTGCIDXX` int NOT NULL COMMENT 'ID Secuencia del gasto',
  `IDARCHXX` int NOT NULL COMMENT 'ID del archivo',
  `DRTCCAAD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cargos Adicionales',
  `DRTCTARI` decimal(15,5) NOT NULL COMMENT 'Tarifa',
  `DRTCUNID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Unidad',
  `DRTCMOGA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Moneda del Gasto',
  `DRTCFRPG` decimal(15,5) NOT NULL COMMENT 'Forma de pago del gasto(Prepaid)',
  `DRTCFOPC` decimal(15,5) NOT NULL COMMENT 'Forma de pago del gasto(Collect)',
  `REGUSRXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Detalle Gastos por Documento de Transporte' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTGC2025`
--
ALTER TABLE `DTGC2025`
  ADD PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`,`DTGCIDXX`,`IDARCHXX`) USING BTREE,
  ADD KEY `DTRCNICO` (`DTRCNICO`),
  ADD KEY `DTRCDOTR` (`DTRCDOTR`);
COMMIT;
