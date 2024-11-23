--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DTCD2025`
--

CREATE TABLE `DTCD2025` (
  `DTRCDOTR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTRCNICO` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTCDIDXX` int NOT NULL COMMENT 'ID de la seucencia del contenedor',
  `DTRDSCIT` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Item de Documento de Transporte (PK)',
  `IDARCHXX` int NOT NULL COMMENT 'ID del archivo',
  `DTRDNUCO` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de contenedor de ',
  `DTRDCACO` enum('','20','40') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Capacidad de Contenedores de ',
  `DTRDPREC` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Precintos ',
  `DTCDTICO` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de contenedor',
  `REGUSRXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Detalle Contenedor por Item de Documento de Transporte' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTCD2025`
--
ALTER TABLE `DTCD2025`
  ADD PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`,`DTCDIDXX`,`DTRDSCIT`,`IDARCHXX`) USING BTREE,
  ADD KEY `DTRCDOTR` (`DTRCDOTR`),
  ADD KEY `DTRDSCIT` (`DTRDSCIT`),
  ADD KEY `DTRCNICO` (`DTRCNICO`),
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;
