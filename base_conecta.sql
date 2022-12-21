-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2022 a las 23:28:39
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_conecta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add task', 7, 'add_task'),
(26, 'Can change task', 7, 'change_task'),
(27, 'Can delete task', 7, 'delete_task'),
(28, 'Can view task', 7, 'view_task'),
(29, 'Can add rol', 8, 'add_rol'),
(30, 'Can change rol', 8, 'change_rol'),
(31, 'Can delete rol', 8, 'delete_rol'),
(32, 'Can view rol', 8, 'view_rol'),
(33, 'Can add familiar', 9, 'add_familiar'),
(34, 'Can change familiar', 9, 'change_familiar'),
(35, 'Can delete familiar', 9, 'delete_familiar'),
(36, 'Can view familiar', 9, 'view_familiar'),
(37, 'Can add funcionario', 10, 'add_funcionario'),
(38, 'Can change funcionario', 10, 'change_funcionario'),
(39, 'Can delete funcionario', 10, 'delete_funcionario'),
(40, 'Can view funcionario', 10, 'view_funcionario'),
(41, 'Can add paciente', 11, 'add_paciente'),
(42, 'Can change paciente', 11, 'change_paciente'),
(43, 'Can delete paciente', 11, 'delete_paciente'),
(44, 'Can view paciente', 11, 'view_paciente'),
(45, 'Can add comentario', 12, 'add_comentario'),
(46, 'Can change comentario', 12, 'change_comentario'),
(47, 'Can delete comentario', 12, 'delete_comentario'),
(48, 'Can view comentario', 12, 'view_comentario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$E5PlzF3DOUGp$w4pCW6xZYaZeuxWnzL1in8A43BF3piIpKKoZ3bZ74A0=', '2022-12-14 21:54:50.778803', 1, 'angelserrano', '', '', 'angelserrano143@gmail.com', 1, 1, '2022-11-29 23:01:08.748662'),
(2, 'pbkdf2_sha256$216000$tOfLTOPYfWrA$DcaODIxP4Etrv7RkUxTEpUrAY4Ff769fpqKrp4Mpa4o=', '2022-11-30 01:39:36.094109', 0, 'Angelin', '', '', '', 0, 1, '2022-11-30 01:39:35.943090'),
(3, 'pbkdf2_sha256$216000$5RVLyyQ8vkQA$q7LLuUnHjzgzDL3+ecyp5f2nmV6/geIOCtuX5bn6beM=', '2022-11-30 14:35:32.413133', 0, 'Pedro', '', '', '', 0, 1, '2022-11-30 01:53:15.287016'),
(5, 'pbkdf2_sha256$216000$OMNv2Gk2ksq8$LchiEK9DVdJXvZDz1CedRog2QtHu8RCH6iEVDTuWVR4=', '2022-11-30 01:59:33.582063', 0, 'Juanito', '', '', '', 0, 1, '2022-11-30 01:59:33.447070'),
(6, 'pbkdf2_sha256$216000$oIqYC0Pr7QAP$12j8TM7byATE4wE5evPjynNRIzLwQfu4VZi37mmLXfs=', '2022-11-30 02:08:01.913721', 0, 'Pedro1', '', '', '', 0, 1, '2022-11-30 02:08:01.641725'),
(7, 'pbkdf2_sha256$216000$4PTBDjCTV5Wu$rvgM0P0qvo0J6aWVLwPFD8B3Oq0ZEk+ZPgZEH2M83Cw=', '2022-11-30 12:03:35.056997', 0, 'PP', '', '', '', 0, 1, '2022-11-30 12:03:34.922997'),
(8, 'pbkdf2_sha256$216000$pHJPNhv9fIzg$+cuL2b6EKlSfFwEwaixEyos0PHy+yat+r6cXxjKAwbs=', '2022-11-30 15:04:06.817284', 0, 'Cristhian', '', '', '', 0, 1, '2022-11-30 15:04:06.462459'),
(9, 'pbkdf2_sha256$216000$fcIeiAmPiyJy$PI+gHr3SAc2eKGrCpPNvfTDMQb96QSGnxJ7e99CTnbo=', '2022-11-30 15:19:20.998936', 0, 'Holanda', '', '', '', 0, 1, '2022-11-30 15:19:20.697471'),
(10, 'pbkdf2_sha256$216000$t60V649kY5Mi$gpbBWcpnH+PaAVd5C7cq++Ou7k07WurU/AYlNKo3eHA=', '2022-11-30 22:13:35.806061', 0, 'Marcos Perez', '', '', '', 0, 1, '2022-11-30 22:13:35.466086');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `fecha_comentario` date NOT NULL,
  `hora_comentario` time(6) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `comentario` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id`, `fecha_comentario`, `hora_comentario`, `estado`, `comentario`) VALUES
(2, '2022-11-30', '03:14:46.000000', 'Alerta', 'se encuentra bajo cuidado despues de la operación'),
(3, '2022-11-23', '14:53:12.000000', 'Estable', 'El paciente recibio la atención adecuada'),
(4, '2022-11-23', '14:53:12.000000', 'Alerta', 'El paciente esta bajo cuidado intensivo'),
(5, '2022-11-30', '12:06:00.000000', 'Estable', 'El paciente se ha recuperado'),
(6, '2022-11-30', '12:13:09.494904', 'Estable', 'Chikiluki');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-30 00:32:41.841031', '1', 'Rol object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-11-30 00:32:52.003265', '2', 'Rol object (2)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2022-11-30 00:33:02.243138', '3', 'Rol object (3)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-11-30 00:35:05.015027', '4', 'Rol object (4)', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-11-30 00:35:24.467207', '4', 'Rol object (4)', 3, '', 8, 1),
(6, '2022-11-30 03:15:30.692288', '2', 'Alerta', 1, '[{\"added\": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'main', 'comentario'),
(9, 'main', 'familiar'),
(10, 'main', 'funcionario'),
(11, 'main', 'paciente'),
(8, 'main', 'rol'),
(6, 'sessions', 'session'),
(7, 'tasks', 'task');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-29 22:51:18.027348'),
(2, 'auth', '0001_initial', '2022-11-29 22:51:18.327611'),
(3, 'admin', '0001_initial', '2022-11-29 22:51:19.132256'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-29 22:51:19.317400'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-29 22:51:19.337075'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-29 22:51:19.446960'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-29 22:51:19.537322'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-29 22:51:19.577300'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-29 22:51:19.602183'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-29 22:51:19.687090'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-29 22:51:19.687090'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-29 22:51:19.712428'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-29 22:51:19.747307'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-29 22:51:19.777378'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-29 22:51:19.827329'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-29 22:51:19.837131'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-29 22:51:19.877010'),
(18, 'main', '0001_initial', '2022-11-29 22:51:20.007185'),
(19, 'main', '0002_auto_20221127_1908', '2022-11-29 22:51:20.277044'),
(20, 'main', '0003_auto_20221127_2226', '2022-11-29 22:51:20.616930'),
(21, 'main', '0004_paciente', '2022-11-29 22:51:20.757418'),
(22, 'main', '0005_auto_20221128_1459', '2022-11-29 22:51:20.896984'),
(23, 'main', '0006_auto_20221128_1507', '2022-11-29 22:51:20.957386'),
(24, 'main', '0007_auto_20221129_0007', '2022-11-29 22:51:21.417326'),
(25, 'main', '0008_auto_20221129_0016', '2022-11-29 22:51:21.867060'),
(26, 'main', '0009_auto_20221129_0824', '2022-11-29 22:51:21.902145'),
(27, 'sessions', '0001_initial', '2022-11-29 22:51:21.987215'),
(28, 'tasks', '0001_initial', '2022-11-29 22:51:22.112073'),
(29, 'tasks', '0002_rename_datedcompleted_task_datecompleted', '2022-11-29 22:51:22.237078'),
(30, 'tasks', '0003_auto_20221127_1908', '2022-11-29 22:51:22.357029'),
(31, 'main', '0010_auto_20221129_1959', '2022-11-29 22:59:30.878862'),
(32, 'main', '0011_remove_funcionario_user', '2022-11-30 01:51:19.523220'),
(33, 'main', '0012_remove_familiar_paciente_id', '2022-11-30 01:54:16.000751'),
(34, 'main', '0013_auto_20221129_2307', '2022-11-30 02:07:33.663911'),
(35, 'main', '0014_auto_20221130_1212', '2022-11-30 15:12:09.135818'),
(36, 'tasks', '0004_delete_task', '2022-11-30 15:12:09.235817');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4bca74bniqw4y2vgp62ikq5v8her6x7p', '.eJxVjEEOwiAQRe_C2hBxoExduvcMZIYBqRpISrsy3l2bdKHb_977LxVoXUpYe5rDJOqsjDr8bkzxkeoG5E711nRsdZkn1puid9r1tUl6Xnb376BQL98aII0Js6TooniUPIxAgmwtGbZg6GQRc_SGB7ScyQNaYI9OsjtmBvX-AAU6OHg:1p0VdG:YLKj6hlnr_49hA2J76mtUNIKzAWvKvFrLonCDMoIsTo', '2022-12-14 22:32:46.475952'),
('4c42negdt7fovgop6nh4vh89rigyz8qk', '.eJxVjEEOwiAQRe_C2hBxoExduvcMZIYBqRpISrsy3l2bdKHb_977LxVoXUpYe5rDJOqsjDr8bkzxkeoG5E711nRsdZkn1puid9r1tUl6Xnb376BQL98aII0Js6TooniUPIxAgmwtGbZg6GQRc_SGB7ScyQNaYI9OsjtmBvX-AAU6OHg:1p0OuW:CS3YNtIzxR6OBo08JMrvzAsrexx-OF_tqYhgPnxYRSs', '2022-12-14 15:22:08.695960'),
('i5ysh8wfiy0e72br27bj8b9rzkx85rfu', '.eJxVjEEOwiAQRe_C2hBxoExduvcMZIYBqRpISrsy3l2bdKHb_977LxVoXUpYe5rDJOqsjDr8bkzxkeoG5E711nRsdZkn1puid9r1tUl6Xnb376BQL98aII0Js6TooniUPIxAgmwtGbZg6GQRc_SGB7ScyQNaYI9OsjtmBvX-AAU6OHg:1p5ZiE:gzQoBz-p8FYkTUmVvxxfllsiyFhOQiHZ3DcwTkn4YMQ', '2022-12-28 21:54:50.794502');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familiar`
--

