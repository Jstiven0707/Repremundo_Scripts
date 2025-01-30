CREATE TABLE HPOW2025 (
    HPOCIDXX BIGINT(12) NOT NULL COMMENT 'ID de la cabecera, siempre inicia con el año (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) NOT NULL COMMENT 'Identificador de la importación (ImportDeclaration.ID)',
    HPOJIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia del texto natural, por cada HPOCIDXX y HPOIIDXX',
    HPOWIDXX SMALLINT NOT NULL COMMENT 'Identificador del AMOUNT, por cada HPOCIDXX, HPOIIDXX y HPOJIDXX inicia en 100',
    HPOWROCO VARCHAR(4) NOT NULL  COMMENT 'Identificador del código del rol de la cantidad (ImportDeclaration.Item.amount.RoleCode)',
    HPOWCDAM DECIMAL(8,8) NOT NULL COMMENT 'Valor monetario de la cantidad (ImportDeclaration.Item.amount.CustomsDeclaredAmount)',
    HPOWCUAM VARCHAR(10) NOT NULL COMMENT 'Atributo currencyCode, valor monetario de la cantidad (ImportDeclaration.Item.amount.CustomsDeclaredAmount)',
    HPOWODCA DECIMAL(8,8) NOT NULL COMMENT 'Valor monetario relacionado con el item en la declaración de importación (ImportDeclaration.Item.amount.OriginalDocumentCurrencyAmount)',
    HPOWODCC VARCHAR(10) NOT NULL COMMENT 'Atributo currencyCode, valor monetario relacionado con el item en la declaración de importación (ImportDeclaration.Item.amount.OriginalDocumentCurrencyAmount)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

    PRIMARY KEY (`HPOCIDXX`,`HPOIIDXX`,`HPOJIDXX`,`HPOWIDXX`),
    KEY IDX_HPOCIDXX (HPOCIDXX),
    KEY IDX_HPOIIDXX (HPOIIDXX),
	KEY IDX_HPOJIDXX (HPOJIDXX)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CUSRES HEADER, IMPORT DECLARATION ITEM VS AMOUNT';
