
CREATE TABLE `MVCT2025` (
  `CONSECXX` int(11) NOT NULL COMMENT 'Consecutivo Tiempo',
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'ID CABECERA DEL TICKET',
  `DOCNROXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DO',
  `TIEMPAUS` time NOT NULL COMMENT 'Tiempo en pausa',
  `TIEMRECO` time NOT NULL COMMENT 'Tiempo de reconocimiento',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hola de creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario modicifacion',
  `REGFECMX` date NOT NULL COMMENT 'fecha modificacion',
  `REGHORMX` time NOT NULL COMMENT 'hora modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tiempos logisticos MVC' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MVCT2025`
--
ALTER TABLE `MVCT2025`
  ADD PRIMARY KEY (`CONSECXX`,`DOCNROXX`,`HELCCSCX`) USING BTREE COMMENT 'Llave Primaria';

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `MVCT2025`
--
ALTER TABLE `MVCT2025`
  MODIFY `CONSECXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo Tiempo';
COMMIT;

