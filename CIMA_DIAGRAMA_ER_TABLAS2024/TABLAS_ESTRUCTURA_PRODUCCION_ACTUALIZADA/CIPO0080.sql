

CREATE TABLE `CIPO0080` (
  `RESIDXXX` int NOT NULL COMMENT 'ID DE LA DESCRIPCION',
  `TIPPROID` int NOT NULL COMMENT 'ID DEL TIPO DE PRODUCTO',
  `RESTIPBN` enum('','OBLIGATORIA','POR PRODUCTO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'bandera que indica el nivel al que se aplica',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='RESTRICCION LEGAL VS TIPOS DE PRODUCTO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIPO0080`
--
ALTER TABLE `CIPO0080`
  ADD PRIMARY KEY (`RESIDXXX`,`TIPPROID`) USING BTREE,
  ADD KEY `RESIDXXX` (`RESIDXXX`) USING BTREE,
  ADD KEY `TIPPROID` (`TIPPROID`) USING BTREE;
COMMIT;



-- ACTUALIZACION ---

ALTER TABLE `CIPO0080`
MODIFY COLUMN `RESTIPBN` enum('','OBLIGATORIA','POR PRODUCTO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'bandera que indica el nivel al que se aplica';
