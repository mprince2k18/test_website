-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 02:02 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kola`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_plans`
--

CREATE TABLE `billing_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `interval_count` int(11) NOT NULL DEFAULT 1,
  `parent_id` int(11) DEFAULT NULL,
  `legacy_permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `free` tinyint(1) NOT NULL DEFAULT 0,
  `show_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_plans`
--

INSERT INTO `billing_plans` (`id`, `name`, `amount`, `currency`, `currency_symbol`, `interval`, `interval_count`, `parent_id`, `legacy_permissions`, `uuid`, `paypal_id`, `recommended`, `free`, `show_permissions`, `features`, `position`, `created_at`, `updated_at`, `available_space`, `hidden`) VALUES
(1, 'Basic', '10.00', 'USD', '$', 'month', 1, NULL, NULL, 'vin3sQ3eDAUlfbS9C7HutM6jRtA9HUxqwDS2', NULL, 0, 0, 0, '[\"Drag & Drop Builder\",\"500MB Storage\",\"Code Editors\",\"No Ads\",\"Free Subdomain\"]', 1, '2022-03-20 06:58:57', '2022-03-20 06:58:57', NULL, 0),
(2, '6 months subscription', '54.00', 'USD', '$', 'month', 6, 1, NULL, 'h5JMkwezbzKOtQCUJQOXNcm4CSeDWKpvLKQs', NULL, 0, 0, 0, NULL, 0, '2022-03-20 06:58:57', '2022-03-20 06:58:57', NULL, 0),
(3, '1 year subscription', '96.00', 'USD', '$', 'month', 12, 1, NULL, 'Fj3swrLjIp1WRzAwt7jRb7oDwwo4lYVHq1Oh', NULL, 0, 0, 0, NULL, 0, '2022-03-20 06:58:57', '2022-03-20 06:58:57', NULL, 0),
(4, 'Standard', '15.00', 'USD', '$', 'month', 1, NULL, NULL, 'ZxeTBYkFYL4TMjrsqpq593MUTTDuSsNOeCo7', NULL, 1, 0, 0, '[\"Drag & Drop Builder\",\"500MB Storage\",\"Code Editors\",\"No Ads\",\"Custom Domains\",\"Download Projects\"]', 2, '2022-03-20 06:58:57', '2022-03-20 06:58:57', NULL, 0),
(5, '6 months subscription', '81.00', 'USD', '$', 'month', 6, 4, NULL, '3PKdwVSXNFxPy7GKROJjsXtqKlXkzXDjx3Px', NULL, 0, 0, 0, NULL, 0, '2022-03-20 06:58:57', '2022-03-20 06:58:57', NULL, 0),
(6, '1 year subscription', '144.00', 'USD', '$', 'month', 12, 4, NULL, 'hOzWLrJ1iZ5NA7Dk3MkJri4VJQQjRdixueZo', NULL, 0, 0, 0, NULL, 0, '2022-03-20 06:58:57', '2022-03-20 06:58:57', NULL, 0),
(7, 'Pro', '25.00', 'USD', '$', 'month', 1, NULL, NULL, 'iWaycOchA7pp0SoPB9Eyotn3VzvwXjMKOWdp', NULL, 0, 0, 0, '[\"Drag & Drop Builder\",\"2GB Storage\",\"Code Editors\",\"No Ads\",\"Custom Domains\",\"Download Projects\",\"Export Projects to FTP\",\"Priority Support\"]', 3, '2022-03-20 06:58:57', '2022-03-20 06:58:57', NULL, 0),
(8, '6 months subscription', '135.00', 'USD', '$', 'month', 6, 7, NULL, '2Oj7w6QkaExigVKA3dYn1WPWyhvEn1OGlfpg', NULL, 0, 0, 0, NULL, 0, '2022-03-20 06:58:57', '2022-03-20 06:58:57', NULL, 0),
(9, '1 year subscription', '240.00', 'USD', '$', 'month', 12, 7, NULL, 'uPbuR5kxkrtCaneaH8SmS1LIoLcFV0NHtN7C', NULL, 0, 0, 0, NULL, 0, '2022-03-20 06:58:57', '2022-03-20 06:58:57', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `builder_pages`
--

CREATE TABLE `builder_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageable_id` int(11) NOT NULL,
  `pageable_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AppProject',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `css_themes`
--

CREATE TABLE `css_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_dark` tinyint(1) NOT NULL DEFAULT 0,
  `default_light` tinyint(1) NOT NULL DEFAULT 0,
  `default_dark` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `colors` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `css_themes`
--

INSERT INTO `css_themes` (`id`, `name`, `is_dark`, `default_light`, `default_dark`, `user_id`, `colors`, `created_at`, `updated_at`) VALUES
(1, 'Dark', 1, 0, 1, 1, '{\"--be-primary-lighter\":\"#3e4a66\",\"--be-primary-default\":\"#2B3346\",\"--be-primary-darker\":\"#181c26\",\"--be-accent-default\":\"#8AB2E0\",\"--be-accent-lighter\":\"#B9D1EC\",\"--be-accent-contrast\":\"rgba(255, 255, 255, 1)\",\"--be-accent-emphasis\":\"rgba(185, 209, 236, 0.1)\",\"--be-foreground-base\":\"#fff\",\"--be-text\":\"#fff\",\"--be-hint-text\":\"rgba(255, 255, 255, 0.5)\",\"--be-secondary-text\":\"rgba(255, 255, 255, 0.7)\",\"--be-label\":\"rgba(255, 255, 255, 0.7)\",\"--be-background\":\"#1D1D1D\",\"--be-background-alternative\":\"#121212\",\"--be-divider-lighter\":\"rgba(255, 255, 255, 0.06)\",\"--be-divider-default\":\"rgba(255, 255, 255, 0.12)\",\"--be-disabled-button-text\":\"rgba(255, 255, 255, 0.3)\",\"--be-disabled-toggle\":\"#000\",\"--be-chip\":\"#616161\",\"--be-hover\":\"rgba(255, 255, 255, 0.04)\",\"--be-selected-button\":\"#212121\",\"--be-disabled-button\":\"rgba(255, 255, 255, 0.12)\",\"--be-raised-button\":\"#424242\",\"--be-backdrop\":\"#BDBDBD\",\"--be-link\":\"#c5cae9\"}', '2022-03-20 06:58:56', '2022-03-20 06:58:56'),
(2, 'Light', 0, 1, 0, 1, '{\"--be-primary-lighter\":\"#3e4a66\",\"--be-primary-default\":\"#2B3346\",\"--be-primary-darker\":\"#181c26\",\"--be-accent-default\":\"#1565C0\",\"--be-accent-lighter\":\"#B9D1EC\",\"--be-accent-contrast\":\"rgba(255, 255, 255, 1)\",\"--be-accent-emphasis\":\"rgba(185, 209, 236, 0.1)\",\"--be-background\":\"rgb(255, 255, 255)\",\"--be-background-alternative\":\"rgb(250, 250, 250)\",\"--be-foreground-base\":\"black\",\"--be-text\":\"rgba(0, 0, 0, 0.87)\",\"--be-hint-text\":\"rgba(0, 0, 0, 0.38)\",\"--be-secondary-text\":\"rgba(0, 0, 0, 0.54)\",\"--be-label\":\"rgba(0, 0, 0, 0.87)\",\"--be-disabled-button-text\":\"rgba(0, 0, 0, 0.26)\",\"--be-divider-lighter\":\"rgba(0, 0, 0, 0.06)\",\"--be-divider-default\":\"rgba(0, 0, 0, 0.12)\",\"--be-hover\":\"rgba(0,0,0,0.04)\",\"--be-selected-button\":\"rgb(224, 224, 224)\",\"--be-chip\":\"#e0e0e0\",\"--be-link\":\"#3f51b5\",\"--be-backdrop\":\"black\",\"--be-raised-button\":\"#fff\",\"--be-disabled-toggle\":\"rgb(238, 238, 238)\",\"--be-disabled-button\":\"rgba(0, 0, 0, 0.12)\"}', '2022-03-20 06:58:56', '2022-03-20 06:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `csv_exports`
--

CREATE TABLE `csv_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cache_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `download_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_domains`
--

CREATE TABLE `custom_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT 0,
  `resource_id` int(10) UNSIGNED DEFAULT NULL,
  `resource_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hide_nav` tinyint(1) NOT NULL DEFAULT 0,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `title`, `body`, `slug`, `meta`, `type`, `created_at`, `updated_at`, `user_id`, `hide_nav`, `workspace_id`) VALUES
(1, 'Privacy Policy', '<h1>Example Privacy Policy</h1><p>The standard Lorem Ipsum passage, used since the 1500s\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n\n<p>1914 translation by H. Rackham\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n\n<p>1914 translation by H. Rackham\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'privacy-policy', NULL, 'default', '2022-03-20 06:58:56', '2022-03-20 06:58:56', NULL, 0, NULL),
(2, 'Terms of Service', '<h1>Example Terms of Service</h1><p>The standard Lorem Ipsum passage, used since the 1500s\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n\n<p>1914 translation by H. Rackham\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n\n<p>1914 translation by H. Rackham\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'terms-of-service', NULL, 'default', '2022-03-20 06:58:56', '2022-03-20 06:58:56', NULL, 0, NULL),
(3, 'About Us', '<h1>Example About Us</h1><p>The standard Lorem Ipsum passage, used since the 1500s\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n\n<p>1914 translation by H. Rackham\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n\n<p>1914 translation by H. Rackham\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'about-us', NULL, 'default', '2022-03-20 06:58:56', '2022-03-20 06:58:56', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_entries`
--

CREATE TABLE `file_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `disk_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_token` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` tinyint(1) NOT NULL DEFAULT 0,
  `owner_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_entry_models`
--

CREATE TABLE `file_entry_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_entry_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `uuid` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `localizations`
--

CREATE TABLE `localizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `localizations`
--

INSERT INTO `localizations` (`id`, `name`, `created_at`, `updated_at`, `language`) VALUES
(1, 'english', '2022-03-20 06:58:56', '2022-03-20 06:58:56', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_04_127_156842_create_social_profiles_table', 1),
(4, '2015_04_127_156842_create_users_oauth_table', 1),
(5, '2015_05_29_131549_create_settings_table', 1),
(6, '2016_05_12_190852_create_tags_table', 1),
(7, '2016_05_12_190958_create_taggables_table', 1),
(8, '2016_05_26_170044_create_uploads_table', 1),
(9, '2016_05_27_143158_create_uploadables_table', 1),
(10, '2016_07_14_153703_create_groups_table', 1),
(11, '2016_07_14_153921_create_user_group_table', 1),
(12, '2017_07_01_150551_rename_pages_table_to_builder_pages', 1),
(13, '2017_07_02_120142_create_pages_table', 1),
(14, '2017_07_02_151788_create_builder_pages_table', 1),
(15, '2017_07_11_122825_create_localizations_table', 1),
(16, '2017_08_26_131330_add_private_field_to_settings_table', 1),
(17, '2017_09_17_144728_add_columns_to_users_table', 1),
(18, '2017_09_17_152854_make_password_column_nullable', 1),
(19, '2017_09_30_152855_make_settings_value_column_nullable', 1),
(20, '2017_10_01_152897_add_public_column_to_uploads_table', 1),
(21, '2017_12_01_134322_upgrade_users_table_to_laravel', 1),
(22, '2017_12_04_132911_add_avatar_column_to_users_table', 1),
(23, '2017_12_05_145410_create_projects_table', 1),
(24, '2017_12_06_151747_add_columns_to_projects_table', 1),
(25, '2017_12_07_151787_create_users_projects_table', 1),
(26, '2018_01_10_140732_create_subscriptions_table', 1),
(27, '2018_01_10_140746_add_billing_to_users_table', 1),
(28, '2018_01_10_161706_create_billing_plans_table', 1),
(29, '2018_02_12_151757_add_default_and_guests_columns_to_groups_table', 1),
(30, '2018_07_24_113757_add_available_space_to_billing_plans_table', 1),
(31, '2018_07_24_124254_add_available_space_to_users_table', 1),
(32, '2018_07_26_142339_rename_groups_to_roles', 1),
(33, '2018_07_26_142842_rename_user_role_table_columns_to_roles', 1),
(34, '2018_08_07_124200_rename_uploads_to_file_entries', 1),
(35, '2018_08_07_124327_refactor_file_entries_columns', 1),
(36, '2018_08_07_130653_add_folder_path_column_to_file_entries_table', 1),
(37, '2018_08_07_140440_migrate_file_entry_users_to_many_to_many', 1),
(38, '2018_08_15_132225_move_uploads_into_subfolders', 1),
(39, '2018_08_31_104145_rename_uploadables_table', 1),
(40, '2018_08_31_104325_rename_file_entry_models_table_columns', 1),
(41, '2018_11_26_171703_add_type_and_title_columns_to_pages_table', 1),
(42, '2018_12_01_144233_change_unique_index_on_tags_table', 1),
(43, '2019_02_16_150049_delete_old_seo_settings', 1),
(44, '2019_02_24_141457_create_jobs_table', 1),
(45, '2019_03_11_162627_add_preview_token_to_file_entries_table', 1),
(46, '2019_03_12_160803_add_thumbnail_column_to_file_entries_table', 1),
(47, '2019_03_16_161836_add_paypal_id_column_to_billing_plans_table', 1),
(48, '2019_05_14_120930_index_description_column_in_file_entries_table', 1),
(49, '2019_06_08_120504_create_custom_domains_table', 1),
(50, '2019_06_13_140318_add_user_id_column_to_pages_table', 1),
(51, '2019_06_15_114320_rename_pages_table_to_custom_pages', 1),
(52, '2019_06_18_133933_create_permissions_table', 1),
(53, '2019_06_18_134203_create_permissionables_table', 1),
(54, '2019_06_18_135822_rename_permissions_columns', 1),
(55, '2019_06_25_133852_move_inline_permissions_to_separate_table', 1),
(56, '2019_07_08_122001_create_css_themes_table', 1),
(57, '2019_07_20_141752_create_invoices_table', 1),
(58, '2019_08_19_121112_add_global_column_to_custom_domains_table', 1),
(59, '2019_09_13_141123_change_plan_amount_to_float', 1),
(60, '2019_10_14_171943_add_index_to_username_column', 1),
(61, '2019_10_20_143522_create_comments_table', 1),
(62, '2019_10_23_134520_create_notifications_table', 1),
(63, '2019_11_21_144956_add_resource_id_and_type_to_custom_domains_table', 1),
(64, '2019_11_23_153905_add_slug_column_to_projects_table', 1),
(65, '2019_11_23_154003_add_slugs_to_legacy_projects', 1),
(66, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(67, '2019_12_14_194512_rename_public_path_column_to_disk_prefix', 1),
(68, '2019_12_24_165237_change_file_size_column_default_value_to_0', 1),
(69, '2019_12_28_190836_update_file_entry_models_table_to_v2', 1),
(70, '2019_12_28_191105_move_user_file_entry_table_records_to_file_entry_models', 1),
(71, '2020_01_26_143733_create_notification_subscriptions_table', 1),
(72, '2020_03_03_140720_add_language_col_to_localizations_table', 1),
(73, '2020_03_03_143142_add_lang_code_to_existing_localizations', 1),
(74, '2020_04_14_163347_add_hidden_column_to_plans_table', 1),
(75, '2020_06_27_180040_add_verified_at_column_to_users_table', 1),
(76, '2020_06_27_180253_move_confirmed_column_to_email_verified_at', 1),
(77, '2020_07_15_144024_fix_issues_with_migration_to_laravel_7', 1),
(78, '2020_07_22_165126_create_workspaces_table', 1),
(79, '2020_07_23_145652_create_workspace_invites_table', 1),
(80, '2020_07_23_164502_create_workspace_user_table', 1),
(81, '2020_07_26_165349_add_columns_to_roles_table', 1),
(82, '2020_07_29_141418_add_workspace_id_column_to_workspaceable_models', 1),
(83, '2020_07_30_152330_add_type_column_to_permissions_table', 1),
(84, '2020_08_29_165057_add_hide_nav_column_to_custom_pages_table', 1),
(85, '2021_04_22_172459_add_internal_columm_to_roles_table', 1),
(86, '2021_05_03_173446_add_deleted_column_to_comments_table', 1),
(87, '2021_05_12_164940_add_advanced_column_to_permissions_table', 1),
(88, '2021_06_04_143405_add_workspace_id_col_to_custom_domains_table', 1),
(89, '2021_06_04_143406_add_workspace_id_col_to_custom_pages_table', 1),
(90, '2021_06_05_182202_create_csv_exports_table', 1),
(91, '2021_06_18_161030_rename_gateway_col_in_subscriptions_table', 1),
(92, '2021_06_19_111939_add_owner_id_column_to_file_entries_table', 1),
(93, '2021_06_19_112035_materialize_owner_id_in_file_entries_table', 1),
(94, '2021_07_06_144837_migrate_landing_page_config_to_20', 1),
(95, '2021_07_17_093454_add_created_at_col_to_user_role_table', 1),
(96, '2021_08_12_160336_add_settings_column_to_projects_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_subscriptions`
--

CREATE TABLE `notification_subscriptions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notif_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `channels` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissionables`
--

CREATE TABLE `permissionables` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `permissionable_id` int(11) NOT NULL,
  `permissionable_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restrictions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionables`
--

INSERT INTO `permissionables` (`id`, `permission_id`, `permissionable_id`, `permissionable_type`, `restrictions`) VALUES
(1, 1, 1, 'App\\User', NULL),
(2, 10, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(3, 15, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(4, 19, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(5, 23, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(6, 27, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(7, 33, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(8, 38, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(9, 50, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(10, 53, 1, 'Common\\Auth\\Roles\\Role', '[{\"name\":\"count\",\"value\":8}]'),
(11, 56, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(12, 10, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(13, 27, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(14, 33, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(15, 38, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(16, 23, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(17, 50, 1, 'Common\\Billing\\BillingPlan', NULL),
(18, 50, 4, 'Common\\Billing\\BillingPlan', NULL),
(19, 51, 4, 'Common\\Billing\\BillingPlan', NULL),
(20, 50, 7, 'Common\\Billing\\BillingPlan', NULL),
(21, 51, 7, 'Common\\Billing\\BillingPlan', NULL),
(22, 49, 7, 'Common\\Billing\\BillingPlan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restrictions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sitewide',
  `advanced` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `group`, `restrictions`, `created_at`, `updated_at`, `type`, `advanced`) VALUES
(1, 'admin', 'Super Admin', 'Give all permissions to user.', 'admin', NULL, '2022-03-20 06:58:56', '2022-03-20 06:58:56', 'sitewide', 0),
(2, 'admin.access', 'Access Admin', 'Required in order to access any admin area page.', 'admin', NULL, '2022-03-20 06:58:56', '2022-03-20 06:58:56', 'sitewide', 0),
(3, 'appearance.update', 'Update Appearance', 'Allows access to appearance editor.', 'admin', NULL, '2022-03-20 06:58:56', '2022-03-20 06:58:56', 'sitewide', 0),
(4, 'reports.view', 'View Reports', 'Allows access to analytics page in admin area.', 'admin', NULL, '2022-03-20 06:58:56', '2022-03-20 06:58:56', 'sitewide', 0),
(5, 'api.access', 'Access Api', 'Required in order for users to be able to use the API.', 'api', NULL, '2022-03-20 06:58:56', '2022-03-20 06:58:56', 'sitewide', 0),
(6, 'roles.view', 'View Roles', 'Allow viewing ALL roles.', 'roles', NULL, '2022-03-20 06:58:56', '2022-03-20 06:58:56', 'sitewide', 1),
(7, 'roles.create', 'Create Roles', 'Allow creating new roles.', 'roles', NULL, '2022-03-20 06:58:56', '2022-03-20 06:58:56', 'sitewide', 1),
(8, 'roles.update', 'Update Roles', 'Allow updating ALL roles.', 'roles', NULL, '2022-03-20 06:58:56', '2022-03-20 06:58:56', 'sitewide', 1),
(9, 'roles.delete', 'Delete Roles', 'Allow deleting ALL roles.', 'roles', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(10, 'custom_pages.view', 'View Custom Pages', 'Allow viewing of all pages on the site, regardless of who created them. User can view their own pages without this permission.', 'custom_pages', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(11, 'custom_pages.create', 'Create Custom Pages', 'Allow creating new custom pages.', 'custom_pages', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of pages user will be able to create. Leave empty for unlimited.\"}]', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(12, 'custom_pages.update', 'Update Custom Pages', 'Allow editing of all pages on the site, regardless of who created them. User can edit their own pages without this permission.', 'custom_pages', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(13, 'custom_pages.delete', 'Delete Custom Pages', 'Allow deleting of all pages on the site, regardless of who created them. User can delete their own pages without this permission.', 'custom_pages', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(14, 'custom_domains.view', 'View Custom Domains', 'Allow viewing all domains on the site, regardless of who created them. User can view their own domains without this permission.', 'custom_domains', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(15, 'custom_domains.create', 'Create Custom Domains', 'Allow user to connect their own custom domains.', 'custom_domains', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of domains user will be able to create. Leave empty for unlimited.\"}]', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 0),
(16, 'custom_domains.update', 'Update Custom Domains', 'Allow editing all domains on the site, regardless of who created them. User can edit their own domains without this permission.', 'custom_domains', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(17, 'custom_domains.delete', 'Delete Custom Domains', 'Allow deleting all domains on the site, regardless of who created them. User can delete their own domains without this permission.', 'custom_domains', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(18, 'files.view', 'View Files', 'Allow viewing all uploaded files on the site. Users can view their own uploads without this permission.', 'files', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(19, 'files.create', 'Create Files', 'Allow uploading files on the site. This permission is used by any page where it is possible for user to upload files.', 'files', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(20, 'files.update', 'Update Files', 'Allow editing all uploaded files on the site. Users can edit their own uploads without this permission.', 'files', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(21, 'files.delete', 'Delete Files', 'Allow deleting all uploaded files on the site. Users can delete their own uploads (where applicable) without this permission.', 'files', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(22, 'files.download', 'Download Files', 'Allow downloading all uploaded files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(23, 'users.view', 'View Users', 'Allow viewing user profile pages on the site. User can view their own profile without this permission.', 'users', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 0),
(24, 'users.create', 'Create Users', 'Allow creating users from admin area. Users can register for new accounts without this permission. Registration can be disabled from settings page.', 'users', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(25, 'users.update', 'Update Users', 'Allow editing details of any user on the site. User can edit their own details without this permission.', 'users', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(26, 'users.delete', 'Delete Users', 'Allow deleting any user on the site. User can request deletion of their own account without this permission.', 'users', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(27, 'localizations.view', 'View Localizations', 'Allow viewing ALL localizations.', 'localizations', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(28, 'localizations.create', 'Create Localizations', 'Allow creating new localizations.', 'localizations', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(29, 'localizations.update', 'Update Localizations', 'Allow updating ALL localizations.', 'localizations', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(30, 'localizations.delete', 'Delete Localizations', 'Allow deleting ALL localizations.', 'localizations', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(31, 'settings.view', 'View Settings', 'Allow viewing ALL settings.', 'settings', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(32, 'settings.update', 'Update Settings', 'Allow updating ALL settings.', 'settings', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(33, 'plans.view', 'View Plans', 'Allow viewing ALL plans.', 'plans', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(34, 'plans.create', 'Create Plans', 'Allow creating new plans.', 'plans', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(35, 'plans.update', 'Update Plans', 'Allow updating ALL plans.', 'plans', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(36, 'plans.delete', 'Delete Plans', 'Allow deleting ALL plans.', 'plans', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(37, 'invoices.view', 'View Invoices', 'Allow viewing ALL invoices.', 'invoices', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(38, 'tags.view', 'View Tags', 'Allow viewing ALL tags.', 'tags', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(39, 'tags.create', 'Create Tags', 'Allow creating new tags.', 'tags', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(40, 'tags.update', 'Update Tags', 'Allow updating ALL tags.', 'tags', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(41, 'tags.delete', 'Delete Tags', 'Allow deleting ALL tags.', 'tags', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(42, 'workspaces.view', 'View Workspaces', 'Allow viewing ALL workspaces.', 'workspaces', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 0),
(43, 'workspaces.create', 'Create Workspaces', 'Allow creating new workspaces.', 'workspaces', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of workspaces user will be able to create. Leave empty for unlimited.\"},{\"name\":\"member_count\",\"type\":\"number\",\"description\":\"Maximum number of members workspace is allowed to have.\"}]', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 0),
(44, 'workspaces.update', 'Update Workspaces', 'Allow updating ALL workspaces.', 'workspaces', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 0),
(45, 'workspaces.delete', 'Delete Workspaces', 'Allow deleting ALL workspaces.', 'workspaces', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 0),
(46, 'workspace_members.invite', 'Invite Members', 'Allow user to invite new members into a workspace.', 'workspace_members', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'workspace', 0),
(47, 'workspace_members.update', 'Update Members', 'Allow user to change role of other members.', 'workspace_members', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'workspace', 0),
(48, 'workspace_members.delete', 'Delete Members', 'Allow user to remove members from workspace.', 'workspace_members', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'workspace', 0),
(49, 'projects.export', 'Export Projects', 'Allow user to export projects to their own FTP server.', 'builder', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 0),
(50, 'editors.enable', 'Enable Editors', 'Allow user to use html,css and js code editors.', 'builder', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 0),
(51, 'projects.download', 'Download Projects', 'Allow user to download their project .zip file.', 'builder', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 0),
(52, 'projects.view', 'View Projects', 'Allow viewing ALL projects.', 'projects', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(53, 'projects.create', 'Create Projects', 'Allow creating new projects.', 'projects', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of projects user will be able to create. Leave empty for unlimited.\"}]', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 0),
(54, 'projects.update', 'Update Projects', 'Allow updating ALL projects.', 'projects', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(55, 'projects.delete', 'Delete Projects', 'Allow deleting ALL projects.', 'projects', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(56, 'templates.view', 'View Templates', 'Allow viewing ALL templates.', 'templates', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(57, 'templates.create', 'Create Templates', 'Allow creating new templates.', 'templates', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(58, 'templates.update', 'Update Templates', 'Allow updating ALL templates.', 'templates', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1),
(59, 'templates.delete', 'Delete Templates', 'Allow deleting ALL templates.', 'templates', NULL, '2022-03-20 06:58:57', '2022-03-20 06:58:57', 'sitewide', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `published`, `created_at`, `updated_at`, `uuid`, `template`, `slug`, `settings`) VALUES
(1, 'Test', 1, '2022-03-20 06:59:38', '2022-03-20 06:59:38', 'WL8CFlvoeAB2b4jjKMW8YdN1kb8Ke19gChWX', NULL, 'test', NULL),
(2, 'Test1', 1, '2022-03-20 06:59:52', '2022-03-20 06:59:52', '2wMjF25yQLMJreEHz3FW5YUXLqXZAZI0ywk8', 'agency', 'test1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `legacy_permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `guests` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sitewide',
  `internal` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `legacy_permissions`, `default`, `guests`, `created_at`, `updated_at`, `description`, `type`, `internal`) VALUES
(1, 'users', NULL, 1, 0, '2022-03-20 06:58:57', '2022-03-20 06:58:57', NULL, 'sitewide', 0),
(2, 'guests', NULL, 0, 1, '2022-03-20 06:58:57', '2022-03-20 06:58:57', NULL, 'sitewide', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`, `private`) VALUES
(1, 'dates.format', 'yyyy-MM-dd', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(2, 'dates.locale', 'en_US', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(3, 'social.google.enable', 'true', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(4, 'social.twitter.enable', 'true', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(5, 'social.facebook.enable', 'true', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(6, 'realtime.enable', 'false', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(7, 'registration.disable', 'false', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(8, 'cache.report_minutes', '60', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(9, 'branding.favicon', 'client/favicon/icon-144x144.png', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(10, 'branding.logo_dark', 'client/assets/images/logo-dark.png', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(11, 'branding.logo_light', 'client/assets/images/logo-light.png', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(12, 'i18n.default_localization', 'en', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(13, 'i18n.enable', 'true', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(14, 'logging.sentry_public', '', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(15, 'realtime.pusher_key', '', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(16, 'homepage.type', 'default', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(17, 'themes.default_mode', 'light', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(18, 'themes.user_change', 'true', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(19, 'billing.enable', 'false', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(20, 'billing.paypal_test_mode', 'true', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(21, 'billing.stripe_test_mode', 'true', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(22, 'billing.stripe.enable', 'false', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(23, 'billing.paypal.enable', 'false', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(24, 'billing.accepted_cards', '[\"visa\",\"mastercard\",\"american-express\",\"discover\"]', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(25, 'custom_domains.default_host', '', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(26, 'uploads.chunk', 'true', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(27, 'uploads.chunk_size', '5242880', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(28, 'cookie_notice.enable', 'true', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(29, 'cookie_notice.position', 'bottom', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(30, 'menus', '[{\"position\":\"dashboard\",\"name\":\"Dashboard\",\"items\":[{\"type\":\"route\",\"order\":1,\"condition\":\"admin\",\"position\":0,\"label\":\"Admin Area\",\"action\":\"admin\"}]},{\"name\":\"footer\",\"position\":\"footer\",\"items\":[{\"type\":\"route\",\"position\":1,\"label\":\"Developers\",\"action\":\"\\/api-docs\",\"condition\":\"auth\"},{\"type\":\"route\",\"position\":2,\"label\":\"Privacy Policy\",\"action\":\"\\/pages\\/1\\/privacy-policy\"},{\"type\":\"route\",\"position\":3,\"label\":\"Terms of Service\",\"action\":\"\\/pages\\/2\\/terms-of-service\"},{\"type\":\"route\",\"position\":4,\"label\":\"Contact Us\",\"action\":\"\\/contact\"}]},{\"name\":\"Footer Social\",\"position\":\"footer-secondary\",\"items\":[{\"type\":\"link\",\"position\":1,\"icon\":\"facebook-square\",\"action\":\"https:\\/\\/facebook.com\"},{\"type\":\"link\",\"position\":2,\"icon\":\"twitter\",\"action\":\"https:\\/\\/twitter.com\"},{\"type\":\"link\",\"position\":3,\"icon\":\"instagram\",\"action\":\"https:\\/\\/instagram.com\"},{\"type\":\"link\",\"position\":4,\"icon\":\"youtube\",\"action\":\"https:\\/\\/youtube.com\"}]}]', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(31, 'branding.site_name', 'Architect', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(32, 'builder.enable_subdomains', 'false', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(33, 'builder.enable_custom_domains', 'true', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(34, 'builder.googgle_fonts_api_key', 'AIzaSyDhc_8NKxXjtv69htFcUPe6A7oGSQ4om2o', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(35, 'builder.template_categories', '[\"Landing Page\",\"Blog\",\"Portfolio\"]', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(36, 'publish.allow_credential_change', 'true', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0),
(37, 'homepage.appearance', '{\"headerTitle\":\"Create a Website You\\u2019re Proud Of\",\"headerSubtitle\":\"Discover the platform that gives you the freedom to create, design, manage and develop your web presence exactly the way you want.\",\"headerImage\":\"client\\/assets\\/images\\/landing\\/landing-bg.svg\",\"headerImageOpacity\":1,\"headerOverlayColor1\":null,\"headerOverlayColor2\":null,\"footerTitle\":\"Build your website today\",\"footerSubtitle\":null,\"footerImage\":\"client\\/assets\\/images\\/landing\\/landing-bg.svg\",\"actions\":{\"cta1\":\"Start Now\",\"cta2\":\"Learn More\"},\"primaryFeatures\":[{\"title\":\"Custom domains\",\"subtitle\":\"Attach your own custom domain or use on of the free architect subdomains.\",\"image\":\"custom-domain.svg\"},{\"title\":\"Eye-catching website designs\",\"subtitle\":\"Our easy-to-use builder helps you create and launch a beautiful website\\\\u2014fast.\",\"image\":\"website-builder.svg\"},{\"title\":\"Grow your business with powerful tools\",\"subtitle\":\"Design and build your own high-quality websites. Whatever the type of site\\\\u2014you can do it with Architect website builder.\",\"image\":\"pen-tool.svg\"}],\"secondaryFeatures\":[{\"title\":\"Look like an expert right from the start.\",\"subtitle\":\"AWARD-WINNING WEBSITE DESIGN\",\"image\":\"client\\/assets\\/images\\/landing\\/landing-feature-1.jpg\",\"description\":\"Our award-winning templates are the most beautiful way to present your ideas online. Stand out with a professional website, portfolio, or online store.\"},{\"title\":\"The Freedom to Create the Websites You Want\",\"subtitle\":\"Complete Freedom\",\"image\":\"client\\/assets\\/images\\/landing\\/landing-feature-2.jpg\",\"description\":\"Start from scratch or choose from large catalog of templates to make your own website. With the world\\\\u2019s most innovative drag and drop website builder, you can customize or change anything. With the Architect, you can create your own professional website that looks stunning.\"}]}', '2022-03-20 06:58:57', '2022-03-20 06:58:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_profiles`
--

CREATE TABLE `social_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_service_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `gateway_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `quantity` int(11) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `renews_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'custom',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `avatar_url`, `gender`, `legacy_permissions`, `email`, `password`, `card_brand`, `card_last_four`, `remember_token`, `created_at`, `updated_at`, `language`, `country`, `timezone`, `avatar`, `stripe_id`, `available_space`, `email_verified_at`) VALUES
(1, 'admin', NULL, NULL, NULL, NULL, NULL, 'admin@mail.com', '$2y$10$60tu2SI8pU6OYDC12u51C..s0X4pDGKaUbhWCyAy3KrvvqJyUDVzG', NULL, NULL, 'Z2MHlJfN7Fegm2w5t0CITfen57UsuwdqD1sLloqfStfY69mHoxnDJa5869cY', '2022-03-20 06:58:56', '2022-03-20 06:58:56', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-20 06:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `users_oauth`
--

CREATE TABLE `users_oauth` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_projects`
--

CREATE TABLE `users_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_projects`
--

INSERT INTO `users_projects` (`id`, `user_id`, `project_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`) VALUES
(1, 1, 1, '2022-03-20 06:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `workspaces`
--

CREATE TABLE `workspaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workspace_invites`
--

CREATE TABLE `workspace_invites` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workspace_user`
--

CREATE TABLE `workspace_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_plans`
--
ALTER TABLE `billing_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_plans_hidden_index` (`hidden`);

--
-- Indexes for table `builder_pages`
--
ALTER TABLE `builder_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `builder_pages_name_pageable_type_pageable_id_unique` (`name`,`pageable_type`,`pageable_id`),
  ADD KEY `builder_pages_pageable_id_index` (`pageable_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_index` (`parent_id`),
  ADD KEY `comments_path_index` (`path`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_commentable_id_index` (`commentable_id`),
  ADD KEY `comments_commentable_type_index` (`commentable_type`),
  ADD KEY `comments_deleted_index` (`deleted`);

--
-- Indexes for table `css_themes`
--
ALTER TABLE `css_themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `css_themes_name_unique` (`name`),
  ADD KEY `css_themes_default_light_index` (`default_light`),
  ADD KEY `css_themes_default_dark_index` (`default_dark`),
  ADD KEY `css_themes_user_id_index` (`user_id`);

--
-- Indexes for table `csv_exports`
--
ALTER TABLE `csv_exports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `csv_exports_cache_name_unique` (`cache_name`),
  ADD KEY `csv_exports_user_id_index` (`user_id`);

--
-- Indexes for table `custom_domains`
--
ALTER TABLE `custom_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_domains_host_unique` (`host`),
  ADD KEY `custom_domains_user_id_index` (`user_id`),
  ADD KEY `custom_domains_created_at_index` (`created_at`),
  ADD KEY `custom_domains_updated_at_index` (`updated_at`),
  ADD KEY `custom_domains_global_index` (`global`),
  ADD KEY `custom_domains_resource_id_index` (`resource_id`),
  ADD KEY `custom_domains_resource_type_index` (`resource_type`),
  ADD KEY `custom_domains_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_type_index` (`type`),
  ADD KEY `pages_user_id_index` (`user_id`),
  ADD KEY `custom_pages_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `file_entries`
--
ALTER TABLE `file_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uploads_file_name_unique` (`file_name`),
  ADD KEY `uploads_name_index` (`name`),
  ADD KEY `uploads_user_id_index` (`user_id`),
  ADD KEY `uploads_public_index` (`public`),
  ADD KEY `file_entries_updated_at_index` (`updated_at`),
  ADD KEY `file_entries_parent_id_index` (`parent_id`),
  ADD KEY `file_entries_type_index` (`type`),
  ADD KEY `file_entries_deleted_at_index` (`deleted_at`),
  ADD KEY `file_entries_user_id_index` (`user_id`),
  ADD KEY `file_entries_path_index` (`path`),
  ADD KEY `file_entries_description_index` (`description`),
  ADD KEY `file_entries_owner_id_index` (`owner_id`);

--
-- Indexes for table `file_entry_models`
--
ALTER TABLE `file_entry_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uploadables_upload_id_uploadable_id_uploadable_type_unique` (`file_entry_id`,`model_id`,`model_type`),
  ADD KEY `file_entry_models_owner_index` (`owner`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_subscription_id_index` (`subscription_id`),
  ADD KEY `invoices_uuid_index` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `localizations`
--
ALTER TABLE `localizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localizations_name_index` (`name`),
  ADD KEY `localizations_language_index` (`language`);

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
-- Indexes for table `notification_subscriptions`
--
ALTER TABLE `notification_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_subscriptions_notif_id_index` (`notif_id`),
  ADD KEY `notification_subscriptions_user_id_index` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissionables`
--
ALTER TABLE `permissionables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissionable_unique` (`permission_id`,`permissionable_id`,`permissionable_type`),
  ADD KEY `permissionables_permission_id_index` (`permission_id`),
  ADD KEY `permissionables_permissionable_id_index` (`permissionable_id`),
  ADD KEY `permissionables_permissionable_type_index` (`permissionable_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_advanced_index` (`advanced`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_name_index` (`name`),
  ADD KEY `projects_slug_index` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`),
  ADD KEY `groups_default_index` (`default`),
  ADD KEY `groups_guests_index` (`guests`),
  ADD KEY `roles_internal_index` (`internal`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`),
  ADD KEY `settings_private_index` (`private`);

--
-- Indexes for table `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_profiles_user_id_service_name_unique` (`user_id`,`service_name`),
  ADD UNIQUE KEY `social_profiles_service_name_user_service_id_unique` (`service_name`,`user_service_id`),
  ADD KEY `social_profiles_user_id_index` (`user_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_index` (`user_id`),
  ADD KEY `subscriptions_plan_id_index` (`plan_id`),
  ADD KEY `subscriptions_gateway_index` (`gateway_name`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taggables_tag_id_taggable_id_user_id_taggable_type_unique` (`tag_id`,`taggable_id`,`user_id`,`taggable_type`),
  ADD KEY `taggables_tag_id_index` (`tag_id`),
  ADD KEY `taggables_taggable_id_index` (`taggable_id`),
  ADD KEY `taggables_taggable_type_index` (`taggable_type`),
  ADD KEY `taggables_user_id_index` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_type_unique` (`name`,`type`),
  ADD KEY `tags_type_index` (`type`),
  ADD KEY `tags_created_at_index` (`created_at`),
  ADD KEY `tags_updated_at_index` (`updated_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_created_at_index` (`created_at`),
  ADD KEY `users_updated_at_index` (`updated_at`),
  ADD KEY `users_username_index` (`username`);

--
-- Indexes for table `users_oauth`
--
ALTER TABLE `users_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_oauth_user_id_service_unique` (`user_id`,`service`),
  ADD UNIQUE KEY `users_oauth_token_unique` (`token`),
  ADD KEY `users_oauth_user_id_index` (`user_id`);

--
-- Indexes for table `users_projects`
--
ALTER TABLE `users_projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_projects_user_id_project_id_unique` (`user_id`,`project_id`),
  ADD KEY `users_projects_user_id_index` (`user_id`),
  ADD KEY `users_projects_project_id_index` (`project_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_group_user_id_group_id_unique` (`user_id`,`role_id`);

--
-- Indexes for table `workspaces`
--
ALTER TABLE `workspaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspaces_owner_id_index` (`owner_id`),
  ADD KEY `workspaces_created_at_index` (`created_at`),
  ADD KEY `workspaces_updated_at_index` (`updated_at`);

--
-- Indexes for table `workspace_invites`
--
ALTER TABLE `workspace_invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspace_invites_workspace_id_index` (`workspace_id`),
  ADD KEY `workspace_invites_user_id_index` (`user_id`),
  ADD KEY `workspace_invites_email_index` (`email`),
  ADD KEY `workspace_invites_role_id_index` (`role_id`);

--
-- Indexes for table `workspace_user`
--
ALTER TABLE `workspace_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workspace_user_workspace_id_user_id_unique` (`workspace_id`,`user_id`),
  ADD KEY `workspace_user_user_id_index` (`user_id`),
  ADD KEY `workspace_user_workspace_id_index` (`workspace_id`),
  ADD KEY `workspace_user_role_id_index` (`role_id`),
  ADD KEY `workspace_user_is_owner_index` (`is_owner`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_plans`
--
ALTER TABLE `billing_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `builder_pages`
--
ALTER TABLE `builder_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `css_themes`
--
ALTER TABLE `css_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `csv_exports`
--
ALTER TABLE `csv_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_domains`
--
ALTER TABLE `custom_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `file_entries`
--
ALTER TABLE `file_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_entry_models`
--
ALTER TABLE `file_entry_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `localizations`
--
ALTER TABLE `localizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissionables`
--
ALTER TABLE `permissionables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `social_profiles`
--
ALTER TABLE `social_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_oauth`
--
ALTER TABLE `users_oauth`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_projects`
--
ALTER TABLE `users_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workspace_user`
--
ALTER TABLE `workspace_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
