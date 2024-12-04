-- ESTRUCTURA AJUSTADA TABLA CIPO0203

CREATE TABLE `CIPO0203` (
  `CAPSUBXX` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL CAPITULO',
  `PARSUBXX` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA PARTIDA',
  `ARMSUBXX` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL SISTEMA ARMONIZADO',
  `ANDSUBXX` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE ANDINA',
  `SUBSUBXX` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE 2 DIGITOS DE LA SUBPARTIDA',
  `SUBIDXXX` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA SUBPARTIDA(CODIGO ARANCELARIO)',
  `SECDESID` smallint  NOT NULL COMMENT 'INICIA EN 100 POR CADA SUBPARTIDA,SECUENCIA DE DESDOBLAMIENTO',
  `DESMANSU` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA MANTENER LA SUBPARTIDA ACTUAL',
  `DESMANDE` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA DESDOBLAMIENTO',
  `DESMANFE` date NOT NULL COMMENT 'FECHA FINAL DE VIGENCIA',
  `DESMANJU` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JUSTIFICACION',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SUBPARTIDA VS DESDOBLAMIENTOS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIPO0203`
--
ALTER TABLE `CIPO0203`
  ADD PRIMARY KEY (`CAPSUBXX`,`PARSUBXX`,`ARMSUBXX`,`ANDSUBXX`,`SUBSUBXX`,`SUBIDXXX`,`SECDESID`),
  ADD KEY idx_CAPSUBXX (CAPSUBXX);
COMMIT;

-- INDICES AGREGADOS

ALTER TABLE `CIPO0203`
ADD KEY idx_PARSUBXX (PARSUBXX),
ADD KEY idx_ARMSUBXX (ARMSUBXX),
ADD KEY idx_ANDSUBXX (ANDSUBXX),
ADD KEY idx_SUBSUBXX (SUBSUBXX),
ADD KEY idx_SUBIDXXX (SUBIDXXX);

-- INICIA EN 100 POR CADA SUBPARTIDA,SECUENCIA DE DESDOBLAMIENTO sera realizado por desarrollo

