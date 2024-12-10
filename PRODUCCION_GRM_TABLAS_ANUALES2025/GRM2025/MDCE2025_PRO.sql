
CREATE TABLE `MDCE2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo',
  `DOCTIPXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Do',
  `IDESTADO` int(11) NOT NULL COMMENT 'Identificador del estado del cliente',
  `DOCPESTX` int(11) NOT NULL COMMENT 'Peso del Estado',
  `DOCESTXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del Estado del cliente',
  `DOCDESTX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documentos del Estado',
  `DOCFESTX` date NOT NULL COMMENT 'Fecha del Estado',
  `DOCHESTX` time NOT NULL COMMENT 'Hora del Estado',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Estados del DO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDCE2025`
--
ALTER TABLE `MDCE2025`
  ADD PRIMARY KEY (`DOCNROXX`,`IDESTADO`) USING BTREE;
COMMIT;

