
CREATE TABLE `HELM2025` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'Identificador Ticket',
  `MODIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de la Modalidad',
  `REGUSRXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de modificacion del Registro',
  `REGESTXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Relacion Modalidad - Cabecera Ticket';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HELM2025`
--
ALTER TABLE `HELM2025`
  ADD PRIMARY KEY (`HELCCSCX`,`MODIDXXX`) USING BTREE;
COMMIT;

