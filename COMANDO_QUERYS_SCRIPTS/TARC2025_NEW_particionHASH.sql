CREATE TABLE `TARC2025_NEW` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID DE LA TAREA',
  `MODIDXXX` int NOT NULL COMMENT 'ID DEL MODULO',
  `PROIDXXX` int NOT NULL COMMENT 'ID del proceso',
  `CLATARID` int NOT NULL COMMENT 'ID DE LA CLASIFICACION',
  `DOCNROXX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Do',
  `TARDICXX` json NOT NULL COMMENT 'CAMPOS QUE SE DILIGENCIARON PARA LA SOLUCION DE LA TAREA',
  `TOKIDXXX` int NOT NULL COMMENT 'id del tipo de KPI',
  `TARUSRRE` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL USUARIO RESPONSABLE',
  `TAREMAXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CORREOS DE SEGUIMIENTO PARA LAS TAREAS',
  `TARIDPAX` bigint NOT NULL COMMENT 'ID DE LA TAREA PADRE',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NIT CLIENTE',
  `IDARCHXX` int NOT NULL COMMENT 'ID DEL ARCHIVO EN AMAZON(GENIO.DOCCYYYY)',
  `DTTIFEES` date NOT NULL COMMENT 'FECHA ESTIMADA DE ARRIBO',
  `DTTIHRES` time NOT NULL COMMENT 'HORA ESTIMADA DE ARRIBO',
  `ESTAIDXX` smallint NOT NULL COMMENT 'ID DEL ESTADO DE LA TAREA',
  `TARPESXX` smallint NOT NULL COMMENT 'PESO DEL TICKET',
  `ESTGESID` smallint NOT NULL COMMENT 'ID del estado de gestion(CIMS0069)',
  `SUCIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la sucursal (CIMS0050)',
  `TARCFECC` date NOT NULL COMMENT 'FECHA DE CIERRE',
  `TARCHORC` time NOT NULL COMMENT 'HORA DE CIERRE',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO','SUSPENDIDO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CABECERA DE TAREAS' ROW_FORMAT=DYNAMIC
PARTITION BY HASH (TARIDXXX) PARTITIONS 4


ALTER TABLE `TARC2025_NEW`
  ADD PRIMARY KEY (`TARIDXXX`) USING BTREE,
  ADD KEY `MODIDXXX` (`MODIDXXX`) USING BTREE,
  ADD KEY `PROIDXXX` (`PROIDXXX`) USING BTREE,
  ADD KEY `CLATARID` (`CLATARID`) USING BTREE,
  ADD KEY `DOCNROXX` (`DOCNROXX`) USING BTREE,
  ADD KEY `TOKIDXXX` (`TOKIDXXX`) USING BTREE,
  ADD KEY `TARUSRRE` (`TARUSRRE`) USING BTREE,
  ADD KEY `TARIDPAX` (`TARIDPAX`) USING BTREE,
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `ESTAIDXX` (`ESTAIDXX`),
  ADD KEY `SUCIDXXX` (`SUCIDXXX`),
  ADD KEY `ESTGESID` (`ESTGESID`),
  ADD KEY `REGFECXX` (`REGFECXX`),
  ADD KEY `REGHORXX` (`REGHORXX`),
  ADD KEY `REGFECXX_2` (`REGFECXX`,`REGHORXX`);
COMMIT;


-- ver registros en cada particion

SELECT PARTITION_NAME, TABLE_ROWS 
FROM INFORMATION_SCHEMA.PARTITIONS 
WHERE TABLE_NAME = 'TARC2025_NEW';

-- ver la particiones de la tabla 

SELECT 
    PARTITION_NAME, 
    TABLE_ROWS, 
    PARTITION_ORDINAL_POSITION, 
    PARTITION_METHOD, 
    PARTITION_EXPRESSION 
FROM INFORMATION_SCHEMA.PARTITIONS 
WHERE TABLE_NAME = 'TARC2025_NEW';	

-- validar la distribucion  de datos en cada particion 

SELECT PARTITION_NAME, TABLE_ROWS 
FROM INFORMATION_SCHEMA.PARTITIONS 
WHERE TABLE_NAME = 'TARC2025_NEW';

