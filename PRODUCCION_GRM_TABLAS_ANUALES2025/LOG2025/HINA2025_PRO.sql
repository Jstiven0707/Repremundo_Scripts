

CREATE TABLE `HINA2025` (
  `ESIDDOCX` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Documento',
  `ESCODDOC` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del Documento',
  `ESCSCDOC` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo del Documento',
  `TABLAXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la Tabla',
  `PASOIDXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Paso por Analizar',
  `CAMPOXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre Campo por Analizar',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que Crea el Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se Crea el Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se Crea el Registro',
  `REGUSRMX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se Modifica el Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se Modifica el Registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Historial de Indicadores';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HINA2025`
--
ALTER TABLE `HINA2025`
  ADD PRIMARY KEY (`ESIDDOCX`,`ESCODDOC`,`ESCSCDOC`,`TABLAXXX`,`CAMPOXXX`);
COMMIT;


