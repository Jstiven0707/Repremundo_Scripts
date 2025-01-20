CREATE TABLE HPOT2025(

HPOCIDXX BIGINT(12) NOT NULL  COMMENT 'ID de la cabecera siempre inicia con el año (messageHeader.ID)',
HPORIDXX INT(6) NOT NULL COMMENT'ID de la secuencia  del recipient party',
HPOTSTID VARCHAR(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Identificador  del que  recibe como parte  de la organizacion (messageHeader.RecipientParty.standardID)',
HPOTSAID VARCHAR(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'atributo schemeAgencyID identificador de la agencia (MessageHeader.RecipientParty.standardID)',
REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

PRIMARY KEY (`HPOCIDXX`, `HPORIDXX`,`HPOTSTID`),
KEY IDX_HPOCIDXX(HPOCIDXX),
KEY IDX_HPORIDXX(HPORIDXX)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT'CUSRES HEADER,RECIPENT PARTY VS STANDARS'