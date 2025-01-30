CREATE TABLE HPOI2025 (
    HPOCIDXX BIGINT(12) NOT NULL COMMENT 'ID de la cabecera siempre inicia con el año (MessageHeader.ID)',
    HPOIIDXX VARCHAR(35) NOT NULL COMMENT 'Identificador de la importación (ImportDeclaration.ID)',
    HPOICONV BIGINT(10) NOT NULL COMMENT 'Atributo changeOrdinalNumberValue, número que indica la posición de cambio de secuencia cuando la importación se transmite (ImportDeclaration)',
    HPOIBONV BIGINT(10) NOT NULL COMMENT 'Atributo baseChangeOrdinalNumberValue, número que indica la posición de cambio de la importación (ImportDeclaration)',
    HPOIACDX VARCHAR(70) NOT NULL COMMENT 'Identificador del importador (ImportDeclaration.CustomsAuthorityCustomsDeclarationID)',
    HPOICBRX VARCHAR(35) NOT NULL COMMENT 'Identificador del broker (ImportDeclaration.CustomsBrokerReferenceID)',
    HPOICBTM VARCHAR(35) NOT NULL COMMENT 'Identificador del medio de transporte (ImportDeclaration.CrossBorderTransportMeansID)',
    HPOICBJU VARCHAR(20) NOT NULL COMMENT 'Identificador del viaje (ImportDeclaration.CrossBorderJourneyID)',
    HPOIITME VARCHAR(35) NOT NULL COMMENT 'Identificador del medio de transporte dentro del país importador (ImportDeclaration.InlandTransportMeansID)',
    HPOIIMTC VARCHAR(5) NOT NULL COMMENT 'Código del tipo de importación (ImportDeclaration.ImportTypeCode)',
    HPOIIDTC VARCHAR(5) NOT NULL COMMENT 'Código del tipo de declaración (ImportDeclaration.ImportDeclarationTypeCode)',
    HPOICACC VARCHAR(3) NOT NULL COMMENT 'Código de la autoridad aduanera (ImportDeclaration.CustomsAuthorityCountryCode)',
    HPOIECCO VARCHAR(3) NOT NULL COMMENT 'Código del país exportador (ImportDeclaration.ExportingCountryCode)',
    HPOIDCCO VARCHAR(3) NOT NULL COMMENT 'Código del país destino (ImportDeclaration.DestinationCountryCode)',
    HPOIDRCO VARCHAR(6) NOT NULL COMMENT 'Código de la región de la importación (ImportDeclaration.DestinationRegionCode)',
    HPOIIPRC VARCHAR(6) NOT NULL COMMENT 'Código de la representación de las partes involucradas en la importación (ImportDeclaration.ImportPartyRepresentationCode)',
    HPOICPSC VARCHAR(6) NOT NULL COMMENT 'Código de representación del estado de la importación (ImportDeclaration.CustomsProcessingStatusCode)',
    HPOICBTX VARCHAR(2) NOT NULL COMMENT 'Código del modo de transporte de la importación (ImportDeclaration.CrossBorderTransportModeCode)',
    HPOICBTC VARCHAR(3) NOT NULL COMMENT 'Código del modo de transporte con el que se cruza la frontera (ImportDeclaration.CrossBorderTransportMeansTypeCode)',
    HPOICBTD VARCHAR(17) NOT NULL COMMENT 'Descripción del modo de transporte con el que se cruza la frontera (ImportDeclaration.CrossBorderTransportMeansDescription)',
    HPOICBNC VARCHAR(3) NOT NULL COMMENT 'Código de representación de la nacionalidad del transporte (ImportDeclaration.CrossBorderTransportMeansNationalityCountryCode)',
    HPOIITMC VARCHAR(2) NOT NULL COMMENT 'Codificación de la nacionalidad del medio de transporte que lleva la mercancía a la frontera (ImportDeclaration.InlandTransportModeCode)',
    HPOIITNC VARCHAR(2) NOT NULL COMMENT 'Codificación de la nacionalidad del transporte que lleva la mercancía a la frontera (ImportDeclaration.InlandTransportMeansNationalityCountryCode)',
    HPOIIBTT VARCHAR(2) NOT NULL COMMENT 'Código de representación del tipo de transacción de la importación (ImportDeclaration.ImportBusinessTransactionTypeCode)',
    HPOICAIN TINYTEXT NOT NULL COMMENT 'Indica si la declaración fue cancelada (ImportDeclaration.CancelledIndicator)',
    HPOICBII TINYTEXT NOT NULL COMMENT 'Especificación del porqué se canceló la declaración (ImportDeclaration.CustomsBrokerInitiatedIndicator)',
    HPOIDDTI DATETIME NOT NULL COMMENT 'Punto en el tiempo donde la declaración fue creada (ImportDeclaration.DeclarationDateTime)',
    HPOIDDTZ VARCHAR(10) NOT NULL COMMENT 'Atributo timeZoneCode, indica la zona horaria (ImportDeclaration.DeclarationDateTime)',
    HPOIDDTD TINYTEXT NOT NULL COMMENT 'Atributo daylightSavingTimeIndicator, indica si es zona de verano o no (ImportDeclaration.DeclarationDateTime)',
    HPOIADTI DATETIME NOT NULL COMMENT 'Fecha y hora de la declaración fue aceptada (ImportDeclaration.AcceptanceDateTime)',
    HPOIADTZ VARCHAR(10) NOT NULL COMMENT 'Atributo timeZoneCode, indica la zona horaria (ImportDeclaration.AcceptanceDateTime)',
    HPOIADTD TINYTEXT NOT NULL COMMENT 'Atributo daylightSavingTimeIndicator, indica si es zona de verano o no (ImportDeclaration.AcceptanceDateTime)',
    HPOIICCX VARCHAR(3) NOT NULL COMMENT 'Código del incoterm (ImportDeclaration.Incoterms.ClassificationCode)',
    HPOIITLN VARCHAR(28) NOT NULL COMMENT 'Nombre de la locación de transferencia del incoterm (ImportDeclaration.Incoterms.TransferLocationName)',
    HPOILLNV BIGINT(8) NOT NULL COMMENT 'Número de la lista de importación (ImportDeclaration.LoadingListNumberValue)',
    HPOITPNV BIGINT(8) NOT NULL COMMENT 'Número total de paquetes de la importación (ImportDeclaration.TotalPackageNumberValue)',
    HPOITGWQ DECIMAL(17,5) NOT NULL COMMENT 'Peso bruto de la importación (ImportDeclaration.TotalGrossWeightQuantity)',
    HPOITGWU VARCHAR(3) NOT NULL COMMENT 'Atributo unitCode, código de la unidad del peso bruto de la importación (ImportDeclaration.TotalGrossWeightQuantity)',
    HPOITNWQ DECIMAL(17,5) NOT NULL COMMENT 'Peso neto de la importación (ImportDeclaration.TotalNetWeightQuantity)',
    HPOITNWU VARCHAR(3) NOT NULL COMMENT 'Atributo unitCode, código de la unidad del peso neto de la importación (ImportDeclaration.TotalNetWeightQuantity)',
    HPOILDLI VARCHAR(13) NOT NULL COMMENT 'Identificador del lugar de salida de la importación (ImportDeclaration.Location.DepartureLocationID)',
    HPOILDLS VARCHAR(3) NOT NULL COMMENT 'Atributo schemeAgencyID, identificador del lugar de salida de la importación (ImportDeclaration.Location.DepartureLocationID)',
    HPOIALI VARCHAR(13) NOT NULL COMMENT 'Identificador del lugar de arribo de la importación (ImportDeclaration.Location.ArrivalLocationID)',
    HPOIALS VARCHAR(3) NOT NULL COMMENT 'Atributo schemeAgencyID, identificador del lugar de arribo de la importación (ImportDeclaration.Location.ArrivalLocationID)',
    HPOILFAL VARCHAR(13) NOT NULL COMMENT 'Identificador del primer lugar de arribo de la importación (ImportDeclaration.Location.FirstArrivalLocationID)',
    HPOILFAS VARCHAR(3) NOT NULL COMMENT 'Atributo schemeAgencyID, identificador del primer lugar de arribo de la importación (ImportDeclaration.Location.FirstArrivalLocationID)',
    HPOILGLT VARCHAR(40) NOT NULL COMMENT 'Texto que representa el lugar donde está localizado (ImportDeclaration.Location.GoodsLocationText)',
    HPOILLLT VARCHAR(40) NOT NULL COMMENT 'Texto que representa el lugar donde está cargando (ImportDeclaration.Location.LoadingLocationText)',
    HPOILULT VARCHAR(40) NOT NULL COMMENT 'Texto que representa el lugar donde está descargando (ImportDeclaration.Location.UnloadingLocationText)',
    HPOIDPII VARCHAR(32) NOT NULL COMMENT 'Identificador del declarante para enviar los datos (ImportDeclaration.DeclarantParty.InternalID)',
    HPOIDPTA VARCHAR(20) NOT NULL COMMENT 'Identificador del impuesto (ImportDeclaration.DeclarantParty.TaxID)',
    HPOIDPON TINYTEXT NOT NULL COMMENT 'Nombre de la organización que representa (ImportDeclaration.DeclarantParty.Address.OrganisationFormattedName)',
    HPOIDPPC VARCHAR(3) NOT NULL COMMENT 'Código del país del declarante (ImportDeclaration.DeclarantParty.Address.PhysicalAddress.CountryCode)',
    HPOIDPPR VARCHAR(6) NOT NULL COMMENT 'Código de la región (ImportDeclaration.DeclarantParty.Address.PhysicalAddress.RegionCode)',
    HPOIDPPS VARCHAR(10) NOT NULL COMMENT 'Código postal (ImportDeclaration.DeclarantParty.Address.PhysicalAddress.StreetPostalCode)',
    HPOIDPPI VARCHAR(40) NOT NULL COMMENT 'Nombre de la ciudad (ImportDeclaration.DeclarantParty.Address.PhysicalAddress.CityName)',
    HPOIDPPA VARCHAR(40) NOT NULL COMMENT 'Nombre adicional de la ciudad (ImportDeclaration.DeclarantParty.Address.PhysicalAddress.AdditionalCityName)',
    HPOIDPPT VARCHAR(60) NOT NULL COMMENT 'Dirección (ImportDeclaration.DeclarantParty.Address.PhysicalAddress.StreetName)',
    HPOIEPII VARCHAR(32) NOT NULL COMMENT 'Identificador del importador para enviar los datos (ImportDeclaration.ImporterParty.InternalID)',
    HPOIEPTA VARCHAR(32) NOT NULL COMMENT 'Identificador de la autoridad de los impuestos (ImportDeclaration.ImporterParty.TaxID)',
    HPOIEPOF TINYTEXT NOT NULL COMMENT 'Nombre de la organización que representa al importador (ImportDeclaration.ImporterParty.Address.OrganisationFormattedName)',
    HPOIEPCC VARCHAR(3) NOT NULL COMMENT 'Código del país del declarante (ImportDeclaration.ImporterParty.Address.PhysicalAddress.CountryCode)',
    HPOIEPRC VARCHAR(6) NOT NULL COMMENT 'Código de la región del importador (ImportDeclaration.ImporterParty.Address.PhysicalAddress.RegionCode)',
    HPOIEPPC VARCHAR(10) NOT NULL COMMENT 'Código postal del importador (ImportDeclaration.ImporterParty.Address.PhysicalAddress.StreetPostalCode)',
    HPOIEPCI VARCHAR(40) NOT NULL COMMENT 'Nombre de la ciudad del importador (ImportDeclaration.ImporterParty.Address.PhysicalAddress.CityName)',
    HPOIEPCA VARCHAR(40) NOT NULL COMMENT 'Nombre adicional de la ciudad del importador (ImportDeclaration.ImporterParty.Address.PhysicalAddress.AdditionalCityName)',
    HPOIEPST VARCHAR(60) NOT NULL COMMENT 'Dirección del importador (ImportDeclaration.ImporterParty.Address.PhysicalAddress.StreetName)',
    HPOIRPII VARCHAR(32) NOT NULL COMMENT 'Identificador del representante del importador para enviar los datos (ImportDeclaration.RepresentativeDeclarantParty.InternalID)',
    HPOIRPTX VARCHAR(32) NOT NULL COMMENT 'Identificador de la autoridad de los impuestos (ImportDeclaration.RepresentativeDeclarantParty.TaxID)',
    HPOIRPTA TINYTEXT NOT NULL COMMENT 'Nombre de la organización que representa al representante importador (ImportDeclaration.RepresentativeDeclarantParty.Address.OrganisationFormattedName)',
    HPOIRPCC VARCHAR(3) NOT NULL COMMENT 'Código del país del representante declarante (ImportDeclaration.RepresentativeDeclarantParty.Address.PhysicalAddress.CountryCode)',
    HPOIRPCR VARCHAR(6) NOT NULL COMMENT 'Código de la región del representante importador (ImportDeclaration.RepresentativeDeclarantParty.Address.PhysicalAddress.RegionCode)',
    HPOIRPCP VARCHAR(10) NOT NULL COMMENT 'Código postal del representante importador (ImportDeclaration.RepresentativeDeclarantParty.Address.PhysicalAddress.StreetPostalCode)',
    HPOIRPCI VARCHAR(40) NOT NULL COMMENT 'Nombre de la ciudad del representante importador (ImportDeclaration.RepresentativeDeclarantParty.Address.PhysicalAddress.CityName)',
    HPOIRPAC VARCHAR(40) NOT NULL COMMENT 'Nombre adicional de la ciudad del representante importador (ImportDeclaration.RepresentativeDeclarantParty.Address.PhysicalAddress.AdditionalCityName)',
    HPOIRPST VARCHAR(60) NOT NULL COMMENT 'Dirección del representante importador (ImportDeclaration.RepresentativeDeclarantParty.Address.PhysicalAddress.StreetName)',
    HPOIEXII VARCHAR(32) NOT NULL COMMENT 'Identificador del exportador para enviar los datos (ImportDeclaration.ExporterParty.InternalID)',
    HPOIEXTA VARCHAR(32) NOT NULL COMMENT 'Identificador de la autoridad de los impuestos (ImportDeclaration.ExporterParty.TaxID)',
    HPOIEXOF TINYTEXT NOT NULL COMMENT 'Nombre de la organización que representa al representante exportador (ImportDeclaration.ExporterParty.Address.OrganisationFormattedName)',
    HPOIEXCC VARCHAR(3) NOT NULL COMMENT 'Código del país del exportador (ImportDeclaration.ExporterParty.Address.PhysicalAddress.CountryCode)',
    HPOIEXRC VARCHAR(6) NOT NULL COMMENT 'Código de la región del exportador (ImportDeclaration.ExporterParty.Address.PhysicalAddress.RegionCode)',
    HPOIEXPC VARCHAR(10) NOT NULL COMMENT 'Código postal del exportador (ImportDeclaration.ExporterParty.Address.PhysicalAddress.StreetPostalCode)',
    HPOIEXCN VARCHAR(40) NOT NULL COMMENT 'Nombre de la ciudad del exportador (ImportDeclaration.ExporterParty.Address.PhysicalAddress.CityName)',
    HPOIEXAC VARCHAR(40) NOT NULL COMMENT 'Nombre adicional de la ciudad del exportador (ImportDeclaration.ExporterParty.Address.PhysicalAddress.AdditionalCityName)',
    HPOIEXSN VARCHAR(60) NOT NULL COMMENT 'Dirección del representante importador (ImportDeclaration.ExporterParty.Address.PhysicalAddress.StreetName)',
    REGUSRXX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
    REGFECXX DATE NOT NULL COMMENT 'Fecha de Creacion del Registro',
    REGHORXX TIME NOT NULL COMMENT 'Hora de Creacion del Registro',
    REGUSRMX VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
    REGFECMX DATE NOT NULL COMMENT 'Fecha de Modificacion del Registro',
    REGHORMX TIME NOT NULL COMMENT 'Hora de Modificaion del Registro',
    REGESTXX ENUM('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
    REGSTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',

    PRIMARY KEY (`HPOCIDXX`, `HPOIIDXX`),
    KEY IDX_HPOCIDXX(HPOCIDXX)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Import Declaration Table';
