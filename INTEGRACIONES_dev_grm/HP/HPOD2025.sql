CREATE TABLE HPOD2025 (
    HPOCIDXX BIGINT(12) NOT NULL COMMENT 'ID de la cabecera siempre inicia con el año (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT 'Identificador de la importación (ImportDeclaration.ID)',
    HPODIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia del declarant party, inicia en 100 por cada HPOCIDXX y HPOIIDXX',
    HPODSTID VARCHAR(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT 'Estándar del declarante (ImportDeclaration.DeclarantParty.StandardID)',
    HPODSTIS VARCHAR(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL COMMENT 'Atributo schemeAgencyID del estándar del declarante (ImportDeclaration.DeclarantParty.StandardID)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

    PRIMARY KEY (`HPOCIDXX`, `HPOIIDXX`,`HPODIDXX`),
    KEY IDX_HPOCIDXX(HPOCIDXX),
	KEY IDX_HPOIIDXX(HPOIIDXX)

) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CUSRES HEADER, IMPORT DECLARATION DECLARANT PARTY VS STANDARDS';