CREATE TABLE `familiar` (
  `id` int(11) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `email` varchar(80) NOT NULL,
  `contrasenia` varchar(80) NOT NULL,
  `relacion_paciente` varchar(30) NOT NULL,
  `id_rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `familiar`
--

INSERT INTO `familiar` (`id`, `rut`, `nombre`, `apellido`, `edad`, `fecha_nacimiento`, `sexo`, `email`, `contrasenia`, `relacion_paciente`, `id_rol_id`) VALUES
(8, '2617991', 'Angel', 'Serrano', 56, '1957-07-30', 'Masculino', 'sds@sa.cl', '', 'Primo', 1),
(9, '26178551', 'Pedro', 'Lagos', 20, '2002-05-30', 'Masculino', 'prft@asda.cl', '', 'Hijo', 1),
(10, '1567789', 'Marcos', 'Perez', 30, '1992-03-04', 'Masculino', 'amarcos@gmail.com', '', 'Primo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `email` varchar(80) NOT NULL,
  `contrasenia` varchar(80) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `id_rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `sexo_biologico` varchar(20) NOT NULL,
  `id_rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id`, `rut`, `nombre`, `apellido`, `edad`, `fecha_nacimiento`, `sexo`, `sexo_biologico`, `id_rol_id`) VALUES
