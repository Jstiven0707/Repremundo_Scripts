--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CMFC2025`
--

DROP TABLE IF EXISTS `CMFC2025`;
CREATE TABLE `CMFC2025` (
  `IDCOMXXX` enum('','R','P','F','G','C','L') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL COMPROBANTE',
  `COMPREXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PREFIJO DEL COMPROBANTE',
  `CNSCOMXX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'consecutivo del comprobante',
  `CNSCOM2X` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CONSECUTIVO DEL COMPROBANTE 2',
  `CNSCOMFE` date NOT NULL COMMENT 'fecha del comprobante',
  `CNSCOFEV` date NOT NULL COMMENT 'fecha de vencimiiento comproblante',
  `CNSPERXX` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'fecha y mes del comproblante',
  `CNSORDEN` bigint NOT NULL COMMENT 'Orden de trabajo',
  `CMFCOBSX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OBSERVACION DEL COMPROBANTE',
  `IDARCHXX` int NOT NULL COMMENT 'Id del archivo en amazon',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='movimiento financiero cabecera' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CMFC2025`
--
ALTER TABLE `CMFC2025`
  ADD PRIMARY KEY (`IDCOMXXX`,`COMPREXX`,`CNSCOMXX`,`CNSCOM2X`) USING BTREE,
  ADD KEY `IDCOMXXX` (`IDCOMXXX`) USING BTREE,
  ADD KEY `COMPREXX` (`COMPREXX`) USING BTREE,
  ADD KEY `CNSCOMXX` (`CNSCOMXX`) USING BTREE,
  ADD KEY `CNSCOM2X` (`CNSCOM2X`) USING BTREE,
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;
