

CREATE TABLE `cfjd2025` (
  `idrficxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Registro Fotografico e Inconsistencias de la Carga',
  `regtypex` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de registro',
  `depidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Deposito',
  `trlridxx` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador de camion',
  `aplicinc` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Inconsistencia',
  `aplicfot` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Fotografia',
  `tipguarx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Guardado',
  `obsrfoic` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera Registro Fotografico e Inconsistencias de la Carga';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cfjd2025`
--
ALTER TABLE `cfjd2025`
  ADD PRIMARY KEY (`idrficxx`,`regtypex`,`depidxxx`);
COMMIT;


