--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDDI2025`
--

DROP TABLE IF EXISTS `MDDI2025`;
CREATE TABLE `MDDI2025` (
  `DOIIDXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'DO Impo',
  `DOISFIDX` char(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Sufijo',
  `ADMIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Sucursal',
  `DOIFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Apertura DO',
  `DOIPEDXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Pedido',
  `SUBIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Subp',
  `DOIID2XX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'DO Anterior',
  `SUCEMAXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Email SIA _ Importador',
  `DIAEMAXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Email DIAN',
  `LIMFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Liquidacion',
  `LIMHORXX` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Hora liquidacion',
  `TDEIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Tipo Declaracion',
  `TDVIDXXX` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Tipo Declaracion DAV',
  `DAAIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Deposito',
  `ODIIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Aduana',
  `PAIIDXXX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del pais',
  `DEPIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Depto',
  `LIMFEC2X` date NOT NULL DEFAULT '0000-00-00',
  `MTRIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Medio Transporte',
  `TRAIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Transportador',
  `TRAODIXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `TRADESXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Transportador',
  `MONIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Moneda Gastos',
  `MONIDSGX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Moneda Seguro',
  `BANIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Pais Transportador',
  `LINIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Lugar Ingreso',
  `DGEMCXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Manifiesto',
  `DGEFMCXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Manifiesto',
  `DGEDTXXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Documento Transporte',
  `DGEFDTXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Documento Transporte',
  `FACIDXXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Factura',
  `FACFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Factura',
  `CETIDXXX` char(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Termino',
  `SUCNITXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'NIT SIA _ Importador',
  `SUCDESXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'SIA _ Importador',
  `SUCDIVXX` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Digito Verificacion SIA _ Importador',
  `SUCFAXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Fax SIA _ Importador',
  `USRID2XX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Director',
  `USRNOMXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Declarante Autorizado',
  `DIRECTOR` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Director',
  `COMPARTE` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Comparte Con',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'NIT Importador',
  `CLIDIVXX` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Digito Verificacion Importador',
  `CLINOMXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Importador',
  `CLIDIRXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Direccion Importador',
  `CLITELXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Telefono Importador',
  `CLIPAIID` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Pais Importador',
  `CLIDEPID` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Depto Importador',
  `CLICIUID` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Ciudad Importador',
  `TCLIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Tipo Importador',
  `AECIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Actividad Economica Importador',
  `PIENOMXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Proveedor',
  `PIEDIRXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Direccion Proveedor',
  `PIEIDXXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Proveedor',
  `PIEPAIID` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Pais Compra',
  `PIECIUXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Ciudad Proveedor',
  `PIEFAXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Fax Proveedor',
  `PIEEMAXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Email Proveedor',
  `DGETRMXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'TRM',
  `MODIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Modalidad',
  `SUBCUOXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Cuotas',
  `ACEIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Acuerdo',
  `FPIIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Forma Pago',
  `TIMIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Cod Tipo Importacion',
  `SUBPERXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Periodicidad',
  `SUBPAIID` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Pais Origen',
  `SUBPAII2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Pais Compra',
  `LIMPBRXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Peso Bruto',
  `LIMPNEXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Peso Neto',
  `LIMBULXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Bultos',
  `LIMCANXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Cantidad',
  `UMCIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Unidad',
  `TEMIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Tipo Embalaje',
  `LIMVLRXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Fob',
  `LIMFLEXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Flete',
  `LIMSEGXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Seguro',
  `LIMCONXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Conexo',
  `LIMAJUXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Ajuste',
  `LIMNETXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Valor Aduana',
  `LIMSUBXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Nro Subpartidas',
  `ARCIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Subpartida',
  `RIMIDXXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Nro Registro',
  `TRIIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Tipo Registro',
  `RIMANOXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Anio',
  `ODIIDXX2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Oficina',
  `LIMCIFXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Arancel COP',
  `ARCPORXX` decimal(11,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Arancel',
  `LIMGRAXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP',
  `LIMSUBTX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado IVA COP',
  `ARCIVAXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje IVA',
  `ARCCOMXX` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Complementario',
  `ARCSUPXX` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Suplementario',
  `LIMIVAXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base IVA COP',
  `LIMDESXX` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Descripcion Mercancias',
  `SUBORDEN` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Orden Subp',
  `RIMPVXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Programa',
  `SUBPVPRO` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Nro Interno Producto',
  `CDPIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Condicion Proveedor',
  `NCIIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Nivel Comercial',
  `LIMSTKXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Autoadhesivo',
  `LIMSTKAX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Autoadhesivo Automatico',
  `LIMFSTKX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Autoadhesivo',
  `LIMHSTKX` time NOT NULL DEFAULT '00:00:00' COMMENT 'Hora Autoadhesivo',
  `LIMFACEX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Aceptacion',
  `LIMHACEX` time NOT NULL DEFAULT '00:00:00' COMMENT 'Hora Aceptacion',
  `LIMACEXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Aceptacion',
  `LIMSTKAN` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Importacion Anterior',
  `LIMFSTKA` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Importacion Anterior',
  `LIMLEVXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Levante',
  `LIMFLEVX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Levante',
  `LIMILEVX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Levante Inicial',
  `LIMIFLEV` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Levante Inicial',
  `LIMHLEVX` time NOT NULL DEFAULT '00:00:00' COMMENT 'Hora Levante',
  `LIMFHDLE` datetime NOT NULL COMMENT 'Fecha y Hora en que se diligencio Levante',
  `LIMESCTX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'No. Envio de Seriales CT',
  `LIMTLEVX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Tipo Levante',
  `LIMNFMXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Formulario Manual Sidunea',
  `LIMFFMXX` date NOT NULL COMMENT 'Fecha de Generación Formulario Manual',
  `LIMHFMXX` time NOT NULL COMMENT 'Hora de Generación Formulario Manual',
  `SUCTIPXX` char(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Tipo Usuario',
  `SUCCODXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod DIAN',
  `LIMPANXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Pagos Anteriores',
  `LIMRPANX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Recibo Pago Anterior',
  `LIMFPANX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Pago Anterior',
  `LIMVARXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Varios',
  `ODIIDXX3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Aduana Importacion Anterior',
  `ODIIDXX4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Aduana Exportacion Anterior',
  `LIMEXPXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Exportacion Anterior',
  `LIMFEXPX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Exportacion Anterior',
  `TCLCSCXX` char(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Correccion Legalizacion',
  `TCLESPXX` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Especifique Correcion Legalizacion',
  `POLIDXXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Poliza',
  `POLFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Poliza',
  `POLINIXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Poliza Inicia',
  `POLFINXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Poliza Finaliza',
  `POLMONXX` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT 'Monto Poliza',
  `CSEIDXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Compania Seguros',
  `LIMCONTR` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Contrato para temporal LP',
  `LIMEXPED` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Expediente para temporal LP',
  `POLFCANX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Cancelacion Poliza',
  `POLTIPXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Poliza',
  `LIMNCHAR` decimal(12,0) NOT NULL DEFAULT '0' COMMENT 'Caracteres',
  `REGSYNCM` datetime NOT NULL,
  `LIMFINTP` decimal(3,0) NOT NULL,
  `LIMFINTM` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMTOEXX` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha y Hora Transformacion o Ensamble',
  `LIMAAAXX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Autorizacion Agendamiento Aceptacion',
  `LIMEXIVI` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Envio XML Integracion VIGIA',
  `REGMODXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Modificado',
  `OINIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Oficina Incomex',
  `CLIUAPXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Nro UAP',
  `LIMOTRXX` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Otros',
  `LIMGRA2X` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP Arancel',
  `LIMGRAUS` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado USD Arancel',
  `LIMSUBT2` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP IVA',
  `LIMSUBUS` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado USD IVA',
  `SUBSALPO` decimal(11,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Salvaguardia',
  `SUBSALBA` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Salvaguardia',
  `SUBSALTI` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Tipo Salvaguardia',
  `SUBSALTL` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Salvaguardia',
  `SUBSALTP` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP Salvaguardia',
  `SUBSALUS` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado USD Salvaguardia',
  `SUBDCOPO` decimal(11,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Compensatorio',
  `SUBDCOBA` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Compensatorio',
  `SUBDCOTI` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Tipo Compensatorio',
  `SUBDCOTL` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Compensatorio',
  `SUBDCOTP` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP Compensatorio',
  `SUBDCOUS` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado USD Compensatorio',
  `SUBANTPO` decimal(11,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Antidumping',
  `SUBANTBA` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Antidumping',
  `SUBANTTI` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Tipo Antidumping',
  `SUBANTTL` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Antidumping',
  `SUBANTTP` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP Antidumping',
  `SUBANTUS` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado USD Antidumping',
  `SUBPANSA` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Sancion',
  `SUBPANOT` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Otros',
  `SUBSANPO` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Sancion',
  `SUBSANBA` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Sancion',
  `SUBSANTL` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Sancion',
  `SUBSANTP` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Pagar COP Sancion',
  `SUBRESPO` decimal(11,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Rescate',
  `SUBRESBA` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Rescate',
  `SUBRESTL` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Rescate',
  `SUBRESTP` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total pagar COP Rescate',
  `TOTALGEN` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total COP Generado',
  `SUBOTRPO` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje Otros',
  `SUBOTRBA` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base Otros',
  `SUBOTRTL` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total Liquidado COP Otros',
  `SIMPCOPO` decimal(11,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje consumo',
  `SIMPCOBA` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base consumo',
  `SIMPCOTL` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Generado consumo',
  `SIMPCOTP` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Pagado consumo',
  `SIMPINPO` decimal(11,5) NOT NULL DEFAULT '0.00000' COMMENT 'Porcentaje ingreso',
  `SIMPINBA` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base ingreso',
  `SIMPINTL` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Generado ingreso',
  `SIMPINTP` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Pagado ingreso',
  `SIMPCRCO` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod registro comerciante OCCRE',
  `TOTALPAG` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total COP Pagado',
  `TOTALPUS` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Total USD Pagado',
  `GRMSALDO` decimal(17,0) NOT NULL DEFAULT '0',
  `SUBOTRST` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Subtotal Otros',
  `SUBCUOVL` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT 'Valor Cuotas',
  `SUBID2XX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Subp Final',
  `FACID2XX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Factura Final',
  `SUBPRNDI` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Impresion DI',
  `LIMCTREG` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cod Control Temporales',
  `LIMCTPER` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Permanencia Control Temporales',
  `LIMCTFIN` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Finalizacion Control Temporales',
  `LIMCTSPE` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT 'Periodicidad Control Temporales',
  `LIMCTVEN` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Vence Cuota Control Temporales',
  `LIMCTVCU` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT 'Valor Cuota Control Temporales',
  `LIMCTCUO` decimal(4,0) NOT NULL DEFAULT '0' COMMENT 'Cuotas control Temporales',
  `LIMCTPCU` decimal(4,0) NOT NULL DEFAULT '0' COMMENT 'Siguiente Cuota Control Temporales',
  `LIMCTDIA` decimal(12,0) NOT NULL DEFAULT '0' COMMENT 'Dias Vence Siguiente Cuota Control Temporales',
  `LIMCTOBS` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Observaciones Control Temporales',
  `LIMRADXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Nro Radicado Siglo XXI',
  `LIMFRADX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Radicado',
  `LIMHRADX` time NOT NULL,
  `LIMROB1X` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Datos robot 1',
  `LIMROB2X` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Datos robot 1_2',
  `LIMRBACE` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Estado Acept Autom.',
  `LIMRBEDI` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBLEV` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBEDF` varchar(254) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBEDR` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBAER` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Resultado Robot Edi',
  `LIMRBLER` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBROP` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBROF` date NOT NULL,
  `LIMRBROH` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBROV` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBROR` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBLFR` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBAFR` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBADO` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBLDO` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LIMRBLAN` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `VALORPAG` decimal(19,2) NOT NULL COMMENT 'Valor Pagado',
  `DESBANCO` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Descripcio del Banco',
  `TRANSARC` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Genero Archivo de Tranferencia Mexichem',
  `LIMCSCXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Se utiliza en GRM para determinar si afecta o no la vigencia de TEMPORAL',
  `LIMLIQPR` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `AGRBEDFE` date NOT NULL,
  `AGRBEDHO` time NOT NULL,
  `AGRBACFE` date NOT NULL,
  `AGRBACHO` time NOT NULL,
  `AGRBLEFE` date NOT NULL,
  `AGRBLEHO` time NOT NULL,
  `LIMDOCSO` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Guarda SI Cuando el Robot Hace Documentos Soporte',
  `LIMACTXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero Acta de Inspeccion',
  `LIMFACTX` date NOT NULL COMMENT 'Fecha Acta de Inspeccion',
  `LIMSIPLA` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Fecha y Hora de Ejecucion de la Tarea Sistema Prevencion Lavado Activos',
  `LIMAEUAP` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Autorizacion Generar el EDI Importador UAP',
  `LIMACLEV` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Autorizacion Complementar levante (SI/NO)',
  `LIMRBEST` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado Robot 2',
  `LIMRFSPB` datetime NOT NULL,
  `LIMRFSLE` datetime NOT NULL,
  `LIMFCOIN` datetime NOT NULL,
  `LIMFACAN` datetime NOT NULL,
  `LIMNDEXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero DEX',
  `LIMFDEXX` date NOT NULL COMMENT 'Fecha DEX',
  `LIMACDEX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Acta de Destruccion',
  `LIMFACDE` date NOT NULL COMMENT 'Fecha Acta de Destruccion',
  `LIMDEMOX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Declaracion de Modificacion',
  `LIMFDEMO` date NOT NULL COMMENT 'Fecha Declaracion de Modificacion',
  `LIMDCUPV` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NO',
  `LIMAUTPV` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NORMAL',
  `LIMFTALX` datetime NOT NULL COMMENT 'Fecha y Hora de Ejecucion de la Tarea Actualizacion de levante',
  `LIMCCTXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Consecutivo carta TES',
  `LIMEXFSX` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Campo solicitado por OPEN',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Declaraciones Impo' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDDI2025`
--
ALTER TABLE `MDDI2025`
  ADD PRIMARY KEY (`DOIIDXXX`,`DOISFIDX`,`ADMIDXXX`,`SUBID2XX`,`SUBIDXXX`,`LIMACEXX`) USING BTREE,
  ADD KEY `DOIIDXXX` (`DOIIDXXX`) USING BTREE,
  ADD KEY `CLIIDXXX` (`CLIIDXXX`) USING BTREE,
  ADD KEY `ACEPT ANTERIOR` (`LIMSTKAN`) USING BTREE,
  ADD KEY `LIMACEXX` (`LIMACEXX`) USING BTREE,
  ADD KEY `ARCIDXXX` (`ARCIDXXX`) USING BTREE,
  ADD KEY `IND_REPREMUNDOCIF` (`DAAIDXXX`,`DGEDTXXX`,`DGEMCXXX`) USING BTREE;
COMMIT;