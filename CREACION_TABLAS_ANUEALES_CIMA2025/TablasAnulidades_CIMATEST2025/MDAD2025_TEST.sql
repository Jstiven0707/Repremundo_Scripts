-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDAD2025`
--


CREATE TABLE `MDAD2025` (
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DEL DO',
  `IDOBJEXX` smallint NOT NULL COMMENT 'ID del objetivo  (CIMS0053)',
  `IDSEQARB` smallint NOT NULL COMMENT 'ID  de la secuencia del arbol(CIMS0054)',
  `IDARCHXX` int NOT NULL COMMENT 'ID del archivo',
  `ANIOARCX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'año de carga del archivo',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACION VS OBJETIVO DE DOCUMENTOS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDAD2025`
--
ALTER TABLE `MDAD2025`
  ADD PRIMARY KEY (`DOCNROXX`,`IDOBJEXX`,`IDSEQARB`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `IDOBJEXX` (`IDOBJEXX`),
  ADD KEY `IDSEQARB` (`IDSEQARB`),
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;