--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RLCA2025`
--

DROP TABLE IF EXISTS `RLCA2025`;
CREATE TABLE `RLCA2025` (
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR',
  `PAIIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del pais',
  `DEPIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del departamento',
  `CIUIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la ciudad',
  `MTRIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cod Medio Transporte(CIPO0013)',
  `MDREBNRE` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI ES REEMBOLSABLE',
  `MDRERIGM` enum('','LIBRE','PREVIA') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipo de Regimen',
  `PROCONRI` enum('','RIM GLOBAL','RIM ESPECIFICO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'condiciones RIM del proveedor (CIPO0050)',
  `MONIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la moneda(CIPO0115)',
  `TIPCAMXX` decimal(5,5) NOT NULL COMMENT 'TIPO DE CAMBIO',
  `MDREIDRE` int NOT NULL COMMENT 'Secuencia del registro O LICENCIA',
  `NUMVUCEX` int NOT NULL COMMENT 'Numero vuce',
  `NUMRADXX` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Radicado Vuce',
  `PUERIDXX` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Puerto de Embarque',
  `NUMRADIX` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Radicado',
  `NUMDOCUX` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Documento',
  `DOCESTAX` enum('','SIN SALDO','CON SALDO','CON SALDO PARCIAL','VENCIDO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Documento',
  `ESTAIDXX` smallint NOT NULL COMMENT 'Id del estado del proceso',
  `ESTAOBSX` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT ' Observaciones del Estado',
  `DOCNROXX` int NOT NULL COMMENT 'Numero de Do',
  `FECAPROX` date NOT NULL COMMENT 'Fecha de aprobacion del documento',
  `FECHVIGE` date NOT NULL COMMENT 'Fecha Vigencia',
  `NUMVLRPG` decimal(10,5) NOT NULL COMMENT 'Valor del Pago',
  `RLCAAPEM` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA EMPRESA',
  `RLCAEMEN` enum('INDUMIL','FNE','OTRO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'EMPRESA O ENTIDAD PARA LA CUAL SE IMPORTA',
  `RLCACLII` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NIT CLIENTE (CIPO0024',
  `RLCAPAID` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PAIS DE ORIGEN (CIMS0041)',
  `RLCATIPM` tinyint NOT NULL COMMENT 'ID DEL ESTADO DE LA MERCANCIA (CIPO004)',
  `RLCABRIM` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA SI DESEA TRANSMITIR RIM',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CABECERA REGISTRO O LICENCIA';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RLCA2025`
--
ALTER TABLE `RLCA2025`
  ADD PRIMARY KEY (`MDREIDRE`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `PAIIDXXX` (`PAIIDXXX`),
  ADD KEY `DEPIDXXX` (`DEPIDXXX`),
  ADD KEY `CIUIDXXX` (`CIUIDXXX`),
  ADD KEY `MTRIDXXX` (`MTRIDXXX`),
  ADD KEY `PUERIDXX` (`PUERIDXX`),
  ADD KEY `ESTAIDXX` (`ESTAIDXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `RLCACLII` (`RLCACLII`);
COMMIT;