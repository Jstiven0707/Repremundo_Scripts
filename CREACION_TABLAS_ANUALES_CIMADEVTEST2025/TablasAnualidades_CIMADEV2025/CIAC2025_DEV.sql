CREATE TABLE `CIAC2025` (
  `CIACIDXX` bigint NOT NULL COMMENT 'Id de la Autorizacion',
  `AUTIDXXX` smallint NOT NULL COMMENT 'Id de la Autorizacion',
  `CIACRESX` enum('','AUTORIZADA','RECHAZADA','PENDIENTE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDIENTE' COMMENT 'bandera que indica el resultado de la autorizacion',
  `CIACOBSX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Descripcion de la Autorizacion',
  `DOCNROXX` int NOT NULL COMMENT 'Numero de Do',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NIT cliente (CIPO0024 - CIPF0040)',
  `AUTVLRXX` decimal(10,2) NOT NULL COMMENT 'Valor de la Autorizacion',
  `FOCOVERX` decimal(2,1) NOT NULL COMMENT 'Version Oferta Comercial',
  `DTRCDOTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DE DOCUMENTO DE TRANSPORTE (UK)(DTRCYYYY)',
  `IDARCHXX` int NOT NULL COMMENT 'ID DEL ARCHIVO (DTRCYYYY)',
  `JSONMETX` json DEFAULT NULL COMMENT 'CAMPOS QUE SE DILIGENCIARON PARA LA SOLUCION DE LA TAREA',
  `USRASIGX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del usuario (CIMS0001)',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVO' COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cabecera de Autorizaciones' ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `CIAC2025`

-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIAC2025`
--
ALTER TABLE `CIAC2025`
  ADD PRIMARY KEY (`CIACIDXX`),
  ADD KEY `AUTIDXXX` (`AUTIDXXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `DTRCDOTR` (`DTRCDOTR`),
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;
