CREATE TABLE CIPO0209(

PROIDXXX VARCHAR(20) NOT NULL COMMENT 'Codigo del producto',
CLIIDXXX VARCHAR(20) NOT NULL COMMENT 'Nit del cliente',
IDPROXXX VARCHAR(10) NOT NULL COMMENT 'ID DEL PROVEEDOR (CIPO0050)',
DOCACCIC ENUM('CREAR','ACTUALIZAR') NOT NULL COMMENT 'Indica el proceso a realizar',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

PRIMARY KEY (`PROIDXXX`,`CLIIDXXX`,`IDPROXXX`),
KEY IDX_PROIDXXX(PROIDXXX),
KEY IDX_CLIIDXXX(CLIIDXXX),
KEY IDX_IDPROXXX(IDPROXXX)

) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'AGENDAMIENTO MIGRACION PRODUCTOS CIMA -> OPEN'

ALTER TABLE CIPO0209
MODIFY COLUMN REGESTXX ENUM('ACTIVO','INACTIVO','FALLIDO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ';