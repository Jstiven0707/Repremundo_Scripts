-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 29-11-2024 a las 15:12:59
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mcco2024`
--

CREATE TABLE IF NOT EXISTS `mcco2024` (
  `comidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id comprobante',
  `comcodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo comprobante',
  `comcscxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Comprobante (Para Siigo)',
  `comcsc2x` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Dos (2)',
  `comfecxx` date NOT NULL COMMENT 'Fecha del Comprobante',
  `comperxx` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Periodo del Comprobante',
  `ccoidxxx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de Costo',
  `ccoid2xx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sub Centro de Costo',
  `usdvalxx` decimal(16,2) unsigned NOT NULL COMMENT 'Valor facturacion en dolares',
  `usdflagx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Facturación en dolares',
  `factrmxx` decimal(12,2) NOT NULL COMMENT 'TRM',
  `comtclxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Cliente',
  `cliidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Cliente',
  `comtprxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Tercero',
  `proidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Tercero',
  `comtrcxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Receptor',
  `recidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Receptor',
  `siaidxxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit de la SIA',
  `comtauxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Tercero Autorizado',
  `autidxxx` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Tercero Autorizado',
  `comvlrxx` decimal(15,2) NOT NULL COMMENT 'Valor del Comprobante',
  `combretx` decimal(15,2) NOT NULL COMMENT 'Base Retencion',
  `comvlr01` decimal(15,2) NOT NULL COMMENT 'Valor Uno',
  `comvlr02` decimal(15,2) NOT NULL COMMENT 'Valor Dos',
  `comifxxx` decimal(15,2) NOT NULL COMMENT 'Valor Impuesto Financiero (4 x Mil) (Factura)',
  `comipxxx` decimal(15,2) NOT NULL COMMENT 'Valor Ingresos Propios (Factura)',
  `comivaxx` decimal(15,2) NOT NULL COMMENT 'Valor del Iva',
  `comliqui` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'La factura aplica liquidacion JDA',
  `comobsxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion Uno',
  `comobs2x` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion Dos',
  `comfecvc` date NOT NULL COMMENT 'Fecha Vencimiento Comprobante',
  `commemod` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Campo Memo cantidad documentos-piezas-peso-valor cif',
  `commemof` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Campo Memo se guarda Matriz de Formularios Asignados Factura',
  `retefuen` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Retencion Sobre Renta',
  `reteivax` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Retencion Sobre el Iva',
  `comprnxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Comprobante Impreso (SI-NO)',
  `comfradx` date NOT NULL COMMENT 'Fecha Radicado Comprobante',
  `comhradx` time NOT NULL COMMENT 'Hora Radicado Comprobante',
  `comufrad` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comdfrad` date NOT NULL,
  `comdhrad` time NOT NULL,
  `taridxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tarea que lo creo',
  `comrfuex` decimal(17,2) NOT NULL COMMENT 'Valor Retefuente',
  `comricax` decimal(17,2) NOT NULL COMMENT 'Valor ICA',
  `comrivax` decimal(17,2) NOT NULL COMMENT 'Valor IVA',
  `comtkpse` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Ticket PSE',
  `comrcpse` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Recibo de Caja',
  `comespse` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado PSE',
  `comvppse` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Transaccion PSE',
  `comcodc2` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento Transporte',
  `faclisdt` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Listado de documentos de transporte si aplica',
  `tipfacxx` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Facturacion',
  `justxxxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Justificacion de porque se anula la factura',
  `docgenio` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento en Genio',
  `openestx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado en Open',
  `idcufexx` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cufe',
  `comjsonx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Json Factura Electronica',
  `regfecxx` date NOT NULL,
  `reghorxx` time NOT NULL,
  `regmodxx` date NOT NULL,
  `reghmodx` time NOT NULL,
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regestxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`comidxxx`,`comcodxx`,`comcscxx`,`comcsc2x`),
  KEY `cliidxxx` (`cliidxxx`),
  KEY `comtprxx` (`comtprxx`),
  KEY `proidxxx` (`proidxxx`),
  KEY `comtclxx` (`comtclxx`),
  KEY `comidxxx` (`comidxxx`,`comfecxx`,`regestxx`) COMMENT 'REPGER',
  KEY `FACTURACION` (`comidxxx`,`ccoidxxx`,`comfecxx`,`regestxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='cabecera contabilidad';

--
-- Disparadores `mcco2024`
--
DROP TRIGGER IF EXISTS `Trigger_delete_bodega_Cabecera_2024`;
DELIMITER //
CREATE TRIGGER `Trigger_delete_bodega_Cabecera_2024` AFTER DELETE ON `mcco2024`
 FOR EACH ROW DELETE FROM bdfaccab WHERE
comidxxx = old.comidxxx AND
comcodxx = old.comcodxx AND
comcscxx = old.comcscxx AND
comcsc2x = old.comcsc2x
//
DELIMITER ;
DROP TRIGGER IF EXISTS `Trigger_insert_bodega_cabecera_2024`;
DELIMITER //
CREATE TRIGGER `Trigger_insert_bodega_cabecera_2024` AFTER INSERT ON `mcco2024`
 FOR EACH ROW BEGIN  
DECLARE name_user varchar(100);
SELECT USRNOMXX INTO name_user FROM GRM.SYS00001 WHERE USRIDXXX=new.regusrxx;
IF new.comidxxx ='C' OR new.comidxxx='F' THEN
   INSERT INTO bdfaccab
		(comidxxx,comcodxx,comcscxx,comcsc2x,comfecxx,comperxx,
         ccoidxxx,ccoid2xx,usdvalxx,usdflagx,factrmxx,comtclxx,
         cliidxxx,comtprxx,proidxxx,comtrcxx,recidxxx,siaidxxx,
         comvlrxx,combretx,comvlr01,comvlr02,comifxxx,comipxxx,
         comivaxx,comfecvc,commemod,commemof,retefuen,reteivax,
         comprnxx,comcodc2,faclisdt,tipfacxx,regusrxx,regestxx,username)
	VALUES
		(new.comidxxx,new.comcodxx,new.comcscxx,new.comcsc2x,
         new.comfecxx,new.comperxx,new.ccoidxxx,new.ccoid2xx,
         new.usdvalxx,new.usdflagx,new.factrmxx,new.comtclxx,
         new.cliidxxx,new.comtprxx,new.proidxxx,new.comtrcxx,
         new.recidxxx,new.siaidxxx,new.comvlrxx,new.combretx,
         new.comvlr01,new.comvlr02,new.comifxxx,new.comipxxx,
         new.comivaxx,new.comfecvc,new.commemod,new.commemof,
         new.retefuen,new.reteivax,new.comprnxx,new.comcodc2,
         new.faclisdt,new.tipfacxx,new.regusrxx,new.regestxx,name_user);
END IF;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `Trigger_update_bodega_cabecera_2024`;
DELIMITER //
CREATE TRIGGER `Trigger_update_bodega_cabecera_2024` AFTER UPDATE ON `mcco2024`
 FOR EACH ROW BEGIN
DECLARE name_user varchar(100);

SELECT USRNOMXX INTO name_user FROM GRM.SYS00001 WHERE USRIDXXX=new.regusrxx;

IF new.comidxxx ='C' OR new.comidxxx='F' THEN
       
UPDATE bdfaccab SET
comidxxx = new.comidxxx ,
comcodxx = new.comcodxx ,
comcscxx = new.comcscxx ,
comcsc2x = new.comcsc2x ,
comfecxx = new.comfecxx ,
comperxx = new.comperxx ,
ccoidxxx = new.ccoidxxx ,
ccoid2xx = new.ccoid2xx ,
usdvalxx = new.usdvalxx ,
usdflagx = new.usdflagx ,
factrmxx = new.factrmxx ,
comtclxx = new.comtclxx ,
cliidxxx = new.cliidxxx ,
comtprxx = new.comtprxx ,
proidxxx = new.proidxxx ,
comtrcxx = new.comtrcxx ,
recidxxx = new.recidxxx ,
siaidxxx = new.siaidxxx ,
comvlrxx = new.comvlrxx ,
combretx = new.combretx ,
comvlr01 = new.comvlr01 ,
comvlr02 = new.comvlr02 ,
comifxxx = new.comifxxx ,
comipxxx = new.comipxxx ,
comivaxx = new.comivaxx ,
comfecvc = new.comfecvc ,
commemod = new.commemod ,
commemof = new.commemof ,
retefuen = new.retefuen ,
reteivax = new.reteivax ,
comprnxx = new.comprnxx ,
comcodc2 = new.comcodc2 ,
faclisdt = new.faclisdt ,
tipfacxx = new.tipfacxx ,
regusrxx = new.regusrxx ,
regestxx = new.regestxx ,
username = name_user
WHERE
    comidxxx = new.comidxxx AND
    comcodxx = new.comcodxx AND
    comcscxx = new.comcscxx AND
    comcsc2x = new.comcsc2x;

    END IF;
END
//
DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
