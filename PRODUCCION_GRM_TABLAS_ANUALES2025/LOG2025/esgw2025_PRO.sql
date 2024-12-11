
CREATE TABLE `esgw2025` (
  `numordco` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'num pedido',
  `numoplxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero factura',
  `estadoxx` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado factura',
  `regfecxx` date NOT NULL COMMENT 'fecha de creacion registro',
  `reghorxx` time NOT NULL COMMENT 'hora creacion registro',
  `placaxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'placa del vehiculo',
  `tipovehx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tipo de vehiculo',
  `causalxx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id causal de reprogramacion',
  `fereprog` date NOT NULL COMMENT 'Fecha de reprogramacion',
  `responre` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Responsable de la reprogramacion',
  `idservic` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id servicio liftit',
  `estadgws` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado enviado a GWS',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario que crea el registro',
  `regfmodx` date NOT NULL COMMENT 'Fecha modificacion registro',
  `reghmodx` time NOT NULL COMMENT 'Hora modificacion registro',
  `regmodxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha y hora de modificacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Estados cabecera GWS';

--
-- Disparadores `esgw2025`
--
DELIMITER $$
CREATE TRIGGER `Ediestad2025` AFTER INSERT ON `esgw2025` FOR EACH ROW BEGIN
    IF (NEW.estadoxx= 'ENTREGADO' OR NEW.estadoxx= 'EN TRANSITO' OR NEW.estadoxx= 'ENTREGADO CON NOVEDAD' OR NEW.estadoxx= 'DEVOLUCION TOTAL' OR NEW.estadoxx= 'CANCELADO')
    THEN 	
        UPDATE
        LOG.pgwh2025
        SET estadoxx=NEW.estadoxx
        WHERE 
        numordco=new.numordco;      
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `actestado2025` AFTER UPDATE ON `esgw2025` FOR EACH ROW BEGIN
    IF (NEW.estadoxx= 'ENTREGADO' OR NEW.estadoxx= 'ENTREGADO CON NOVEDAD' OR NEW.estadoxx= 'DEVOLUCION TOTAL' OR NEW.estadoxx= 'CANCELADO')
    THEN 	
        UPDATE
        LOG.pgwh2025 
        SET estadoxx=NEW.estadoxx
        WHERE 
        numordco=new.numordco;      
    END IF;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `esgw2025`
--
ALTER TABLE `esgw2025`
  ADD PRIMARY KEY (`numordco`,`numoplxx`,`estadoxx`,`regfecxx`) USING BTREE,
  ADD KEY `numordco` (`numordco`);
COMMIT;

