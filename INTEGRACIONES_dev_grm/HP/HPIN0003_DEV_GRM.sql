-- TABLA HPIN0003 - HP - CUSDEC IMPORT DECLARATION VS ADDITIONAL PARTY 


CREATE TABLE HPIN0003 (
    CUSIDXXX INT(6)  NOT NULL COMMENT 'Indica el ID del cusdec header',
    CUIMIDXX VARCHAR(35)  NOT NULL COMMENT 'Consecutivo interno de HP (ImportDeclaration.ID)',
    CUIMAPSI TINYTEXT NOT NULL COMMENT 'ID del estándar del tercero (ImportDeclaration.AdditionalParty.StandardID)',
    CUIMAPSA TINYTEXT NOT NULL COMMENT 'Atributo schemeAgencyID del ID del estándar del tercero (ImportDeclaration.AdditionalParty.StandardID)',
    CUIMAPID VARCHAR(32) NOT NULL COMMENT 'Identificador del propietario tercero que se usa para enviar y recibir, acceder a información compartida (ImportDeclaration.AdditionalParty.InternalID)',
    CUIMAPTX VARCHAR(20) NOT NULL COMMENT 'Identificador fiscal para el tercero (ImportDeclaration.AdditionalParty.TaxID)',
    CUIMAPRT VARCHAR(10) NOT NULL COMMENT 'Representación del rol del tercero en la declaración de importación (ImportDeclaration.AdditionalParty.RoleCode)',
    CUIMAPAF TINYTEXT NOT NULL COMMENT 'Nombre de la organización del tercero (ImportDeclaration.AdditionalParty.Address.OrganisationFormattedName)',
    CUIMAPCC VARCHAR(3) NOT NULL COMMENT 'Código del país de la dirección física del tercero (ImportDeclaration.AdditionalParty.Address.PhysicalAddress.CountryCode)',
    CUIMAPRC VARCHAR(6) NOT NULL COMMENT 'Código de la región de la dirección física del tercero (ImportDeclaration.AdditionalParty.Address.PhysicalAddress.RegionCode)',
    CUIMAPPC VARCHAR(10) NOT NULL COMMENT 'Código postal de la dirección física del tercero (ImportDeclaration.AdditionalParty.Address.PhysicalAddress.StreetPostalCode)',
    CUIMAPCN TINYTEXT NOT NULL COMMENT 'Nombre de la ciudad de la dirección física del tercero (ImportDeclaration.AdditionalParty.Address.PhysicalAddress.CityName)',
    CUIMAPAC TINYTEXT NOT NULL COMMENT 'Nombre adicional de la ciudad de la dirección física del tercero (ImportDeclaration.AdditionalParty.Address.PhysicalAddress.AdditionalCityName)',
    CUIMAPPS TINYTEXT NOT NULL COMMENT 'Nombre de la calle de la dirección física del tercero (ImportDeclaration.AdditionalParty.Address.PhysicalAddress.StreetName)',
    CUIMISEC INT(6) AUTO_INCREMENT NOT NULL COMMENT 'Inicia en 100 por para CUSIDXXX y CUIMIDXX secuencia del additional party',

     PRIMARY KEY (`CUSIDXXX `, `CUIMIDXX`),
     KEY idx_CUSIDXXX (CUSIDXXX),
     KEY idx_CUIMIDXX (CUIMIDXX)

)   AUTO_INCREMENT=100 COMMENT = 'CUSDEC IMPORT DECLARATION VS ADDITIONAL PARTY';
