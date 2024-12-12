

CREATE TABLE `BOOK2025` (
  `OSGUIDXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Guid de la operacion',
  `OSNOMRES` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de OS',
  `OSNUMRES` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Numero de OS',
  `OSQTNUMX` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OSOSNUMX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de QT de donde se origino la reservacion',
  `OSSTATUS` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de la operacion',
  `CLINOMXX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Reservación: Cliente',
  `OSOLDEVE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'último evento registrado',
  `OSETAXXX` datetime DEFAULT NULL COMMENT 'Fecha estimada de arribo',
  `OSATAXXX` datetime DEFAULT NULL COMMENT 'Fecha real de arribo',
  `OSETDXXX` datetime DEFAULT NULL COMMENT 'Fecha estimada de zarpe',
  `OSATDXXX` datetime DEFAULT NULL COMMENT 'Fecha rreal de zarpe',
  `OSDIRECT` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion del reservacion',
  `OSMODETR` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modo de transporte de la operacion',
  `OSMETOTR` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OSREFXXX` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Referencia de la operacion',
  `OSTOTALW` float NOT NULL COMMENT 'Total peso',
  `OSTOTALV` float NOT NULL COMMENT 'Total volumen',
  `OSTOTALC` float NOT NULL COMMENT 'Total peso cobrable',
  `OSVOLWEI` float NOT NULL COMMENT 'Volumen Peso',
  `OSPIECES` int(15) DEFAULT NULL COMMENT 'Numero de piezas del reservacion',
  `OSCONTXX` int(15) DEFAULT NULL COMMENT 'Numero de contenedores',
  `OSCONTVE` int(12) DEFAULT NULL COMMENT 'Cantidad de contenedores de 20',
  `OSCONTCU` int(12) DEFAULT NULL COMMENT 'Cantidad de contenedores de 40',
  `OSINCOPX` float NOT NULL COMMENT 'Ingresos en pesos',
  `OSOUCOPX` float NOT NULL COMMENT 'Gastos en pesos',
  `OSOBCOPX` float NOT NULL COMMENT 'Balance en pesos',
  `TOTALIPX` float NOT NULL COMMENT 'Balance en pesos',
  `TOTALITX` float NOT NULL COMMENT 'Balance en pesos',
  `REGUSRNA` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'Nombre usuario que creo la reservacion',
  `OSEDATEX` date NOT NULL COMMENT 'Fecha',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Datos de la cabecera de las reservaciones';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `BOOK2025`
--
ALTER TABLE `BOOK2025`
  ADD PRIMARY KEY (`OSNOMRES`);
COMMIT;


