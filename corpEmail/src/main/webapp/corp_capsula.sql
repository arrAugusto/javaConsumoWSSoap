-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2021 a las 11:10:58
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `corp_capsula`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `spAllProveedores` ()  BEGIN
SELECT 

razon_social, 
nit, 
dominio_email, 
telefono, 
direccion, 
id_proveedor,
fecha_creacion FROM proveedor_email;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spAllUser` ()  BEGIN
SELECT 
id_usuario,
nom_usuario, ape_usuario, name_email, pass_email, telefono, es_activo, nivel
FROM perfil_usuario;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spConsultProveedor` (IN `idProve` INT)  BEGIN
SELECT id_proveedor, razon_social, dominio_email, nit, telefono, direccion, fecha_creacion FROM proveedor_email WHERE id_proveedor = idProve;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spConsultUser` (IN `idUser` INT)  BEGIN
SELECT 
prov.nit, 
perfil.nom_usuario, 
perfil.ape_usuario, 
perfil.name_email, 
perfil.pass_email, 
perfil.telefono,
perfil.nivel,
perfil.id_usuario,
 prov.razon_social

FROM perfil_usuario perfil
INNER JOIN proveedor_email prov ON prov.id_proveedor = perfil.id_proveedor
WHERE id_usuario = idUser;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteProveedor` (IN `idProve` INT)  BEGIN
DELETE FROM proveedor_email WHERE id_proveedor = idProve;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleteUser` (IN `id_user` INT)  BEGIN
UPDATE perfil_usuario SET es_activo = 0 WHERE id_usuario = id_user;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spNewCorreoeEnvia` (IN `idUserEnvia` INT, IN `idUserRecibe` INT, IN `asuntEnvia` TEXT, IN `correoCuerpo` TEXT)  BEGIN

INSERT INTO `corp_capsula`.`email_enviado`
(
`id_Us_Envio`,
`id_Us_Recibido`,
`asunto`,
`cuerpoCorreo`,
`fecha_enviado`,
`estado`)
VALUES
(
idUserEnvia,
idUserRecibe,
asuntEnvia,
correoCuerpo,
SYSDATE(),
1);

CALL spNewCorreoRecibido (idUserEnvia, idUserRecibe);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spNewCorreoRecibido` (IN `idEmailEnvia` INT, IN `idDestinatario` TEXT)  BEGIN
INSERT INTO `corp_capsula`.`email_recibido`
(
`id_EmailEnvio`,
`id_Destinatario`,
`fecha_recepcion`,
`estado`)
VALUES
(
idEmailEnvia,
idDestinatario,
SYSDATE(),
1);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spNewProveedor` (IN `razon_socialParam` TEXT, IN `dominio_emailParam` TEXT, IN `nitParam` TEXT, IN `telefonoParam` TEXT, IN `direccionParam` TEXT)  BEGIN
INSERT INTO `corp_capsula`.`proveedor_email`
(
`razon_social`,
`dominio_email`,
`nit`,
`telefono`,
`direccion`,
`fecha_creacion`)
VALUES
(
razon_socialParam,
dominio_emailParam,
nitParam,
telefonoParam,
direccionParam,
sysdate());

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spNewUsuario` (IN `nit` TEXT, IN `nom_usuarioParam` TEXT, IN `ape_usuarioParam` TEXT, IN `name_emailParam` TEXT, IN `pass_emailParam` TEXT, IN `telefonoParam` TEXT, IN `nivelParam` INT)  BEGIN

SET @id_Proveedor= (SELECT id_proveedor FROM proveedor_email WHERE nit = nit);

INSERT INTO `corp_capsula`.`perfil_usuario`
(
`id_proveedor`,
`nom_usuario`,
`ape_usuario`,
`name_email`,
`pass_email`,
`telefono`,
`es_activo`,
`nivel`,
`fecha_creacion`)
VALUES (
@id_Proveedor,
nom_usuarioParam,
ape_usuarioParam, 
name_emailParam, 
pass_emailParam, 
telefonoParam, 
1, 
nivelParam, 
SYSDATE());

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateProveedor` (IN `razon_socialParam` TEXT, IN `dominio_emailParam` TEXT, IN `nitParam` TEXT, IN `telefonoParam` TEXT, IN `direccionParam` TEXT, IN `id_prove` INT)  BEGIN
UPDATE proveedor_email
SET   `razon_social` = razon_socialParam,
`dominio_email` = dominio_emailParam,
`nit` = nitParam,
`telefono` = telefonoParam,
`direccion` = direccionParam
WHERE id_proveedor = id_prove;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateUser` (IN `nom_usuarioParam` TEXT, IN `ape_usuarioParam` TEXT, IN `name_emailParam` TEXT, IN `pass_emailParam` TEXT, IN `telefonoParam` TEXT, IN `es_activoParam` INT, IN `nivelParam` INT, IN `idUser` INT)  BEGIN
UPDATE perfil_usuario SET
nom_usuario = nom_usuarioParam,
ape_usuario = ape_usuarioParam,
name_email = name_emailParam,
pass_email = pass_emailParam,
telefono = telefonoParam,
es_activo = es_activoParam,
nivel = nivelParam
WHERE id_usuario = idUser;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spUsuarioLogin` (IN `nameEmail` TEXT)  BEGIN
SELECT 
perfil.name_email, perfil.pass_email, perfil.telefono,
perfil.nom_usuario, perfil.ape_usuario, 
prov.dominio_email, prov.razon_social,
CONCAT(perfil.name_email,'@', prov.dominio_email) AS 'corpCorreo'

