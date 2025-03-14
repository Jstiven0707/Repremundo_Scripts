--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDFD2025`
--

CREATE TABLE `MDFD2025` (
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DEL DO(MDOSYYYY)',
  `CLIIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR (CIPO0050)',
  `FACIDXXX` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la factura (DSVCYYYY)',
  `SECITEXX` int NOT NULL COMMENT 'SECUENCIA DEL ITEM (DSVDYYYY)',
  `PROIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)',
  `DESIDXXX` int NOT NULL COMMENT 'ID DEL DESCRIPTOR',
  `DESDESXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'valor del descriptor',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificaion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACION, FACTURA E ITEM VS DESCRIPTORES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDFD2025`
--
ALTER TABLE `MDFD2025`
  ADD PRIMARY KEY (`DOCNROXX`,`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`,`SECITEXX`,`PROIDXXX`,`DESIDXXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `FACIDXXX` (`FACIDXXX`),
  ADD KEY `SECITEXX` (`SECITEXX`),
  ADD KEY `PROIDXXX` (`PROIDXXX`);
COMMIT;
