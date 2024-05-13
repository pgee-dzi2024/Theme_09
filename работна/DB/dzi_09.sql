-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 13 май 2024 в 14:29
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `dzi_09`
--

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_permission`
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
(25, 'Can add Отзив', 7, 'add_review'),
(26, 'Can change Отзив', 7, 'change_review'),
(27, 'Can delete Отзив', 7, 'delete_review'),
(28, 'Can view Отзив', 7, 'view_review'),
(29, 'Can add Стая', 8, 'add_room'),
(30, 'Can change Стая', 8, 'change_room'),
(31, 'Can delete Стая', 8, 'delete_room'),
(32, 'Can view Стая', 8, 'view_room'),
(33, 'Can add Резервация', 9, 'add_appointment'),
(34, 'Can change Резервация', 9, 'change_appointment'),
(35, 'Can delete Резервация', 9, 'delete_appointment'),
(36, 'Can view Резервация', 9, 'view_appointment'),
(37, 'Can add Резервирана стая', 10, 'add_bookedroom'),
(38, 'Can change Резервирана стая', 10, 'change_bookedroom'),
(39, 'Can delete Резервирана стая', 10, 'delete_bookedroom'),
(40, 'Can view Резервирана стая', 10, 'view_bookedroom');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$KBgPFirXTJzx2SX17ZMH6d$wtaMuINu9EvZCa3uvVuplYFTB10f9aNPqXD9OcC2S34=', '2024-05-03 14:50:59.977277', 1, 'admin', '', '', '', 1, 1, '2024-05-03 03:08:39.091734');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-03 03:11:31.065308', '1', 'Ивелин Добриков', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-05-03 03:12:00.019961', '2', 'Димитринка Ганева', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-05-03 03:13:03.932898', '3', 'Brankica Nagradic', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-05-03 14:51:54.621907', '1', 'Двойна стая', 1, '[{\"added\": {}}]', 8, 1),
(5, '2024-05-03 14:52:24.902628', '2', 'Двойна стая', 1, '[{\"added\": {}}]', 8, 1),
(6, '2024-05-03 14:52:40.616221', '3', 'Двойна стая', 1, '[{\"added\": {}}]', 8, 1),
(7, '2024-05-03 14:52:55.369226', '4', 'Двойна стая', 1, '[{\"added\": {}}]', 8, 1),
(8, '2024-05-03 14:53:16.895332', '5', 'Двойна стая', 1, '[{\"added\": {}}]', 8, 1),
(9, '2024-05-03 14:53:37.944283', '6', 'Двойна стая', 1, '[{\"added\": {}}]', 8, 1),
(10, '2024-05-03 15:07:11.247740', '1', 'Двойна стая', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043d\\u0438\\u043c\\u043a\\u0430\"]}}]', 8, 1),
(11, '2024-05-03 15:07:22.310191', '2', 'Двойна стая', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043d\\u0438\\u043c\\u043a\\u0430\"]}}]', 8, 1),
(12, '2024-05-03 15:07:32.368921', '3', 'Двойна стая', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043d\\u0438\\u043c\\u043a\\u0430\"]}}]', 8, 1),
(13, '2024-05-03 15:07:41.800388', '4', 'Двойна стая', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043d\\u0438\\u043c\\u043a\\u0430\"]}}]', 8, 1),
(14, '2024-05-03 15:07:51.916847', '5', 'Двойна стая', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043d\\u0438\\u043c\\u043a\\u0430\"]}}]', 8, 1),
(15, '2024-05-03 15:08:00.456547', '6', 'Двойна стая', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043d\\u0438\\u043c\\u043a\\u0430\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'main', 'appointment'),
(10, 'main', 'bookedroom'),
(7, 'main', 'review'),
(8, 'main', 'room'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура на таблица `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-03 02:22:55.894443'),
(2, 'auth', '0001_initial', '2024-05-03 02:22:56.621414'),
(3, 'admin', '0001_initial', '2024-05-03 02:22:56.795019'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-03 02:22:56.805015'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-03 02:22:56.815015'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-05-03 02:22:56.896654'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-05-03 02:22:56.982262'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-05-03 02:22:57.000825'),
(9, 'auth', '0004_alter_user_username_opts', '2024-05-03 02:22:57.011823'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-05-03 02:22:57.084716'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-05-03 02:22:57.089236'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-05-03 02:22:57.100268'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-05-03 02:22:57.120644'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-05-03 02:22:57.148691'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-05-03 02:22:57.169612'),
(16, 'auth', '0011_update_proxy_permissions', '2024-05-03 02:22:57.180029'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-05-03 02:22:57.200754'),
(18, 'sessions', '0001_initial', '2024-05-03 02:22:57.256571'),
(19, 'main', '0001_initial', '2024-05-03 02:39:49.453673'),
(20, 'main', '0002_room', '2024-05-03 14:50:21.681453'),
(21, 'main', '0003_appointment_alter_room_photo_bookedroom', '2024-05-03 23:52:10.955081');

-- --------------------------------------------------------

--
-- Структура на таблица `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('z5l0b3anckh9w75uy9c42o1emxubn1w8', '.eJxVjEEOwiAQRe_C2hDGEhCX7j0DmRkGqRpISrtqvLsh6UK3_733dxVxW0vcuixxTuqqQJ1-N0J-SR0gPbE-muZW12UmPRR90K7vLcn7drh_BwV7GbUXz5i9JwsAJif0QTiBzTkQWrbBX5gmxxZMQHAmTILZWHBnk7KQ-nwBBE44iQ:1s2uFX:Ew6vxb7nQya_AvElP8701U4Bz5sS094QUXfes2b6i7U', '2024-05-17 14:50:59.983316');

-- --------------------------------------------------------

--
-- Структура на таблица `main_appointment`
--

DROP TABLE IF EXISTS `main_appointment`;
CREATE TABLE `main_appointment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `note` longtext NOT NULL,
  `new_appointment` tinyint(1) NOT NULL,
  `rooms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `main_bookedroom`
--

DROP TABLE IF EXISTS `main_bookedroom`;
CREATE TABLE `main_bookedroom` (
  `id` bigint(20) NOT NULL,
  `room_num` int(11) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `reservation_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `main_review`
--

DROP TABLE IF EXISTS `main_review`;
CREATE TABLE `main_review` (
  `id` bigint(20) NOT NULL,
  `txt` longtext NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_review`
--

INSERT INTO `main_review` (`id`, `txt`, `name`) VALUES
(1, 'Чисто, топло, уютно и страхотни домакини! Пак ще сме при вас!', 'Ивелин Добриков'),
(2, 'Винаги отсядаме там,наши приятели също! Винаги искаме още и още!!!!', 'Димитринка Ганева'),
(3, 'Sve preporuke vidimo se na zimu', 'Brankica Nagradic');

-- --------------------------------------------------------

--
-- Структура на таблица `main_room`
--

DROP TABLE IF EXISTS `main_room`;
CREATE TABLE `main_room` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `show_num` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_room`
--

INSERT INTO `main_room` (`id`, `name`, `show_num`, `photo`) VALUES
(1, 'Двойна стая', 1, 'rooms/IMG_4876.jpeg'),
(2, 'Двойна стая', 2, 'rooms/IMG_4877.jpeg'),
(3, 'Двойна стая', 3, 'rooms/IMG_4878.jpeg'),
(4, 'Двойна стая', 4, 'rooms/IMG_4879.jpeg'),
(5, 'Двойна стая', 5, 'rooms/IMG_4881.jpeg'),
(6, 'Двойна стая', 6, 'rooms/IMG_4884.jpeg');

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индекси за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индекси за таблица `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индекси за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индекси за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индекси за таблица `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индекси за таблица `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индекси за таблица `main_appointment`
--
ALTER TABLE `main_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_bookedroom`
--
ALTER TABLE `main_bookedroom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_bookedroom_reservation_id_id_1a09ebe8_fk_main_appo` (`reservation_id_id`);

--
-- Индекси за таблица `main_review`
--
ALTER TABLE `main_review`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_room`
--
ALTER TABLE `main_room`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `main_appointment`
--
ALTER TABLE `main_appointment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_bookedroom`
--
ALTER TABLE `main_bookedroom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_review`
--
ALTER TABLE `main_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_room`
--
ALTER TABLE `main_room`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `main_bookedroom`
--
ALTER TABLE `main_bookedroom`
  ADD CONSTRAINT `main_bookedroom_reservation_id_id_1a09ebe8_fk_main_appo` FOREIGN KEY (`reservation_id_id`) REFERENCES `main_appointment` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
