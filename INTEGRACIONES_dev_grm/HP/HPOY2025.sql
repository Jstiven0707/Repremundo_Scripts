
    CREATE TABLE HPOY2025 (
    HPOCIDXX BIGINT(12) NOT NULL COMMENT 'ID de la cabecera, siempre inicia con el año (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) NOT NULL COMMENT 'Identificador de la importación (ImportDeclaration.ID)',
    HPOJIDXX SMALLINT NOT NULL COMMENT 'Identificador de la secuencia del texto natural, por cada HPOCIDXX y HPOIIDXX',
    HPOYIDXX SMALLINT NOT NULL COMMENT 'Identificador del Additional Party, inicia en 100 por cada HPOCIDXX, HPOIIDXX y HPOJIDXX',
    HPOYSTID VARCHAR(60) COMMENT 'Identificador de la agencia adicional (ImportDeclaration.Item.AdditionalParty.StandardID)',
    HPOYSCAG VARCHAR(60) COMMENT 'Atributo schemeAgencyID, identificador de la agencia adicional (ImportDeclaration.Item.AdditionalParty.StandardID.schemeAgencyID)',
    HPOYINID VARCHAR(32) COMMENT 'Identificador de la parte adicional (ImportDeclaration.Item.AdditionalParty.InternalID)',
    HPOYTXID VARCHAR(20) COMMENT 'Identificador de impuesto (ImportDeclaration.Item.AdditionalParty.TaxID)',
    HPOYRCO VARCHAR(10) COMMENT 'Código del rol (ImportDeclaration.Item.AdditionalParty.RoleCode)',
    HPOYAOFN VARCHAR(40) COMMENT 'Nombre de la organización que representa (ImportDeclaration.Item.AdditionalParty.Address.OrganisationFormattedName)',
    HPOYAPCO VARCHAR(3) COMMENT 'Código del país (ImportDeclaration.Item.AdditionalParty.Address.PhysicalAddress.CountryCode)',
    HPOYAPRC VARCHAR(6) COMMENT 'Código de la región (ImportDeclaration.Item.AdditionalParty.Address.PhysicalAddress.RegionCode)',
    HPOYAPSC VARCHAR(10) COMMENT 'Código postal (ImportDeclaration.Item.AdditionalParty.Address.PhysicalAddress.StreetPostalCode)',
    HPOYAPCN VARCHAR(40) COMMENT 'Nombre de la ciudad (ImportDeclaration.Item.AdditionalParty.Address.PhysicalAddress.CityName)',
    HPOYAACN VARCHAR(40) COMMENT 'Nombre adicional de la ciudad (ImportDeclaration.Item.AdditionalParty.Address.PhysicalAddress.AdditionalCityName)',
    HPOYAASN VARCHAR(60) COMMENT 'Dirección (ImportDeclaration.Item.AdditionalParty.Address.PhysicalAddress.StreetName)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario creación del registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de creación del registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de creación del registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de modificación',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de modificación del registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de modificación del registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del registro',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Última modificación',

    PRIMARY KEY (`HPOCIDXX`, `HPOIIDXX`,`HPOJIDXX`,`HPOYIDXX`),
    KEY IDX_HPOCIDXX (HPOCIDXX),
    KEY IDX_HPOIIDXX (HPOIIDXX),
    KEY IDX_HPOJIDXX (HPOJIDXX)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CUSRES HEADER, IMPORT DECLARATION ITEM VS ADDITIONAL PARTY';


