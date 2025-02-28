DELIMITER $$

DROP TRIGGER IF EXISTS `creapedx`$$
CREATE DEFINER=`cristhian.cubide`@`192.168.28.42` TRIGGER `creapedx`
AFTER UPDATE ON `pedjdahd`
FOR EACH ROW
BEGIN
    IF (NEW.cliidxxx = '830074144'
        AND COALESCE(NEW.whidxxxx, '') NOT IN ('', 'INCREP01')
        AND NEW.regestxx = 'ACEPTADO')
    THEN
        INSERT IGNORE INTO LOG.pgwh2025 (
            whidxxxx, numordco, femixxxx, femaxxxx, homixxxx, homaxxxx,
            iddirecx, cardcode, regfecxx, reghorxx, regusrxx, regestxx
        )
        VALUES (
            NEW.whidxxxx, NEW.numpedxx, NEW.femixxxx, NEW.femaxxxx,
            NEW.homixxxx, NEW.homaxxxx, NEW.pedshito, NEW.usridinx,
            NOW(), NOW(), '1000', 'ACTIVO'
        );
    END IF;
END$$

DELIMITER ;