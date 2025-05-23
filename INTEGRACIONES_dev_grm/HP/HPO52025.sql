CREATE TABLE HPO52025 (
    HPOCIDXX BIGINT(12) NOT NULL COMMENT 'ID de la cabecera, siempre inicia con el año (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) NOT NULL COMMENT 'Identificador de la importación (ImportDeclaration.ID)',
    HPOJIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia del texto natural, por cada HPOCIDXX y HPOIIDXX',
    HPO5IDXX SMALLINT NOT NULL COMMENT 'Identificador del texto en lenguaje natural, por cada HPOCIDXX, HPOIIDXX y HPOJIDXX. Inicia en 100',
    HPO5TYCO VARCHAR(5) COMMENT 'Código de representación del tipo de texto (ImportDeclaration.Item.TextCollection.Text.typeCode)',
    HPO5LNCO VARCHAR(9) COMMENT 'Atributo languageCode, código de representación del lenguaje (ImportDeclaration.Item.TextCollection.Text.ContentText)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

   PRIMARY KEY (`HPOCIDXX`,`HPOIIDXX`,`HPOJIDXX`,`HPO5IDXX`),
    KEY IDX_HPOCIDXX (HPOCIDXX),
    KEY IDX_HPOIIDXX (HPOIIDXX),
    KEY IDX_HPOJIDXX (HPOJIDXX)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CUSRES HEADER, IMPORT DECLARATION ITEM VS TEXT COLLECTION';
