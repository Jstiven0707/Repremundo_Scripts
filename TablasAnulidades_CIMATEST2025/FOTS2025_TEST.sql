--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FOTS2025`
--


CREATE TABLE `FOTS2025` (
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOCOVERX` decimal(4,1) NOT NULL COMMENT 'VERSION DEL ARCHIVO',
  `FOTTDOCX` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Modos de transporte separados por ~',
  `SUCIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Sucursales separadas por ~',
  `CONCOBID` int NOT NULL COMMENT 'ID DEL CONCEPTO DE COBRO',
  `FORCALID` int NOT NULL COMMENT 'ID DE LA FORMA DE CALCULO',
  `VARIDXXX` int NOT NULL COMMENT 'ID DE LA VARIABLE',
  `CAMPIDSX` json NOT NULL DEFAULT (json_array()) COMMENT 'Campos parametrizados',
  `RANGOSXX` json NOT NULL COMMENT 'Rangos',
  `FOTOBSVX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OBSERVACIONES DE LA TARIFA',
  `FOTCONPX` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'APLICA CONCEPTO PERSONALIZADO',
  `FOTDECON` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DESCRIPCION DEL CONCEPTO PERSONALIZADO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OFERTA COMERCIAL  VS  SERVICIOS ADICIONALES' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `FOTS2025`
--
ALTER TABLE `FOTS2025`
  ADD PRIMARY KEY (`FOCOIDXX`,`FOCOVERX`,`FOTTDOCX`,`SUCIDXXX`,`CONCOBID`),
  ADD KEY `FOCOIDXX` (`FOCOIDXX`) USING BTREE,
  ADD KEY `CONCOBID` (`CONCOBID`) USING BTREE,
  ADD KEY `FORCALID` (`FORCALID`) USING BTREE,
  ADD KEY `VARIDXXX` (`VARIDXXX`) USING BTREE,
  ADD KEY `FOCOVERX` (`FOCOVERX`);
COMMIT;