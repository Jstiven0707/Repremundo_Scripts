-- TABLA HPIN0006 - HP - 'CUSDEC IMPORT DECLARATION VS CONTAINERS

CREATE TABLE HPIN0006 (
    CUSIDXXX INT(6) NOT NULL COMMENT 'Indica el ID del cusdec header',
    CUIMIDXX VARCHAR(35) NOT NULL COMMENT 'Consecutivo interno de HP (ImportDeclaration.ID)',
    CUIMCOID VARCHAR(35) NOT NULL COMMENT 'Identificador del contenedor (ImportDeclaration.Container.ID)',
    CIIMCOTC VARCHAR(10) NOT NULL COMMENT 'Código del tipo de contenedor (ImportDeclaration.Container.TypeCode)',
    CUIMCOFL VARCHAR(3) NOT NULL COMMENT 'Código del nivel de llenado del contenedor (ImportDeclaration.Container.FillLevelCode)',

    PRIMARY KEY (`CUSIDXXX`, `CUIMIDXX`, `CUIMCOID`),
    KEY idx_CUSIDXXX (CUSIDXXX),
    KEY idx_CUIMIDXX (CUIMIDXX)

) COMMENT = 'CUSDEC IMPORT DECLARATION VS CONTAINERS';
