BEGIN

UPDATE 
	LOG.pgwh2023 
SET 
	numoplxx = concat(NEW.PREFACTX, '-', NEW.NUMFACTX), 
	numfactx = NEW.NUMFACTX, 
	recaudox = NEW.RECAUDOX, 
	vlrecaud = NEW.VLRECAUD, 
	totlprce = NEW.TOTLPRCE 
WHERE 
	numordco = concat(NEW.PREFPEDX, '-', NEW.NUMPEDXX); 
UPDATE 
	LOG.pgwh2024
SET 
	numoplxx = concat(NEW.PREFACTX, '-', NEW.NUMFACTX), 
	numfactx = NEW.NUMFACTX, 
	recaudox = NEW.RECAUDOX, 
	vlrecaud = NEW.VLRECAUD, 
	totlprce = NEW.TOTLPRCE 
WHERE 
	numordco = concat(NEW.PREFPEDX, '-', NEW.NUMPEDXX); 
UPDATE 
	LOG.esgw2023
SET 
	numoplxx = concat(NEW.PREFACTX, '-', NEW.NUMFACTX) 
WHERE
	numordco = concat(NEW.PREFPEDX, '-', NEW.NUMPEDXX); 
UPDATE 
	LOG.esgw2024
SET 
	numoplxx = concat(NEW.PREFACTX, '-', NEW.NUMFACTX) 
WHERE 
	numordco = concat(NEW.PREFPEDX, '-', NEW.NUMPEDXX); INSERT IGNORE INTO LOG.esgw2024 (
		numordco, numoplxx, estadoxx, regfecxx, 
		reghorxx, regusrxx, regestxx, estadgws
	) 
VALUES 
	(
		concat(NEW.PREFPEDX, "-", NEW.NUMPEDXX), 
		concat(NEW.PREFACTX, "-", NEW.NUMFACTX), 
		'EN PLANEACION', 
		now(), 
		now(), 
		'1000', 
		'ACTIVO',
        'ENVIADO'
	); END