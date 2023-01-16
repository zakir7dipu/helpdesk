-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 12:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `canned_replies`
--

CREATE TABLE `canned_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all_agents` tinyint(1) NOT NULL DEFAULT 0,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verifiers`
--

CREATE TABLE `email_verifiers` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `server_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `locale`, `name`) VALUES
(1, 'en', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2020_06_01_000001_create_user_roles_table', 1),
(3, '2020_06_01_000002_create_users_table', 1),
(4, '2020_06_01_000004_create_password_resets_table', 1),
(5, '2020_06_01_000005_create_failed_jobs_table', 1),
(6, '2020_06_01_000006_create_settings_table', 1),
(7, '2020_06_01_000007_create_email_verifiers_table', 1),
(8, '2020_06_01_000008_create_languages_table', 1),
(9, '2020_06_01_000009_create_notifications_table', 1),
(10, '2020_10_16_193905_create_labels_table', 1),
(11, '2020_10_28_180001_create_files_table', 1),
(12, '2020_10_28_180002_create_statuses_table', 1),
(13, '2020_10_28_180003_create_priorities_table', 1),
(14, '2020_10_28_180004_create_departments_table', 1),
(15, '2020_10_28_180005_create_canned_replies_table', 1),
(16, '2020_10_28_185714_create_tickets_table', 1),
(17, '2020_10_28_185745_create_ticket_replies_table', 1),
(18, '2020_10_28_185924_create_ticket_attachments_table', 1),
(19, '2020_10_28_190949_create_ticket_labels_table', 1),
(20, '2020_10_28_191259_create_user_departments_table', 1),
(21, '2020_10_28_194213_add_dashboard_column_to_user_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'laradesk_auth_token', '79869666d0d6a447f654086c5f400b484460ef82803567f1aa72a8ec32faa76d', '[\"*\"]', '2023-01-16 04:52:49', '2023-01-16 04:46:27', '2023-01-16 04:52:49'),
(2, 'App\\Models\\User', 1, 'bizz_solutions_auth_token', '903a76e7491fe6efb73034c8a396e753598977e78ca62d653071d9500e529c04', '[\"*\"]', '2023-01-16 05:01:06', '2023-01-16 04:55:47', '2023-01-16 05:01:06'),
(3, 'App\\Models\\User', 1, 'bizz_solutions_auth_token', 'eaa8c19aebdb1d7145560f0c958a9135d3cf7e1077c900f57fa153a440146a78', '[\"*\"]', '2023-01-16 05:09:43', '2023-01-16 05:04:36', '2023-01-16 05:09:43'),
(4, 'App\\Models\\User', 2, 'bizz_solutions_auth_token', '7f86dd9f35fb949a527875b4a653c9a9f887e2eb8c937e5f2258c8ad5b964124', '[\"*\"]', '2023-01-16 05:10:13', '2023-01-16 05:10:03', '2023-01-16 05:10:13'),
(5, 'App\\Models\\User', 1, 'bizz_solutions_auth_token', 'ee60c2131fec9106941e3e2d0b033335799e670d0009e76071db976a2703bccb', '[\"*\"]', '2023-01-16 05:10:32', '2023-01-16 05:10:30', '2023-01-16 05:10:32'),
(6, 'App\\Models\\User', 1, 'bizz_solutions_auth_token', '115fc2699c9a5c5e7bebcc0547a095ed717d9f3bfbea0480b559ee47e3dbd171', '[\"*\"]', '2023-01-16 05:13:48', '2023-01-16 05:13:10', '2023-01-16 05:13:48'),
(7, 'App\\Models\\User', 1, 'bizz_solutions_auth_token', '18d0a91785e78f19c3932cbffb9a0bd8cb3792ee6616cb7c3d813ba9faf92120', '[\"*\"]', '2023-01-16 05:18:32', '2023-01-16 05:17:29', '2023-01-16 05:18:32'),
(8, 'App\\Models\\User', 3, 'bizz_solutions_auth_token', '080bc882e38cb4b2bea871f64a86b405eb2073ec3dbcbe7321c4d2dcf820384e', '[\"*\"]', NULL, '2023-01-16 05:18:49', '2023-01-16 05:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

CREATE TABLE `priorities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `value`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Low', '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
(2, 2, 'Medium', '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
(3, 3, 'High', '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
(4, 4, 'Urgent', '2023-01-16 04:44:06', '2023-01-16 04:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_env` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`key`, `value`, `is_env`, `created_at`, `updated_at`) VALUES
('app_background', 'default', 0, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('app_date_format', 'L', 0, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('app_date_locale', 'en', 0, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('app_default_role', '3', 0, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('app_https', '0', 1, '2023-01-16 04:44:06', '2023-01-16 04:56:00'),
('app_icon', 'appearance/icon/GEjImHiRhw6W45K1rbtRmk53uYXbV4OWKOl5HgTe.png', 0, '2023-01-16 04:44:06', '2023-01-16 05:00:30'),
('app_locale', 'en', 1, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('app_name', 'Bizz Solutions', 1, '2023-01-16 04:44:06', '2023-01-16 04:51:26'),
('app_timezone', 'UTC', 1, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('app_url', 'http://localhost', 1, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('app_user_registration', '0', 0, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('mail_encryption', NULL, 1, '2023-01-16 04:44:07', '2023-01-16 04:44:07'),
('mail_from_address', NULL, 1, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('mail_from_name', 'Laradesk', 1, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('mail_host', 'smtp.mailtrap.io', 1, '2023-01-16 04:44:07', '2023-01-16 04:44:07'),
('mail_mailer', 'smtp', 1, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('mail_password', NULL, 1, '2023-01-16 04:44:07', '2023-01-16 04:44:07'),
('mail_port', '2525', 1, '2023-01-16 04:44:07', '2023-01-16 04:44:07'),
('mail_username', NULL, 1, '2023-01-16 04:44:07', '2023-01-16 04:44:07'),
('mailgun_domain', NULL, 1, '2023-01-16 04:44:07', '2023-01-16 04:44:07'),
('mailgun_endpoint', NULL, 1, '2023-01-16 04:44:07', '2023-01-16 04:44:07'),
('mailgun_secret', NULL, 1, '2023-01-16 04:44:07', '2023-01-16 04:44:07'),
('meta_description', 'A simple and clean platform that allows users to create tickets and get support from your staff', 0, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('meta_home_title', 'Laradesk - Helpdesk ticketing system', 0, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('meta_keywords', 'dashboard,laravel,vue,tailwindcss,spa', 0, '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
('recaptcha_enabled', '0', 0, '2023-01-16 04:44:07', '2023-01-16 04:44:07'),
('recaptcha_private', NULL, 0, '2023-01-16 04:44:07', '2023-01-16 04:44:07'),
('recaptcha_public', NULL, 0, '2023-01-16 04:44:07', '2023-01-16 04:44:07'),
('sentry_dsn', NULL, 1, '2023-01-16 04:44:07', '2023-01-16 04:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Open', '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
(2, 'Pending', '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
(3, 'Resolved', '2023-01-16 04:44:06', '2023-01-16 04:44:06'),
(4, 'Closed', '2023-01-16 04:44:06', '2023-01-16 04:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `priority_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `closed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_attachments`
--

CREATE TABLE `ticket_attachments` (
  `ticket_reply_id` bigint(20) UNSIGNED NOT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_labels`
--

CREATE TABLE `ticket_labels` (
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `label_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `role_id`, `status`, `password`, `remember_token`, `created_at`, `updated_at`, `email_verified_at`) VALUES
(1, 'Admin', 'it.bizzsol@gmail.com', NULL, 1, 1, '$2y$10$7TQKVk1nQsgj4.V1Qg04A.C2Lb9GIlJSoGY6lXeny9mXspsuCvmpm', NULL, '2023-01-16 04:44:05', '2023-01-16 05:11:08', NULL),
(2, 'Omar Farook', 'md.farook@bizzsol.com.bd', NULL, 4, 1, '$2y$10$h8FHOzztMzua463RhlDEl.scq5CqQzhyhMKUQm/UNxJDIWzRufXZO', NULL, '2023-01-16 05:09:41', '2023-01-16 05:09:41', NULL),
(3, 'Client', 'client@cilent.com', NULL, 3, 1, '$2y$10$HrvDHGsMdrV/m5x/cQDqRuR.2GhLNUo1A2d7aWEEIM2NhArrrts8O', NULL, '2023-01-16 05:18:30', '2023-01-16 05:18:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_departments`
--

CREATE TABLE `user_departments` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 2,
  `permissions` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_access` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `type`, `permissions`, `dashboard_access`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, '\"[]\"', 1, '2023-01-16 04:44:04', '2023-01-16 04:44:04'),
(2, 'User', 1, '\"[\\\"App.Http.Controllers.Api.Dashboard.StatsController\\\"]\"', 0, '2023-01-16 04:44:04', '2023-01-16 04:44:04'),
(3, 'Customer', 1, '\"[]\"', 0, '2023-01-16 04:44:04', '2023-01-16 04:44:04'),
(4, 'Agent', 2, '\"[\\\"App.Http.Controllers.Api.Dashboard.CannedReplyController\\\",\\\"App.Http.Controllers.Api.Dashboard.TicketController\\\",\\\"App.Http.Controllers.Api.Dashboard.StatsController\\\"]\"', 1, '2023-01-16 05:08:17', '2023-01-16 05:08:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canned_replies`
--
ALTER TABLE `canned_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canned_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifiers`
--
ALTER TABLE `email_verifiers`
  ADD KEY `email_verifiers_email_index` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_foreign` (`user_id`),
  ADD KEY `files_uuid_index` (`uuid`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_status_id_foreign` (`status_id`),
  ADD KEY `tickets_priority_id_foreign` (`priority_id`),
  ADD KEY `tickets_department_id_foreign` (`department_id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_agent_id_foreign` (`agent_id`),
  ADD KEY `tickets_closed_by_foreign` (`closed_by`),
  ADD KEY `tickets_uuid_index` (`uuid`);

--
-- Indexes for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD PRIMARY KEY (`ticket_reply_id`,`file_id`),
  ADD KEY `ticket_attachments_file_id_foreign` (`file_id`);

--
-- Indexes for table `ticket_labels`
--
ALTER TABLE `ticket_labels`
  ADD PRIMARY KEY (`ticket_id`,`label_id`),
  ADD KEY `ticket_labels_label_id_foreign` (`label_id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_replies_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_departments`
--
ALTER TABLE `user_departments`
  ADD PRIMARY KEY (`user_id`,`department_id`),
  ADD KEY `user_departments_department_id_foreign` (`department_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `canned_replies`
--
ALTER TABLE `canned_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `canned_replies`
--
ALTER TABLE `canned_replies`
  ADD CONSTRAINT `canned_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tickets_closed_by_foreign` FOREIGN KEY (`closed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tickets_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tickets_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `priorities` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tickets_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD CONSTRAINT `ticket_attachments_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  ADD CONSTRAINT `ticket_attachments_ticket_reply_id_foreign` FOREIGN KEY (`ticket_reply_id`) REFERENCES `ticket_replies` (`id`);

--
-- Constraints for table `ticket_labels`
--
ALTER TABLE `ticket_labels`
  ADD CONSTRAINT `ticket_labels_label_id_foreign` FOREIGN KEY (`label_id`) REFERENCES `labels` (`id`),
  ADD CONSTRAINT `ticket_labels_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);

--
-- Constraints for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD CONSTRAINT `ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`);

--
-- Constraints for table `user_departments`
--
ALTER TABLE `user_departments`
  ADD CONSTRAINT `user_departments_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `user_departments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
