-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FOCO2025`
--

CREATE TABLE `FOCO2025` (
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOCOTIPO` enum('','COTIZACION','LICITACION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica el tipo de oferta',
  `FOCOFECO` date NOT NULL COMMENT ' FECHA DE LA OFERTA',
  `FOCOFEVI` date NOT NULL COMMENT 'VIGENCIA DE OFERTA',
  `FOCOVICO` date NOT NULL COMMENT 'VIGENCIA DE CONTRATO',
  `FOCOALLO` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'INDICA SI ES ALIADO LOGISTICO',
  `FOCOAUFA` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'INDICA SI ESTA AUTORIZADO DE FACTURACION',
  `CLIIDPRO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del cliente prospecto',
  `FOCOALTE` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'APLICA TARIFA ESTANDAR',
  `FOCOINTA` enum('','IPC','NINGUNA','OTRO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'TIPO DE INCREMENTO',
  `TIPTARIN` enum('','GENERAL','GESTION','MODELO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica el tipo de alcance que maneja',
  `FOCOVERX` decimal(4,1) NOT NULL COMMENT 'VERSION DEL ARCHIVO',
  `CANOPEES` int NOT NULL COMMENT 'CANTIDAD DE OPERACIONES ESTIMADAS AL MES',
  `CANOPRSI` int NOT NULL COMMENT 'CANTIDAD DE OPERACIONES URGENTES SIMULTANEAS',
  `TIPANIOX` enum('','CONTRACTUAL','CALENDARIO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipo de año',
  `ANIOXXXX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Año',
  `FECSEGXX` date NOT NULL COMMENT 'Fecha seguimiento',
  `EMAILSEG` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Correos para el seguimiento',
  `MOTIDXXX` int NOT NULL COMMENT 'ID del motivo del rechazo ',
  `IDARCHXX` int NOT NULL COMMENT 'Id del archivo en genio',
  `ESTADOTA` enum('','ERROR CARGUE PDF','ERROR ENVIO CORREO','ENVIADO') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FOCORDER` int NOT NULL COMMENT 'Id para el ordenamiento',
  `EMAILACE` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Correo de quien acepto la oferta',
  `MONIDXXX` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Id de la moneda',
  `FOCTAPRO` enum('SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Aplica tarifa propia',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO','AUTORIZADA','PENDIENTE AUTORIZACION','BORRADOR','VENCIDA','RECHAZADA','ACEPTADA','RENOVADA','PTE REVISION ACTUALIZACION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CABECERA OFERTA COMERCIAL' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `FOCO2025`
--
ALTER TABLE `FOCO2025`
  ADD PRIMARY KEY (`FOCOIDXX`,`FOCOVERX`),
  ADD KEY `CLIIDPRO` (`CLIIDPRO`) USING BTREE,
  ADD KEY `MOTIDXXX` (`MOTIDXXX`);
COMMIT;

