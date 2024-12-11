
CREATE TABLE `MDGT2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Sucursal',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Sufijo',
  `GTNEXIDX` int(9) NOT NULL COMMENT 'Identificacion Del Evento',
  `MDGTOBSX` tinytext COLLATE utf8_unicode_ci COMMENT 'Observacion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Crea Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO','PENDIENTE') COLLATE utf8_unicode_ci DEFAULT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion del Registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Eventos GT Nexus por Operacion' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDGT2025`
--
ALTER TABLE `MDGT2025`
  ADD PRIMARY KEY (`DOCNROXX`,`GTNEXIDX`) USING BTREE;
COMMIT;


