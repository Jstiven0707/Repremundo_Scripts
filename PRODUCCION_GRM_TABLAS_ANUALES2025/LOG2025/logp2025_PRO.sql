
CREATE TABLE `logp2025` (
  `bodidxxx` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bodega',
  `docidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento',
  `doccodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo Documento',
  `doccscxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Ingreso',
  `docsecxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia Ingreso',
  `cliidxxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `prorefxx` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia Producto',
  `prolotxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lote',
  `proyidxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proyecto del Producto',
  `proserxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Serial',
  `embidxxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Embalaje o Empaque',
  `prouxexx` decimal(12,2) NOT NULL COMMENT 'Cantidad de Unidades por Empaque',
  `estidxxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de los productos',
  `profecfa` date NOT NULL COMMENT 'Fecha de Fabricacion',
  `profecex` date NOT NULL COMMENT 'Fecha de Expiracion de los productos',
  `procanxx` decimal(12,2) NOT NULL COMMENT 'Cantidad Total del Producto',
  `regusrxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que Creo el Registro',
  `regfcrex` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `reghcrex` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `regfmodx` date NOT NULL COMMENT 'Fecha  de Modificacion del Registro',
  `reghmodx` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `regestxx` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Regristro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle por Productos';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `logp2025`
--
ALTER TABLE `logp2025`
  ADD PRIMARY KEY (`cliidxxx`,`prorefxx`,`prolotxx`,`proserxx`,`embidxxx`,`prouxexx`,`bodidxxx`,`docidxxx`,`doccodxx`,`doccscxx`,`docsecxx`,`estidxxx`,`profecex`);
COMMIT;


