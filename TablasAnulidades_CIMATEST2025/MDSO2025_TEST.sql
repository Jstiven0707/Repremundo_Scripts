--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDSO2025`
--


CREATE TABLE `MDSO2025` (
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DEL DO(MDOSYYYY)',
  `OBJIDXXX` smallint NOT NULL COMMENT 'ID DEL OBJETIVO',
  `OBJESPID` smallint NOT NULL COMMENT 'ID DEL OBJETIVO ESPECIFICO',
  `COLORXXX` enum('','ROJO','NARANJA','VERDE') NOT NULL COMMENT 'SEMAFORIZACION DEL OBJETIVO',
  `REGUSRXX` varchar(20) NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='OPERACIONES VS OBJETIVOS SEMAFORO';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDSO2025`
--
ALTER TABLE `MDSO2025`
  ADD PRIMARY KEY (`DOCNROXX`,`OBJIDXXX`,`OBJESPID`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `OBJIDXXX` (`OBJIDXXX`),
  ADD KEY `OBJESPID` (`OBJESPID`);
COMMIT;