
CREATE TABLE `JOBS2025` (
  `JOBSGUID` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Guid del trabajo',
  `JOBNUMXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del trabajo',
  `JOBURLXX` tinytext COLLATE utf8_unicode_ci COMMENT 'URL del trabajo',
  `JBSTATUS` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado del trabajo',
  `JOBDIVXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'División',
  `DUEFECXX` date DEFAULT NULL COMMENT 'Fecha de vencimiento del trabajo',
  `ENDFECXX` date DEFAULT NULL COMMENT 'Fecha fin del trabajo',
  `COMPERXX` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Porcentaje completado',
  `JOBDESCX` tinytext COLLATE utf8_unicode_ci COMMENT 'Descripción del trabajo',
  `REGUSRNA` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'Nombre usuario que creo el trabajo',
  `CLIIDXXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'NIT del cliente',
  `CLINOMXX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre del cliente',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Datos de la cabecera del trabajo';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `JOBS2025`
--
ALTER TABLE `JOBS2025`
  ADD PRIMARY KEY (`JOBNUMXX`);
COMMIT;

