
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura  Ajustada  asi debe quedar Ajuste realizadas parte inferior  para la tabla `CIPO0152`
--

CREATE TABLE `CIPO0152` (
  `PROIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR (CIPO0050)',
  `DESIDXXX` int(3) NOT NULL COMMENT 'ID DEL DESCRIPTOR (CIPO0037)',
  `PREIDXXX` smallint(3) NOT NULL COMMENT 'ID DE LA PRECONDICION',
  `PRDESVAX` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DESCRIPTOR',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PRODUCTO VS DESCRIPCIONES MINIMAS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIPO0152`
--
ALTER TABLE `CIPO0152`
  ADD PRIMARY KEY (`PROIDXXX`,`CLIIDXXX`,`IDPROXXX`,`DESIDXXX`,`PREIDXXX`),
  ADD KEY idx_PROIDXXX (`PROIDXXX`),
  ADD KEY idx_CLIIDXXX (`CLIIDXXX`),
  ADD KEY idx_IDPROXXX (`IDPROXXX`),
  ADD KEY idx_DESIDXXX (`DESIDXXX`),
  ADD KEY idx_PREIDXXX (`PREIDXXX`);
 -- ADD KEY `PROIDXXX_2` (`PROIDXXX`,`CLIIDXXX`,`IDPROXXX`,`DESIDXXX`,`PREIDXXX`);
COMMIT;

-- MODIFY COLUM 
ALTER TABLE CIPO0152
MODIFY COLUMN `PROIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)';

-- Indicice agregado 

ALTER TABLE CIPO0152
ADD KEY idx_PREIDXXX (`PREIDXXX`);

-- drop index 
ALTER TABLE `CIPO0152`
DROP INDEX `PROIDXXX_2`;

-- Modificar clave primaria compuesta

ALTER TABLE `CIPO0152`
  DROP PRIMARY KEY;
  
  ALTER TABLE `CIPO0152`
  ADD PRIMARY KEY (`PROIDXXX`, `CLIIDXXX`, `IDPROXXX`, `DESIDXXX`, `PREIDXXX`);