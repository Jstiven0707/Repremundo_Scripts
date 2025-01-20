CREATE TABLE HPOQ2025 (
    HPOCIDXX BIGINT(12) NOT NULL COMMENT 'ID de la cabecera siempre inicia con el año (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) NOT NULL COMMENT 'Identificador de la importación (ImportDeclaration.ID)',
    HPORIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia de standard del representative declarant party,  por cada HPOCIDXX y HPOIIDXX debe iniciar en 100',
    HPORSTID VARCHAR(60) NOT NULL COMMENT 'Estándar del declarante (ImportDeclaration.RepresentativeDeclarantParty.StandardID)',
    HPORSTIS VARCHAR(60) NOT NULL COMMENT 'Atributo schemeAgencyID del estándar del declarante (ImportDeclaration.RepresentativeDeclarantParty.StandardID)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

    PRIMARY KEY (`HPOCIDXX`, `HPOIIDXX`, `HPORIDXX`),
    KEY IDX_HPOCIDXX(HPOCIDXX),
    KEY IDX_HPOIIDXX(HPOIIDXX)

) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CUSRES HEADER, IMPORT DECLARATION REPRESENTATIVE DECLARANT PARTY VS STANDARDS';
