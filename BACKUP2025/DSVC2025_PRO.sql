CREATE TABLE `DSVC2025` (
  `CLIIDXXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id del cliente',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR(CIPO0050)',
  `FACIDXXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de la factura',
  `FACFECXX` date NOT NULL COMMENT 'Fecha de la factura',
  `TERMIDXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id del termino',
  `LUGENTXX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Lugar de Entrega',
  `MONIDXXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id de la moneda',
  `PAIIDXXX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del pais',
  `PESBRUXX` decimal(20,5) NOT NULL COMMENT 'Peso bruto',
  `VALFACXX` decimal(20,5) NOT NULL COMMENT 'Valor de la factura',
  `VALFOBXX` decimal(20,5) NOT NULL COMMENT 'Valor fob',
  `VALFLEXX` decimal(20,5) NOT NULL COMMENT 'Valor flete',
  `VALCONXX` decimal(20,5) NOT NULL COMMENT 'valor conexo',
  `VALSEGXX` decimal(20,5) NOT NULL COMMENT 'Valor seguro',
  `VALVARXX` decimal(20,5) NOT NULL COMMENT 'Valor varios',
  `VALCOMXX` decimal(20,5) NOT NULL COMMENT 'Valor comision',
  `VALMATXX` decimal(20,5) NOT NULL COMMENT 'Valor materia prima',
  `VALINSXX` decimal(20,5) NOT NULL COMMENT 'Valor insumos',
  `VALENVXX` decimal(20,5) NOT NULL COMMENT 'Valor envases',
  `VALHERXX` decimal(20,5) NOT NULL COMMENT 'Valor herramientas',
  `VALINGXX` decimal(20,5) NOT NULL COMMENT 'Valor ingenieria',
  `VALCANXX` decimal(20,5) NOT NULL COMMENT 'Valor canones',
  `VALREVVE` decimal(20,5) NOT NULL COMMENT 'Valor revierte vendedor',
  `VALGASPO` decimal(20,5) NOT NULL COMMENT 'Valor gastos posteriores',
  `VALARMXX` decimal(20,5) NOT NULL COMMENT 'Valor armado',
  `VALDERAD` decimal(20,5) NOT NULL COMMENT 'Valor derechos en aduana',
  `VALINTXX` decimal(20,5) NOT NULL COMMENT 'Valor intereses',
  `VALOTRXX` decimal(20,5) NOT NULL COMMENT 'Valor otros gastos',
  `SAFAESTX` enum('','PENDIENTE','SIN SALDO','CON SALDO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado que indica el estado de factura',
  `IDARCHXX` bigint NOT NULL COMMENT 'ID del archivo',
  `DSVCBNAV` enum('','MANUAL','INTEGRACION','DATA ENTRY') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera que indica el origen de la informacion',
  `DEPIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID DEL DEPARTAMENTO',
  `CIUIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID DE LA CIUDAD ',
  `PRODIRXX` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'DIRECCION DEL PROVEEDOR',
  `DSVCTRAD` enum('COPIA','ORIGINAL') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera que indica la tradición documental',
  `PAIIDPRO` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID del país',
  `DEPIDPRO` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID del departamento',
  `CIUIDPRO` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID de la ciudad',
  `PRODIRPR` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Dirección del proveedor',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ERROR','ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Cabecera de Saldo de Factura' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DSVC2025`
--
ALTER TABLE `DSVC2025`
  ADD PRIMARY KEY (`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`) USING BTREE,
  ADD KEY `CLIIDXXX` (`CLIIDXXX`) USING BTREE,
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `DEPIDXXX` (`DEPIDXXX`),
  ADD KEY `CIUIDXXX` (`CIUIDXXX`),
  ADD KEY `PRODIRXX` (`PRODIRXX`),
  ADD KEY `PAIIDPRO` (`PAIIDPRO`),
  ADD KEY `DEPIDPRO` (`DEPIDPRO`),
  ADD KEY `CIUIDPRO` (`CIUIDPRO`),
  ADD KEY `PRODIRPR` (`PRODIRPR`);
COMMIT;
