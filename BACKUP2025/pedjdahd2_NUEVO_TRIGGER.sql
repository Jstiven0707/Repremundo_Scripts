DELIMITER $$

DROP TRIGGER IF EXISTS `delpedgws`$$
CREATE DEFINER=`cristhian.cubide`@`192.168.28.42` TRIGGER `delpedgws`
AFTER DELETE ON `pedjdahd`
FOR EACH ROW
BEGIN
    IF (OLD.clinomxx = 'GLOBAL WINE' AND OLD.whidxxxx NOT IN ('INCREP01', 'BZFFON')) THEN
        DELETE FROM LOG.pgwh2025 WHERE numordco = OLD.numpedxx;
    END IF;
END$$

DELIMITER ;