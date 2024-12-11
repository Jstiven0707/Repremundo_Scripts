
CREATE TABLE `TASC2025` (
  `DOCTRIMP` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de Transporte',
  `DEALERXX` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Dealer Code',
  `FEPLAXXX` date NOT NULL COMMENT 'Fecha de la Planilla',
  `SUCIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ciudad',
  `LUGARXXX` enum('','DEPOSITO','ZONA FRANCA','SOCIEDAD PORTUARIA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar',
  `IMPONOMX` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consignatario/Importador',
  `FIRMAXXX` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Firma',
  `NOMBREXX` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre',
  `OBSERXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones',
  `SERIDXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Seriales Asociados a la Prealerta',
  `NUMTICKX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Ticket Asociado',
  `ESTRAXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Tramite',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creación',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera Ticket Auditoria Seriales Gecolsa' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `TASC2025`
--
ALTER TABLE `TASC2025`
  ADD PRIMARY KEY (`DOCTRIMP`,`DEALERXX`) USING BTREE;
COMMIT;

