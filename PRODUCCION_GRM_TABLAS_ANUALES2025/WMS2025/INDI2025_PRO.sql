

CREATE TABLE `INDI2025` (
  `DEPIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de Deposito',
  `DTRDTRXX` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de transporte',
  `DTRMANXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de manifiesto',
  `TOKIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Operacion KPI',
  `INOPIDXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del indicador',
  `FORCALID` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Formula de Calculo',
  `LIMINFFE` date NOT NULL COMMENT 'Fecha Limite inferior',
  `LIMINHOR` time NOT NULL COMMENT 'Hora Limite inferior',
  `LIMINVAL` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Limite inferior',
  `FELIMINF` date NOT NULL COMMENT 'Fecha Registro Limite inferior',
  `HOLIMINF` time NOT NULL COMMENT 'Hora Registro Limite inferior',
  `RESESPFE` date NOT NULL COMMENT 'Fecha Resultado Esperado',
  `RESESPHO` time NOT NULL COMMENT 'Hora Resultado Esperado',
  `RESESPVA` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Resultado Esperado',
  `VALORESP` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor esperado del Indicador',
  `LIMSUPFE` date NOT NULL COMMENT 'Fecha Limite Superior',
  `LIMSUPHO` time NOT NULL COMMENT 'Hora Limite Superior',
  `LIMSUPVA` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Limite Superior',
  `CUMPLEXX` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `RESOBTEX` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Resultado obtenido',
  `UNIDADMX` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad de medida',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECMR` date NOT NULL COMMENT 'Fecha de modificacion del registro para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de modificacion del Registro para RIO',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Indicadores Documentos de Transporte';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `INDI2025`
--
ALTER TABLE `INDI2025`
  ADD PRIMARY KEY (`DEPIDXXX`,`DTRDTRXX`,`DTRMANXX`,`TOKIDXXX`,`INOPIDXX`,`FORCALID`);
COMMIT;


