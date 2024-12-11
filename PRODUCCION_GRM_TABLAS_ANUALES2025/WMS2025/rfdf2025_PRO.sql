
CREATE TABLE `rfdf2025` (
  `idrficxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Automatico',
  `dtrseqrf` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia de Registro Fotografico',
  `tipidxxx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Tipo de Documento',
  `docidxxx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento',
  `rutaxxxx` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ruta de Registro Fotografico',
  `cliidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Cliente',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle a Nivel de Registro Fotografico';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `rfdf2025`
--
ALTER TABLE `rfdf2025`
  ADD PRIMARY KEY (`idrficxx`,`dtrseqrf`);
COMMIT;


