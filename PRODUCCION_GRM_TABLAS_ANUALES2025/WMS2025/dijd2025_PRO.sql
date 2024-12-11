

CREATE TABLE `dijd2025` (
  `idrficxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Automatico',
  `depidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito',
  `incidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Inconsistencia',
  `incobsxx` varchar(400) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle a Nivel de Inconsistencias ';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dijd2025`
--
ALTER TABLE `dijd2025`
  ADD PRIMARY KEY (`idrficxx`,`depidxxx`,`incidxxx`);
COMMIT;


