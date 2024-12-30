DELIMITER $$

CREATE TRIGGER `delpedgws` AFTER DELETE ON `pedjdahd` FOR EACH ROW BEGIN
IF (old.clinomxx = 'GLOBAL WINE' AND old.whidxxxx='BN002')
THEN
DELETE
FROM LOG.pgwh2025
WHERE numordco = old.numpedxx;



END IF;



END
$$
DELIMITER ;