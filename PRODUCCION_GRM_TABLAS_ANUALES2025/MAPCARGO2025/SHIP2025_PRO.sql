

CREATE TABLE `SHIP2025` (
  `OPPOSXXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Padre: Nombre',
  `OPOPEXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre',
  `OPGUIDXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Guid de la operacion',
  `OPNUMRES` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'No. Reservacion\n',
  `OPOSNUMX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Reservacion:Nombre',
  `OPSTATUS` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `OPOLDEVE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ultimo evento',
  `OPETAXXX` datetime DEFAULT NULL COMMENT 'Fecha de arribo',
  `OPATAXXX` datetime DEFAULT NULL COMMENT 'Fecha real de arribo',
  `OPETDXXX` datetime DEFAULT NULL COMMENT 'Fecha de partida',
  `OPATDXXX` datetime DEFAULT NULL COMMENT 'Fecha real de salida',
  `OPEDATEX` date DEFAULT NULL COMMENT 'Fecha de realizacion',
  `OPDIRECT` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion',
  `OPMODETR` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modo de transporte',
  `OPCCXXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de costo',
  `OPREFXXX` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción',
  `OPNATUXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Naturaleza',
  `OPTOTALW` float NOT NULL COMMENT 'Peso(Kg)',
  `OPTOTALV` float NOT NULL COMMENT 'Volumen(m3)',
  `OPTOTALC` float NOT NULL COMMENT 'Peso a cobrar (Kg)',
  `OPVOLWEI` float NOT NULL COMMENT 'Volumen peso (VKg)',
  `OPNUMHIJ` int(11) NOT NULL COMMENT 'Hijos',
  `REGUSRNA` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'Nombre usuario que creo la operacion',
  `OPPIECES` int(11) DEFAULT NULL COMMENT 'Piezas',
  `OPCONTXX` int(11) DEFAULT NULL COMMENT 'Cantidad de contenedores',
  `OPCONTVE` int(11) DEFAULT NULL COMMENT 'Contenedor 20',
  `OPCONTCU` int(11) DEFAULT NULL COMMENT 'Contenedor 40',
  `OPINCOPX` float NOT NULL COMMENT 'Ingresos (COP)',
  `OPOUCOPX` float NOT NULL COMMENT 'Gastos (COP)',
  `ORICOSTO` float NOT NULL COMMENT 'Costos Origen',
  `DESCOSTO` float NOT NULL COMMENT 'Costos Destino',
  `OSINCOPX` float DEFAULT NULL COMMENT 'Reservacion:Cotizacion:Ingresos(COP)',
  `OSOUCOPX` float DEFAULT NULL COMMENT 'Reservacion:Cotizacion:Gastos(COP)',
  `OSMODALI` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Reservacion:Modalidad',
  `OSNATUXX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Reservacion:Naturaleza',
  `OSMODETR` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Reservacion:Modos de Transporte',
  `OSREGFEC` date DEFAULT NULL COMMENT 'Fecha de Creacion de la reservacion',
  `ESTZFCHK` tinyint(1) DEFAULT '1' COMMENT 'Check Arribo Estimado Zona Franca',
  `FECGENDH` date DEFAULT NULL COMMENT 'Fecha entrega general dias habiles',
  `NOTICARG` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Notificacion correo carta giro',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Datos de la cabecera de la operaciones';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `SHIP2025`
--
ALTER TABLE `SHIP2025`
  ADD PRIMARY KEY (`OPOPEXXX`);
COMMIT;

