

CREATE TABLE `HEFC2025` (
  `HEFCNROF` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Formulario',
  `HEFCPTMP` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'path del formulario 500',
  `HEFCSTGE` enum('','NO APLICA','PENDIENTE','FINALIZADO','ERROR') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del cargue en genio',
  `HEFCNONO` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del nodo de genio',
  `HEFCJUST` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Justificacion',
  `FECHMUIS` date NOT NULL COMMENT 'Fecha descarga Muisca',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','ASIGNADO','INACTIVO','ERROR') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ticket VS Formularios';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HEFC2025`
--
ALTER TABLE `HEFC2025`
  ADD PRIMARY KEY (`HEFCNROF`);
COMMIT;

