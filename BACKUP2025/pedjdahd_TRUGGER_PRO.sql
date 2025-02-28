CREATE TRIGGER `creapedx` AFTER UPDATE ON `pedjdahd`
 FOR EACH ROW IF (NEW.cliidxxx= '830074144' AND NEW.whidxxxx in ('BN002', 'BZFFON')  AND NEW.regestxx = 'ACEPTADO')
THEN 	
    INSERT IGNORE INTO
    LOG.pgwh2025 (whidxxxx,numordco,femixxxx,femaxxxx,homixxxx,homaxxxx, iddirecx, cardcode,
                  regfecxx,reghorxx,regusrxx,regestxx
    )
        VALUES
        (new.whidxxxx,new.numpedxx,new.femixxxx,new.femaxxxx,new.homixxxx,new.homaxxxx, new.pedshito, new.usridinx , now(),now(),'1000','ACTIVO' );

/*INSERT IGNORE INTO LOG.esgw2022 (numordco,estadoxx, regfecxx,reghorxx,regusrxx,regestxx, estadgws)
    VALUES (new.numpedxx, 'EN PLANEACION' , now(),now(),'1000','ACTIVO', 'ENVIADO' );*/
  
END IF