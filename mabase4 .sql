-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 fév. 2023 à 21:33
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mabase4`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
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
(25, 'Can add carousel', 7, 'add_carousel'),
(26, 'Can change carousel', 7, 'change_carousel'),
(27, 'Can delete carousel', 7, 'delete_carousel'),
(28, 'Can view carousel', 7, 'view_carousel'),
(29, 'Can add produit', 8, 'add_produit'),
(30, 'Can change produit', 8, 'change_produit'),
(31, 'Can delete produit', 8, 'delete_produit'),
(32, 'Can view produit', 8, 'view_produit'),
(33, 'Can add client', 9, 'add_client'),
(34, 'Can change client', 9, 'change_client'),
(35, 'Can delete client', 9, 'delete_client'),
(36, 'Can view client', 9, 'view_client'),
(37, 'Can add credit', 10, 'add_credit'),
(38, 'Can change credit', 10, 'change_credit'),
(39, 'Can delete credit', 10, 'delete_credit'),
(40, 'Can view credit', 10, 'view_credit'),
(41, 'Can add client produit', 11, 'add_clientproduit'),
(42, 'Can change client produit', 11, 'change_clientproduit'),
(43, 'Can delete client produit', 11, 'delete_clientproduit'),
(44, 'Can view client produit', 11, 'view_clientproduit');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$UgMS8y449u6XnUSLFYoou2$Qi0JWftc5e1+FtoSwaJco/2vV+4dKi1lMylp/0coW3Q=', '2023-02-22 20:03:34.748979', 1, 'admin', '', '', 'outmane.am@gmail.com', 1, 1, '2023-02-15 17:53:55.340240');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dev_carousel`
--

CREATE TABLE `dev_carousel` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dev_carousel`
--

INSERT INTO `dev_carousel` (`id`, `title`, `description`, `image`) VALUES
(1, '1', 'j', '1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `dev_client`
--

CREATE TABLE `dev_client` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `credits` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dev_client`
--

INSERT INTO `dev_client` (`id`, `name`, `prenom`, `telephone`, `credits`) VALUES
(73, 'hawtah', 'karim', '06000001', '1283.00'),
(74, 'akram', 'akir', '06000002', '40.00'),
(75, 'jabar', 'amine', '06000003', '2582.00'),
(76, 'alaoui', 'said', '06000005', '96.00'),
(77, 'bouchi', 'ahmed', '06000004', '64.00');

-- --------------------------------------------------------

--
-- Structure de la table `dev_credit`
--

CREATE TABLE `dev_credit` (
  `id` bigint(20) NOT NULL,
  `quantite` int(10) UNSIGNED NOT NULL CHECK (`quantite` >= 0),
  `update_date` datetime(6) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `dateCreation` datetime(6) NOT NULL,
  `produit_id` bigint(20) DEFAULT NULL,
  `montant` int(10) UNSIGNED DEFAULT NULL
) ;

--
-- Déchargement des données de la table `dev_credit`
--

INSERT INTO `dev_credit` (`id`, `quantite`, `update_date`, `client_id`, `dateCreation`, `produit_id`, `montant`) VALUES
(51, 3, '2023-02-22 19:58:13.808475', 73, '2023-02-22 19:58:13.807472', 41, 24),
(52, 5, '2023-02-22 19:58:21.947469', 74, '2023-02-22 19:58:21.946468', 41, 40),
(53, 6, '2023-02-22 19:58:29.266556', 75, '2023-02-22 19:58:29.266556', 41, 48),
(54, 5, '2023-02-22 19:58:33.746548', 76, '2023-02-22 19:58:33.746548', 41, 40),
(55, 8, '2023-02-22 19:58:40.499553', 77, '2023-02-22 19:58:40.499553', 41, 64),
(56, 2, '2023-02-22 19:58:45.165553', 73, '2023-02-22 19:58:45.164553', 42, 64),
(57, 5, '2023-02-22 19:58:52.067610', 73, '2023-02-22 19:58:52.067610', 44, 1195),
(58, 8, '2023-02-22 19:58:55.575558', 75, '2023-02-22 19:58:55.575558', 41, 64),
(59, 7, '2023-02-22 19:58:59.612544', 76, '2023-02-22 19:58:59.611549', 41, 56),
(60, 10, '2023-02-22 19:59:35.685557', 75, '2023-02-22 19:59:35.684554', 41, 80),
(61, 10, '2023-02-22 19:59:57.980718', 75, '2023-02-22 19:59:57.980718', 44, 2390);

-- --------------------------------------------------------

--
-- Structure de la table `dev_produit`
--

CREATE TABLE `dev_produit` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `descrip` longtext DEFAULT NULL,
  `prix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dev_produit`
--

