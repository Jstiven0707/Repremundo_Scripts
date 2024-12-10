
CREATE TABLE `MDOI2025` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `TOKIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Operacion KPI',
  `INOPIDXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del indicador',
  `FORCALID` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Formula de Calculo',
  `LIMINFFE` date NOT NULL COMMENT 'Fecha Limite inferior',
  `LIMINHOR` time NOT NULL COMMENT 'Hora Limite inferior',
  `LIMINVAL` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Limite inferior',
  `FELIMINF` date NOT NULL COMMENT 'Fecha Registro Limite inferior',
  `HOLIMINF` time NOT NULL COMMENT 'Hora Registro Limite inferior',
  `RESESPFE` date NOT NULL COMMENT 'Fecha Resultado Esperado',
  `RESESPHO` time NOT NULL COMMENT 'Hora Resultado Esperado',
  `RESESPVA` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Resultado Esperado',
  `VALORESP` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor esperado del Indicador',
  `LIMSUPFE` date NOT NULL COMMENT 'Fecha Limite Superior',
  `LIMSUPHO` time NOT NULL COMMENT 'Hora Limite Superior',
  `LIMSUPVA` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Limite Superior',
  `CUMPLEXX` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `RESOBTEX` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Resultado obtenido',
  `UNIDADMX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad de medida',
  `CAUINCUM` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Causal de Incumplimiento',
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Indicadores DO' ROW_FORMAT=DYNAMIC;

--
-- Disparadores `MDOI2025`
--
DELIMITER $$
CREATE TRIGGER `MDOI2025_DELETE` BEFORE DELETE ON `MDOI2025` FOR EACH ROW BEGIN
	UPDATE GRM.MDOS2025 SET REGMODXX = CURDATE() WHERE DOCNROXX = OLD.DOCNROXX;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `MDOI2025_INSERT` BEFORE INSERT ON `MDOI2025` FOR EACH ROW BEGIN
   SET @llave =
          CONCAT(NEW.DOCNROXX,
                 "~",
                 NEW.TOKIDXXX,
                 "~",
                 NEW.INOPIDXX,
                 "~",
                 NEW.FORCALID);
	UPDATE GRM.MDOS2025 SET REGMODXX = CURDATE() WHERE DOCNROXX = NEW.DOCNROXX;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `MDOI2025_UPDATE` BEFORE UPDATE ON `MDOI2025` FOR EACH ROW BEGIN
   SET @llave =
          CONCAT(NEW.DOCNROXX,
                 "~",
                 NEW.TOKIDXXX,
                 "~",
                 NEW.INOPIDXX,
                 "~",
                 NEW.FORCALID);
   UPDATE GRM.MDOS2025 SET REGMODXX = CURDATE() WHERE DOCNROXX = NEW.DOCNROXX;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDOI2025`
--
ALTER TABLE `MDOI2025`
  ADD PRIMARY KEY (`DOCNROXX`,`TOKIDXXX`,`INOPIDXX`,`FORCALID`) USING BTREE,
  ADD KEY `Indice` (`DOCNROXX`) USING BTREE,
  ADD KEY `REGESTXX` (`REGESTXX`) USING BTREE,
  ADD KEY `INOPIDXX` (`INOPIDXX`) USING BTREE;
COMMIT;


