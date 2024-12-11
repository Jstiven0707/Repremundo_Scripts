

CREATE TABLE `MVCD2025` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'ID CABECERA DEL TICKET',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del do',
  `FACIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Factura',
  `ITEIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Item',
  `DESIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de la Descripcion',
  `DESDESXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripción del Descriptor',
  `VALDESXX` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Descripcion minima',
  `VALVERXX` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Verificacion Descripcion minina',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modifico'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='MVC Detalle' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MVCD2025`
--
ALTER TABLE `MVCD2025`
  ADD PRIMARY KEY (`HELCCSCX`,`DOCNROXX`,`FACIDXXX`,`ITEIDXXX`,`DESIDXXX`) USING BTREE;
COMMIT;


