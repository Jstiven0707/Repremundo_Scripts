

CREATE TABLE `mdco2025` (
  `comidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id comprobante',
  `comcodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo comprobante',
  `comcscxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Comprobante (Para Siigo)',
  `comseqxx` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia del Comprobante',
  `usdvalxx` decimal(16,2) UNSIGNED NOT NULL COMMENT 'Valor facturacion en dolares',
  `usdflagx` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera facturación en DOLARES',
  `factrmxx` decimal(12,2) UNSIGNED NOT NULL COMMENT 'TRM equivalente a un dolar del dia',
  `comcsc2x` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Dos (2)',
  `comrefxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia del Comprobante',
  `comfecxx` date NOT NULL COMMENT 'Fecha del Comprobante',
  `comperxx` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Periodo del Comprobante',
  `comtclxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Cliente',
  `cliidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Cliente',
  `comtprxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Tercero',
  `proidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Tercero',
  `pucidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cuenta PUC',
  `ccoidxxx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de Costo Uno',
  `ccoid2xx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de Costo Dos',
  `comdesxx` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion del Comprobante',
  `comdbcrx` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comvlrxx` decimal(15,2) NOT NULL COMMENT 'Valor del Comprobante',
  `combretx` decimal(15,2) NOT NULL COMMENT 'Base Retencion',
  `comvlr01` decimal(15,2) NOT NULL COMMENT 'Valor Uno',
  `comvlr02` decimal(15,2) NOT NULL COMMENT 'Valor Dos',
  `comidcxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comcodcx` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comdocxx` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `comseqcx` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comrefcx` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comfecvc` date NOT NULL,
  `comidc2x` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comcodc2` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de Transporte',
  `comdoc2x` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Manifiesto',
  `comseqc2` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comrefc2` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comfacxx` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `comalert` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `regfecxx` date NOT NULL,
  `reghorxx` time NOT NULL,
  `regmodxx` date NOT NULL,
  `reghmodx` time NOT NULL,
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regestxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle contabilidad';

--
-- Disparadores `mdco2025`
--
DELIMITER $$
CREATE TRIGGER `Trigger_delete_bodega_2025` AFTER DELETE ON `mdco2025` FOR EACH ROW DELETE FROM bdfacdep WHERE
comidxxx = old.comidxxx AND
comcodxx = old.comcodxx AND
comcscxx = old.comcscxx AND
comseqxx = old.comseqxx
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Trigger_insert_bodega_2025` AFTER INSERT ON `mdco2025` FOR EACH ROW BEGIN
DECLARE descripcion varchar(100);
DECLARE negativo decimal(15,2);
DECLARE name_user varchar(100);
DECLARE nom_customer varchar(100);


SELECT wms00350.clinomxx INTO nom_customer FROM wms00350
WHERE wms00350.cliidxxx= new.cliidxxx;

IF
    nom_customer ='' OR
    nom_customer = null  OR
    nom_customer is null THEN
        SELECT wms00123.impnomxx INTO nom_customer FROM wms00123
        WHERE wms00123.impidxxx=new.cliidxxx;

        IF
        nom_customer = '' OR
        nom_customer = null OR
        nom_customer is null THEN
            SELECT wms00105.siadesxx INTO nom_customer FROM wms00105
            WHERE wms00105.siaidxxx=new.cliidxxx;

            IF
            nom_customer = '' OR
            nom_customer = null OR
            nom_customer is null THEN
                SET nom_customer:='Cliente sin nombre';
            END IF;
           END IF;
    END IF;

SELECT serdesxx INTO descripcion FROM fpar0129 WHERE seridxxx NOT IN('1305050000', '2408010500','1105100800','1105100900','1105101000','1355150800', '1355171500','1355180101') AND seridxxx = NEW.comrefxx;

SELECT USRNOMXX INTO name_user FROM GRM.SYS00001 WHERE USRIDXXX=new.regusrxx;

IF new.comidxxx ='C' OR new.comidxxx='F' THEN
 IF descripcion <> null OR descripcion <> '' THEN
        IF new.comidxxx = 'C' THEN
            SET negativo := new.comvlrxx * (-1);
        ELSE
            SET negativo := new.comvlrxx;
     END IF;

        INSERT INTO bdfacdep
        (comidxxx,serdesxx,comcodxx,comcscxx,comseqxx,comcsc2x,
         comrefxx,comfecxx,cliidxxx,nomcliex,proidxxx,pucidxxx,
         ccoidxxx,comvlrxx,comidcxx,comcodcx,comdocxx,regestxx,
         regusrxx,username)
        VALUES
        (new.comidxxx,descripcion,new.comcodxx,new.comcscxx,
         new.comseqxx,new.comcsc2x,new.comrefxx,new.comfecxx,
         new.cliidxxx,nom_customer,new.proidxxx,new.pucidxxx,
         new.ccoidxxx,negativo,new.comidcxx,new.comcodcx,
         new.comdocxx,new.regestxx,new.regusrxx,name_user);
    END IF;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Trigger_update_bodega_2025` AFTER UPDATE ON `mdco2025` FOR EACH ROW BEGIN
DECLARE descripcion varchar(100);
DECLARE negativo decimal(15,2);
DECLARE name_user varchar(100);
DECLARE nom_customer varchar(100);


SELECT wms00350.clinomxx INTO nom_customer FROM wms00350
WHERE wms00350.cliidxxx= new.cliidxxx;

IF
    nom_customer ='' OR
    nom_customer = null  OR
    nom_customer is null THEN
        SELECT wms00123.impnomxx INTO nom_customer FROM wms00123
        WHERE wms00123.impidxxx=new.cliidxxx;

        IF
        nom_customer = '' OR
        nom_customer = null OR
        nom_customer is null THEN
            SELECT wms00105.siadesxx INTO nom_customer FROM wms00105
            WHERE wms00105.siaidxxx=new.cliidxxx;

            IF
            nom_customer = '' OR
            nom_customer = null OR
            nom_customer is null THEN
                SET nom_customer:='Cliente sin nombre';
            END IF;
           END IF;
    END IF;

SELECT serdesxx INTO descripcion FROM fpar0129 WHERE seridxxx NOT IN('1305050000', '2408010500','1105100800','1105100900','1105101000','1355150800', '1355171500','1355180101') AND seridxxx = NEW.comrefxx;

SELECT USRNOMXX INTO name_user FROM GRM.SYS00001 WHERE USRIDXXX=new.regusrxx;

IF new.comidxxx ='C' OR new.comidxxx='F' THEN
        IF new.comidxxx = 'C' THEN
           SET negativo :=new.comvlrxx *(-1);
        ELSE
            SET negativo := new.comvlrxx;
        END IF;

UPDATE bdfacdep SET
    comidxxx=new.comidxxx,
serdesxx=descripcion,
comcodxx=new.comcodxx,
comcscxx=new.comcscxx,
comseqxx=new.comseqxx,
comcsc2x=new.comcsc2x,
comrefxx=new.comrefxx,
comfecxx=new.comfecxx,
cliidxxx=new.cliidxxx,
nomcliex=nom_customer,
proidxxx=new.proidxxx,
pucidxxx=new.pucidxxx,
ccoidxxx=new.ccoidxxx,
comvlrxx=negativo,
comidcxx=new.comidcxx,
comcodcx=new.comcodcx,
comdocxx=new.comdocxx,
regestxx=new.regestxx
WHERE
    comidxxx = new.comidxxx AND
    comcodxx = new.comcodxx AND
    comcscxx = new.comcscxx AND
    comseqxx = new.comseqxx AND
    comcsc2x = new.comcsc2x;

    END IF;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mdco2025`
--
ALTER TABLE `mdco2025`
  ADD PRIMARY KEY (`comidxxx`,`comcodxx`,`comcscxx`,`comcsc2x`,`comseqxx`),
  ADD KEY `cliidxxx` (`cliidxxx`),
  ADD KEY `comdocxx` (`comdocxx`),
  ADD KEY `Consulta` (`comcodxx`,`comvlrxx`,`cliidxxx`,`comperxx`);
COMMIT;