(1, '1234484', 'Mario', 'Puyol', 35, '1995-05-05', 'Masculino', 'Maculino', 1),
(2, '2616161', 'Angel', 'Perez', 89, '1926-09-14', 'Masculino', 'Maculino', 1),
(3, '123545', 'Maria', 'Fernandez', 40, '1982-03-05', 'Femenino', 'Femenino', 1),
(4, '27898145', 'Cristhian', 'Martinez', 22, '2000-12-16', 'Masculino', 'Maculino', 1),
(5, '245167', 'Maria', 'Perez', 25, '1990-02-11', 'Femenino', 'Femenino', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `nombre_rol` varchar(20) NOT NULL,
  `lectura` tinyint(1) NOT NULL,
  `actualizar` tinyint(1) NOT NULL,
  `borrar` tinyint(1) NOT NULL,
  `crear` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre_rol`, `lectura`, `actualizar`, `borrar`, `crear`) VALUES
(1, 'Familiar', 1, 0, 0, 0),
(2, 'Funcionario', 1, 1, 1, 1),
(3, 'Administrador', 1, 1, 1, 1);

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
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `familiar`
--
ALTER TABLE `familiar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD KEY `familiar_id_rol_id_912fd964_fk_rol_id` (`id_rol_id`);

--
-- Indices de la tabla `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD KEY `funcionario_id_rol_id_247b03ff_fk_rol_id` (`id_rol_id`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD KEY `paciente_id_rol_id_1274407c_fk_rol_id` (`id_rol_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `familiar`
--
ALTER TABLE `familiar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Filtros para la tabla `familiar`
--
ALTER TABLE `familiar`
  ADD CONSTRAINT `familiar_id_rol_id_912fd964_fk_rol_id` FOREIGN KEY (`id_rol_id`) REFERENCES `rol` (`id`);

--
-- Filtros para la tabla `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_id_rol_id_247b03ff_fk_rol_id` FOREIGN KEY (`id_rol_id`) REFERENCES `rol` (`id`);

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_id_rol_id_1274407c_fk_rol_id` FOREIGN KEY (`id_rol_id`) REFERENCES `rol` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
