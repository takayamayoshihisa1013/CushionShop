-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-08-27 11:10:59
-- サーバのバージョン： 10.4.25-MariaDB
-- PHP のバージョン: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `cushionshop`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `account_user`
--

CREATE TABLE `account_user` (
  `id` char(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `account_user`
--

INSERT INTO `account_user` (`id`, `name`, `email`, `password`) VALUES
('90a918062fc44eb888e443cff446d124', 'るらりゆ', 'rurariyu.system@gmail.com', '20031013y');

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `auth_permission`
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
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add image', 8, 'add_image'),
(30, 'Can change image', 8, 'change_image'),
(31, 'Can delete image', 8, 'delete_image'),
(32, 'Can view image', 8, 'view_image'),
(33, 'Can add size', 9, 'add_size'),
(34, 'Can change size', 9, 'change_size'),
(35, 'Can delete size', 9, 'delete_size'),
(36, 'Can view size', 9, 'view_size'),
(37, 'Can add color', 10, 'add_color'),
(38, 'Can change color', 10, 'change_color'),
(39, 'Can delete color', 10, 'delete_color'),
(40, 'Can view color', 10, 'view_color'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add kart', 12, 'add_kart'),
(46, 'Can change kart', 12, 'change_kart'),
(47, 'Can delete kart', 12, 'delete_kart'),
(48, 'Can view kart', 12, 'view_kart'),
(49, 'Can add kart', 13, 'add_kart'),
(50, 'Can change kart', 13, 'change_kart'),
(51, 'Can delete kart', 13, 'delete_kart'),
(52, 'Can view kart', 13, 'view_kart'),
(53, 'Can add buy', 14, 'add_buy'),
(54, 'Can change buy', 14, 'change_buy'),
(55, 'Can delete buy', 14, 'delete_buy'),
(56, 'Can view buy', 14, 'view_buy'),
(57, 'Can add favorite', 15, 'add_favorite'),
(58, 'Can change favorite', 15, 'change_favorite'),
(59, 'Can delete favorite', 15, 'delete_favorite'),
(60, 'Can view favorite', 15, 'view_favorite'),
(61, 'Can add count', 16, 'add_count'),
(62, 'Can change count', 16, 'change_count'),
(63, 'Can delete count', 16, 'delete_count'),
(64, 'Can view count', 16, 'view_count'),
(65, 'Can add product_count', 16, 'add_product_count'),
(66, 'Can change product_count', 16, 'change_product_count'),
(67, 'Can delete product_count', 16, 'delete_product_count'),
(68, 'Can view product_count', 16, 'view_product_count');

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_user`
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

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `django_admin_log`
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

-- --------------------------------------------------------

--
-- テーブルの構造 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(11, 'account', 'user'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'pay', 'kart'),
(14, 'products', 'buy'),
(10, 'products', 'color'),
(15, 'products', 'favorite'),
(8, 'products', 'image'),
(13, 'products', 'kart'),
(7, 'products', 'product'),
(16, 'products', 'product_count'),
(9, 'products', 'size'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- テーブルの構造 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-08-19 14:10:54.880702'),
(2, 'auth', '0001_initial', '2024-08-19 14:10:55.193280'),
(3, 'admin', '0001_initial', '2024-08-19 14:10:55.286963'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-08-19 14:10:55.286963'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-19 14:10:55.302576'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-08-19 14:10:55.349518'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-08-19 14:10:55.380894'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-08-19 14:10:55.396520'),
(9, 'auth', '0004_alter_user_username_opts', '2024-08-19 14:10:55.396520'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-08-19 14:10:55.443560'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-08-19 14:10:55.459195'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-08-19 14:10:55.459195'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-08-19 14:10:55.474820'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-08-19 14:10:55.490456'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-08-19 14:10:55.490456'),
(16, 'auth', '0011_update_proxy_permissions', '2024-08-19 14:10:55.506069'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-08-19 14:10:55.521704'),
(19, 'sessions', '0001_initial', '2024-08-19 14:10:55.662320'),
(23, 'products', '0001_initial', '2024-08-20 04:33:10.150590'),
(24, 'account', '0001_initial', '2024-08-21 04:31:31.593363'),
(26, 'pay', '0001_initial', '2024-08-21 05:52:01.774867'),
(27, 'pay', '0002_kart_user_id_alter_kart_id', '2024-08-21 05:52:01.852986'),
(28, 'pay', '0003_alter_kart_id', '2024-08-21 06:14:07.831515'),
(29, 'pay', '0004_kart_time', '2024-08-21 06:30:24.405792'),
(30, 'products', '0002_kart', '2024-08-21 08:06:16.858322'),
(31, 'products', '0003_buy', '2024-08-22 07:07:44.979352'),
(32, 'products', '0004_favorite', '2024-08-23 09:26:29.519747'),
(33, 'products', '0005_product_created_at', '2024-08-24 02:45:33.234925'),
(34, 'products', '0002_count', '2024-08-24 07:22:39.299248'),
(35, 'products', '0003_rename_count_product_count', '2024-08-24 07:29:00.491943'),
(36, 'products', '0004_alter_product_count_product', '2024-08-24 08:17:39.348360'),
(37, 'products', '0005_alter_product_product_type', '2024-08-25 06:05:27.344447');

-- --------------------------------------------------------

--
-- テーブルの構造 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('02ct75y8sh09th088p9fao476b46aydm', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIn0:1siqFQ:V7_IkrgPMNxubGPP9w7q4UxcYvgaU5E4jSE_rBrMjqs', '2024-09-10 07:04:12.804044'),
('0qxd70nfs50edo5ga2tcf4l0urz9x4a9', '.eJwNzE0OAiEMQOG7sLZSfgYKl5lQKGpiIplhVsa7S97mW72vepdz7qM8RGX1nHNkrY2Nd1yZTIiox_FpV53auJpYAoNjieAdW2DXCUxFdDFsaetRq5u6Tjn2V1u_hCUZwgC2Vw9emIBIllzt3fvQjPXq9wfF-CRH:1sirgD:49LepDGpX9ajtAYz2yH-e2yrqTnroetZS5USYZIcweY', '2024-09-10 08:35:57.318870'),
('0w1vxq6mcff1qc69du4gr4cm2xwmlvfe', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIn0:1si5Qc:ezm0ZMT2Z_OUjdSXqbSSDidoCF8RsnmI1suE--Vlxww', '2024-09-08 05:04:38.020059'),
('1bmhc1t53dazplmtjingdur7ifimt0op', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0yIn0:1si51x:OWMhVUQPKCW_-oViERRp43AxTjicH-ggY8GYdbYba-E', '2024-09-08 04:39:09.492367'),
('2wrie26dxh2vx3u2rj9ik599l08pqeno', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xJnNvcnQ9IiwidXNlcl9pZCI6IjkwYTkxODA2LTJmYzQtNGViOC04OGU0LTQzY2ZmNDQ2ZDEyNCJ9:1sir1N:zy0vhCet9NwgFjAcQPiO5TnaKU0hOkl9zF0PpsGlJyY', '2024-09-10 07:53:45.680969'),
('44hug8otp4a789qx2tffszvy66x0v27x', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIiwidXNlcl9pZCI6IjkwYTkxODA2LTJmYzQtNGViOC04OGU0LTQzY2ZmNDQ2ZDEyNCJ9:1shhMZ:AjjC0M0P16WpNQirZNC0efMkMWMQl2IQx81b6v3lGbw', '2024-09-07 03:22:51.436229'),
('48hj2nd7gz0h7btgj04edxx4yt2e5e0k', 'eyJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1simrh:Kcqx9dnvaE28WJqM92zruoTtW8Q6AhmIdHfOv4rFXB4', '2024-09-10 03:27:29.794940'),
('4zrymeay4kbrzec6yafx1djmd6cqftqg', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8iLCJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1sgg1M:DwQN33vf8BpjqS5akbHm6FHU1daieYXYHnn8G9Sdb9c', '2024-09-04 07:44:44.805865'),
('50t4z2hm1iw8mdulknohzm44yy5lhd3s', 'eyJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0IiwibGFzdF9wYWdlIjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3QvP3BhZ2U9MSJ9:1siV7c:oquKplzPNWHHC-4OCntGV1lUbKEsXH6XtUS5HFR-4dk', '2024-09-09 08:30:44.481615'),
('57oe7jj9ajiunfa7bznq21pt0v2etv4o', '.eJwNy0sOwjAMANG7eI2J47j5XaYKiQNISFRtuqq4O9Fs3mYuOA_d13eDDIlKspE8cq-Coo-IMeqUq72L-GZZ4Aafcox1K0-dy2uMLRtjOdxpZnMkIrPt33bWYfriS-JFsSUKKL46TFwZW3dMGsgGcQZ-f5YAI-o:1sgybq:hcJdKUe88nB-YNF6PHcvXrSq6vMHpqLbxLano_XzjEk', '2024-09-05 03:35:38.411295'),
('5lngcr13cm6viot4kaz73fhsfzbweq2h', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIiwidXNlcl9pZCI6IjkwYTkxODA2LTJmYzQtNGViOC04OGU0LTQzY2ZmNDQ2ZDEyNCJ9:1silCN:a7s9hM7T3ekDhNsaEO0BoB2cwIGCPm47OZV3f7JSt5Y', '2024-09-10 01:40:43.574068'),
('5v5f8yrzk8e6aog5qgkedtfp0k7pg509', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIn0:1shiYb:Cbuer__Or6QlRfiaByA5dCsbauEesGiQeq5e5UBhSHA', '2024-09-07 04:39:21.591159'),
('67zbuesykdugibei7o81x9wtc3ixtxqj', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8iLCJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1shPpD:ZXdo1LZvoqMHXyhhxuvQO81v7Px_C2Wvu_1Z_2ioaMs', '2024-09-06 08:39:15.952033'),
('6mz631jg9gqw0mwljsm58vidmaqicn88', 'eyJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1sgfbs:HgMqiyGJjCt_57meW-qsZ0FuwSwxObqshIblEq3PitU', '2024-09-04 07:18:24.647939'),
('6neo4rm2gka58co5f6ykl7m8zww6neas', '.eJwNzEsOwjAMANG7eI2J47j5XaYKiQNISFRtuqq4O9Fs3mou-JRjrFt5KmR4jbFlYyyHO81sjkRktv3bzjpMX3xJvCi2RAHFV4eJK2PrjkkD2SDOwA3OQ_f13eYvUUk2kkfuVVD0ETFGnXK1dxHfLAv8_qsiI-o:1sgzEf:aCeA1g5SXXKvYQS71oY4P8csz6dkg7WXB-qEYSwFgdo', '2024-09-05 04:15:45.442833'),
('7jt55mzb9hdbc3m62ew7mk44yfz01lrv', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIn0:1shiSI:tXKk9Ju0o1uYzHecHf5FNOe1gckajoINwGTSnaYcF3M', '2024-09-07 04:32:50.084383'),
('97a9zz4zcu6oj5j63jnmshdy7rh8ozo3', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8ifQ:1sioR3:dG6PNN8LeF4WyP-ZoAWIBNtly08GMSXl4M9faZJXht8', '2024-09-10 05:08:05.940578'),
('9tg849zz8i8wptpevz4a4dclplrjei1g', 'eyJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1siVVh:XmDtzy0NM-AEn3lAosG2sqOPUZFmfzwRkhKMrSwv1E0', '2024-09-09 08:55:37.053936'),
('aph69hhypy58xwi7bf9afklhqht9mjc2', '.eJwNjEkOwyAMAP_CuRQb3MTwmYjFbitVKkrIKerfi-Yyl5nLfPIxtp6fYpJ5jdGTc-jXO0wwMQC4vn_bWYcj0aIa2QaPZOmxBls0q63RxyItMGpz5mbOQ_bt3eYvQo7IsFivdRZS2DLLtFBViZaGnszvD_Y-JRc:1sgyvW:UHDVVj7jKksYQQngtMz-Faw-It04QK5W8q3IxsQgmgQ', '2024-09-05 03:55:58.819721'),
('bq4a598s2sx86kytkshqrz83fvr3dz6u', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8iLCJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1sge23:fkv5Z2iYGq_P5hWOe8-_REaDTFvPdDzNA77moW08czY', '2024-09-04 05:37:19.852830'),
('bquhxj92mjzetqyz1vvc0y5v9jm2389w', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIn0:1shiCu:rwbRfd-nEf7YfTQ1T2YEfVEKLMw2SsWuv7zeBmv9yzg', '2024-09-07 04:16:56.230943'),
('cj3t22b49rhrbr8uw092nc7luy4f5vuu', '.eJwNzEsOwjAMANG7ZI2J41rFyWWqfGxAQiJq01XF3Ylm81ZzuU8-xtbzU11yrzF68j7Q446zkAQRfd-_7azDG6tylQZGVIEbCZSsCBSXYEE0Wy3e3dx56L692_xFzDEIrkBWGViLgIhOLdWMeW2B2P3-DGclYg:1sirmU:A0PsNWcJ6AfYztLZ07rdLVGlu43ABBxSST9aU3MrMnU', '2024-09-10 08:42:26.207766'),
('ckd03psbkea6wlwobnae1ng4naxzx22y', '.eJwNzEsOwjAMANG7ZI2JnRrXyWWqfAEJiahNVxV3J5rNW81lPvEYW4_PaoJ5jdGDteTWO84oKCLavn_LmYcVcYUpCZRFEDh5D_GxCqhjaZmqCqk1N3Medd_eZf48Rk-KAq5lBq5JQbVOLbk1Zink2Pz-m1kjxg:1sgzRV:H0sWF306IKWTFBLjzJgoad3h1tIsOCsPpO3otJ4pJCI', '2024-09-05 04:29:01.324255'),
('e3p38q54c0kih0nh1ytdy8sw12xe8mvj', '.eJwNzE0OAiEMQOG7sLZSfgYKl5lQKGpiIplhVsa7S97mW72vepdz7qM8RGX1nHNkrY2Nd1yZTIiox_FpV53auJpYAoNjieAdW2DXCUxFdDFsaetRq5u6Tjn2V1u_hCUZwgC2Vw9emIBIllzt3fvQjPXq9wfF-CRH:1sirNn:XLRxHzYxtHs5jbW1wNTDghmFAbxz218NAT0F9qP8cbQ', '2024-09-10 08:16:55.955810'),
('egke9n88nm6e35bluq5ntshfv41jdcs0', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIn0:1sinr8:Iz-goYqRtSE9TdjTYMrZhbi-1-dKt4ey0aDPmA4WZTk', '2024-09-10 04:30:58.812834'),
('ei9fz42ws8bfhy5l5ysjlqsisl83whbx', '.eJwNjEkOwyAMAP_CuRQb3MTwmYjFbitVKkrIKerfi-Yyl5nLfPIxtp6fYpJ5jdGTc-jXO0wwMQC4vn_bWYcj0aIa2QaPZOmxBls0q63RxyItMGpz5mbOQ_bt3eYvQo7IsFivdRZS2DLLtFBViZaGnszvD_Y-JRc:1shQTb:KPeblBjWOE2BC7_5sczPUbWtqKt6JQEvImRoa-tH0aA', '2024-09-06 09:20:59.784342'),
('ey89rcfr9zbles8wc8zif2nze1es5siy', '.eJwNzE0OAiEMQOG7sLZSfgYKl5lQKGpiIplhVsa7S97mW72vepdz7qM8RGX1nHNkrY2Nd1yZTIiox_FpV53auJpYAoNjieAdW2DXCUxFdDFsaetRq5u6Tjn2V1u_hCUZwgC2Vw9emIBIllzt3fvQjPXq9wfF-CRH:1sircX:k_wvrX4DwYfBPj_dGrq7yihW8R-7w0HuquTxctrEV4g', '2024-09-10 08:32:09.643989'),
('f4j6ptgxavhc2voagg4sahnu36eemc8k', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8iLCJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1shQwR:MUMrK7zbl9EdzeuARMMOd_xfr1AQs1vcItDKUUtLBxk', '2024-09-06 09:50:47.508651'),
('fkl1jdgpwx21hthxsg0s6j6zazfrm1qi', '.eJwVzEsOwjAMANG7ZI2JE5vEzWWq_AxISERtukLcnaJZv_mYV97nOvK9m2Qec45krfPximcuCSLasb3bUaeNbikhSAfy6oGpEhRUAsy3qEQhxlKsuZhj79v6bOdvwbw4wQBeKwP3IiDS-W9VmUNzns33B64yJBc:1siqc3:Rt7GsnNpwgvqYU_Z4KAyEmhtClEq9iya-BHHBlDiYtg', '2024-09-10 07:27:35.903246'),
('fu5htxgoj5oq03wcmtgwxfrr7a8915oq', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIiwidXNlcl9pZCI6IjkwYTkxODA2LTJmYzQtNGViOC04OGU0LTQzY2ZmNDQ2ZDEyNCJ9:1si2nv:3TCQyZ-E9Fchc-SnxeAt9D0ZzMAx2qsEphWLBoI_rPk', '2024-09-08 02:16:31.791669'),
('ggpdh12hgso9y75og6hmrwdola32uu1j', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_dHlwZT1jaGFyYWN0ZXIiLCJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1sioQW:Wc4aH2VtLrPWZj_gPWiKlnVCI2j7nih1Hp4ohs1wJCU', '2024-09-10 05:07:32.443389'),
('ghat1ddvu7cpv17z4a28g01p3f4wekpf', 'eyJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0IiwibGFzdF9wYWdlIjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3QvP3BhZ2U9MSJ9:1shh2O:pnGeLl40d_FFpmv1s2QIHf_lTbgl7FzjNUOkXqSNwEs', '2024-09-07 03:02:00.485948'),
('ht242imd1f933mllnek6r2rt4nzv70mo', '.eJwNy0sOwjAMANG7ZI2JnRrXyWWqfAEJiahNVxV3J5rN28xlzqPu27uYYDxGT4oCrmUGrklBtU4tuTVmKeTY3MwnHmPr8Vnn8hqjB2vJrXecUVBEtH3_ljMPK-IKUxIoiyBw8h7iYxVQx9IyVRVSa35_jRsjxg:1shJF3:qoYTUnj4dCIb9J5UXeoGYVgrjw3EEhLaOC1R0FOGrI0', '2024-09-06 01:37:29.535483'),
('hul9sgqdfo8q99ccm49mzde4ptno86cy', '.eJwNzEkOwjAMQNG7eI2Jk5hMl6kyGZCQiNp0VXF3or95q3_BJx9zG_nZIcFrzpGU0sbfaaVTICI19m8761Q6utq9ZRR5WGQqjMUYg5ytEw7ee1cV3OA8-r692_pFylEHcmikMnIvAUPoS7aKMLumDcPvD6iNI-8:1shm1Y:44zmI1qNe6VP2HHrTtYXEFEsE0Vtls6ueIMiJSTKCbg', '2024-09-07 08:21:28.500806'),
('i10pggpollhu4hhwbigmyrd16fcsf9dz', '.eJwNzEkOwjAMQNG7eI2Jk5hMl6kyGZCQiNp0VXF3or95q3_BJx9zG_nZIcFrzpGU0sbfaaVTICI19m8761Q6utq9ZRR5WGQqjMUYg5ytEw7ee1cV3OA8-r692_pFylEHcmikMnIvAUPoS7aKMLumDcPvD6iNI-8:1shj7C:TDhDa3fFHizUk-n3CulRaSVz3jQgx4YDkjfq3qfqIhg', '2024-09-07 05:15:06.714872'),
('jxmgpirdyfgpe23ubxz6k1y1bnn6oyyq', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIn0:1siO4x:m_vBT11Wd_TVNBqCd4FBTqXWIiZyNQzlB5cZAYOxttg', '2024-09-09 00:59:31.383331'),
('jy9ttkcq8fh87bch9jlwhxatan77al9n', '.eJwNjEkOwyAMAP_CuRQb3MTwmYjFbitVKkrIKerfi-Yyl5nLnIfs27uZZCLkiAyL9VrJkhS2zDItVFWipaEnczOffIyt56fM5DVGT86hX-8wwcQA4Pr-bWcdjkSLamQbPM7NYw22aFZbo49FWmDU5szvD6d_JRc:1shQMs:UIghcx6c1XjHG3Bn5_Z1C3sP75geocWi2cdCVjpS-Cc', '2024-09-06 09:14:02.503269'),
('k8zhe6wq6zt9h29zlv6xzoqym7rg5v5m', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIiwidXNlcl9pZCI6IjkwYTkxODA2LTJmYzQtNGViOC04OGU0LTQzY2ZmNDQ2ZDEyNCJ9:1shl5a:-cphYNoFwhHwkKuogEO4btpzNb0C3swAft5sHVlGeQI', '2024-09-07 07:21:34.283374'),
('ka6zgambyyl22nswwzsdoh35xy36exbj', '.eJyFyzsOwyAQRdG9UGfCDIwJsBmE-SSWLAUZXFnZeyjSR6-5xXmXOHs5wpaFFw6jI4sGVE0MXFYL1pZZOtXKbDIpFjfRjnc-0wj71sd8vcZoXkpSjzvOkbeIKH9ITr_HPkKLz_IXG6UckypAqBEYcQGXnQG3kq41pbxwkeLzBSQEMlg:1sgdyD:ct-immT-PqismZ5-gOYMmlnJ5z6Q10x-84TgXwRWHVo', '2024-09-04 05:33:21.531463'),
('kckxciiz5fr94yjf3scmv12xrl3j4gsz', 'eyJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1sioZZ:qAyf_VPT2K9DtKzXmjr2MRPmi5zjgLHmCwXqA1MsLdA', '2024-09-10 05:16:53.075525'),
('lm5kfl1rvvocsjx6x6dp046nl0r2vrai', '.eJwNzE0OAiEMQOG7sLZSfgYKl5lQKGpiIplhVsa7S97mW72vepdz7qM8RGX1nHNkrY2Nd1yZTIiox_FpV53auJpYAoNjieAdW2DXCUxFdDFsaetRq5u6Tjn2V1u_hCUZwgC2Vw9emIBIllzt3fvQjPXq9wfF-CRH:1sirR5:mFtazyp5qGb6Z9Np7MC4D_HTH6RXXp8ccZOiBSNcIgM', '2024-09-10 08:20:19.506579'),
('miv4uhcg7j8p93jb24dhdnbn16d3bamy', 'eyJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1sgfGY:sxoIvPDwwgrw45I03BFA_YRf_pj_sznskl-PNu6prxQ', '2024-09-04 06:56:22.844284'),
('oi5c8u8ynnhawacv4pw0f2c58artva8a', '.eJwNzEkOwjAMQNG7eI2Jk5hMl6kyGZCQiNp0VXF3or95q3_BJx9zG_nZIcFrzpGU0sbfaaVTICI19m8761Q6utq9ZRR5WGQqjMUYg5ytEw7ee1cV3OA8-r692_pFylEHcmikMnIvAUPoS7aKMLumDcPvD6iNI-8:1shlzl:9imJxPb3GPwdGOk3vtafcKWsK_B8t_evZl4bAC-8HCY', '2024-09-07 08:19:37.394686'),
('om6kxs7vlw0fv3iagr0ef2jqdjgrafoh', '.eJwNjEkOwyAMAP_CuRQb3MTwmYjFbitVKkrIKerfi-Yyl5nLfPIxtp6fYpJ5jdGTc-jXO0wwMQC4vn_bWYcj0aIa2QaPZOmxBls0q63RxyItMGpz5mbOQ_bt3eYvQo7IsFivdRZS2DLLtFBViZaGnszvD_Y-JRc:1shkJ8:KC8RdHU8qb3WKbg2dvJZ9jqs9c8gbO6pdEk-HACWtYQ', '2024-09-07 06:31:30.077534'),
('oudn8qvpplx6bkkyihcco9oemjavspkq', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_JnNvcnQ9cG9wdWxhciIsInVzZXJfaWQiOiI5MGE5MTgwNi0yZmM0LTRlYjgtODhlNC00M2NmZjQ0NmQxMjQifQ:1si8KY:BrBgJ9_PWfE4uvlEUP3VhR-WP755ewNVwZmmmEg4JDI', '2024-09-08 08:10:34.384896'),
('p7hvdbpe58eli1kqqnrlwyeukcuifwsr', '.eJwNy0sOwjAMANG7ZI2JnRrXyWWqfAEJiahNVxV3J5rN28xlzqPu27uYYDxGT4oCrmUGrklBtU4tuTVmKeTY3MwnHmPr8Vnn8hqjB2vJrXecUVBEtH3_ljMPK-IKUxIoiyBw8h7iYxVQx9IyVRVSa35_jRsjxg:1sgys2:ttyLn7e74EEjEzqiqzMrCDnSaQlqaFzJVucNi1tWch4', '2024-09-05 03:52:22.031497'),
('ptmf0jfd2ptkpkscb1bnkdb4fwd8h3cp', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIiwidXNlcl9pZCI6IjkwYTkxODA2LTJmYzQtNGViOC04OGU0LTQzY2ZmNDQ2ZDEyNCJ9:1sirE6:xLAvl0SmlZfAXNcrZ-dVjGa1oZspYKqJ7gD0jP3CgIM', '2024-09-10 08:06:54.208609'),
('s58vt01swwjdg9vtc5301ld781jrs518', '.eJwNy0kOwjAMQNG7eI2Jk5hMl6kyGZCQiNp0VXF3or95m3_BefR9ezdIEClHHcihkcrIvQQMoS_ZKsLsmjYMN_jkY24jP_taXnOOpJQ2_k4rnQIRqbF_21mn0tHV7i2jyMMiU2EsxhjkbJ1w8N67quD3B5J2I-8:1sin1r:a5XfHXiWjJYzUDtIGjDkG3jmTD9UKIKehokscm06F6U', '2024-09-10 03:37:59.289626'),
('suigpdi6vlgqpyc25kmqwchq047t873m', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIiwidXNlcl9pZCI6IjkwYTkxODA2LTJmYzQtNGViOC04OGU0LTQzY2ZmNDQ2ZDEyNCJ9:1siO63:EGWACnEhL2zH0X8TTNSewMhY2zJNas0XMemsw1VNMXQ', '2024-09-09 01:00:39.023374'),
('taa7flyineobntaz2u8ececmtohodwyz', 'eyJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1sh0mk:HRGElS_2hPtS1dHXH_ORL0TMWHHnxzJYx9ZZiPZttO0', '2024-09-05 05:55:02.124359'),
('u68uhp85pnrfjnsbxiih0lrvzoggoo5x', 'eyJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1silaD:arNdDK2sXIisiRM71RkYxNEJlSOKPmpXv9b96288_KY', '2024-09-10 02:05:21.026246'),
('u74mrl8jz7al938fsvepmfmoeyqny89u', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8iLCJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1shPqa:bMeq18g-vY-XnKpJxcJcvvAMhxnsMnxR5RnKxD37XXc', '2024-09-06 08:40:40.039237'),
('vbr1s1ylxnxhsq54esrjhtf3xbhnq998', '.eJwNzEkOwjAMQNG7eI2Jk5hMl6kyGZCQiNp0VXF3or95q3_BJx9zG_nZIcFrzpGU0sbfaaVTICI19m8761Q6utq9ZRR5WGQqjMUYg5ytEw7ee1cV3OA8-r692_pFylEHcmikMnIvAUPoS7aKMLumDcPvD6iNI-8:1shlfo:kAOaL35IFNlPzoRlOSMcTKFvD_SlinkszpDGck5Cc6w', '2024-09-07 07:59:00.550366'),
('veakehrj04krojzfwhgtiidtc40czbla', '.eJwNzEkOwjAMQNG7eI2Jk5hMl6kyGZCQiNp0VXF3or95q3_BJx9zG_nZIcFrzpGU0sbfaaVTICI19m8761Q6utq9ZRR5WGQqjMUYg5ytEw7ee1cV3OA8-r692_pFylEHcmikMnIvAUPoS7aKMLumDcPvD6iNI-8:1shjLE:Gu1O12ZtCNVyURy11UUUFcAY3fHGfE4FkJCct3CeLqM', '2024-09-07 05:29:36.803630'),
('vslvl0uf9c7okrjbmnp6wtchmxtui8cm', '.eJwNjEkOwyAMAP_CuRQb3MTwmYjFbitVKkrIKerfi-Yyl5nLfPIxtp6fYpJ5jdGTc-jXO0wwMQC4vn_bWYcj0aIa2QaPZOmxBls0q63RxyItMGpz5mbOQ_bt3eYvQo7IsFivdRZS2DLLtFBViZaGnszvD_Y-JRc:1shQnC:NYWKYSmLGyiGjUYorOLBuYaAYz4WQVynen3vdf_S-Hc', '2024-09-06 09:41:14.443255'),
('wbkx6ycq8znw2v7vq7cos5v8w7fxj7bx', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIiwidXNlcl9pZCI6IjkwYTkxODA2LTJmYzQtNGViOC04OGU0LTQzY2ZmNDQ2ZDEyNCJ9:1siNlh:wSzO3BFxRb8rnHd0qQL3ByPFKoCx2hY1NA4siN-GxcY', '2024-09-09 00:39:37.208673'),
('wpgyyvdksiuge7vqkss3t58fuwo9boow', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIiwidXNlcl9pZCI6IjkwYTkxODA2LTJmYzQtNGViOC04OGU0LTQzY2ZmNDQ2ZDEyNCJ9:1siqys:AfsbIbBUEDfG8alByZ_lGp0sxMrklIvEVKHrw2V4TL4', '2024-09-10 07:51:10.646443'),
('wqhdaal6oiw6egim287uodsq9n7ptawe', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_JnNvcnQ9bmV3IiwidXNlcl9pZCI6IjkwYTkxODA2LTJmYzQtNGViOC04OGU0LTQzY2ZmNDQ2ZDEyNCJ9:1siruR:TmVSNLL_YcDQ1E2Tud6Ncn56xSkD9J3WrDhT1cRuKVM', '2024-09-10 08:50:39.872204'),
('x4uw2dbd3ei3vq1iypsb8oqetw4bffck', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xJnNvcnQ9IiwidXNlcl9pZCI6IjkwYTkxODA2LTJmYzQtNGViOC04OGU0LTQzY2ZmNDQ2ZDEyNCJ9:1si81H:3XzKl5IvGkifqFKwqFnOAFqEn6w34UFMAPiSMQ0Lp9E', '2024-09-08 07:50:39.008802'),
('xu9ws38le2g5k2i8y0ge8uq3p7yznewm', 'eyJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0In0:1silv6:-9aRE9vB58Hy1Kgl7t7UYhoG7d9gB7vvGr9V7fYgmjw', '2024-09-10 02:26:56.896587'),
('zm31yiosfy3y0wpnmepr8yfw7m2d52ai', 'eyJsYXN0X3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdC8_cGFnZT0xIn0:1sirGy:AJTTAuOeJO573qMbmTWID_TbutGT2pR6htK1rAAWFfc', '2024-09-10 08:09:52.785924'),
('zooyvqzkyymwkjak9ldbl8vxuoorv1pz', '.eJwNzEsOwyAMANG7eF0XGxyKuUxE-LSVKhUlZBX17kWzeau54JOOsfb0rBDhNUaPxrB93GnGMRCR6fu3nHkYb60K24pMjlCIFtSiHnVj11rOZZFq4AbnUff1XeZPKSkH8mhbFpS6BQyhTrncmogvbAV-f5OJI-A:1sgfDM:O0qQ0PoCesJGk65U3Ev_BqFxFS3ndHlXQzD1i7GyktE', '2024-09-04 06:53:04.142258'),
('zzon217k62ee8ifhaab8ozuo3xsbc72n', 'eyJ1c2VyX2lkIjoiOTBhOTE4MDYtMmZjNC00ZWI4LTg4ZTQtNDNjZmY0NDZkMTI0IiwibGFzdF9wYWdlIjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2R1Y3QvIn0:1sgwR2:XVJ0rqFJDBpr2DaAENML0fUwH6EyBX1Di49DLQDYqA8', '2024-09-05 01:16:20.028984');

-- --------------------------------------------------------

--
-- テーブルの構造 `pay_kart`
--

CREATE TABLE `pay_kart` (
  `id` char(32) NOT NULL,
  `color` varchar(10) NOT NULL,
  `count` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `product_id` char(32) NOT NULL,
  `user_id_id` char(32) NOT NULL,
  `time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `pay_kart`
--

INSERT INTO `pay_kart` (`id`, `color`, `count`, `image`, `product_id`, `user_id_id`, `time`) VALUES
('1d42628a79ef4148818b11fba8c90edd', '#ebade3', 11, 'top3_WY65O1q.webp', '6229412e103040059d969b13ffccd54e', '90a918062fc44eb888e443cff446d124', '2024-08-21 15:40:28.741130'),
('360c5130bab34d4f9482fc125a2e33de', '#ebade3', 10, 'top3_WY65O1q.webp', '6229412e103040059d969b13ffccd54e', '90a918062fc44eb888e443cff446d124', '2024-08-21 15:49:21.438083'),
('52444ac1771942b99fd38ce20824f611', '#000000', 3, 'top5.webp', 'f56a925ed90746c392c2df320e701743', '90a918062fc44eb888e443cff446d124', '2024-08-21 15:31:27.263018'),
('5edbe51ee3d8483080e8c197bd50f95e', '#ebade3', 10, 'top3_WY65O1q.webp', '6229412e103040059d969b13ffccd54e', '90a918062fc44eb888e443cff446d124', '2024-08-21 15:41:14.909716'),
('8a9af19cac8b4849ae525b2e672f6e44', '#ebade3', 9, 'top3_WY65O1q.webp', '6229412e103040059d969b13ffccd54e', '90a918062fc44eb888e443cff446d124', '2024-08-21 15:40:51.086012'),
('8cf2fc5057774a36b6297a1e39c9d923', '#000000', 2, 'top5.webp', 'f56a925ed90746c392c2df320e701743', '90a918062fc44eb888e443cff446d124', '2024-08-21 15:30:24.387834'),
('90a0f11f6d164da58eb199fa1530dcab', '#0f3de6', 12, 'top4.webp', '4efbff9832144573bfafc929bed381fd', '90a918062fc44eb888e443cff446d124', '2024-08-21 15:30:48.990602'),
('de6966e2ef73485ca922d3526f6c4b61', '#c787cf', 44, 'top4.webp', '4efbff9832144573bfafc929bed381fd', '90a918062fc44eb888e443cff446d124', '2024-08-21 15:39:30.105959'),
('f35791f1b07043cba2c7397f813eb967', '#0f3de6', 34, 'top4.webp', '4efbff9832144573bfafc929bed381fd', '90a918062fc44eb888e443cff446d124', '2024-08-21 15:38:51.694666');

-- --------------------------------------------------------

--
-- テーブルの構造 `products_buy`
--

CREATE TABLE `products_buy` (
  `id` char(32) NOT NULL,
  `color` varchar(10) NOT NULL,
  `count` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  `product_id` char(32) NOT NULL,
  `user_id_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `products_buy`
--

INSERT INTO `products_buy` (`id`, `color`, `count`, `image`, `time`, `product_id`, `user_id_id`) VALUES
('0fd629476a0f434cbae7716662b10a3a', '#a9692d', 4, 'top8.webp', '2024-08-27 12:56:22.473593', '196ce734ff5340b4b2224a36f487776c', '90a918062fc44eb888e443cff446d124'),
('10d13fe0a27b4659bb7960964042e2b5', '#e3e3e3', 37, 'top4.webp', '2024-08-22 17:01:02.193790', '4efbff9832144573bfafc929bed381fd', '90a918062fc44eb888e443cff446d124'),
('10dd67fae85a4e3795199abcdabb42ac', '#0f3de6', 29, 'top4.webp', '2024-08-22 17:06:14.736169', '4efbff9832144573bfafc929bed381fd', '90a918062fc44eb888e443cff446d124'),
('12568cf60bf2473dad980aeb06dd3709', '#0f3de6', 31, 'top4.webp', '2024-08-22 17:04:50.380030', '4efbff9832144573bfafc929bed381fd', '90a918062fc44eb888e443cff446d124'),
('1aba3e1fc7e142dcafccd4f77ff9451d', '#ffffff', 10, 'top6.webp', '2024-08-22 16:22:37.974648', 'f9619aee4f6542af8081c8ed0626ba1b', '90a918062fc44eb888e443cff446d124'),
('27dacfbd71704b2a81e1533a6cf8d70e', '#509b46', 5, 'top9.jpg', '2024-08-24 16:23:20.044366', 'fa397cd7cf6f4efba87d7e7013baaa5a', '90a918062fc44eb888e443cff446d124'),
('3aba83ec386b471ab7ba8ecd5c68c879', '#906e31', 10, 'top7.webp', '2024-08-22 16:22:37.957636', '662d41b6d3604b99a5768246fc1e8618', '90a918062fc44eb888e443cff446d124'),
('3fa728d912a7466497c6a724b8de5664', '#000000', 1, 'top5.webp', '2024-08-22 17:10:46.827141', 'f56a925ed90746c392c2df320e701743', '90a918062fc44eb888e443cff446d124'),
('48fceba57234472f923e6c8707e7e080', '#c787cf', 4, 'top4.webp', '2024-08-22 16:22:37.963635', '4efbff9832144573bfafc929bed381fd', '90a918062fc44eb888e443cff446d124'),
('5324af52e8fc47e19235b2754daf4dc1', '#ffffff', 16, 'top10.avif', '2024-08-24 16:29:28.144738', '97276c5be9cf42248bf8c972c8217000', '90a918062fc44eb888e443cff446d124'),
('591556d13a5146fcabc92e7fdf4f128d', '#ffffff', 4, 'top10.avif', '2024-08-24 16:29:59.598691', '97276c5be9cf42248bf8c972c8217000', '90a918062fc44eb888e443cff446d124'),
('5da9d4ada5864598ac89134750f4b352', '#000000', 5, 'top5.webp', '2024-08-22 16:24:10.304413', 'f56a925ed90746c392c2df320e701743', '90a918062fc44eb888e443cff446d124'),
('6343d47e3f67450fb75a9405b965cef7', '#ffffff', 3, 'top11.avif', '2024-08-24 16:25:55.328017', '13c9be6b3be743b2b3f81c00376595f7', '90a918062fc44eb888e443cff446d124'),
('a49da3174aae4982bccdd5564098c01a', '#e3e3e3', 3, 'top4.webp', '2024-08-22 16:22:37.969635', '4efbff9832144573bfafc929bed381fd', '90a918062fc44eb888e443cff446d124'),
('c740ba3560ae4211bc16cec45ba807c5', '#e3e3e3', 32, 'top4.webp', '2024-08-22 17:03:36.474713', '4efbff9832144573bfafc929bed381fd', '90a918062fc44eb888e443cff446d124'),
('ca767f66b7db4d5e85d85ad68e009c30', '#12de60', 5, 'top8.webp', '2024-08-24 17:27:07.123083', '196ce734ff5340b4b2224a36f487776c', '90a918062fc44eb888e443cff446d124'),
('caae2cbd325e45c8b5983732654f458c', '#1219ed', 4, 'top12.avif', '2024-08-24 16:27:37.821257', 'd19b75a4cdc94ce38546259e7cc36124', '90a918062fc44eb888e443cff446d124'),
('dad8d8a37477491581c0110b3c7d5f9a', '#000000', 10, 'top5.webp', '2024-08-22 16:22:37.945154', 'f56a925ed90746c392c2df320e701743', '90a918062fc44eb888e443cff446d124'),
('f432a14b4ac1409c9af44581c2899f4d', '#0f3de6', 29, 'top4.webp', '2024-08-22 17:08:19.880861', '4efbff9832144573bfafc929bed381fd', '90a918062fc44eb888e443cff446d124');

-- --------------------------------------------------------

--
-- テーブルの構造 `products_color`
--

CREATE TABLE `products_color` (
  `id` int(11) NOT NULL,
  `color` varchar(10) NOT NULL,
  `product_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `products_color`
--

INSERT INTO `products_color` (`id`, `color`, `product_id`) VALUES
(1, '#6d5431', '6229412e103040059d969b13ffccd54e'),
(2, '#ebade3', '6229412e103040059d969b13ffccd54e'),
(3, '#e3e3e3', '4efbff9832144573bfafc929bed381fd'),
(4, '#0f3de6', '4efbff9832144573bfafc929bed381fd'),
(5, '#c787cf', '4efbff9832144573bfafc929bed381fd'),
(6, '#000000', 'f56a925ed90746c392c2df320e701743'),
(7, '#ffffff', 'f9619aee4f6542af8081c8ed0626ba1b'),
(8, '#ffffff', '662d41b6d3604b99a5768246fc1e8618'),
(9, '#906e31', '662d41b6d3604b99a5768246fc1e8618'),
(10, '#12de60', '196ce734ff5340b4b2224a36f487776c'),
(11, '#cec5c5', '196ce734ff5340b4b2224a36f487776c'),
(12, '#a9692d', '196ce734ff5340b4b2224a36f487776c'),
(13, '#757575', '196ce734ff5340b4b2224a36f487776c'),
(14, '#dedede', '196ce734ff5340b4b2224a36f487776c'),
(15, '#ff00e1', '196ce734ff5340b4b2224a36f487776c'),
(16, '#509b46', 'fa397cd7cf6f4efba87d7e7013baaa5a'),
(17, '#ffffff', '97276c5be9cf42248bf8c972c8217000'),
(18, '#ffffff', '13c9be6b3be743b2b3f81c00376595f7'),
(19, '#c4c4c4', 'd19b75a4cdc94ce38546259e7cc36124'),
(20, '#b17e25', 'd19b75a4cdc94ce38546259e7cc36124'),
(21, '#1219ed', 'd19b75a4cdc94ce38546259e7cc36124'),
(22, '#ffffff', '71da678bca914cbd93bb879befd9f640'),
(23, '#3616d4', '71da678bca914cbd93bb879befd9f640'),
(24, '#858585', '71da678bca914cbd93bb879befd9f640'),
(25, '#51bacd', 'ce98277f17534394951c415c019b1dd5'),
(26, '#f1f41f', 'ce98277f17534394951c415c019b1dd5'),
(27, '#ee5dcf', '72a4f89956644b44912c34d53da1cf6a'),
(28, '#f5f5f5', '72a4f89956644b44912c34d53da1cf6a'),
(29, '#b87e19', '719b668e32f243c3b0f30a57f33677bb'),
(30, '#ffa53d', '9457a304d5c9452583a4f56dfad9302b'),
(31, '#f2933a', 'f4ee4c8df22c4d28bae02931f18eafcb'),
(32, '#ed92c7', '24e889de8577427b82201d7d1457ce01'),
(33, '#f4a3ff', '24e889de8577427b82201d7d1457ce01');

-- --------------------------------------------------------

--
-- テーブルの構造 `products_favorite`
--

CREATE TABLE `products_favorite` (
  `id` char(32) NOT NULL,
  `product_id` char(32) NOT NULL,
  `user_id_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `products_favorite`
--

INSERT INTO `products_favorite` (`id`, `product_id`, `user_id_id`) VALUES
('1cd1dccba1e448cfb19f93dd34493a7a', '4efbff9832144573bfafc929bed381fd', '90a918062fc44eb888e443cff446d124'),
('c0ee5cc912ba4818ab9825fc4da90fc2', '6229412e103040059d969b13ffccd54e', '90a918062fc44eb888e443cff446d124'),
('e6b04fe983794b35ada920ad36024e92', '97276c5be9cf42248bf8c972c8217000', '90a918062fc44eb888e443cff446d124');

-- --------------------------------------------------------

--
-- テーブルの構造 `products_image`
--

CREATE TABLE `products_image` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `product_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `products_image`
--

INSERT INTO `products_image` (`id`, `image`, `product_id`) VALUES
(1, 'sub31_2fXVBXg.webp', '6229412e103040059d969b13ffccd54e'),
(2, 'sub32_owHbH0e.webp', '6229412e103040059d969b13ffccd54e'),
(3, 'sub33_6ZURLE4.webp', '6229412e103040059d969b13ffccd54e'),
(4, 'sub34_BanEdXQ.webp', '6229412e103040059d969b13ffccd54e'),
(5, 'sub41.webp', '4efbff9832144573bfafc929bed381fd'),
(6, 'sub42.webp', '4efbff9832144573bfafc929bed381fd'),
(7, 'sub43.webp', '4efbff9832144573bfafc929bed381fd'),
(8, 'sub51.webp', 'f56a925ed90746c392c2df320e701743'),
(9, 'sub52.webp', 'f56a925ed90746c392c2df320e701743'),
(10, 'sub61.webp', 'f9619aee4f6542af8081c8ed0626ba1b'),
(11, 'sub62.webp', 'f9619aee4f6542af8081c8ed0626ba1b'),
(12, 'sub71.webp', '662d41b6d3604b99a5768246fc1e8618'),
(13, 'sub72.webp', '662d41b6d3604b99a5768246fc1e8618'),
(14, 'sub73.webp', '662d41b6d3604b99a5768246fc1e8618'),
(15, 'sub74.webp', '662d41b6d3604b99a5768246fc1e8618'),
(16, 'sub75.webp', '662d41b6d3604b99a5768246fc1e8618'),
(17, 'sub81.webp', '196ce734ff5340b4b2224a36f487776c'),
(18, 'sub82.webp', '196ce734ff5340b4b2224a36f487776c'),
(19, 'sub83.webp', '196ce734ff5340b4b2224a36f487776c'),
(20, 'sub84.webp', '196ce734ff5340b4b2224a36f487776c'),
(21, 'sub1.jpg', 'fa397cd7cf6f4efba87d7e7013baaa5a'),
(22, 'sub82.jpg', 'fa397cd7cf6f4efba87d7e7013baaa5a'),
(23, 'sub93.jpg', 'fa397cd7cf6f4efba87d7e7013baaa5a'),
(24, 'sub101.jpg', '97276c5be9cf42248bf8c972c8217000'),
(25, 'sub102.jpg', '97276c5be9cf42248bf8c972c8217000'),
(26, 'sub103.jpg', '97276c5be9cf42248bf8c972c8217000'),
(27, 'sub104.jpg', '97276c5be9cf42248bf8c972c8217000'),
(28, 'sub111.avif', '13c9be6b3be743b2b3f81c00376595f7'),
(29, 'sub112.avif', '13c9be6b3be743b2b3f81c00376595f7'),
(30, 'sub113.avif', '13c9be6b3be743b2b3f81c00376595f7'),
(31, 'sub114.jpg', '13c9be6b3be743b2b3f81c00376595f7'),
(32, 'sub115.jpg', '13c9be6b3be743b2b3f81c00376595f7'),
(33, 'sub116.avif', '13c9be6b3be743b2b3f81c00376595f7'),
(34, 'sub121.avif', 'd19b75a4cdc94ce38546259e7cc36124'),
(35, 'sub122.avif', 'd19b75a4cdc94ce38546259e7cc36124'),
(36, 'sub123.jpg', 'd19b75a4cdc94ce38546259e7cc36124'),
(37, 'sub124.jpg', 'd19b75a4cdc94ce38546259e7cc36124'),
(38, 'sub125.jpg', 'd19b75a4cdc94ce38546259e7cc36124'),
(39, 'sub126.jpg', 'd19b75a4cdc94ce38546259e7cc36124'),
(40, 'sub131.avif', '71da678bca914cbd93bb879befd9f640'),
(41, 'sub132.avif', '71da678bca914cbd93bb879befd9f640'),
(42, 'sub133.avif', '71da678bca914cbd93bb879befd9f640'),
(43, 'sub134.avif', '71da678bca914cbd93bb879befd9f640'),
(44, 'sub141.webp', 'ce98277f17534394951c415c019b1dd5'),
(45, 'sub142.webp', 'ce98277f17534394951c415c019b1dd5'),
(46, 'sub143.webp', 'ce98277f17534394951c415c019b1dd5'),
(47, 'sub144.webp', 'ce98277f17534394951c415c019b1dd5'),
(48, 'sub151.webp', '72a4f89956644b44912c34d53da1cf6a'),
(49, 'sub152.webp', '72a4f89956644b44912c34d53da1cf6a'),
(50, 'sub153.webp', '72a4f89956644b44912c34d53da1cf6a'),
(51, 'sub161.jpg', '719b668e32f243c3b0f30a57f33677bb'),
(52, 'sub162.jpg', '719b668e32f243c3b0f30a57f33677bb'),
(53, 'sub163.jpg', '719b668e32f243c3b0f30a57f33677bb'),
(54, 'sub171.jpg', '9457a304d5c9452583a4f56dfad9302b'),
(55, 'sub172.jpg', '9457a304d5c9452583a4f56dfad9302b'),
(56, 'sub173.jpg', '9457a304d5c9452583a4f56dfad9302b'),
(57, 'sub174.jpg', '9457a304d5c9452583a4f56dfad9302b'),
(58, 'sub175.jpg', '9457a304d5c9452583a4f56dfad9302b'),
(59, 'sub176.jpg', '9457a304d5c9452583a4f56dfad9302b'),
(60, 'sub181.jpg', 'f4ee4c8df22c4d28bae02931f18eafcb'),
(61, 'sub182.jpg', 'f4ee4c8df22c4d28bae02931f18eafcb'),
(62, 'sub183.jpg', 'f4ee4c8df22c4d28bae02931f18eafcb'),
(63, 'sub184.jpg', 'f4ee4c8df22c4d28bae02931f18eafcb'),
(64, 'sub185.jpg', 'f4ee4c8df22c4d28bae02931f18eafcb'),
(65, 'sub191.webp', '24e889de8577427b82201d7d1457ce01'),
(66, 'sub192.webp', '24e889de8577427b82201d7d1457ce01'),
(67, 'sub193.webp', '24e889de8577427b82201d7d1457ce01'),
(68, 'sub194.webp', '24e889de8577427b82201d7d1457ce01'),
(69, 'sub195.webp', '24e889de8577427b82201d7d1457ce01');

-- --------------------------------------------------------

--
-- テーブルの構造 `products_kart`
--

CREATE TABLE `products_kart` (
  `id` char(32) NOT NULL,
  `color` varchar(10) NOT NULL,
  `count` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  `product_id` char(32) NOT NULL,
  `user_id_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `products_product`
--

CREATE TABLE `products_product` (
  `id` char(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `top_img` varchar(100) NOT NULL,
  `product_type` varchar(11) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `products_product`
--

INSERT INTO `products_product` (`id`, `name`, `description`, `price`, `stock`, `top_img`, `product_type`, `created_at`) VALUES
('13c9be6b3be743b2b3f81c00376595f7', 'モチモチクッション　ニクマン', 'にくまん型もちもちクッション。やみつきになるモチモチ触感。\r\n        ', 1990, 97, 'top11.avif', 'Plain_color', '2024-08-24 12:08:58.753131'),
('196ce734ff5340b4b2224a36f487776c', 'もちもちクッション', 'モチモチで好みの柔らかさ！使い心地が良いです。', 4900, 91, 'top8.webp', 'Plain_color', '2024-08-24 11:45:33.205091'),
('24e889de8577427b82201d7d1457ce01', 'マカロンヌ クッション', '触り心地柔らかなもちもちの抱き心地抜群のマカロンクッションです。\r\n繊維が通常の約10分の１の太さのマイクロファイバー綿を使用しており、ふわふわで滑らかな触り心地を体感いただけます。\r\nバイカラーの見た目が可愛くお部屋に飾りつつ、お部屋でゆったり過ごす際のお供におすすめです。\r\n\r\n優しい色味のピンクとホワイトの色合いがお部屋を明るく、癒しの空間してくれます。\r\n        ', 3500, 100, 'top19.webp', 'Plain_color', '2024-08-27 16:44:49.928655'),
('4efbff9832144573bfafc929bed381fd', '手編みの正方形のクッション結び枕', '\r\n  お手入れ方法: 洗濯機洗い\r\nオールシーズン: すべての季節\r\nスタイル: ミニマリスト\r\n閉鎖タイプ: 他の閉鎖タイプ\r\nテーマ: スペース\r\nパターン: 幾何学模様\r\n特別な機能: 洗える\r\n対象年齢: アダルト\r\n本製品の推奨用途: 多目的\r\nカバー素材: 5% スパンデックス,95% 合成\r\n充填材料: 100% ポリエステル繊維\r\n製織方法: 織物\r\n電源供給: 電気なしでの使用\r\nバッテリーの特性: バッテリーなし      ', 5600, 0, 'top4.webp', 'Plain_color', '2024-08-24 11:45:33.205091'),
('6229412e103040059d969b13ffccd54e', 'ヴィンテージスタイルのクッキーサンドイッチピロー', 'お手入れ方法: ドライクリーニングのみ\r\nオールシーズン: すべての季節\r\nスタイル: ビンテージ\r\n閉鎖タイプ: 他の閉鎖タイプ\r\nテーマ: その他のトピックス\r\nパターン: その他のパターン\r\n特別な機能: 低刺激性\r\n本製品の推奨用途: 多目的\r\nカバー素材: 100% ポリエステル\r\n充填材料: 100% ポリエステル\r\n製織方法: ニット生地\r\n電源供給: 電気なしでの使用\r\nバッテリーの特性: バッテリーなし\r\n生地平方重量: 250～300g\r\nパターンタイプ: 印刷なし\r\n素材: 他の\r\n職人技: 編み物', 4500, 29, 'top3_WY65O1q.webp', 'Plain_color', '2024-08-24 11:45:33.205091'),
('662d41b6d3604b99a5768246fc1e8618', 'ハンドル付きのスツール用クッション', 'お手入れ方法: 手洗のみ\r\nオールシーズン: すべての季節\r\nスタイル: クラシック\r\n閉鎖タイプ: 縫い目\r\nテーマ: その他のトピックス\r\nパターン: その他のパターン\r\n特別な機能: 洗える\r\n本製品の推奨用途: 多目的\r\nカバー素材: 100% ポリエステル\r\n充填材料: 100% ポリエステル\r\n製織方法: 織物\r\n電源供給: 電気なしでの使用\r\nバッテリーの特性: バッテリーなし\r\n生地平方重量: 200～250g\r\nパターンタイプ: 印刷なし\r\n素材: ショートぬいぐるみ\r\n職人技: ステッチ      ', 4300, 0, 'top7.webp', 'Plain_color', '2024-08-24 11:45:33.205091'),
('719b668e32f243c3b0f30a57f33677bb', ' セルタン(Cellutane) クッション 食パン', '\r\n        ', 3400, 100, 'top16.jpg', 'Plain_color', '2024-08-27 16:26:21.749698'),
('71da678bca914cbd93bb879befd9f640', 'FISKUV フィスクヴ', 'お子さまが疲れてちょっと横になるときに頭をのせる枕にもなります。顔をうずめたくなる柔らかさです。 安全性のテスト済みです\r\n\r\nベッドやソファ、くつろぎのコーナーに、かわいらしいクッションがいくつか置けば、子ども部屋がもっと居心地よい雰囲気になります\r\n\r\nポリエステルの中綿は型崩れしにくく、お子さまの体を優しくサポートします\r\n\r\n抱きしめたときに柔らかく、本を読んだり遊んだりするときに背もたれとしても活躍する大きなクッション\r\n\r\n部屋のデコレーションにもなるステキなクッション。同じシリーズのクッションと組み合わせてお使いください\r\n\r\n洗濯機で洗えるので、お手入れが簡単です\r\n        ', 1299, 100, 'top13.avif', 'character', '2024-08-27 16:15:19.016472'),
('72a4f89956644b44912c34d53da1cf6a', 'フロアクッション', 'アクセントになるカラーと、程よいカジュアルさが魅力のクッション。お部屋をもっと居心地の良い空間へとムードアップしてくれます。\r\n        ', 2300, 100, 'top15.webp', 'Plain_color', '2024-08-27 16:22:50.825387'),
('9457a304d5c9452583a4f56dfad9302b', 'Homehalo柴犬', '【超～可愛い柴犬ぬいぐるみ】丸っこい犬ちゃんを眺めていても、可愛くて癒されます。ふんわりもちもち感にゆるい顔が心を癒してくれます。もちもちぷるんな尻尾の感触も最高です。柴犬ちゃんを抱いて、幸せになります！抱きしめると柔らかくもちもち、ちょうど良い感じに。仕事て疲れて帰っても、抱っこしてたら嫌な事も忘れてぐっすり眠れました。寒い時はこれを膝に乗せると暖かいのでとても重宝します。\r\n        ', 2300, 100, 'top17.jpg', 'character', '2024-08-27 16:36:40.307504'),
('97276c5be9cf42248bf8c972c8217000', 'miffy ミッフィーボアダイカットクッション', 'ミッフィーのお顔の形をしたボア生地のダイカットクッションです。\r\nお部屋にちょこんと置くだけでも、とっても可愛いおすすめ商品です。\r\n        ', 2750, 80, 'top10.avif', 'character', '2024-08-24 11:49:41.377083'),
('ce98277f17534394951c415c019b1dd5', 'ボア生地クッション', '手触りの良いふわふわのボア生地クッション。表と裏でカラーが違うバイカラー使用なのでインテリアを楽しめます。\r\n        ', 3444, 100, 'top14.webp', 'Plain_color', '2024-08-27 16:18:50.659716'),
('d19b75a4cdc94ce38546259e7cc36124', '洗える モチモチクッション', 'やみつきになるモチモチ触感！\r\n手洗い可能でもっと清潔・快適。\r\n        ', 960, 96, 'top12.avif', 'Plain_color', '2024-08-24 12:16:50.710643'),
('f4ee4c8df22c4d28bae02931f18eafcb', 'スズメぬいぐるみ', 'ふわふわ・もちもちの手触りとキュートな見た目で思わず抱きしめたくなるのぬいぐるみです。一日仕事が終わり家に帰った時、ストレスがたまった 時、癒し顔をしているぬいぐるみをギュッと 抱きしめると悩みがすぐなくなります。バレンタインデー、子供の日、お誕生日、クリスマス、お正月プレゼントとして、とってもいいです。色々な使い方のある多用途クッションです。 寝枕にしても、抱き枕にしても、腰当てクッションに しても、上に座っても、寄りかかっても、肘あてにし ても、子供の玩具、ぬいぐるみとしてもＯＫです。 お気分に合わせて、気楽に使うことができます。\r\n        ', 3000, 100, 'top18.jpg', 'character', '2024-08-27 16:40:08.598041'),
('f56a925ed90746c392c2df320e701743', 'コンテンポラリーマイクロファイバーパンダ抱き枕', 'お手入れ方法: 手洗のみ\r\nオールシーズン: すべての季節\r\n閉鎖タイプ: ジッパー\r\nテーマ: アニメ\r\n本製品の推奨用途: 多目的\r\nカバー素材: 100% フェイクファー\r\n充填材料: 100% ポリエステル繊維\r\n対象年齢層: 12歳（含まれない） - 14歳（含む）     ', 4800, 34, 'top5.webp', 'character', '2024-08-24 11:45:33.205091'),
('f9619aee4f6542af8081c8ed0626ba1b', 'カラフルな幾何学模様の刺繍入りキャンバス枕', '\r\nお手入れ方法: 洗濯機洗い\r\nスタイル: アールデコ\r\n閉鎖タイプ: ジッパー\r\nテーマ: その他のトピックス\r\nパターン: 幾何学模様\r\n特別な機能: その他の特殊機能\r\n本製品の推奨用途: 多目的\r\nカバー素材: 100% ポリエステル\r\n充填材料: 100% ポリエステル\r\n製織方法: ニット生地     ', 3400, 0, 'top6.webp', 'patterned', '2024-08-24 11:45:33.205091'),
('fa397cd7cf6f4efba87d7e7013baaa5a', 'Moe Kakimoto×unico クッション', 'グラフィックデザイナーMoe Kakimotoさんとのコラボにより生まれた、お部屋を楽しい雰囲気にしてくれるクッションカバー。\r\nネコとリンゴのポップでかわいらしいイラストを、ジャガード編みで立体的に表現した温かみのある柄が魅力です。\r\n両面デザインで、気分やインテリアに合わせて好きな方を表にして使えます\r\n        ', 3960, 95, 'top9.jpg', 'character', '2024-08-24 11:45:33.205091');

-- --------------------------------------------------------

--
-- テーブルの構造 `products_product_count`
--

CREATE TABLE `products_product_count` (
  `id` char(32) NOT NULL,
  `buy_count` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `product_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `products_product_count`
--

INSERT INTO `products_product_count` (`id`, `buy_count`, `view_count`, `product_id`) VALUES
('15216031f02a4380a2b09088a6a3cc81', 0, 3, '719b668e32f243c3b0f30a57f33677bb'),
('1bd103a0172347269d837e02c40f12f7', 9, 52, '196ce734ff5340b4b2224a36f487776c'),
('538bd7c602b34cc0a12a56268c716fe4', 0, 58, '13c9be6b3be743b2b3f81c00376595f7'),
('5bbc8c4ee46c437598a687ea26faac92', 0, 3, '9457a304d5c9452583a4f56dfad9302b'),
('697867a53aea459cabbc3614b1ee39b2', 0, 1, 'ce98277f17534394951c415c019b1dd5'),
('849e0a2af5bc43b5829bf95a110346f4', 4, 1, 'd19b75a4cdc94ce38546259e7cc36124'),
('8e489d75a50a4d8eaef92b39db42c810', 0, 7, '6229412e103040059d969b13ffccd54e'),
('9debe364804044648b6ce68f0290db65', 0, 3, '662d41b6d3604b99a5768246fc1e8618'),
('a1dbad94994d4616a20101bc0efa95e9', 0, 3, 'f4ee4c8df22c4d28bae02931f18eafcb'),
('b0964228ec054870b830964bb72d0b32', 0, 1, '71da678bca914cbd93bb879befd9f640'),
('b21249f1dfa3432abf80e20e962fd490', 0, 1, 'fa397cd7cf6f4efba87d7e7013baaa5a'),
('bbdca6ce4b8c4d3790a65afb4f7998e3', 20, 6, '97276c5be9cf42248bf8c972c8217000'),
('cf84615cf72743fa88bf5fc8c52d5ed2', 0, 1, '24e889de8577427b82201d7d1457ce01'),
('e997a8d30409411f87acb8025eaef673', 0, 1, 'f9619aee4f6542af8081c8ed0626ba1b'),
('edbba39892264a44b64b659ebecf306e', 0, 5, '4efbff9832144573bfafc929bed381fd');

-- --------------------------------------------------------

--
-- テーブルの構造 `products_size`
--

CREATE TABLE `products_size` (
  `id` int(11) NOT NULL,
  `size_name` varchar(10) NOT NULL,
  `size_x` int(11) NOT NULL,
  `size_y` int(11) NOT NULL,
  `product_id` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `products_size`
--

INSERT INTO `products_size` (`id`, `size_name`, `size_x`, `size_y`, `product_id`) VALUES
(1, 'S', 35, 35, '6229412e103040059d969b13ffccd54e'),
(2, 'S', 30, 30, '4efbff9832144573bfafc929bed381fd'),
(3, 'S', 42, 43, 'f56a925ed90746c392c2df320e701743'),
(4, 'S', 45, 45, 'f9619aee4f6542af8081c8ed0626ba1b'),
(5, 'S', 45, 45, '662d41b6d3604b99a5768246fc1e8618'),
(6, 'S', 60, 60, '196ce734ff5340b4b2224a36f487776c'),
(7, 'S', 45, 45, 'fa397cd7cf6f4efba87d7e7013baaa5a'),
(8, 'S', 50, 35, '97276c5be9cf42248bf8c972c8217000'),
(9, 'S', 40, 40, '13c9be6b3be743b2b3f81c00376595f7'),
(10, 'S', 40, 40, 'd19b75a4cdc94ce38546259e7cc36124'),
(11, 'S', 27, 47, '71da678bca914cbd93bb879befd9f640'),
(12, 'S', 55, 59, 'ce98277f17534394951c415c019b1dd5'),
(13, 'S', 45, 45, '72a4f89956644b44912c34d53da1cf6a'),
(14, 'S', 38, 37, '719b668e32f243c3b0f30a57f33677bb'),
(15, 'S', 35, 35, '9457a304d5c9452583a4f56dfad9302b'),
(16, 'M', 50, 50, '9457a304d5c9452583a4f56dfad9302b'),
(17, 'L', 65, 65, '9457a304d5c9452583a4f56dfad9302b'),
(18, 'S', 35, 35, 'f4ee4c8df22c4d28bae02931f18eafcb'),
(19, 'S', 35, 35, '24e889de8577427b82201d7d1457ce01');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `account_user`
--
ALTER TABLE `account_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- テーブルのインデックス `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- テーブルのインデックス `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- テーブルのインデックス `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- テーブルのインデックス `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- テーブルのインデックス `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- テーブルのインデックス `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- テーブルのインデックス `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- テーブルのインデックス `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- テーブルのインデックス `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- テーブルのインデックス `pay_kart`
--
ALTER TABLE `pay_kart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_kart_product_id_27fdaebc_fk_products_product_id` (`product_id`),
  ADD KEY `pay_kart_user_id_id_72574bdf_fk_account_user_id` (`user_id_id`);

--
-- テーブルのインデックス `products_buy`
--
ALTER TABLE `products_buy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_buy_product_id_8e88b065_fk_products_product_id` (`product_id`),
  ADD KEY `products_buy_user_id_id_1e97b24a_fk_account_user_id` (`user_id_id`);

--
-- テーブルのインデックス `products_color`
--
ALTER TABLE `products_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_color_product_id_69d94ed0_fk_products_product_id` (`product_id`);

--
-- テーブルのインデックス `products_favorite`
--
ALTER TABLE `products_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_favorite_product_id_f8265054_fk_products_product_id` (`product_id`),
  ADD KEY `products_favorite_user_id_id_8e890ebf_fk_account_user_id` (`user_id_id`);

--
-- テーブルのインデックス `products_image`
--
ALTER TABLE `products_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_image_product_id_978188e9_fk_products_product_id` (`product_id`);

--
-- テーブルのインデックス `products_kart`
--
ALTER TABLE `products_kart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_kart_product_id_ae1869d6_fk_products_product_id` (`product_id`),
  ADD KEY `products_kart_user_id_id_3d68aeeb_fk_account_user_id` (`user_id_id`);

--
-- テーブルのインデックス `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `products_product_count`
--
ALTER TABLE `products_product_count`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_count_product_id_451992e2_fk_products_product_id` (`product_id`);

--
-- テーブルのインデックス `products_size`
--
ALTER TABLE `products_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_size_product_id_e2d98aa1_fk_products_product_id` (`product_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- テーブルの AUTO_INCREMENT `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- テーブルの AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- テーブルの AUTO_INCREMENT `products_color`
--
ALTER TABLE `products_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- テーブルの AUTO_INCREMENT `products_image`
--
ALTER TABLE `products_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- テーブルの AUTO_INCREMENT `products_size`
--
ALTER TABLE `products_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- テーブルの制約 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- テーブルの制約 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- テーブルの制約 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- テーブルの制約 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- テーブルの制約 `pay_kart`
--
ALTER TABLE `pay_kart`
  ADD CONSTRAINT `pay_kart_product_id_27fdaebc_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  ADD CONSTRAINT `pay_kart_user_id_id_72574bdf_fk_account_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `account_user` (`id`);

--
-- テーブルの制約 `products_buy`
--
ALTER TABLE `products_buy`
  ADD CONSTRAINT `products_buy_product_id_8e88b065_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  ADD CONSTRAINT `products_buy_user_id_id_1e97b24a_fk_account_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `account_user` (`id`);

--
-- テーブルの制約 `products_color`
--
ALTER TABLE `products_color`
  ADD CONSTRAINT `products_color_product_id_69d94ed0_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);

--
-- テーブルの制約 `products_favorite`
--
ALTER TABLE `products_favorite`
  ADD CONSTRAINT `products_favorite_product_id_f8265054_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  ADD CONSTRAINT `products_favorite_user_id_id_8e890ebf_fk_account_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `account_user` (`id`);

--
-- テーブルの制約 `products_image`
--
ALTER TABLE `products_image`
  ADD CONSTRAINT `products_image_product_id_978188e9_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);

--
-- テーブルの制約 `products_kart`
--
ALTER TABLE `products_kart`
  ADD CONSTRAINT `products_kart_product_id_ae1869d6_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  ADD CONSTRAINT `products_kart_user_id_id_3d68aeeb_fk_account_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `account_user` (`id`);

--
-- テーブルの制約 `products_product_count`
--
ALTER TABLE `products_product_count`
  ADD CONSTRAINT `products_count_product_id_451992e2_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);

--
-- テーブルの制約 `products_size`
--
ALTER TABLE `products_size`
  ADD CONSTRAINT `products_size_product_id_e2d98aa1_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
