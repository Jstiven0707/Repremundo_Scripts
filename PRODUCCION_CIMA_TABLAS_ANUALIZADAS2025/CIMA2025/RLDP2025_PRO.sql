
CREATE TABLE `RLDP2025` (
  `MDREIDRE` int NOT NULL COMMENT 'Secuencia del registro O LICENCIA',
  `PROIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR',
  `MDRPCANT` int NOT NULL COMMENT 'cantidad total',
  `MDRPVALT` decimal(10,5) NOT NULL COMMENT 'valor Total',
  `PRODESXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'descripcion del producto',
  `SUBIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la subpartida (CIPO0001)',
  `UNIIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA UNIDAD ',
  `MDRPBNMT` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA MINTIC',
  `MDRPBNMC` enum('','MERCURIO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cupo Normativa vigente',
  `MDRPBNOE` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA OTRA ENTIDAD',
  `PAIIDXXX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del pais',
  `ESTMERID` tinyint NOT NULL COMMENT 'ID Del estado de la mercancia',
  `PAIIDREX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'id del pais de remanufactura',
  `MDRPBNRE` enum('','LIBRE','PREVIA') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'que indica el regimen',
  `MDRPBNRA` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI REQUIERE HACERCE A TRAVES DE FNE,INDUMUL U OTRA EMPRESA',
  `MDREAPPV` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si aplica plan vallejo',
  `CLINUMPR` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DEL PROGRAMA',
  `MDRENUMR` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Reposicion',
  `MDRECANT` int NOT NULL COMMENT 'Cantidades aprobadas',
  `MDRENDIP` int NOT NULL COMMENT 'Cantidades disponibles',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='REGISTRO O LICENCIA VS PRODUCTOS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RLDP2025`
--
ALTER TABLE `RLDP2025`
  ADD PRIMARY KEY (`MDREIDRE`,`PROIDXXX`,`CLIIDXXX`,`IDPROXXX`),
  ADD KEY `UNIIDXXX` (`UNIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `PROIDXXX` (`PROIDXXX`),
  ADD KEY `MDREIDRE` (`MDREIDRE`);
COMMIT;

