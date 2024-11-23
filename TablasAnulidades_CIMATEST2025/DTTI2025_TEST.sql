--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DTTI2025`
--

DROP TABLE IF EXISTS `DTTI2025`;
CREATE TABLE `DTTI2025` (
  `DTRCDOTR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTRCNICO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTTINUMA` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DE MANIFIESTO',
  `DTTIFEMA` date NOT NULL COMMENT 'FECHA DE MANIFIESTO',
  `DTTIHOMA` time NOT NULL COMMENT 'HORA DE MANIFIESTO',
  `DTTIFEES` date NOT NULL COMMENT 'FECHA ESTIMADA DE ARRIBO',
  `DTTIHRES` time NOT NULL COMMENT 'HORA ESTIMADA DE ARRIBO',
  `DTTIFERA` date NOT NULL COMMENT 'FECHA REAL DE ARRIBO',
  `DTTIHRRA` time NOT NULL COMMENT 'HORA REAL DE ARRIBO',
  `DTTIFEFD` date NOT NULL COMMENT 'FECHA DE FINALIZACION DEL DESCARGUE',
  `DTTIHRFD` time NOT NULL COMMENT 'HORA DE FINALIZACION DEL DESCARGUE',
  `DEPIDXXX` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL DEPOSITO (CIPO0117)',
  `DTTIFELO` date NOT NULL COMMENT 'FECHA DE LOCALIZACION',
  `DTTIHOLO` time NOT NULL COMMENT 'HORA DE LOCALIZACION',
  `DTTICADI` decimal(20,5) NOT NULL COMMENT 'CANTIDAD DISPONIBLE',
  `DTTIPEDI` decimal(20,5) NOT NULL COMMENT 'PESO DISPONIBLE',
  `DTTIFEVT` date NOT NULL COMMENT 'FECHA DE VENCIMIENTO TERMINO DE ALMACENAMIENTO',
  `DTTIPRBN` enum('','NO','SI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indca si aplica prorroga',
  `DTTISOLI` enum('','NO','SI') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica si tiene solicitud',
  `DTTIPRES` enum('','MANUAL','SISTEMA') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'indica la manera en que se presento la prorroga',
  `DTTINFEV` date NOT NULL COMMENT 'Nueva fecha de vencimiento de terminos de almacenamiento ',
  `DTTIOBSV` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Observacion presentacion de prorroga ',
  `IDARCHXX` int NOT NULL COMMENT 'ID del archivo',
  `DTTIAPAG` enum('','NO','SI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA AGENTE DE CARGA',
  `AGEIDXXX` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IDENTIFICADOR AGENTE DE CARGA (CIPO0145)',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Documento de Transporte vs trafico internacional' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTTI2025`
--
ALTER TABLE `DTTI2025`
  ADD PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`,`DTTINUMA`,`IDARCHXX`) USING BTREE,
  ADD KEY `DTRCDOTR` (`DTRCDOTR`) USING BTREE,
  ADD KEY `DTRCNICO` (`DTRCNICO`) USING BTREE,
  ADD KEY `DEPIDXXX` (`DEPIDXXX`) USING BTREE,
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;
