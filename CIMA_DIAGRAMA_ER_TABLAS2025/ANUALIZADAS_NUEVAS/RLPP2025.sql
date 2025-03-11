CREATE TABLE RLPP2025 (

MDREIDRE INT NOT NULL COMMENT 'Secuencia del registro o LICENCIA',
PROIDXXX VARCHAR(20) NOT NULL COMMENT 'Codigo del Producto',
CLIIDXXX VARCHAR(20) NOT NULL COMMENT 'NIT del Cliente',
IDPROXXX  VARCHAR(10) NOT NULL COMMENT 'ID del proveedor (CIPO0050)',
ENTVISID SMALLINT NOT NULL COMMENT 'ID de la Entidad (CIPO0010)',
PERIDXXX SMALLINT NOT NULL COMMENT 'ID del Permiso (CIPO0194)',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

PRIMARY KEY (`MDREIDRE`, `PROIDXXX`,`CLIIDXXX`, `IDPROXXX`),
KEY IDX_MDREIDRE(MDREIDRE),
KEY IDX_PROIDXXX(PROIDXXX),
KEY IDX_CLIIDXXX(CLIIDXXX),
KEY IDX_IDPROXXX(IDPROXXX)

) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CABECERA VUCE, PRODUCTO TIPO PERMISO VS ENTIDAD '