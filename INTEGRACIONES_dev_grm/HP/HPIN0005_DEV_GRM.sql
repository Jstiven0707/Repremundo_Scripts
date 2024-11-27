-- TABLA HPIN0005 - HP - CUSDEC IMPORT DECLARATION VS CUSTOMS OFFICE


CREATE TABLE HPIN0005 (
    CUSIDXXX INT(6) NOT NULL COMMENT 'Indica el ID del cusdec header',
    CUIMIDXX VARCHAR(35) NOT NULL COMMENT 'Consecutivo interno de HP (ImportDeclaration.ID)',
    CUIMBDID VARCHAR(13) NOT NULL COMMENT 'Tipo del documento de negocio relacionado con la importación (ImportDeclaration.CustomsOffice.StandardID)',
    CUIMBDRC VARCHAR(10) NOT NULL COMMENT 'Rol de la oficina para procesar la importación (ImportDeclaration.CustomsOffice.RoleCode)',
    CUIMBDCC VARCHAR(3) NOT NULL COMMENT 'Código del país donde está localizada la oficina (ImportDeclaration.CustomsOffice.CountryCode)',

    PRIMARY KEY (`CUSIDXXX`, `CUIMIDXX`, `CUIMBDID`),
    KEY idx_CUSIDXXX (CUSIDXXX),
    KEY idx_CUIMIDXX (CUIMIDXX)

) COMMENT = 'CUSDEC IMPORT DECLARATION VS CUSTOMS OFFICE';
