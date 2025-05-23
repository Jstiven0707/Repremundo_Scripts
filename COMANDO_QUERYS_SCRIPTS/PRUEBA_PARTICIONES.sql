SELECT 
  TARC2024_NEW.*,
  CIMS0001.USRNOMXX, 
  CIMS0001.USREMAXX,
  USERCREA.USRNOMXX AS USRNOMCR, 
  USERCREA.USREMAXX AS USREMACR, 
  USERMOD.USRNOMXX AS USRNOMMD, 
  MDOS.DOCTRIMP, 
  MDOS.SUCIDXXX AS SUCURSAL,
  RECC2024.RECCCAPR, 
  CIMS0030.ESTADESC, 
  CIMS0018.CLATARDE,
  CIMS0017.TARCIEMA,
  CIMS0018.CLACOMXX, 
  IFNULL(CIPO0024.CLINOMXX, '') AS CLINOMXX,
  TARI2024.RESESPFX, 
  TARI2024.RESESPHX,
  CONCAT(TARI2024.RESESPFX, ' ', TARI2024.RESESPHX) AS FECVENXX, 
  TARI2024.LIMINFFX,
  TARI2024.LIMINFHX,
  TARI2024.LIMSUPFX, 
  TARI2024.LIMSUPHX, 
  TARI2024.RESOBTEX, 
  TARI2024.CUMPLEXX,
  CIMS0004.PRODESXX, 
  CIMS0004.PRODURLX, 
  CIMS0003.MODURLXX,
  CIPO0028.CLIICFEC,
  CIMS0069.ESTGEDES, 
  CIMS0069.ESTGEPES 

FROM TARC2024_NEW 
LEFT JOIN CIMS0001 ON TARC2024_NEW.TARUSRRE = CIMS0001.USRIDXXX 
LEFT JOIN CIMS0001 AS USERCREA ON TARC2024_NEW.REGUSRXX = USERCREA.USRIDXXX 
LEFT JOIN CIMS0001 AS USERMOD ON TARC2024_NEW.REGUSRMX = USERMOD.USRIDXXX 
left join `CIMS0030` on `CIMS0030`.`ESTAIDXX` = `TARC2024_NEW`.`ESTAIDXX`
left join `CIMS0018` on `CIMS0018`.`CLATARID` = `TARC2024_NEW`.`CLATARID` 
left join `CIMS0017` on `CIMS0017`.`MODIDXXX` = `TARC2024_NEW`.`MODIDXXX` and `CIMS0017`.`PROIDXXX` = `TARC2024_NEW`.`PROIDXXX` and `CIMS0017`.`CLATARID` = `TARC2024_NEW`.`CLATARID` 
left join `CIPO0024` on `TARC2024_NEW`.`CLIIDXXX` = `CIPO0024`.`CLIIDXXX` 
left join `CIPO0028` on `TARC2024_NEW`.`CLIIDXXX` = `CIPO0028`.`CLIIDXXX` 
left join `TARI2024` on `TARC2024_NEW`.`TARIDXXX` = `TARI2024`.`TARIDXXX` and `TARC2024_NEW`.`TOKIDXXX` = `TARI2024`.`TOKIDXXX` 
LEFT JOIN  (
  SELECT DOCNROXX, DOCTRIMP, SUCIDXXX
  FROM MDOS2023
  WHERE REGESTXX != 'INACTIVO'
  
  UNION
  
  SELECT DOCNROXX, DOCTRIMP, SUCIDXXX
  FROM MDOS2024_NEW
  WHERE REGESTXX != 'INACTIVO'
) AS MDOS 
  ON MDOS.DOCNROXX = TARC2024_NEW.DOCNROXX

LEFT JOIN RECC2024 ON TARC2024_NEW.TARIDXXX = RECC2024.TARIDXXX 
LEFT JOIN CIMS0004  ON CIMS0004.MODIDXXX = TARC2024_NEW.MODIDXXX AND CIMS0004.PROIDXXX = TARC2024_NEW.PROIDXXX
LEFT JOIN CIMS0069  ON TARC2024_NEW.ESTGESID = CIMS0069.ESTGESID 
INNER JOIN CIMS0003 ON TARC2024_NEW.MODIDXXX = CIMS0003.MODIDXXX 
WHERE TARC2024_NEW.ESTAIDXX IN (102, 105, 100) 
AND TARC2024_NEW.REGESTXX = 'ACTIVO'
-- AND TARC2024_NEW.TARIDXXX = 202400001402230 


ORDER BY `ESTGEPES` DESC;


	