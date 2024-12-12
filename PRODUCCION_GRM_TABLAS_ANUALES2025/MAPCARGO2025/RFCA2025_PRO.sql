

CREATE TABLE `RFCA2025` (
  `RFIDXXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID REGISTRO FOTOGRAFICO ',
  `RFPOSXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'POSICION',
  `CLIIDXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'CLIENTE ',
  `RFTIPOXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de registro fotografico',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion del Registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera de Registro Fotografico';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RFCA2025`
--
ALTER TABLE `RFCA2025`
  ADD PRIMARY KEY (`RFIDXXXX`);
COMMIT;


