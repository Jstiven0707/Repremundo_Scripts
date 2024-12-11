

CREATE TABLE `traa2025` (
  `dtraidxx` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Arbol',
  `dtraidsq` varchar(9) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia de Arbol',
  `dtrcscxx` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Documento de Transporte',
  `dtraclix` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente de Arbol',
  `dtrausrr` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Responsable',
  `dtracarr` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cargo responsable',
  `dtraespa` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de paso',
  `dtrausrc` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Cierre',
  `dtrafeci` date NOT NULL COMMENT 'Fecha de cierre',
  `dtrahoci` time NOT NULL COMMENT 'Hora de cierre',
  `dtratipv` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Vinculo',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se modifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Árbol de Documento de Transporte';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `traa2025`
--
ALTER TABLE `traa2025`
  ADD PRIMARY KEY (`dtraidxx`,`dtraidsq`,`dtrcscxx`);
COMMIT;


