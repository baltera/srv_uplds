EISI_Q.txt
C

F

Tipo
Texto
Tamaño
37 KB (38.269 bytes)
Almacenamiento usado
0 bytesPropiedad de undefined
Ubicación
bases
Propietario
César González R
Modificado
9:41 por César González R
Abierto
12:53 por mí
Creación
9:41
Añadir descripción
Los lectores pueden descargar
-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-10-2018 a las 22:39:53
-- Versión del servidor: 10.3.9-MariaDB-1:10.3.9+maria~xenial-log
-- Versión de PHP: 7.1.20-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tuencuesta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add encuesta', 7, 'add_encuesta'),
(20, 'Can change encuesta', 7, 'change_encuesta'),
(21, 'Can delete encuesta', 7, 'delete_encuesta'),
(22, 'Can add encuestador', 8, 'add_encuestador'),
(23, 'Can change encuestador', 8, 'change_encuestador'),
(24, 'Can delete encuestador', 8, 'delete_encuestador'),
(25, 'Can add encuestador token', 9, 'add_encuestadortoken'),
(26, 'Can change encuestador token', 9, 'change_encuestadortoken'),
(27, 'Can delete encuestador token', 9, 'delete_encuestadortoken'),
(28, 'Can add pregunta', 10, 'add_pregunta'),
(29, 'Can change pregunta', 10, 'change_pregunta'),
(30, 'Can delete pregunta', 10, 'delete_pregunta'),
(31, 'Can add respuesta', 11, 'add_respuesta'),
(32, 'Can change respuesta', 11, 'change_respuesta'),
(33, 'Can delete respuesta', 11, 'delete_respuesta'),
(34, 'Can add usuario', 12, 'add_usuario'),
(35, 'Can change usuario', 12, 'change_usuario'),
(36, 'Can delete usuario', 12, 'delete_usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$SSkgzQybIuXc$J0pPM+1bC8OjMle2ZbUEpTKEj6fSOmQNi8w6ixMeoqc=', '2017-07-05 18:56:19', 1, 'gr11058@fia.ues.edu.com', 'Jose', 'Galdamez', 'gr11058@fia.ues.edu.com', 1, 1, '2017-06-26 18:04:30'),
(2, 'pbkdf2_sha256$36000$ohDKDyPPd68f$UJQLoGGqbd0EgOup7veBVos0mnkUvPuIeslZ900b6KY=', '2017-07-05 14:46:25', 0, 'astrid@astrid.com', 'Lorena', 'Duran', 'astrid@astrid.com', 1, 1, '2017-06-26 18:24:50'),
(3, 'pbkdf2_sha256$36000$lLU8V4FypUF5$9xqZiOebA1UO7/utarOZAlrXH2lwd2q8MiGSdTKogRg=', NULL, 0, 'josegalre@gmail.com', 'Juan', 'Rivaz', 'josegalre@gmail.com', 0, 0, '2017-09-03 02:47:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-06-26 18:06:16', '1', '1', 1, '[{\"added\": {}}]', 8, 1),
(2, '2017-07-04 16:25:23', '2', 'astrid@astrid.com', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(3, '2017-07-05 09:28:47', '3', 'jose@jose.com', 2, '[{\"changed\": {\"fields\": [\"is_active\"]}}]', 4, 1),
(4, '2017-07-05 09:33:31', '4', 'samuel@gmail.com', 2, '[{\"changed\": {\"fields\": [\"is_active\"]}}]', 4, 1),
(5, '2017-07-05 10:31:57', '6', '6', 3, '', 12, 1),
(6, '2017-07-05 14:32:07', '5', 'lala@lala.com', 2, '[{\"changed\": {\"fields\": [\"is_active\"]}}]', 4, 1),
(7, '2017-07-05 14:57:04', '6', 'josue@josue.com', 2, '[{\"changed\": {\"fields\": [\"is_active\"]}}]', 4, 1),
(8, '2017-07-05 16:17:47', '7', 'carlos@carlos.com', 2, '[{\"changed\": {\"fields\": [\"is_active\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'encuesta', 'encuesta'),
(8, 'encuestador', 'encuestador'),
(9, 'encuestador', 'encuestadortoken'),
(10, 'pregunta', 'pregunta'),
(11, 'respuesta', 'respuesta'),
(6, 'sessions', 'session'),
(12, 'usuario', 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-07-05 06:52:30'),
(2, 'auth', '0001_initial', '2017-07-05 06:52:30'),
(3, 'admin', '0001_initial', '2017-07-05 06:52:31'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-07-05 06:52:32'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-07-05 06:52:33'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-07-05 06:52:33'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-07-05 06:52:34'),
(8, 'auth', '0004_alter_user_username_opts', '2017-07-05 06:52:35'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-07-05 06:52:35'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-07-05 06:52:36'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-07-05 06:52:37'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-07-05 06:52:38'),
(13, 'encuesta', '0001_initial', '2017-07-05 06:52:38'),
(14, 'encuestador', '0001_initial', '2017-07-05 06:52:39'),
(15, 'pregunta', '0001_initial', '2017-07-05 06:52:40'),
(16, 'respuesta', '0001_initial', '2017-07-05 06:52:40'),
(17, 'sessions', '0001_initial', '2017-07-05 06:52:41'),
(19, 'usuario', '0001_initial', '2017-07-05 06:54:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7gn8284ugglwjs36dn1p6pxhz3n9o53l', 'YWU2ZDk4Y2JjYjZmNzA2OTM0NWJlNjkxMGRjZWM1YTRmZDg1NGRlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy50dWVuY3Vlc3RhLmJhY2tlbmQuVXNlck1vZGVsRW1haWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGJlZGY3OGNhYzMxNDQ2NDg2NzliOWI2OGJmYWFlMDNhYzcxNzdmYSJ9', '2017-07-19 09:35:20'),
('aa3c3n847rga8dpalga13n0oqi0q637e', 'YWU2ZDk4Y2JjYjZmNzA2OTM0NWJlNjkxMGRjZWM1YTRmZDg1NGRlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy50dWVuY3Vlc3RhLmJhY2tlbmQuVXNlck1vZGVsRW1haWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGJlZGY3OGNhYzMxNDQ2NDg2NzliOWI2OGJmYWFlMDNhYzcxNzdmYSJ9', '2017-07-18 16:12:48'),
('c36p3k1nmfqyrc8gdqwrq2hev4r13eoq', 'YWU2ZDk4Y2JjYjZmNzA2OTM0NWJlNjkxMGRjZWM1YTRmZDg1NGRlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy50dWVuY3Vlc3RhLmJhY2tlbmQuVXNlck1vZGVsRW1haWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGJlZGY3OGNhYzMxNDQ2NDg2NzliOWI2OGJmYWFlMDNhYzcxNzdmYSJ9', '2017-07-10 20:51:20'),
('mjsl1dw4ebe1ndrg1dt2chd1lc0i0l19', 'YWU2ZDk4Y2JjYjZmNzA2OTM0NWJlNjkxMGRjZWM1YTRmZDg1NGRlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy50dWVuY3Vlc3RhLmJhY2tlbmQuVXNlck1vZGVsRW1haWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGJlZGY3OGNhYzMxNDQ2NDg2NzliOWI2OGJmYWFlMDNhYzcxNzdmYSJ9', '2017-07-19 05:17:16'),
('pipv048vr0oqkc8035rix6bsvhi9u0iq', 'YWU2ZDk4Y2JjYjZmNzA2OTM0NWJlNjkxMGRjZWM1YTRmZDg1NGRlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy50dWVuY3Vlc3RhLmJhY2tlbmQuVXNlck1vZGVsRW1haWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGJlZGY3OGNhYzMxNDQ2NDg2NzliOWI2OGJmYWFlMDNhYzcxNzdmYSJ9', '2017-07-18 23:39:59'),
('sf4nfi6v6xrgdzeewpkcu71gui06u6ku', 'YWU2ZDk4Y2JjYjZmNzA2OTM0NWJlNjkxMGRjZWM1YTRmZDg1NGRlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy50dWVuY3Vlc3RhLmJhY2tlbmQuVXNlck1vZGVsRW1haWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGJlZGY3OGNhYzMxNDQ2NDg2NzliOWI2OGJmYWFlMDNhYzcxNzdmYSJ9', '2017-07-19 09:42:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestador_encuestador`
--

CREATE TABLE `encuestador_encuestador` (
  `id` int(11) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(75) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(75) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clave` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `empresa` varchar(75) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cargo` varchar(75) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(75) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(75) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `encuestador_encuestador`
--

INSERT INTO `encuestador_encuestador` (`id`, `avatar`, `nombre`, `apellido`, `clave`, `empresa`, `cargo`, `correo`, `telefono`, `user_id`) VALUES
(1, 'avatar/1/niko-bellic1_JLJB6pv.jpg', NULL, NULL, '', NULL, NULL, '', NULL, 1),
(2, 'avatar/2/foto_perfil.png', NULL, NULL, '', NULL, NULL, '', NULL, 2),
(3, '', NULL, NULL, '', NULL, NULL, '', NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_encuesta`
--

CREATE TABLE `encuesta_encuesta` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `descripcion` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  `peaple` int(11) DEFAULT NULL,
  `trustlevel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `encuesta_encuesta`
--

INSERT INTO `encuesta_encuesta` (`id`, `name`, `active`, `user_id`, `descripcion`, `peaple`, `trustlevel`) VALUES
(1, 'Encuesta de Bebidas Gaseosas', 1, 1, 'Encuesta de Bebidas Gaseosas', 50, 92),
(2, 'Pepsi-Coca ;V', 1, 1, 'Pepsi-Coca ;V', 50, 92),
(3, 'Pepsi - SalvaCola', 1, 1, 'Pepsi - SalvaCola', 50, 92),
(4, 'prueba1', 0, 2, 'prueba1', 50, 92),
(6, 'Prueba3', 1, 2, 'Prueba3', 50, 92),
(7, '50', 1, 1, '50', 50, 92),
(8, 'Prueba #100', 0, 1, 'Prueba #100', 50, 92),
(9, 'Prueba #101', 1, 1, 'Prueba #101', 50, 92),
(10, 'Prueba10', 1, 2, 'Encuesta sobre los sabores', 50, 92),
(11, 'Prueba #2000', 1, 1, 'Encuesta de prueba', 50, 92);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta_pregunta`
--

CREATE TABLE `pregunta_pregunta` (
  `id` int(11) NOT NULL,
  `question_type` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `question_description` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `question_options` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `question_rows` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `question_columns` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `survey_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pregunta_pregunta`
--

INSERT INTO `pregunta_pregunta` (`id`, `question_type`, `question_description`, `question_options`, `question_rows`, `question_columns`, `survey_id`) VALUES
(1, 'integer', '¿Por favor, indique cual es su edad?', '', '', '', 1),
(2, 'radio', '¿Por favor, indique cual es su sexo?', 'Masculino,Femenino', '', '', 1),
(3, 'select', '¿En qué municipio se encuentra?', 'Aguilares,Apopa,Ayutuxtepeque,Cuscatancingo,Delgado,El Paisnal,Guazapa,Ilopango,Mejicanos,Nejapa,Panchimalco,Rosario de Mora,San Marcos,San Martín,San Salvador,Santiago Texacuangos,Santo Tomás,Soyapango,Tonacatepeque', '', '', 1),
(4, 'radio', '¿Con qué frecuencia consume bebidas gaseosas? ', 'una vez a la semana o menos, dos a tres veces por semana, diariamente', '', '', 1),
(5, 'radio', '¿Qué cantidad suele consumir semanalmente, de manera aproximada?', 'menos de un litro, entre uno y dos litros, entre dos y seis litros, mas de 10 litros', '', '', 1),
(6, 'radio', '¿Qué marca de gaseosa consume?', 'Coca-Cola,Fanta,Sprite,Fresca,Tropical,Salva Cola,Kolashampan,Cascada,Pepsi,7Up,Mirinda', '', '', 1),
(7, 'radio', '¿Por qué prefiere esa marca?', 'calidad,precio,sabor,color de la bebida,formato del envase, diseño del envase, promociones', '', '', 1),
(8, 'radio', '¿Cuál presentación de bebida gaseosa prefiere?', 'plástico 400ml, lata, vidrio medio litro, vidrio litro, retornable litro y medio', '', '', 1),
(9, 'text', '¿Por qué elige esa presentación?', '', '', '', 1),
(10, 'radio', '¿En qué tipo de establecimiento suele comprar la bebida gaseosa?', 'supermercados,tiendas,gasolineras,restaurantes', '', '', 1),
(11, 'radio', '¿Le gustaría otra presentación de bebida gaseosa? ', 'si,no', '', '', 1),
(12, 'radio', '¿De qué tamaño?', '800ml,1200ml,2000ml,3000ml, no aplica', '', '', 1),
(13, 'radio', '¿Cuánto pagaría por ese tamaño?', 'menos de un dolar, un dolar, dos dolares, mas de dos dolares, no aplica', '', '', 1),
(14, 'radio', '¿Le gustaría mejor el sabor de su bebida gaseosa?', 'si,no', '', '', 1),
(15, 'radio', '¿Qué mejora le haría?', 'mas dulce, menos dulce, no aplica', '', '', 1),
(16, 'select', '¿Prefiere Coca-Cola o Pepsi como bebida carbonatada?      ', 'Coca-cola, Pepsi, Otra, ninguna', '', '', 2),
(17, 'select', '¿Prefiere Pepsi o SalvaCola como bebida carbonatada?                      ', 'Pepsi, SalvaCola, Otra, Ninguna', '', '', 3),
(18, 'select', '¿De las opciones siguientes elija que cantidad de años aproximadamente tiene usted?', '8-12, 13-19,20-30,31-60', '', '', 3),
(19, 'select', '¿Si eligió cualquiera de las dos bebidas en la primera pregunta cuanto ha sido su preferida (Responda segun el rango de edades)?', '2-3 años, 4-5 años, 6-8 años, desde siempre :v', '', '', 3),
(20, 'select', '¿Si eligió Pepsi elija una opción para explicar por qué y si eligió SalvaCola de la misma forma?', 'La prefieró desde hace años, Me gusta su sabor :v, No me gusta la otra, No me gusta ninguna  ', '', '', 3),
(21, 'select', '¿Eres un ciudadano o un extranjero?', 'Salvadoreño, Extranjero, Extraterrestre ;v, Terminator ;v', '', '', 3),
(22, 'text', 'cuantos días tiene el año?', '', '', '', 4),
(24, 'select', '  Elija su sexo                 ', 'Femenido,Masculino', '', '', 6),
(25, 'select', 'Seleccione el Rango de edad en el que usted se encuentra', '7-12 años, 13-18 años, 14-23 años, mas de 23', '', '', 6),
(26, 'checkbox', 'Elija las bebida que usted consume a menudo', 'coca-cola,pepsi,fanta,cremasoda,fresca', '', '', 6),
(27, 'integer', 'cuan a menudo usted toma las bebidas de su eleccion ', '', '', '', 6),
(28, 'integer', 'Cuantos años tiene la tierra', '', '', '', 7),
(29, 'radio', 'Cuantos ceros tiene 1000', '1,2,3', '', '', 7),
(30, 'integer', 'Cuantos meses tiene el año', '', '', '', 8),
(31, 'radio', 'Que es mas dulce', 'limon, fresa', '', '', 8),
(32, 'integer', 'Cuantos dias tiene el mes de febrero', '', '', '', 9),
(33, 'radio', '1 o 2', '1,2', '', '', 9),
(34, 'select', '         Que prefiere                                   ', 'coca,pepsi,fanta', '', '', 10),
(35, 'integer', 'que numero de dia es hoy', '', '', '', 11),
(36, 'radio', 'un numero', '1,2,3', '', '', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta_respuesta`
--

CREATE TABLE `respuesta_respuesta` (
  `id` int(11) NOT NULL,
  `answer_group` int(11) NOT NULL,
  `answer` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `respuesta_respuesta`
--

INSERT INTO `respuesta_respuesta` (`id`, `answer_group`, `answer`, `question_id`, `survey_id`) VALUES
(1, 0, '24', 1, 1),
(2, 0, 'Masculino', 2, 1),
(3, 0, 'San Salvador', 3, 1),
(4, 0, 'una ves a la semana o menos', 4, 1),
(5, 0, ' entre uno y dos litros', 5, 1),
(6, 0, 'Coca-Cola', 6, 1),
(7, 0, 'calidad', 7, 1),
(8, 0, 'plástico 400ml', 8, 1),
(9, 0, 'me gusta su sabor', 9, 1),
(10, 0, 'tiendas', 10, 1),
(11, 0, 'si', 11, 1),
(12, 0, '3000ml', 12, 1),
(13, 0, ' dos dolares', 13, 1),
(14, 0, 'si', 14, 1),
(15, 0, 'mas dulce', 15, 1),
(16, 1, '20', 1, 1),
(17, 1, 'Femenino', 2, 1),
(18, 1, 'San Salvador', 3, 1),
(19, 1, 'una ves a la semana o menos', 4, 1),
(20, 1, 'menos de un litro', 5, 1),
(21, 1, 'Coca-Cola', 6, 1),
(22, 1, 'sabor', 7, 1),
(23, 1, ' lata', 8, 1),
(24, 1, 'comodidad', 9, 1),
(25, 1, 'supermercados', 10, 1),
(26, 1, 'si', 11, 1),
(27, 1, '800ml', 12, 1),
(28, 1, 'menos de un dolar', 13, 1),
(29, 1, 'si', 14, 1),
(30, 1, 'mas dulce', 15, 1),
(31, 2, '36', 1, 1),
(32, 2, 'Masculino', 2, 1),
(33, 2, 'San Salvador', 3, 1),
(34, 2, 'una ves a la semana o menos', 4, 1),
(35, 2, ' mas de 10 litros', 5, 1),
(36, 2, 'Kolashampan', 6, 1),
(37, 2, ' diseño del envase', 7, 1),
(38, 2, ' retornable litro y medio', 8, 1),
(39, 2, 'Es bonita', 9, 1),
(40, 2, 'supermercados', 10, 1),
(41, 2, 'si', 11, 1),
(42, 2, '800ml', 12, 1),
(43, 2, 'menos de un dolar', 13, 1),
(44, 2, 'si', 14, 1),
(45, 2, 'mas dulce', 15, 1),
(46, 3, '23', 1, 1),
(47, 3, 'Masculino', 2, 1),
(48, 3, 'San Marcos', 3, 1),
(49, 3, 'una ves a la semana o menos', 4, 1),
(50, 3, 'menos de un litro', 5, 1),
(51, 3, 'Coca-Cola', 6, 1),
(52, 3, 'sabor', 7, 1),
(53, 3, ' lata', 8, 1),
(54, 3, 'Me resulta mas refrescante debido al material', 9, 1),
(55, 3, 'tiendas', 10, 1),
(56, 3, 'no', 11, 1),
(57, 3, '800ml', 12, 1),
(58, 3, 'menos de un dolar', 13, 1),
(59, 3, 'si', 14, 1),
(60, 3, ' menos dulce', 15, 1),
(61, 4, '5', 1, 1),
(62, 4, 'Masculino', 2, 1),
(63, 4, 'Soyapango', 3, 1),
(64, 4, 'una ves a la semana o menos', 4, 1),
(65, 4, 'menos de un litro', 5, 1),
(66, 4, 'Kolashampan', 6, 1),
(67, 4, 'calidad', 7, 1),
(68, 4, 'plástico 400ml', 8, 1),
(69, 4, 'es sabrosa', 9, 1),
(70, 4, 'supermercados', 10, 1),
(71, 4, 'si', 11, 1),
(72, 4, '1200ml', 12, 1),
(73, 4, ' un dolar', 13, 1),
(74, 4, 'si', 14, 1),
(75, 4, 'mas dulce', 15, 1),
(76, 5, '20', 1, 1),
(77, 5, 'Masculino', 2, 1),
(78, 5, 'San Salvador', 3, 1),
(79, 5, ' dos a tres veces por semana', 4, 1),
(80, 5, ' entre uno y dos litros', 5, 1),
(81, 5, 'Fanta', 6, 1),
(82, 5, 'calidad', 7, 1),
(83, 5, ' vidrio litro', 8, 1),
(84, 5, 'Sí', 9, 1),
(85, 5, 'tiendas', 10, 1),
(86, 5, 'no', 11, 1),
(87, 5, '800ml', 12, 1),
(88, 5, ' un dolar', 13, 1),
(89, 5, 'si', 14, 1),
(90, 5, ' menos dulce', 15, 1),
(91, 6, '8', 1, 1),
(92, 6, 'Femenino', 2, 1),
(93, 6, 'Aguilares', 3, 1),
(94, 6, 'una vez a la semana o menos', 4, 1),
(95, 6, 'menos de un litro', 5, 1),
(96, 6, 'Coca-Cola', 6, 1),
(97, 6, 'calidad', 7, 1),
(98, 6, 'plástico 400ml', 8, 1),
(99, 6, 'suficiente para mi', 9, 1),
(100, 6, 'supermercados', 10, 1),
(101, 6, 'si', 11, 1),
(102, 6, '800ml', 12, 1),
(103, 6, 'menos de un dolar', 13, 1),
(104, 6, 'si', 14, 1),
(105, 6, 'mas dulce', 15, 1),
(106, 0, ' SalvaCola', 17, 3),
(107, 0, '20-30', 18, 3),
(108, 0, '2-3 años', 19, 3),
(109, 0, ' No me gusta la otra', 20, 3),
(110, 0, 'Salvadoreño', 21, 3),
(111, 0, '365', 22, 4),
(112, 0, 'Femenido', 24, 6),
(113, 0, ' 14-23 años', 25, 6),
(114, 0, '7', 27, 6),
(115, 0, '1, 1, 1, 1, 1', 26, 6),
(116, 1, 'Femenido', 24, 6),
(117, 1, ' 13-18 años', 25, 6),
(118, 1, '2', 27, 6),
(119, 1, '0, 0, 0, 0, 1', 26, 6),
(120, 2, 'Femenido', 24, 6),
(121, 2, '7-12 años', 25, 6),
(122, 2, '1', 27, 6),
(123, 2, '0, 0, 0, 1, 0', 26, 6),
(124, 3, 'Masculino', 24, 6),
(125, 3, '7-12 años', 25, 6),
(126, 3, '2', 27, 6),
(127, 3, '1, 0, 0, 0, 0', 26, 6),
(129, 7, '45', 1, 1),
(130, 7, 'Femenino', 2, 1),
(131, 7, 'Aguilares', 3, 1),
(132, 7, 'una vez a la semana o menos', 4, 1),
(133, 7, 'menos de un litro', 5, 1),
(134, 7, 'Coca-Cola', 6, 1),
(135, 7, 'calidad', 7, 1),
(136, 7, ' lata', 8, 1),
(137, 7, 'me gusta su presentacion', 9, 1),
(138, 7, 'tiendas', 10, 1),
(139, 7, 'no', 11, 1),
(140, 7, ' no aplica', 12, 1),
(141, 7, ' no aplica', 13, 1),
(142, 7, 'no', 14, 1),
(143, 7, ' no aplica', 15, 1),
(144, 0, ' ninguna', 16, 2),
(145, 4, 'Femenido', 24, 6),
(146, 4, '7-12 años', 25, 6),
(147, 4, '30', 27, 6),
(148, 4, '0, 0, 0, 0, 1', 26, 6),
(149, 0, '12', 30, 8),
(150, 0, ' fresa', 31, 8),
(151, 0, '28', 32, 9),
(152, 0, '2', 33, 9),
(153, 1, '28', 32, 9),
(154, 1, '1', 33, 9),
(155, 2, '27', 32, 9),
(156, 2, '2', 33, 9),
(157, 0, 'pepsi', 34, 10),
(158, 3, '29', 32, 9),
(159, 3, '1', 33, 9),
(160, 1, 'fanta', 34, 10),
(161, 2, 'pepsi', 34, 10),
(162, 3, 'pepsi', 34, 10),
(163, 4, 'coca', 34, 10),
(164, 4, '23', 32, 9),
(165, 4, '2', 33, 9),
(166, 0, '56', 28, 7),
(167, 0, '3', 29, 7),
(168, 5, 'fanta', 34, 10),
(169, 8, '23', 1, 1),
(170, 8, 'Femenino', 2, 1),
(171, 8, 'Aguilares', 3, 1),
(172, 8, 'una vez a la semana o menos', 4, 1),
(173, 8, ' entre uno y dos litros', 5, 1),
(174, 8, 'Fanta', 6, 1),
(175, 8, 'precio', 7, 1),
(176, 8, ' lata', 8, 1),
(177, 8, 'es mi elecicon', 9, 1),
(178, 8, 'gasolineras', 10, 1),
(179, 8, 'no', 11, 1),
(180, 8, ' no aplica', 12, 1),
(181, 8, ' no aplica', 13, 1),
(182, 8, 'no', 14, 1),
(183, 8, ' no aplica', 15, 1),
(184, 6, 'fanta', 34, 10),
(185, 9, '23', 1, 1),
(186, 9, 'Masculino', 2, 1),
(187, 9, 'Mejicanos', 3, 1),
(188, 9, 'una vez a la semana o menos', 4, 1),
(189, 9, ' entre uno y dos litros', 5, 1),
(190, 9, 'Fanta', 6, 1),
(191, 9, 'precio', 7, 1),
(192, 9, ' lata', 8, 1),
(193, 9, 'me gusta', 9, 1),
(194, 9, 'supermercados', 10, 1),
(195, 9, 'si', 11, 1),
(196, 9, '1200ml', 12, 1),
(197, 9, 'menos de un dolar', 13, 1),
(198, 9, 'si', 14, 1),
(199, 9, 'mas dulce', 15, 1),
(200, 0, '4', 35, 11),
(201, 0, '2', 36, 11),
(202, 1, 'Pepsi', 17, 3),
(203, 1, '8-12', 18, 3),
(204, 1, '2-3 años', 19, 3),
(205, 1, 'La prefieró desde hace años', 20, 3),
(206, 1, 'Salvadoreño', 21, 3),
(207, 1, '28', 35, 11),
(208, 1, '3', 36, 11),
(209, 2, '96', 35, 11),
(210, 2, '2', 36, 11),
(211, 1, 'Coca-cola', 16, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_usuario`
--

CREATE TABLE `usuario_usuario` (
  `id` int(11) NOT NULL,
  `ip_usuario` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hostname_usuario` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `city_usuario` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `region_usuario` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `country_usuario` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `loc_usuario` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `log_usuario` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `encuesta_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario_usuario`
--

INSERT INTO `usuario_usuario` (`id`, `ip_usuario`, `hostname_usuario`, `city_usuario`, `region_usuario`, `country_usuario`, `loc_usuario`, `log_usuario`, `encuesta_id`) VALUES
(1, '127.0.0.1', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-89.2032', '-89.2032', 9),
(2, '127.0.0.1', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-89.2032', '-89.2032', 10),
(5, '179.51.3.64', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-89.2032', '-89.2032', 10),
(7, '179.51.3.64', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-89.2032', '-89.2032', 7),
(8, '181.189.181.233', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-89.2032', '-89.2032', 10),
(9, '200.12.230.44', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-89.2032', '-89.2032', 1),
(10, '143.0.105.96', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-88.9168', '-88.9168', 10),
(11, '143.0.105.96', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-88.9168', '-88.9168', 1),
(12, '179.51.3.64', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-89.2032', '-89.2032', 11),
(13, '179.51.3.64', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-89.2032', '-89.2032', 3),
(14, '143.0.106.88', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-89.2032', '-89.2032', 11),
(15, '179.51.3.117', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-89.2032', '-89.2032', 11),
(16, '179.51.3.117', NULL, 'San Salvador', 'Departamento de San Salvador', 'El Salvador', '-89.2032', '-89.2032', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `encuestador_encuestador`
--
ALTER TABLE `encuestador_encuestador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `encuesta_encuesta`
--
ALTER TABLE `encuesta_encuesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `encuesta_encuesta_user_id_cd935d7c_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `pregunta_pregunta`
--
ALTER TABLE `pregunta_pregunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregunta_pregunta_survey_id_c20f94e6_fk_encuesta_encuesta_id` (`survey_id`);

--
-- Indices de la tabla `respuesta_respuesta`
--
ALTER TABLE `respuesta_respuesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `respuesta_respuesta_question_id_1fde21be_fk_pregunta_pregunta_id` (`question_id`),
  ADD KEY `respuesta_respuesta_survey_id_dac4c43e_fk_encuesta_encuesta_id` (`survey_id`);

--
-- Indices de la tabla `usuario_usuario`
--
ALTER TABLE `usuario_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_usuario_encuesta_id_f5a47e09_fk_encuesta_encuesta_id` (`encuesta_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `encuestador_encuestador`
--
ALTER TABLE `encuestador_encuestador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `encuesta_encuesta`
--
ALTER TABLE `encuesta_encuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pregunta_pregunta`
--
ALTER TABLE `pregunta_pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `respuesta_respuesta`
--
ALTER TABLE `respuesta_respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT de la tabla `usuario_usuario`
--
ALTER TABLE `usuario_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `encuestador_encuestador`
--
ALTER TABLE `encuestador_encuestador`
  ADD CONSTRAINT `encuestador_encuestador_user_id_e37141c4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `encuesta_encuesta`
--
ALTER TABLE `encuesta_encuesta`
  ADD CONSTRAINT `encuesta_encuesta_user_id_cd935d7c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `pregunta_pregunta`
--
ALTER TABLE `pregunta_pregunta`
  ADD CONSTRAINT `pregunta_pregunta_survey_id_c20f94e6_fk_encuesta_encuesta_id` FOREIGN KEY (`survey_id`) REFERENCES `encuesta_encuesta` (`id`);

--
-- Filtros para la tabla `respuesta_respuesta`
--
ALTER TABLE `respuesta_respuesta`
  ADD CONSTRAINT `respuesta_respuesta_question_id_1fde21be_fk_pregunta_pregunta_id` FOREIGN KEY (`question_id`) REFERENCES `pregunta_pregunta` (`id`),
  ADD CONSTRAINT `respuesta_respuesta_survey_id_dac4c43e_fk_encuesta_encuesta_id` FOREIGN KEY (`survey_id`) REFERENCES `encuesta_encuesta` (`id`);

--
-- Filtros para la tabla `usuario_usuario`
--
ALTER TABLE `usuario_usuario`
  ADD CONSTRAINT `usuario_usuario_encuesta_id_f5a47e09_fk_encuesta_encuesta_id` FOREIGN KEY (`encuesta_id`) REFERENCES `encuesta_encuesta` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;