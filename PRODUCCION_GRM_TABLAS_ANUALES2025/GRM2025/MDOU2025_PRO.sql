

CREATE TABLE `MDOU2025` (
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOCTIPXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOCPESTX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador o Peso del Estado',
  `DOCESTXX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado DO',
  `NOTISTBK` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Notificar estado a RIO',
  `DOCEST2X` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado Do Para BackBone',
  `DOCDESTX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documentos del Estado',
  `DOCFESTX` date NOT NULL COMMENT 'Fecha del Estado',
  `DOCHESTX` time NOT NULL COMMENT 'Hora del Estado',
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGMODXX` date NOT NULL,
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Estados de DO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDOU2025`
--
ALTER TABLE `MDOU2025`
  ADD PRIMARY KEY (`DOCNROXX`,`REGFECXX`,`REGHORXX`,`REGUSRXX`) USING BTREE,
  ADD KEY `DOCTIPXX` (`DOCTIPXX`) USING BTREE,
  ADD KEY `SUCIDXXX` (`SUCIDXXX`) USING BTREE,
  ADD KEY `DOCNROXX` (`DOCNROXX`,`DOCESTXX`) USING BTREE;
COMMIT;


