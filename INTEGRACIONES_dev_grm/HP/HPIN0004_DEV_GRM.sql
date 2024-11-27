
-- TABLA HPIN0004 - HP - CUDESC IMPORT DECLARATION VS BUSSINESS TRANSACTION DOCUMENT REFERENCE

CREATE TABLE HPIN0004 (
   
   CUSIDXXX INT(6) NOT NULL COMMENT 'Indica el ID del cusdec header',
   CUIMIDXX VARCHAR(35) NOT NULL COMMENT 'Consecutivo interno de HP (ImportDeclaration.ID)',
   CUIMBDID VARCHAR(35) NOT NULL COMMENT 'ID del documento de negocio relacionado con la importación (ImportDeclaration.BusinessTransactionDocumentReference.ID)',
   CUIMBDTC VARCHAR(5) NOT NULL COMMENT 'Tipo del documento de negocio relacionado con la importación (ImportDeclaration.BusinessTransactionDocumentReference.TypeCode)',

    PRIMARY KEY (`CUSIDXXX`,`CUIMIDXX`,`CUIMBDID`),
    KEY idx_CUSIDXXX(CUSIDXXX),
    KEY idx_CUIMIDXX(CUIMIDXX)
    
) COMMENT = 'CUDESC IMPORT DECLARATION VS BUSSINESS TRANSACTION DOCUMENT REFERENCE';
