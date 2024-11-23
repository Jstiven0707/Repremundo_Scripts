--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FOPS2025`
--

;
CREATE TABLE `FOPS2025` (
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOTPIDXX` int NOT NULL COMMENT 'ID DEL PROYECTO',
  `SUCIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'sucursal',
  `CONCOBID` int NOT NULL COMMENT 'ID DEL CONCEPTO DE COBRO',
  `FORCALID` int NOT NULL COMMENT 'ID DE LA FORMA DE CALCULO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OFERTA COMERCIAL Y PROYECTO VS SUCURSALES' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `FOPS2025`
--
ALTER TABLE `FOPS2025`
  ADD PRIMARY KEY (`FOCOIDXX`,`FOTPIDXX`,`SUCIDXXX`) USING BTREE,
  ADD KEY `FOCOIDXX` (`FOCOIDXX`) USING BTREE,
  ADD KEY `FOTPIDXX` (`FOTPIDXX`) USING BTREE,
  ADD KEY `SUCIDXXX` (`SUCIDXXX`) USING BTREE,
  ADD KEY `CONCOBID` (`CONCOBID`) USING BTREE,
  ADD KEY `FORCALID` (`FORCALID`) USING BTREE;
COMMIT;