INSERT INTO `dev_produit` (`id`, `name`, `image`, `descrip`, `prix`) VALUES
(41, 'Savon Detol', '3_mNHz6tG.jpg', '35g', '8'),
(42, 'Thé Sultan', '7_GuidlID.webp', '250g', '32'),
(44, 'Soin des cheuveux', '55_PHBQhBd.jpg', NULL, '239'),
(45, 'Nettoyant micellaire', '5_ZDr9Tae.jpg', NULL, '49'),
(46, 'Oil lio', '5_Qg1W9Nc.png', NULL, '18');

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-02-15 18:28:34.378156', '1', '1', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-02-15 23:41:36.566879', '1', 'ahmed', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-02-16 01:53:12.584067', '4', 'imad', 2, '[{\"changed\": {\"fields\": [\"Telephone\"]}}]', 9, 1),
(4, '2023-02-16 01:53:20.125073', '3', 'ahmed', 2, '[{\"changed\": {\"fields\": [\"Telephone\"]}}]', 9, 1),
(5, '2023-02-16 01:53:26.712097', '2', 'Savon Detol', 3, '', 9, 1),
(6, '2023-02-16 17:43:27.586592', '4', 'imad', 2, '[{\"changed\": {\"fields\": [\"Credits\"]}}]', 9, 1),
(7, '2023-02-16 17:43:42.702598', '5', 'krrrr', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-02-16 17:44:24.470588', '5', 'krrrr', 3, '', 9, 1),
(9, '2023-02-16 17:45:05.596599', '4', 'imad', 2, '[]', 9, 1),
(10, '2023-02-18 01:22:01.371555', '18', 'Savon Detol', 3, '', 9, 1),
(11, '2023-02-18 01:22:01.432550', '17', 'hhhhhhhhhhhhh', 3, '', 9, 1),
(12, '2023-02-18 01:22:01.466553', '16', 'Savon Detol', 3, '', 9, 1),
(13, '2023-02-18 01:22:01.601556', '15', 'Savon Detol', 3, '', 9, 1),
(14, '2023-02-18 01:22:01.821554', '14', 'Savon Detol', 3, '', 9, 1),
(15, '2023-02-18 01:22:01.854555', '13', 'Savon Detol', 3, '', 9, 1),
(16, '2023-02-18 01:22:01.898553', '12', 'Savon Detol', 3, '', 9, 1),
(17, '2023-02-18 01:22:01.932555', '11', 'Savon Detol', 3, '', 9, 1),
(18, '2023-02-18 01:22:01.964550', '10', 'Savon Detol', 3, '', 9, 1),
(19, '2023-02-18 01:22:01.998551', '9', 'Savon Detol', 3, '', 9, 1),
(20, '2023-02-18 01:22:02.020554', '6', 'rabie', 3, '', 9, 1),
(21, '2023-02-18 02:12:17.476634', '27', 'Savon Detol', 3, '', 9, 1),
(22, '2023-02-18 02:12:17.767631', '26', 'Savon Detol', 3, '', 9, 1),
(23, '2023-02-18 02:12:17.817644', '25', 'Savon Detol', 3, '', 9, 1),
(24, '2023-02-18 02:12:17.873660', '24', 'Savon Detol', 3, '', 9, 1),
(25, '2023-02-18 02:12:17.951637', '23', 'Savon Detol', 3, '', 9, 1),
(26, '2023-02-18 02:12:18.295632', '22', 'Savon Detol', 3, '', 9, 1),
(27, '2023-02-18 02:12:18.361638', '21', 'Savon Detol', 3, '', 9, 1),
(28, '2023-02-18 02:12:18.416632', '20', 'Savon Detol', 3, '', 9, 1),
(29, '2023-02-18 02:12:18.450635', '19', 'ahmed', 3, '', 9, 1),
(30, '2023-02-18 02:12:33.210650', '28', 'ddddd', 1, '[{\"added\": {}}]', 9, 1),
(31, '2023-02-18 02:12:36.892644', '28', 'ddddd', 2, '[]', 9, 1),
(32, '2023-02-18 02:47:34.981640', '34', 'Savon Detol', 3, '', 9, 1),
(33, '2023-02-18 02:47:35.113629', '33', 'Savon Detol', 3, '', 9, 1),
(34, '2023-02-18 02:47:35.174634', '32', 'Savon Detol', 3, '', 9, 1),
(35, '2023-02-18 02:47:35.207687', '31', 'Savon Detol', 3, '', 9, 1),
(36, '2023-02-18 02:47:35.285629', '30', 'kk', 3, '', 9, 1),
(37, '2023-02-18 02:47:35.330635', '29', 'ahmed', 3, '', 9, 1),
(38, '2023-02-18 02:47:35.473629', '28', 'ddddd', 3, '', 9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'dev', 'carousel'),
(9, 'dev', 'client'),
(11, 'dev', 'clientproduit'),
(10, 'dev', 'credit'),
(8, 'dev', 'produit'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-15 17:51:23.994237'),
(2, 'auth', '0001_initial', '2023-02-15 17:51:34.459238'),
(3, 'admin', '0001_initial', '2023-02-15 17:51:37.469232'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-15 17:51:37.717235'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-15 17:51:37.895238'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-15 17:51:39.000240'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-02-15 17:51:40.355240'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-02-15 17:51:40.554235'),
(9, 'auth', '0004_alter_user_username_opts', '2023-02-15 17:51:40.625240'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-02-15 17:51:41.777307'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-02-15 17:51:41.845245'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-02-15 17:51:41.991241'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-02-15 17:51:42.116232'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-02-15 17:51:42.353240'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-02-15 17:51:42.540235'),
(16, 'auth', '0011_update_proxy_permissions', '2023-02-15 17:51:42.584236'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-02-15 17:51:42.710239'),
(18, 'sessions', '0001_initial', '2023-02-15 17:51:43.319243'),
(19, 'dev', '0001_initial', '2023-02-15 18:12:38.568197'),
(20, 'dev', '0002_client', '2023-02-15 22:06:59.015250'),
(21, 'dev', '0003_rename_debt_client_credits', '2023-02-15 23:14:17.424792'),
(22, 'dev', '0004_alter_client_telephone', '2023-02-18 01:51:55.536638'),
(23, 'dev', '0005_alter_client_telephone', '2023-02-18 02:46:43.772653'),
(24, 'dev', '0006_credit', '2023-02-20 18:56:10.061186'),
(25, 'dev', '0007_rename_quantité_credit_quantite', '2023-02-20 18:59:35.226132'),
(26, 'dev', '0008_alter_credit_total_credits', '2023-02-20 19:43:16.761184'),
(27, 'dev', '0009_remove_credit_produit', '2023-02-20 20:59:42.748654'),
(28, 'dev', '0010_credit_produit', '2023-02-20 21:29:20.971498'),
(29, 'dev', '0011_alter_credit_produit', '2023-02-20 21:29:22.621451'),
(30, 'dev', '0012_remove_credit_client_remove_credit_produit_and_more', '2023-02-20 23:42:51.163445'),
(31, 'dev', '0013_remove_credit_client_produits_produit_updated_and_more', '2023-02-21 00:46:29.074446'),
(32, 'dev', '0014_credit', '2023-02-21 01:19:32.704440'),
(33, 'dev', '0015_auto_20230221_0251', '2023-02-21 02:02:53.558490'),
(34, 'dev', '0016_remove_produit_updated_credit_datecreation_and_more', '2023-02-21 02:02:57.571517'),
(35, 'dev', '0017_rename_total_credits_credit_montant', '2023-02-21 20:44:16.202084');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4su5srgrc16duxek7rt1l73hfbmjtths', '.eJxVjDkOwjAUBe_iGlm245WSnjNYfwsJoESKkwpxd4iUAto3M--lKmzrULcmSx1ZnZVVp98NgR4y7YDvMN1mTfO0LiPqXdEHbfo6szwvh_t3MEAbvjVFMC7F4HLqks2R0HgB6r2xkR33nSmEwEjBJ18SS7CJQsZYEHuXRb0_1gk4Bw:1pUvKw:4MuC1_7sJ7F1vqge6iLWCvaUr9D0qy8zwulX7VqjvAM', '2023-03-08 20:03:34.794983');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `dev_carousel`
--
ALTER TABLE `dev_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dev_client`
--
ALTER TABLE `dev_client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dev_credit`
--
ALTER TABLE `dev_credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dev_credit_client_id_15193946_fk_dev_client_id` (`client_id`),
  ADD KEY `dev_credit_produit_id_7e7b6c9b_fk_dev_produit_id` (`produit_id`);

--
-- Index pour la table `dev_produit`
--
ALTER TABLE `dev_produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dev_carousel`
--
ALTER TABLE `dev_carousel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `dev_client`
--
ALTER TABLE `dev_client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT pour la table `dev_credit`
--
ALTER TABLE `dev_credit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dev_produit`
--
ALTER TABLE `dev_produit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `dev_credit`
--
ALTER TABLE `dev_credit`
  ADD CONSTRAINT `dev_credit_client_id_15193946_fk_dev_client_id` FOREIGN KEY (`client_id`) REFERENCES `dev_client` (`id`),
  ADD CONSTRAINT `dev_credit_produit_id_7e7b6c9b_fk_dev_produit_id` FOREIGN KEY (`produit_id`) REFERENCES `dev_produit` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
