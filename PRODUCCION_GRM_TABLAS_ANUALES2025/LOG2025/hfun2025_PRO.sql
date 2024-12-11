
CREATE TABLE `hfun2025` (
  `idfuncix` int(11) NOT NULL COMMENT 'Id de registro',
  `fechaxxx` date NOT NULL COMMENT 'Fecha funcionario',
  `cantpers` int(11) NOT NULL COMMENT 'Cantidad personas',
  `canthora` int(11) NOT NULL COMMENT 'Cantidad horas',
  `operaxxx` enum('COORDINACION O SUPERVISION DE OPERACION','LOGISTICA INVERSA') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de operacion',
  `regusrxx` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que Creo el Registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `reghorxx` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `regusrmx` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghmodx` time NOT NULL COMMENT 'Hora en que se modifica el registro',
  `regestxx` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Horas funcionario GWS' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hfun2025`
--
ALTER TABLE `hfun2025`
  ADD PRIMARY KEY (`idfuncix`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hfun2025`
--
ALTER TABLE `hfun2025`
  MODIFY `idfuncix` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id de registro';
COMMIT;


