ALTER TABLE CIPF0018
ADD COLUMN CLITICUP ENUM('','LIMITADO','ILIMITADO','SIN CUPO') NOT NULL COMMENT 'TIPO DE CUPO' AFTER  CONANTXX;