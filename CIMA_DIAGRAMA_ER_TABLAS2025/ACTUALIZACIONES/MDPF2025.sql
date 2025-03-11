CREATE TABLE `MDPF2025` (
  `DOCNROXX` int NOT NULL COMMENT 'Numero del DO (MDOSYYYY)',
  `COMHFPRO` datetime DEFAULT NULL COMMENT 'Fecha y hora de Factura o Proforma',
  `COMFAPRO` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de la Factura o Proforma',
  `IDARCHXX` bigint NOT NULL COMMENT 'ID del archivo',
  `IDARCH2X` bigint NOT NULL COMMENT 'ID del archivo para la proforma separado ip',
  `IDARCHFA` bigint NOT NULL COMMENT 'ID del archivo para la factura',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACION VS DATOS DE PREFACTURA O FACTURA';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDPF2025`
--
ALTER TABLE `MDPF2025`
  ADD PRIMARY KEY (`DOCNROXX`),
  ADD KEY `IDX_DOCNROXX` (`DOCNROXX`);
COMMIT;


-- ACTUALIZACION

ALTER TABLE `MDPF2025`
ADD COLUMN `COMFADEF` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de la Factura definitiva' AFTER IDARCHFA ;

ALTER TABLE `MDPF2025`
ADD COLUMN `COMHFDEF` datetime NOT NULL COMMENT 'Fecha y hora de Factura definitiva' AFTER COMFADEF;

ALTER TABLE `MDPF2025`
ADD COLUMN `RESPRACT` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Respuesta del servicios de Practiko' AFTER COMHFDEF ;

ALTER TABLE `MDPF2025`
ADD COLUMN`TIPERROR` enum('','DRAFT','SEND','WRITE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipo de error generacion factura' AFTER RESPRACT;

ALTER TABLE `MDPF2025`
ADD COLUMN`ESTPRACT` enum('','GENERADA','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado creacion factura' AFTER TIPERROR;





