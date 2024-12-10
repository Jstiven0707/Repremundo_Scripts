

CREATE TABLE `MDSO2025` (
  `SOFOIDCX` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Consecutivo generado',
  `IDOBSOBX` int(9) NOT NULL COMMENT 'Id Observacion',
  `OBSOBSXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Crea el Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ultimo Usuario Modificacion del Registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Ultima Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Ultima Modificacion del Registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='OBSERVACIONES SOLICITUD DE FONDOS' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDSO2025`
--
ALTER TABLE `MDSO2025`
  ADD PRIMARY KEY (`SOFOIDCX`,`IDOBSOBX`) USING BTREE;
COMMIT;


