CREATE TABLE HPO32025 (
    HPOCIDXX BIGINT NOT NULL COMMENT 'ID de la cabecera, siempre inicia con el año (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) NOT NULL COMMENT 'Identificador de la importación (ImportDeclaration.ID)',
    HPOJIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia del texto natural, por cada HPOCIDXX y HPOIIDXX',
    HPO3IDXX SMALLINT NOT NULL COMMENT 'Identificador del documento adicional',
    HPO3COID VARCHAR(35) NOT NULL COMMENT 'Identificador del documento adicional (ImportDeclaration.Item.AdditionalDocument.ID)',
    HPO3ADID VARCHAR(35) COMMENT 'Identificador de la adición del documento adicional (ImportDeclaration.Item.AdditionalDocument.AddendumID)',
    HPO3ADDE VARCHAR(35) COMMENT 'Identificador del detalle del documento adicional (ImportDeclaration.Item.AdditionalDocument.DetailID)',
    HPO3TYCO VARCHAR(7) COMMENT 'Identificador del tipo de documento adicional (ImportDeclaration.Item.AdditionalDocument.TypeCode)',
    HPO3ISDA DATE COMMENT 'Fecha de adición del documento (ImportDeclaration.Item.AdditionalDocument.IssueDate)',
    HPO3VLDA DATE COMMENT 'Fecha de finalización del documento (ImportDeclaration.Item.AdditionalDocument.ValidityEndDate)',
    HPO3LWOA DECIMAL(8,6) COMMENT 'Valor de la licencia (ImportDeclaration.Item.AdditionalDocument.LicenseWriteOffAmount)',
    HPO3LWCC VARCHAR(20) COMMENT 'Código de moneda del valor de la licencia (ImportDeclaration.Item.AdditionalDocument.LicenseWriteOffAmount)',
    HPO3LWQA DECIMAL(8,8) COMMENT 'Cantidad de la licencia (ImportDeclaration.Item.AdditionalDocument.LicenseWriteOffQuantity)',
    HPO3LWQU VARCHAR(20) COMMENT 'Unidad de medida de la cantidad de la licencia (ImportDeclaration.Item.AdditionalDocument.LicenseWriteOffQuantity)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario creación del registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de creación del registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de creación del registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de modificación',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de modificación del registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de modificación del registro',
    REGESTXX ENUM('ACTIVO', 'INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del registro',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha y hora de la última modificación',
   
  PRIMARY KEY (`HPOCIDXX`,`HPOIIDXX`,`HPOJIDXX`,`HPO3IDXX`),
    KEY IDX_HPOCIDXX (HPOCIDXX),
    KEY IDX_HPOIIDXX (HPOIIDXX),
    KEY IDX_HPOJIDXX (HPOJIDXX)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CUSRES HEADER, IMPORT DECLARATION ITEM VS ADDITIONAL DOCUMENT';
