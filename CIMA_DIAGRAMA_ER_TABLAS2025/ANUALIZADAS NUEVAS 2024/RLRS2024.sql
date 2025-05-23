CREATE TABLE `RLRS2024` (
  `MDREIDRE` int NOT NULL COMMENT 'Secuencia del registro O LICENCIA',
  `PROIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR',
  `LIMACEXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de  Aceptacion',
  `MDRECANT` int NOT NULL COMMENT 'Cantidades aprobadas',
  `DOCNROXX` int NOT NULL COMMENT 'Numero del DO ',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CABECERA VUCE, PRODUCTO,RESTRICCION LEGAL DOCUMENTOS VS CUMPLIMIENTO';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RLRS2025`
--
ALTER TABLE `RLRS2024`
  ADD PRIMARY KEY (`MDREIDRE`,`PROIDXXX`,`CLIIDXXX`,`IDPROXXX`);
COMMIT;


-- ACTUALIZACION

ALTER TABLE `RLRS2024`
ADD KEY IDX_MDREIDRE(MDREIDRE),
ADD KEY IDX_PROIDXXX(PROIDXXX),
ADD KEY IDX_CLIIDXXX(CLIIDXXX),
ADD KEY IDX_IDPROXXX(IDPROXXX)