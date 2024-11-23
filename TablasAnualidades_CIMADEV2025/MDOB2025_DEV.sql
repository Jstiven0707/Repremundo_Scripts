--
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDOB2025`
--

DROP TABLE IF EXISTS `MDOB2025`;
CREATE TABLE `MDOB2025` (
  `DOCNROXX` int NOT NULL COMMENT 'numero del DO(MDOSYYYY)',
  `OBJIDXXX` smallint NOT NULL COMMENT 'ID DEL OBJETIVO',
  `OBJESPID` smallint NOT NULL COMMENT 'ID DEL OBJETIVO ESPECIFICO',
  `RESCLAXX` smallint NOT NULL COMMENT 'ID DEL RESULTADO CLAVE',
  `RESOBJXX` enum('','COMPLETADO','PENDIENTE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'RESULTADO DEL OBJETIVO',
  `MDOBFECC` date NOT NULL COMMENT 'fecha de completado',
  `MDOBHORC` time NOT NULL COMMENT 'hora de completado',
  `MDOBFECE` date NOT NULL COMMENT 'resultado esperado',
  `MDOBHORE` time NOT NULL COMMENT 'resultado completado',
  `USRRESXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL USUARIO RESPONSABLE',
  `BANAPLCI` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA CIERRE POR INTERFAZ',
  `ESTGESID` smallint NOT NULL COMMENT 'ID DEL ESTADO DE GESTION',
  `BANCUMOB` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI SE CUMPLIO CON EL RESULTADO ESPERADO ',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACION VS OBJETIVOS Y RESULTADOS CLAVE';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDOB2025`
--
ALTER TABLE `MDOB2025`
  ADD PRIMARY KEY (`DOCNROXX`,`OBJIDXXX`,`OBJESPID`,`RESCLAXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `OBJIDXXX` (`OBJIDXXX`),
  ADD KEY `OBJESPID` (`OBJESPID`),
  ADD KEY `RESCLAXX` (`RESCLAXX`);
COMMIT;