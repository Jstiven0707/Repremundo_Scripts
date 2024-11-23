-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RENS2025`
--


CREATE TABLE `RENS2025` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID DE LA TAREA(TARCYYY)',
  `RECNSEID` int NOT NULL COMMENT 'SECUENCIA DEL ITEM',
  `DESIDXXX` int NOT NULL COMMENT 'ID DEL DESCRIPTOR(CIPO0037)',
  `SECSERXX` int NOT NULL COMMENT 'ID DE LA SECUENCIA',
  `VALSERXX` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'VALOR DEL DESCRIPTOR',
  `RECSCOBU` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'UBICACION DEL PRODUCTO',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RECONOCIENTO, FACTURA, PRODUCTOS NUEVOS VS DESCIPCIONES MINIMAS SERIALES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RENS2025`
--
ALTER TABLE `RENS2025`
  ADD PRIMARY KEY (`TARIDXXX`,`RECNSEID`,`DESIDXXX`,`SECSERXX`),
  ADD KEY `TARIDXXX` (`TARIDXXX`),
  ADD KEY `RECNSEID` (`RECNSEID`),
  ADD KEY `DESIDXXX` (`DESIDXXX`);
COMMIT;