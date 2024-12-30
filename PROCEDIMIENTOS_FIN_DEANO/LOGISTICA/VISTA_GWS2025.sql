USE LOG;
ALTER VIEW STATUS_OPERACION_GWS AS (
SELECT  DISTINCT pgwh.numordco
       ,pgwh.whidxxxx
       ,IFNULL(pgwh.numoplxx,'')  AS numoplxx
       ,pgwh.numfactx
       ,pgwh.cardcode
       ,pgwh.iddirecx
       ,info.rasocial
       ,pgwh.numcreax
       ,dircl.ciudadxx
       ,pgwh.tipovehx
       ,pgwh.placaxxx
       ,dircl.addressx
       ,dircl.direextr
       ,pgwh.estadoxx
       ,IFNULL(esgw.regfecxx,'')  AS fstatusx
       ,IFNULL(causa.nomcauxx,'') AS nomcauxx
       ,pgwh.cumplido
       ,pgwh.feradica
       ,pgwh.recaudox
       ,pgwh.vlrecaud
       ,pgwh.totlprce
       ,pgwh.femixxxx
       ,pgwh.regfecxx
       ,pgwh.reghorxx
       ,pgwh.regfmodx
       ,pgwh.reghmodx
       ,pgwh.regestxx
       ,pgwh.regstamp
FROM pgwh2024 AS pgwh
INNER JOIN infoclix AS info
ON pgwh.cardcode = info.cardcode
INNER JOIN dircliex AS dircl
ON pgwh.iddirecx = dircl.iddirecx AND pgwh.cardcode = dircl.cardcode
LEFT JOIN pgwd2024 AS pgwd
ON pgwh.numordco = pgwd.numordco AND pgwh.numoplxx = pgwd.numoplxx AND pgwh.estadoxx = pgwd.estadoxx
LEFT JOIN
(
	SELECT  DISTINCT numordco
	       ,numoplxx
	       ,estadoxx
	       ,regfecxx
	       ,causalxx
	FROM esgw2024
	ORDER BY regfecxx DESC
) AS esgw
ON pgwh.numordco = esgw.numordco AND ((pgwh.estadoxx = esgw.estadoxx) OR (pgwh.estadoxx = 'CREADO'))
LEFT JOIN causagws AS causa
ON (esgw.causalxx = causa.causalid) OR (pgwd.causalxx = causa.causalid)
WHERE pgwh.estadoxx != 'SOLICITADO'
GROUP BY  pgwh.numordco)
UNION (
SELECT  DISTINCT pgwh.numordco
       ,pgwh.whidxxxx
       ,IFNULL(pgwh.numoplxx,'')  AS numoplxx
       ,pgwh.numfactx
       ,pgwh.cardcode
       ,pgwh.iddirecx
       ,info.rasocial
       ,pgwh.numcreax
       ,dircl.ciudadxx
       ,pgwh.tipovehx
       ,pgwh.placaxxx
       ,dircl.addressx
       ,dircl.direextr
       ,pgwh.estadoxx
       ,IFNULL(esgw.regfecxx,'')  AS fstatusx
       ,IFNULL(causa.nomcauxx,'') AS nomcauxx
       ,pgwh.cumplido
       ,pgwh.feradica
       ,pgwh.recaudox
       ,pgwh.vlrecaud
       ,pgwh.totlprce
       ,pgwh.femixxxx
       ,pgwh.regfecxx
       ,pgwh.reghorxx
       ,pgwh.regfmodx
       ,pgwh.reghmodx
       ,pgwh.regestxx
       ,pgwh.regstamp
FROM pgwh2025 AS pgwh
INNER JOIN infoclix AS info
ON pgwh.cardcode = info.cardcode
INNER JOIN dircliex AS dircl
ON pgwh.iddirecx = dircl.iddirecx AND pgwh.cardcode = dircl.cardcode
LEFT JOIN pgwd2025 AS pgwd
ON pgwh.numordco = pgwd.numordco AND pgwh.numoplxx = pgwd.numoplxx AND pgwh.estadoxx = pgwd.estadoxx
LEFT JOIN
(
	SELECT  DISTINCT numordco
	       ,numoplxx
	       ,estadoxx
	       ,regfecxx
	       ,causalxx
	FROM esgw2025
	ORDER BY regfecxx DESC
) AS esgw
ON pgwh.numordco = esgw.numordco AND ((pgwh.estadoxx = esgw.estadoxx) OR (pgwh.estadoxx = 'CREADO'))
LEFT JOIN causagws AS causa
ON (esgw.causalxx = causa.causalid) OR (pgwd.causalxx = causa.causalid)
WHERE pgwh.estadoxx != 'SOLICITADO'
GROUP BY  pgwh.numordco)