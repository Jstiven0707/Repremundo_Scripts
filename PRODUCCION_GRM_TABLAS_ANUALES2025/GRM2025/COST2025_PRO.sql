

CREATE TABLE `COST2025` (
  `MESXXXXX` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'MES',
  `CEDULAXX` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Número de cédula',
  `NOMBREXX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre del empleado',
  `EMPRESAX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre de la empresa - Contrato',
  `CARGOXXX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cargo del empleado',
  `SALARIOX` int(8) NOT NULL COMMENT 'Salario del empleado',
  `PRESTAXX` int(8) NOT NULL COMMENT 'PRESTA.38',
  `VALPAGXX` int(8) NOT NULL COMMENT 'Valor pagado',
  `APLICAXX` enum('','PRES','GRM','JDA') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Aplica',
  `FACTCALC` enum('','Tamaño DB','Prestamo Proyecto Cima GD','Tickets','Activos','Transacciones JDA','Gestion','Administracion de Servidores','Cuentas de Correo','Prestamo Mesa de Ayuda','100% SIACO','100% RM') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Factor de cálculo',
  `SIACOXOX` decimal(8,2) NOT NULL COMMENT 'Valor SIACO',
  `RMXXXXXX` decimal(8,2) NOT NULL COMMENT 'Valor RM',
  `MAPXXXXX` decimal(8,2) NOT NULL COMMENT 'Valor MAP',
  `LRMXXXXX` decimal(8,2) NOT NULL COMMENT 'Valor LRM',
  `RIVXXXXX` decimal(8,2) NOT NULL COMMENT 'Valor RIV',
  `RISXXXXX` decimal(8,2) NOT NULL COMMENT 'Valor RIS',
  `COUNTXXX` int(11) NOT NULL COMMENT 'Conteo de cuantas empresa le pagan',
  `SIACOCOP` int(11) NOT NULL COMMENT 'Valor SIACO en COP',
  `RMCOPXXX` int(11) NOT NULL COMMENT 'Valor RM en COP',
  `MAPCOPXX` int(11) NOT NULL COMMENT 'Valor MAP en COP',
  `LRMCOPXX` int(11) NOT NULL COMMENT 'Valor LRM en COP',
  `RIVCOPXX` int(11) NOT NULL COMMENT 'Valor RIV en COP',
  `RISCOPXX` int(11) NOT NULL COMMENT 'Valor RIS en COP',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creación del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creación del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificación del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='COSTOS IT';

--
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `COST2025`
--
ALTER TABLE `COST2025`
  ADD PRIMARY KEY (`MESXXXXX`,`CEDULAXX`,`EMPRESAX`) USING BTREE;
COMMIT;

