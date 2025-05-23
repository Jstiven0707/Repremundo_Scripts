CREATE TABLE  MDPV2025(

DOCNROXX INT NOT NULL COMMENT'Numero del DO (MDOSYYYY)',
CLIIDXXX VARCHAR(20) NOT NULL COMMENT'Nit cliente (CIPO0024)',
MDPVTARD SMALLINT(4) NOT NULL COMMENT 'Codigo Tarifa',
MDPVVLRX DECIMAL(18,5) NOT NULL COMMENT 'Valor',
ESTADOTA ENUM('PENDIENTE','GENERADA','ERROR') NOT NULL COMMENT 'Estado Generacion Tarea',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

PRIMARY KEY (`DOCNROXX`,`CLIIDXXX`,`MDPVTARD`),
KEY IDX_DOCNROXX(DOCNROXX),
KEY IDX_CLIIDXXX(CLIIDXXX)

) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'OPERACION VS PAGO INVIMA'