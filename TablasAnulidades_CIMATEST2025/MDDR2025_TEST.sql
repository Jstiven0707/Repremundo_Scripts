--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDDR2025`
--

DROP TABLE IF EXISTS `MDDR2025`;
CREATE TABLE `MDDR2025` (
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DEL DO(MDOSYYYY)',
  `SUBIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'SECUENCIA DE LA DECLARACION',
  `IDROBXXX` smallint NOT NULL COMMENT 'ID DEL ROBOT',
  `MDDRERRX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DESCRIPCION DEL ERROR',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificaion del Registro',
  `REGESTXX` enum('ACTIVO','EN PROCESO','ERROR','FINALIZADO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del ROBOT',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACION, DECLARACION VS ROBOTS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDDR2025`
--
ALTER TABLE `MDDR2025`
  ADD PRIMARY KEY (`DOCNROXX`,`SUBIDXXX`,`IDROBXXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `SUBIDXXX` (`SUBIDXXX`),
  ADD KEY `IDROBXXX` (`IDROBXXX`);
COMMIT;
