
CREATE TABLE `inca2025` (
  `esiddocx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id documento',
  `escoddoc` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero deposito',
  `escscdoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'consecutivo documento',
  `incidxxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Incidentes de carga',
  `regusrxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario crea',
  `regfecxx` date NOT NULL COMMENT 'fecha crea',
  `reghorxx` time NOT NULL COMMENT 'hora crea',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario modifica',
  `regfecmx` date NOT NULL COMMENT 'fecha modifica',
  `reghormx` time NOT NULL COMMENT 'hora modifica',
  `regestxx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Inconsistencias de Carga';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inca2025`
--
ALTER TABLE `inca2025`
  ADD PRIMARY KEY (`esiddocx`,`escoddoc`,`escscdoc`,`incidxxx`);
COMMIT;

