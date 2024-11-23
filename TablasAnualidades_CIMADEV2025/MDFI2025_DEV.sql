--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDFI2025`
--

DROP TABLE IF EXISTS `MDFI2025`;
CREATE TABLE `MDFI2025` (
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DEL DO (MDOSYYYY)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `IDPROXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR (CIPO0050)',
  `FACIDXXX` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la factura(DSVCYYY)',
  `SECITEXX` int NOT NULL COMMENT 'SECUENCIA DEL ITEM(DSVDYYYY)',
  `PROIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)',
  `ITERESXX` decimal(13,3) NOT NULL COMMENT 'SALDO RESERVADO',
  `TIPPROID` int NOT NULL COMMENT 'ID del tipo de producto (CIPO0075)',
  `MODIDXXX` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la modalidad(CIPO0005)',
  `PAIIDORX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del pais de ORIGEN',
  `JSONPROD` json NOT NULL COMMENT 'INFORMACION DEL PRODUCTO',
  `GRUCOIDX` int NOT NULL COMMENT 'id del acuerdo comercial(CIPO0062)',
  `PAIIDXXX` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PAIS',
  `ACUDIIDX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'codigo del acuerdo acorde a la pagina de la dian(CIPO0061)',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACION Y FACTURA VS ITEMS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDFI2025`
--
ALTER TABLE `MDFI2025`
  ADD PRIMARY KEY (`DOCNROXX`,`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`,`SECITEXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `FACIDXXX` (`FACIDXXX`),
  ADD KEY `SECITEXX` (`SECITEXX`),
  ADD KEY `PROIDXXX` (`PROIDXXX`),
  ADD KEY `TIPPROID` (`TIPPROID`),
  ADD KEY `MODIDXXX` (`MODIDXXX`),
  ADD KEY `PAIIDORX` (`PAIIDORX`),
  ADD KEY `GRUCOIDX` (`GRUCOIDX`),
  ADD KEY `PAIIDXXX` (`PAIIDXXX`),
  ADD KEY `ACUDIIDX` (`ACUDIIDX`);
COMMIT;