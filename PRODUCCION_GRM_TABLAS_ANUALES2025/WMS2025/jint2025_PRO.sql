

CREATE TABLE `jint2025` (
  `caridxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id cargue',
  `depidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito',
  `cartipox` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `rutaxxxx` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ruta ubicación archivo',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Registro interfaces GRM a JDA';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jint2025`
--
ALTER TABLE `jint2025`
  ADD PRIMARY KEY (`caridxxx`,`depidxxx`);
COMMIT;


