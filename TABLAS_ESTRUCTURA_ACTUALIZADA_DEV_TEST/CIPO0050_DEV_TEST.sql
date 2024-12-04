
--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CIPO0050`
--

CREATE TABLE `CIPO0050` (
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR',
  `PRORAZXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'razon social del proveedor',
  `PROEMAXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'email del proveedor',
  `PROCONVE` enum('','1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL  DEFAULT '' COMMENT 'CODIGO DE CONDICION DEL VENDEDOR',
  `PROCONTX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ESPECIFIQUE LA CONDICION DEL PROVEEDOR',
  `NIVELIDX` int NOT NULL COMMENT 'Id nivel comercial',
  `PROASUXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'asunto del correo',
  `PROCOINX` enum('','SIEMPRE','NUNCA','POR OPERACION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CONDICIONES PARA DIP',
  `PROSERAX` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA DE SERIALES ALEATORIOS',
  `PROESTME` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA DE ESTADO DE LA MERCANCIA',
  `PROCONAL` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA CONTEO ALEATORIO',
  `PROPAIXX` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA PAIS DE ORIGEN',
  `PROCONRI` enum('','GLOBAL','OPERACION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CONDICIONES VUCE PROVEEDOR',
  `PROPRORM` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica si el proveedor maneja productos remanufacturados, saldos o usados',
  `CODESTID` int NOT NULL COMMENT 'ID DEL ESTADO DE LA MERCANCIA',
  `FPIIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cod Forma Pago',
  `PROAPLSG` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica si el proveedor aplica segundo codigo de producto',
  `PROCDBAX` enum('','DATA ENTRY','INTEGRACION','MANUAL') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE EL ORIGEN DE LA CAPTURA DE LA FACTURA DEL PROVEEDOR',
  `PROAPLSC` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'aplica segundo codigo de producto',
  `PROAPLLE` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'EL PROVEEDOR ENTREGA LISTA DE EMPAQUE',
  `PROAPLPB` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PESO BRUTOS POR ITEM EN LISTA DE EMPAQUE',
  `PROBANVA` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA DESCRIPCIONES VARIABLES',
  `MONIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la moneda(CIPO0022)',
  `PROPLAXX` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI TIENE PLANTILLA',
  `PROCADEX` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI TIENE CAPTURA DE DATOS DE FACTURA POR DATA ENTRY',
  `PROCAINX` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI TIENE CAPTURA DE DATOS DE FACTURA POR INTEGRACION',
  `PROCAMAX` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI TIENE CAPTURA DE DATOS DE FACTURA DE MANERA MANUAL',
  `PROSOLCL` enum('','PRODUCTO','FACTURA') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica la solicitud de informacion de clasificacion',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO','PROVISIONAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estados Del Proveedor',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PROVEEDORES DEL CLIENTE' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIPO0050`
--
ALTER TABLE `CIPO0050`
  ADD PRIMARY KEY (`CLIIDXXX`,`IDPROXXX`) USING BTREE,
  ADD KEY `CLIIDXXX` (`CLIIDXXX`) USING BTREE,
  ADD KEY `NIVELIDX` (`NIVELIDX`) USING BTREE,
  ADD KEY `MONIDXXX` (`MONIDXXX`),
  ADD KEY `FPIIDXXX` (`FPIIDXXX`);
COMMIT;