FROM perfil_usuario perfil
INNER JOIN proveedor_email prov ON prov.id_proveedor = perfil.id_proveedor
WHERE CONCAT(perfil.name_email,'@', prov.dominio_email) like nameEmail;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProveedor` (IN `razon_socialParam` TEXT, IN `dominio_emailParam` TEXT, IN `nitParam` TEXT, IN `telefonoParam` TEXT, IN `direccionParam` TEXT, IN `id_prove` INT)  BEGIN
UPDATE proveedor_email
SET   `razon_social` = razon_socialParam,
`dominio_email` = dominio_emailParam,
`nit` = nitParam,
`telefono` = telefonoParam,
`direccion` = direccionParam
WHERE id_proveedor = id_prove;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora_accessos`
--

CREATE TABLE `bitacora_accessos` (
  `id_bitacora_Accessos` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `transaccion` varchar(30) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_enviado`
--

CREATE TABLE `email_enviado` (
  `id_email_enviado` int(11) NOT NULL,
  `id_Us_Envio` int(11) NOT NULL,
  `id_Us_Recibido` int(11) NOT NULL,
  `asunto` varchar(100) DEFAULT NULL,
  `cuerpoCorreo` varchar(500) DEFAULT NULL,
  `fecha_enviado` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_enviado`
--

INSERT INTO `email_enviado` (`id_email_enviado`, `id_Us_Envio`, `id_Us_Recibido`, `asunto`, `cuerpoCorreo`, `fecha_enviado`, `estado`) VALUES
(1, 13, 15, 'CORREO URGENTE', 'HOLA MUNDO', '2021-05-08 17:46:23', 1),
(2, 13, 15, 'MI CORREO', 'PRUEBA', '2021-05-22 21:10:14', 1),
(3, 13, 24, 'MI CORREO', 'PRUEBA', '2021-05-30 02:31:38', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_recibido`
--

CREATE TABLE `email_recibido` (
  `id_email_recibido` int(11) NOT NULL,
  `id_EmailEnvio` int(11) NOT NULL,
  `id_Destinatario` int(11) NOT NULL,
  `fecha_recepcion` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_recibido`
--

INSERT INTO `email_recibido` (`id_email_recibido`, `id_EmailEnvio`, `id_Destinatario`, `fecha_recepcion`, `estado`) VALUES
(1, 13, 15, '2021-05-08 17:35:56', 1),
(2, 13, 15, '2021-05-08 17:37:01', 1),
(3, 13, 15, '2021-05-08 17:39:55', 1),
(4, 13, 15, '2021-05-08 17:46:23', 1),
(5, 13, 15, '2021-05-22 21:10:14', 1),
(6, 13, 24, '2021-05-30 02:31:38', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `nom_usuario` varchar(30) NOT NULL,
  `ape_usuario` varchar(30) NOT NULL,
  `name_email` varchar(30) NOT NULL,
  `pass_email` varchar(30) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `es_activo` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`id_usuario`, `id_proveedor`, `nom_usuario`, `ape_usuario`, `name_email`, `pass_email`, `telefono`, `es_activo`, `nivel`, `fecha_creacion`) VALUES
(13, 1, 'arnulfo', 'vicente', 'vicenteC', '123', '52637059', 0, 2, '2021-05-08 12:12:07'),
(15, 1, 'MIGUEL ANGEL', 'ASTURIAS GOME', 'myadmin', 'fdkaflk', '52637059', 0, 3, '2021-05-08 12:19:23'),
(16, 1, 'AUGUSTO', 'GOMEZ', 'AGOMEZC', '13131352', '52637059', 0, 1, '2021-05-08 12:22:45'),
(17, 1, 'miguel', 'gutierrez', 'mGutierrez', '31133sdfds', '52637059', 0, 1, '2021-05-08 12:25:45'),
(18, 1, 'agomez', 'gomeom', 'augsr', 'fdkaflk', '52637059', 1, 1, '2021-05-22 18:56:24'),
(19, 1, 'MIGUEL ANGEL', 'ASTURIAS GOME', 'myadmin', 'fdkaflk', '52637059', 1, 1, '2021-05-22 18:59:24'),
(20, 1, 'agomez', 'gomeom', 'augsr', 'fdkaflk', '52637059', 1, 1, '2021-05-22 19:00:44'),
(21, 1, 'agomez', 'gomeom', 'augsr', 'fdkaflk', '52637059', 1, 1, '2021-05-22 19:00:53'),
(22, 1, 'agomez', 'gomeom', 'augsr', 'fdkaflk', '52637059', 1, 1, '2021-05-29 11:37:44'),
(23, 1, 'MIGUEL F', 'VIRULA', 'virula1', '12325', '52637060', 1, 1, '2021-05-29 13:07:06'),
(24, 1, 'JORGE MIGUEL', 'ANDRADE GOMEZ', 'jorgecr', '12325', '821163363', 0, 1, '2021-05-29 13:36:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_email`
--

CREATE TABLE `proveedor_email` (
  `id_proveedor` int(11) NOT NULL,
  `razon_social` varchar(30) DEFAULT NULL,
  `dominio_email` varchar(30) DEFAULT NULL,
  `nit` varchar(30) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor_email`
--

INSERT INTO `proveedor_email` (`id_proveedor`, `razon_social`, `dominio_email`, `nit`, `telefono`, `direccion`, `fecha_creacion`) VALUES
(1, 'ITPSA, S.A.', 'itpsa.com', '37315439', '52637059', 'ciudad de guatemala zona 12', '2021-05-08 12:10:25'),
(6, 'TORRES CARPIO', 'torrescarpio.com', '231463', '616136363', 'guatemala', '2021-05-30 01:40:07'),
(7, 'banco industrial', 'bi.com', '314666', '5133363', 'guatemala', '2021-05-30 03:03:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recuperar_pass`
--

CREATE TABLE `recuperar_pass` (
  `id_recuperacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  `codigo_activo` tinyint(1) DEFAULT 0,
  `fecha_recuperacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora_accessos`
--
ALTER TABLE `bitacora_accessos`
  ADD PRIMARY KEY (`id_bitacora_Accessos`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `email_enviado`
--
ALTER TABLE `email_enviado`
  ADD PRIMARY KEY (`id_email_enviado`),
  ADD KEY `id_Us_Envio` (`id_Us_Envio`),
  ADD KEY `id_Us_Recibido` (`id_Us_Recibido`);

--
-- Indices de la tabla `email_recibido`
--
ALTER TABLE `email_recibido`
  ADD PRIMARY KEY (`id_email_recibido`),
  ADD KEY `id_EmailEnvio` (`id_EmailEnvio`),
  ADD KEY `id_Destinatario` (`id_Destinatario`);

--
-- Indices de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `perfil_usuario_ibfk_1` (`id_proveedor`);

--
-- Indices de la tabla `proveedor_email`
--
ALTER TABLE `proveedor_email`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `recuperar_pass`
--
ALTER TABLE `recuperar_pass`
  ADD PRIMARY KEY (`id_recuperacion`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora_accessos`
--
ALTER TABLE `bitacora_accessos`
  MODIFY `id_bitacora_Accessos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `email_enviado`
--
ALTER TABLE `email_enviado`
  MODIFY `id_email_enviado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `email_recibido`
--
ALTER TABLE `email_recibido`
  MODIFY `id_email_recibido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `proveedor_email`
--
ALTER TABLE `proveedor_email`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `recuperar_pass`
--
ALTER TABLE `recuperar_pass`
  MODIFY `id_recuperacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bitacora_accessos`
--
ALTER TABLE `bitacora_accessos`
  ADD CONSTRAINT `bitacora_Accessos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `perfil_usuario` (`id_usuario`);

--
-- Filtros para la tabla `email_enviado`
--
ALTER TABLE `email_enviado`
  ADD CONSTRAINT `email_enviado_ibfk_1` FOREIGN KEY (`id_Us_Envio`) REFERENCES `perfil_usuario` (`id_usuario`),
  ADD CONSTRAINT `email_enviado_ibfk_2` FOREIGN KEY (`id_Us_Recibido`) REFERENCES `perfil_usuario` (`id_usuario`);

--
-- Filtros para la tabla `email_recibido`
--
ALTER TABLE `email_recibido`
  ADD CONSTRAINT `email_recibido_ibfk_1` FOREIGN KEY (`id_EmailEnvio`) REFERENCES `perfil_usuario` (`id_usuario`),
  ADD CONSTRAINT `email_recibido_ibfk_2` FOREIGN KEY (`id_Destinatario`) REFERENCES `perfil_usuario` (`id_usuario`);

--
-- Filtros para la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD CONSTRAINT `perfil_usuario_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor_email` (`id_proveedor`);

--
-- Filtros para la tabla `recuperar_pass`
--
ALTER TABLE `recuperar_pass`
  ADD CONSTRAINT `recuperar_pass_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `perfil_usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
