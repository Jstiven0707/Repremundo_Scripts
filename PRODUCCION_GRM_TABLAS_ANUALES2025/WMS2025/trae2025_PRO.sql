

CREATE TABLE `trae2025` (
  `dtrcscxx` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Documento de Transporte',
  `dtrestxx` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado Documento de Transporte',
  `dtrfestx` date NOT NULL COMMENT 'Fecha del Estado',
  `dtrhestx` time NOT NULL COMMENT 'Hora del Estado',
  `dtrseqes` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia',
  `dtrpestx` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Peso del Estado',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se modifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Estados del Documento de Transporte';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `trae2025`
--
ALTER TABLE `trae2025`
  ADD PRIMARY KEY (`dtrcscxx`,`dtrseqes`);
COMMIT;

