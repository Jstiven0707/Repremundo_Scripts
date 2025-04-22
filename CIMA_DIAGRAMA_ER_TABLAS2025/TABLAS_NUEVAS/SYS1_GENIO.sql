CREATE TABLE `SYS00001` (
  `USRIDXXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID Usuario',
  `USRID2XX` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID Usuario Padre',
  `USRID3XX` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID Usuario Subdirector Avianca',
  `USROPEAP` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Permiso Operaciones App',
  `USRSEGAP` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Permiso Seguimientos App',
  `USRALERP` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Permiso Alertas App',
  `USRNOTIP` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Permiso Noticias App',
  `USRDASLB` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Dashboard SLB',
  `USRREGMA` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO',
  `USRDASCO` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Menu Rio - Contenedores [REPRE]',
  `USRREGFT` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Permiso registro fotografico app',
  `SUCIDXXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sucursal Usuario',
  `USRNOMXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nombre Usuario',
  `USRPNOMX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Primer Nombre',
  `USRSNOMX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Segundo Nombre',
  `USRPAPEX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Primer Apellido',
  `USRSAPEX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Segundo Apellido',
  `CARIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id del Cargo Organizacional - Heinsohn',
  `USRBKBXX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario BackBone',
  `TIPUSBKB` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Usuario BackBone',
  `BKBSALTX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Salt del password de Backbone',
  `BKBHSHXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hash del password de backbone',
  `CODACTXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Cdigo de Activacion para RIO',
  `USRIPADX` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Lider de verificacion',
  `USRLOGXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Ingreso',
  `USRNICKX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Nickname',
  `USRPASXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Password Ingreso',
  `USRHSHXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hash Password',
  `USRSUPXX` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `USREMAXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Mail del Usuario',
  `USREMPSI` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Asignado a la Empresa Siaco',
  `USREMPRE` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Asignado a la Empresa Repremundo',
  `USREMPMA` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Asignado a la Empresa Mapcargo',
  `USREMPLO` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Asignado a la Empresa Logistica',
  `USREMPRV` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Pertenece Empresa RIV',
  `USREMPRS` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Pertenece Empresa RIs',
  `USREMPCO` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Pertenece Empresa Comercializadora',
  `USREMPCF` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Pertenece Empresa CIF',
  `USREMPJD` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Pertenece JDCM',
  `USREMPIN` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Pertenece INNTEC',
  `USREMPOP` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Pertenece Empresa OPEN',
  `USRDEPXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Deposito de Repremundo que Pertenece',
  `USRCOMXX` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Comprobantes Contables que Puede Crear el Usuario',
  `USRLPXXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Historial Passwords',
  `USRFCPXX` date NOT NULL COMMENT 'Fecha Prox Cambio Password',
  `USRDESKA` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuarios Autorizados para Ver sus Escritorios',
  `USRDESKX` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que Esta Viendo el Escritorio',
  `USRAUXFX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuarios Auxiliares de Formularios',
  `USRTARXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Perfiles Usuario',
  `USRCRTAR` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Asuntos de Tareas que Puede Crear el Usuario',
  `USREMPXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nit de la Empresa a la Que Pertenece el Usuario PSE',
  `USRTIPXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Usuario',
  `USRTIP2X` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de usuario 2',
  `USRASUAS` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Asuntos Asignados en Multitarea',
  `USRCLIAS` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Clientes Asignados a Multitarea',
  `USRASFXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Asuntos Fijos que Solucionara el Usuario',
  `USRLICXX` varchar(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Licencia del Usuario',
  `USRIPXXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'IP del Usuario',
  `USRHOSTX` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Host Desde el Cual se Conecto el Usuario',
  `USRLOGMA` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Mail',
  `USRPASMA` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Password Mail',
  `USRNIDXX` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nivel del Director de Cuenta',
  `USRSDEXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sucursales de los DO de Exportaciones que Digita el Director de Cuenta',
  `USRCLIEX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Relacion del Usuario Externo con los Clientes pare el Tracking Operativo',
  `USRMDTTR` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Modo de Agrupacion Tracking de Tareas Recibidas',
  `USRPSEXX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creado Desde PSE',
  `GRUPIDXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Grupos del Usuario',
  `USRACTXX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Actualizado desde Empleados',
  `CLIENTEX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Es Cliente',
  `USRPERFI` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Perfil',
  `USREMPGR` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Empresa del Grupo a la que Pertenece el Usuario',
  `USRTELGR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Telefono del Usuario',
  `USREXTGR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Extension del Usuario',
  `USRCELUL` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'celular del usuario',
  `USRFOTOX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Path de Fotos del Usuario',
  `SNCONECT` int NOT NULL DEFAULT '0' COMMENT '1 - Indica si el Usuario esta conectado MiniWMS',
  `USRFAILC` int NOT NULL COMMENT 'Contador Token Activos Fijos',
  `USRADMRI` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Usuario Administrador RIO',
  `USRACETE` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera que indica si se han aceptado los terminos y condiciones de RIO',
  `NOTICLIE` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'notificaciones cliente',
  `ISSOCIAL` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera que indica si es una conexion desde red social',
  `BIOKEY1X` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Llave Face Id 1 para el APP',
  `BIOKEY2X` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Llave Face Id 2 para el APP',
  `APLTIPME` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Aplica Tipo de Mercancia',
  `CLIHUBXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Id hubspot',
  `USRREQEL` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Perfil de Requisición',
  `USRREQAL` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Perfil de RQ Todo',
  `USRREQAU` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Perfil de RQ Autorizador',
  `LLFORSIG` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'SI' COMMENT 'Bandera que indica si lleno el formulario de SIG',
  `USRALIXX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'INDICA SI ES UN USUARIO ALIADO',
  `USRAUTPR` enum('','SI') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Bandera que indica que el usuario puede autorizar procesos',
  `USRPERMI` enum('','SI') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT 'Bandera que indica que puede diligenciar PO migo y posicion',
  `AUTSOLXX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'permiso de autorizacion masiva para el APP',
  `BLOCKUSR` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Bloqueo usuario',
  `BLOCKFLG` int NOT NULL COMMENT 'Flag bloqueo',
  `CAPTCHAX` int NOT NULL DEFAULT '1' COMMENT 'Flag aplica captcha',
  `USRADMGE` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera que indica si es administrador en GENIO',
  `BANINGGE` enum('NO','SI') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera que indica si alguna vez a ingresado a CIMA',
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `REGUSRXX` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que Crea el Registro',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha de Creacion del Registro',
  `REGMODXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha de Ultima Modificacion del Registro',
  `REGHORXX` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hora de Ultima Modificacion del Registro',
  `REGESTXX` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGUSRMX` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'USUARIO DE MODIFICACION',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de modificacion',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Usuarios del Sistema';

--
-- Disparadores `SYS00001`
--
DELIMITER $$
CREATE TRIGGER `SYS00001_INSERT` BEFORE INSERT ON `SYS00001` FOR EACH ROW BEGIN
    	SET NEW.`REGFECMR`= NOW();
    	SET NEW.`REGHORMR`= NOW();
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `SYS00001_UPDATE` BEFORE UPDATE ON `SYS00001` FOR EACH ROW BEGIN
    	SET NEW.`REGFECMR`= NOW();
    	SET NEW.`REGHORMR`= NOW();
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `SYS00001`
--
ALTER TABLE `SYS00001`
  ADD PRIMARY KEY (`USRIDXXX`),
  ADD UNIQUE KEY `USRLOGXX` (`USRLOGXX`);
COMMIT;
