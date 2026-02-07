-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 06, 2026 at 07:58 PM
-- Server version: 10.6.24-MariaDB-cll-lve
-- PHP Version: 8.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asean_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `activity` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `route_name`, `path`, `method`, `activity`, `status`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 11:29:03', '2026-02-04 11:29:03'),
(2, 1, 'section-management.title', '/section-management/title', 'PATCH', 'update', 'warning', 'Updated section title to \"Philippine Higher Education: World University Rankings 2026\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 11:30:10', '2026-02-04 11:30:10'),
(3, 1, 'programmes.store', '/programmes', 'POST', 'create', 'warning', 'Added event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 11:37:59', '2026-02-04 11:37:59'),
(4, 1, 'programmes.store', '/programmes', 'POST', 'create', 'warning', 'Added event \"EU-ASEAN Peer Learning Workshop: Aligning Frameworks in a Changing World\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 11:39:15', '2026-02-04 11:39:15'),
(5, 1, 'programmes.store', '/programmes', 'POST', 'create', 'warning', 'Added event \"EU-ASEAN Peer Learning Workshop Welcome Dinner\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 11:40:37', '2026-02-04 11:40:37'),
(6, 1, 'programmes.store', '/programmes', 'POST', 'create', 'warning', 'Added event \"ASEAN Experts Meeting on Higher Education Recognition Qualifications: The Tokyo Convention and AI\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 11:42:09', '2026-02-04 11:42:09'),
(7, 1, 'issuances.store', '/issuances', 'POST', 'create', 'warning', 'Added issuance \"ASEAN PH 2026 User Manual\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 11:43:39', '2026-02-04 11:43:39'),
(8, 1, 'venues.store', '/venues', 'POST', 'create', 'warning', 'Added venue \"Commission on Higher Education (CHED)\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 11:49:59', '2026-02-04 11:49:59'),
(9, 1, 'venues.store', '/venues', 'POST', 'create', 'warning', 'Added venue \"Makati Diamond Residences, Makati City, Philippines\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 11:54:26', '2026-02-04 11:54:26'),
(10, 1, 'venues.store', '/venues', 'POST', 'create', 'warning', 'Added venue \"Commission on Higher Education (CHED)\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 11:55:51', '2026-02-04 11:55:51'),
(11, 1, 'venues.store', '/venues', 'POST', 'create', 'warning', 'Added venue \"Shangri-La The Fort, Manila, Philippines\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 11:56:50', '2026-02-04 11:56:50'),
(12, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 12:41:58', '2026-02-04 12:41:58'),
(13, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Rheymann Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 12:57:43', '2026-02-04 12:57:43'),
(14, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 12:58:02', '2026-02-04 12:58:02'),
(15, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 12:58:34', '2026-02-04 12:58:34'),
(16, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 15:45:31', '2026-02-04 15:45:31'),
(17, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 15:46:22', '2026-02-04 15:46:22'),
(18, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 15:46:42', '2026-02-04 15:46:42'),
(19, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'failed', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 15:47:23', '2026-02-04 15:47:23'),
(20, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 15:48:18', '2026-02-04 15:48:18'),
(21, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 16:01:12', '2026-02-04 16:01:12'),
(22, 1, 'participants.programmes.join', '/participants/2/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Rheymann Cuartocruz\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 16:11:22', '2026-02-04 16:11:22'),
(23, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 18:31:43', '2026-02-04 18:31:43'),
(24, 1, 'programmes.update', '/programmes/1', 'PATCH', 'update', 'warning', 'Set event \"Capacity Building on Liaison, Protocol, and Conference Management\" active.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 18:36:06', '2026-02-04 18:36:06'),
(25, 1, 'programmes.update', '/programmes/1', 'PATCH', 'update', 'warning', 'Set event \"Capacity Building on Liaison, Protocol, and Conference Management\" active.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 18:36:41', '2026-02-04 18:36:41'),
(26, 1, 'scanner.scan', '/scanner/scan', 'POST', 'create', 'success', 'Created scanner / scan.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 18:36:58', '2026-02-04 18:36:58'),
(27, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 19:17:05', '2026-02-04 19:17:05'),
(28, 1, 'participants.destroy', '/participants/2', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 19:22:35', '2026-02-04 19:22:35'),
(29, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Rheymann A. Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 19:23:12', '2026-02-04 19:23:12'),
(30, 1, 'participants.destroy', '/participants/3', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann A. Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 19:25:11', '2026-02-04 19:25:11'),
(31, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Rheymann A. Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 19:25:17', '2026-02-04 19:25:17'),
(32, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 21:35:16', '2026-02-04 21:35:16'),
(33, 1, 'participants.destroy', '/participants/4', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann A. Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 21:35:23', '2026-02-04 21:35:23'),
(34, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Rheymann Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 21:35:44', '2026-02-04 21:35:44'),
(35, 1, 'participants.destroy', '/participants/5', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 22:11:22', '2026-02-04 22:11:22'),
(36, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Rheymann\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 22:11:32', '2026-02-04 22:11:32'),
(37, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 22:30:59', '2026-02-04 22:30:59'),
(38, 1, 'participants.destroy', '/participants/6', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 22:45:15', '2026-02-04 22:45:15'),
(39, 1, 'participants.destroy', '/participants/7', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 23:06:08', '2026-02-04 23:06:08'),
(40, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 23:14:09', '2026-02-04 23:14:09'),
(41, 1, 'participants.destroy', '/participants/9', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann Cuartocruz2\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 23:14:18', '2026-02-04 23:14:18'),
(42, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 23:22:11', '2026-02-04 23:22:11'),
(43, 1, 'participants.destroy', '/participants/10', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 23:22:18', '2026-02-04 23:22:18'),
(44, 1, 'participants.destroy', '/participants/8', 'DELETE', 'delete', 'warning', 'Removed participant \"Marvin Waro\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 23:22:21', '2026-02-04 23:22:21'),
(45, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 23:46:57', '2026-02-04 23:46:57'),
(46, 1, 'participants.destroy', '/participants/11', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 23:47:12', '2026-02-04 23:47:12'),
(47, 1, 'participants.destroy', '/participants/12', 'DELETE', 'delete', 'warning', 'Removed participant \"Marvin Waro\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 23:47:15', '2026-02-04 23:47:15'),
(48, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 00:37:20', '2026-02-05 00:37:20'),
(49, 1, 'participants.destroy', '/participants/14', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 00:37:29', '2026-02-05 00:37:29'),
(50, 1, 'participants.destroy', '/participants/15', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann Cuartocruz2\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 00:37:32', '2026-02-05 00:37:32'),
(51, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 07:15:58', '2026-02-05 07:15:58'),
(52, 1, 'participants.destroy', '/participants/13', 'DELETE', 'delete', 'warning', 'Removed participant \"MArv\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 07:16:05', '2026-02-05 07:16:05'),
(53, 1, 'participants.destroy', '/participants/16', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 07:16:08', '2026-02-05 07:16:08'),
(54, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"test\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 07:17:14', '2026-02-05 07:17:14'),
(55, 1, 'participants.destroy', '/participants/17', 'DELETE', 'delete', 'warning', 'Removed participant \"test\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 08:02:28', '2026-02-05 08:02:28'),
(56, 1, 'participants.destroy', '/participants/18', 'DELETE', 'delete', 'warning', 'Removed participant \"test2\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 08:02:31', '2026-02-05 08:02:31'),
(57, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"test\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 08:03:12', '2026-02-05 08:03:12'),
(58, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"test3\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 08:12:33', '2026-02-05 08:12:33'),
(59, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 08:29:15', '2026-02-05 08:29:15'),
(60, 1, 'participants.destroy', '/participants/19', 'DELETE', 'delete', 'warning', 'Removed participant \"test\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 08:29:32', '2026-02-05 08:29:32'),
(61, 1, 'participants.destroy', '/participants/20', 'DELETE', 'delete', 'warning', 'Removed participant \"test3\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 08:29:35', '2026-02-05 08:29:35'),
(62, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"asdasdasd\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 08:29:51', '2026-02-05 08:29:51'),
(63, 1, 'table-assignment.tables.store', '/table-assignment/tables', 'POST', 'create', 'warning', 'Added table for event.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 08:45:38', '2026-02-05 08:45:38'),
(64, 1, 'participants.programmes.join', '/participants/21/programmes/1', 'POST', 'create', 'warning', 'Added participant \"asdasdasd\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 08:46:00', '2026-02-05 08:46:00'),
(65, 1, 'table-assignment.assignments.store', '/table-assignment/assignments', 'POST', 'create', 'warning', 'Assigned participants to a table.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 08:46:17', '2026-02-05 08:46:17'),
(66, 1, 'table-assignment.assignments.update', '/table-assignment/assignments/1', 'PATCH', 'update', 'warning', 'Changed \"asdasdasd\" to seat 4 at table Table 1 in event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:00:04', '2026-02-05 09:00:04'),
(67, 1, 'table-assignment.assignments.destroy', '/table-assignment/assignments/1', 'DELETE', 'delete', 'warning', 'Removed \"asdasdasd\" from table Table 1 in event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:01:12', '2026-02-05 09:01:12'),
(68, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:03:17', '2026-02-05 09:03:17'),
(69, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:04:10', '2026-02-05 09:04:10'),
(70, 1, 'scanner.scan', '/scanner/scan', 'POST', 'create', 'success', 'Created scanner / scan.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:04:30', '2026-02-05 09:04:30'),
(71, 1, 'table-assignment.assignments.store', '/table-assignment/assignments', 'POST', 'create', 'warning', 'Assigned participants to a table.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:07:01', '2026-02-05 09:07:01'),
(72, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:11:40', '2026-02-05 09:11:40'),
(73, 1, 'table-assignment.assignments.update', '/table-assignment/assignments/2', 'PATCH', 'update', 'warning', 'Changed \"asdasdasd\" to seat 2 at table Table 1 in event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:14:50', '2026-02-05 09:14:50'),
(74, 1, 'table-assignment.assignments.destroy', '/table-assignment/assignments/2', 'DELETE', 'delete', 'warning', 'Removed \"asdasdasd\" from table Table 1 in event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:14:58', '2026-02-05 09:14:58'),
(75, 1, 'table-assignment.assignments.store', '/table-assignment/assignments', 'POST', 'create', 'warning', 'Assigned participants to a table.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:15:04', '2026-02-05 09:15:04'),
(76, 1, 'table-assignment.assignments.update', '/table-assignment/assignments/3', 'PATCH', 'update', 'warning', 'Changed \"asdasdasd\" to seat 4 at table Table 1 in event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:15:35', '2026-02-05 09:15:35'),
(77, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:18:39', '2026-02-05 09:18:39'),
(78, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:28:10', '2026-02-05 09:28:10'),
(79, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:48:56', '2026-02-05 09:48:56'),
(80, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:50:32', '2026-02-05 09:50:32'),
(81, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:52:46', '2026-02-05 09:52:46'),
(82, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 09:53:57', '2026-02-05 09:53:57'),
(83, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:02:11', '2026-02-05 10:02:11'),
(84, 1, 'participants.programmes.join', '/participants/22/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Rheymann Cuartocruz\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:02:19', '2026-02-05 10:02:19'),
(85, 1, 'scanner.scan', '/scanner/scan', 'POST', 'create', 'success', 'Created scanner / scan.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:03:43', '2026-02-05 10:03:43'),
(86, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:21:47', '2026-02-05 10:21:47'),
(87, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"test 2\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:22:04', '2026-02-05 10:22:04'),
(88, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:22:37', '2026-02-05 10:22:37'),
(89, 1, 'participants.programmes.join', '/participants/23/programmes/1', 'POST', 'create', 'warning', 'Added participant \"test 2\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:22:46', '2026-02-05 10:22:46'),
(90, 1, 'participants.programmes.join', '/participants/23/programmes/2', 'POST', 'create', 'warning', 'Added participant \"test 2\" to event \"EU-ASEAN Peer Learning Workshop: Aligning Frameworks in a Changing World\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:22:48', '2026-02-05 10:22:48'),
(91, 1, 'participants.programmes.join', '/participants/23/programmes/1', 'POST', 'create', 'warning', 'Added participant \"test 2\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:22:50', '2026-02-05 10:22:50'),
(92, 1, 'participants.programmes.join', '/participants/23/programmes/3', 'POST', 'create', 'warning', 'Added participant \"test 2\" to event \"EU-ASEAN Peer Learning Workshop Welcome Dinner\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:22:52', '2026-02-05 10:22:52'),
(93, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:25:03', '2026-02-05 10:25:03'),
(94, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"test 5\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:35:15', '2026-02-05 10:35:15'),
(95, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:37:54', '2026-02-05 10:37:54'),
(96, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:38:19', '2026-02-05 10:38:19'),
(97, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:39:11', '2026-02-05 10:39:11'),
(98, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:43:19', '2026-02-05 10:43:19'),
(99, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:48:51', '2026-02-05 10:48:51'),
(100, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:49:20', '2026-02-05 10:49:20'),
(101, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:55:07', '2026-02-05 10:55:07'),
(102, NULL, 'table-assignment.tables.store', '/table-assignment/tables', 'POST', 'create', 'warning', 'Added table for event.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:55:22', '2026-02-05 10:55:22'),
(103, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:55:47', '2026-02-05 10:55:47'),
(104, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 10:56:58', '2026-02-05 10:56:58'),
(105, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:00:41', '2026-02-05 11:00:41'),
(106, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:00:59', '2026-02-05 11:00:59'),
(107, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:01:53', '2026-02-05 11:01:53'),
(108, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:02:17', '2026-02-05 11:02:17'),
(109, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:06:49', '2026-02-05 11:06:49'),
(110, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:07:06', '2026-02-05 11:07:06'),
(111, 1, 'table-assignment.assignments.destroy', '/table-assignment/assignments/3', 'DELETE', 'delete', 'warning', 'Removed \"asdasdasd\" from table Table 1 in event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:07:28', '2026-02-05 11:07:28'),
(112, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:07:45', '2026-02-05 11:07:45'),
(113, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:08:46', '2026-02-05 11:08:46'),
(114, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:09:52', '2026-02-05 11:09:52'),
(115, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:28:18', '2026-02-05 11:28:18'),
(116, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:28:19', '2026-02-05 11:28:19'),
(117, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:28:20', '2026-02-05 11:28:20'),
(118, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:32:37', '2026-02-05 11:32:37'),
(119, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:32:40', '2026-02-05 11:32:40'),
(120, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:33:23', '2026-02-05 11:33:23'),
(121, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:33:31', '2026-02-05 11:33:31'),
(122, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:35:58', '2026-02-05 11:35:58'),
(123, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:36:10', '2026-02-05 11:36:10'),
(124, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:38:27', '2026-02-05 11:38:27'),
(125, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:38:49', '2026-02-05 11:38:49'),
(126, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:45:12', '2026-02-05 11:45:12'),
(127, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"test 6\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:50:17', '2026-02-05 11:50:17'),
(128, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:56:50', '2026-02-05 11:56:50'),
(129, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:57:13', '2026-02-05 11:57:13'),
(130, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:57:18', '2026-02-05 11:57:18'),
(131, 1, 'vehicle-assignments.pickup', '/vehicle-assignments/2/pickup', 'PATCH', 'update', 'warning', 'Updated vehicle assignments / pickup.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:57:27', '2026-02-05 11:57:27'),
(132, 1, 'vehicle-assignments.pickup', '/vehicle-assignments/2/pickup', 'PATCH', 'update', 'warning', 'Updated vehicle assignments / pickup.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:57:56', '2026-02-05 11:57:56'),
(133, 1, 'vehicle-assignments.dropoff', '/vehicle-assignments/2/dropoff', 'PATCH', 'update', 'warning', 'Updated vehicle assignments / dropoff.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:58:17', '2026-02-05 11:58:17'),
(134, 1, 'vehicle-assignments.destroy', '/vehicle-assignments/2', 'DELETE', 'delete', 'warning', 'Removed vehicle assignments / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:58:20', '2026-02-05 11:58:20'),
(135, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:58:25', '2026-02-05 11:58:25'),
(136, 1, 'vehicle-assignments.destroy', '/vehicle-assignments/3', 'DELETE', 'delete', 'warning', 'Removed vehicle assignments / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:58:34', '2026-02-05 11:58:34'),
(137, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:58:37', '2026-02-05 11:58:37'),
(138, 1, 'vehicle-assignments.destroy', '/vehicle-assignments/6', 'DELETE', 'delete', 'warning', 'Removed vehicle assignments / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:58:45', '2026-02-05 11:58:45'),
(139, 1, 'vehicle-assignments.destroy', '/vehicle-assignments/4', 'DELETE', 'delete', 'warning', 'Removed vehicle assignments / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:58:47', '2026-02-05 11:58:47'),
(140, 1, 'vehicle-assignments.destroy', '/vehicle-assignments/5', 'DELETE', 'delete', 'warning', 'Removed vehicle assignments / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:58:48', '2026-02-05 11:58:48'),
(141, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 11:59:58', '2026-02-05 11:59:58'),
(142, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:00:57', '2026-02-05 12:00:57'),
(143, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:02:27', '2026-02-05 12:02:27'),
(144, 1, 'transport-vehicles.destroy', '/transport-vehicles/3', 'DELETE', 'delete', 'warning', 'Removed transport vehicles / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:06:39', '2026-02-05 12:06:39'),
(145, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:06:46', '2026-02-05 12:06:46'),
(146, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:06:51', '2026-02-05 12:06:51'),
(147, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:07:00', '2026-02-05 12:07:00'),
(148, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:07:07', '2026-02-05 12:07:07'),
(149, 1, 'vehicle-assignments.destroy', '/vehicle-assignments/7', 'DELETE', 'delete', 'warning', 'Removed vehicle assignments / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:13:46', '2026-02-05 12:13:46'),
(150, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:14:03', '2026-02-05 12:14:03'),
(151, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:14:15', '2026-02-05 12:14:15'),
(152, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:20:22', '2026-02-05 12:20:22'),
(153, 1, 'vehicle-assignments.destroy', '/vehicle-assignments/8', 'DELETE', 'delete', 'warning', 'Removed vehicle assignments / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:21:25', '2026-02-05 12:21:25'),
(154, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:24:46', '2026-02-05 12:24:46'),
(155, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:48:14', '2026-02-05 12:48:14'),
(156, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:52:58', '2026-02-05 12:52:58'),
(157, 1, 'vehicle-assignments.destroy', '/vehicle-assignments/9', 'DELETE', 'delete', 'warning', 'Removed vehicle assignments / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:53:23', '2026-02-05 12:53:23'),
(158, 1, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:53:47', '2026-02-05 12:53:47'),
(159, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:54:00', '2026-02-05 12:54:00'),
(160, 1, 'vehicle-assignments.destroy', '/vehicle-assignments/10', 'DELETE', 'delete', 'warning', 'Removed vehicle assignments / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:54:04', '2026-02-05 12:54:04'),
(161, 1, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:54:08', '2026-02-05 12:54:08'),
(162, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:55:18', '2026-02-05 12:55:18'),
(163, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:55:31', '2026-02-05 12:55:31'),
(164, NULL, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 12:56:22', '2026-02-05 12:56:22'),
(165, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:21:02', '2026-02-05 14:21:02'),
(166, 1, 'table-assignment.tables.destroy', '/table-assignment/tables/1', 'DELETE', 'delete', 'warning', 'Deleted table for event.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:21:09', '2026-02-05 14:21:09'),
(167, 1, 'transport-vehicles.destroy', '/transport-vehicles/5', 'DELETE', 'delete', 'warning', 'Removed transport vehicles / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:21:29', '2026-02-05 14:21:29'),
(168, 1, 'vehicle-assignments.destroy', '/vehicle-assignments/11', 'DELETE', 'delete', 'warning', 'Removed vehicle assignments / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:21:35', '2026-02-05 14:21:35'),
(169, 1, 'transport-vehicles.destroy', '/transport-vehicles/7', 'DELETE', 'delete', 'warning', 'Removed transport vehicles / destroy.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:21:44', '2026-02-05 14:21:44');
INSERT INTO `activity_logs` (`id`, `user_id`, `route_name`, `path`, `method`, `activity`, `status`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(170, 1, 'participants.destroy', '/participants/25', 'DELETE', 'delete', 'warning', 'Removed participant \"test 6\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:21:53', '2026-02-05 14:21:53'),
(171, 1, 'participants.destroy', '/participants/23', 'DELETE', 'delete', 'warning', 'Removed participant \"test 2\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:21:57', '2026-02-05 14:21:57'),
(172, 1, 'participants.destroy', '/participants/24', 'DELETE', 'delete', 'warning', 'Removed participant \"test 5\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:22:01', '2026-02-05 14:22:01'),
(173, 1, 'participants.destroy', '/participants/22', 'DELETE', 'delete', 'warning', 'Removed participant \"Rheymann Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:22:05', '2026-02-05 14:22:05'),
(174, 1, 'participants.destroy', '/participants/21', 'DELETE', 'delete', 'warning', 'Removed participant \"asdasdasd\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:22:23', '2026-02-05 14:22:23'),
(175, 1, 'user-types.store', '/participants/user-types', 'POST', 'create', 'warning', 'Created user types / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:24:52', '2026-02-05 14:24:52'),
(176, 1, 'user-types.store', '/participants/user-types', 'POST', 'create', 'warning', 'Created user types / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:25:00', '2026-02-05 14:25:00'),
(177, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Rheymann Cuartocruz\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:26:27', '2026-02-05 14:26:27'),
(178, 26, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 14:27:30', '2026-02-05 14:27:30'),
(179, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 15:43:01', '2026-02-05 15:43:01'),
(180, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Rody P. Garcia\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 15:45:01', '2026-02-05 15:45:01'),
(181, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Cherrie Melanie A. Diego\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 15:53:06', '2026-02-05 15:53:06'),
(182, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Julieta M. Paras\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 15:55:20', '2026-02-05 15:55:20'),
(183, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"CHED IAS\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 15:56:27', '2026-02-05 15:56:27'),
(184, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Maricar R. Casquejo\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 15:57:21', '2026-02-05 15:57:21'),
(185, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Arlita Amapola Minguez Minguez\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 15:59:01', '2026-02-05 15:59:01'),
(186, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Filomena Dayagbil\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 16:00:50', '2026-02-05 16:00:50'),
(187, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Mutya Mangubat\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 16:02:55', '2026-02-05 16:02:55'),
(188, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Maura Consolacion D. Cristobal\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 16:05:09', '2026-02-05 16:05:09'),
(189, 1, 'user-types.store', '/participants/user-types', 'POST', 'create', 'warning', 'Created user types / store.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 16:06:53', '2026-02-05 16:06:53'),
(190, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Cinderella Filipina Benitez-Jaro\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 16:07:18', '2026-02-05 16:07:18'),
(191, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Marivic Iriberri\".', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 16:08:31', '2026-02-05 16:08:31'),
(192, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:15:27', '2026-02-06 07:15:27'),
(193, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:15:31', '2026-02-06 07:15:31'),
(194, 1, 'programmes.update', '/programmes/1', 'PATCH', 'update', 'warning', 'Set event \"Capacity Building on Liaison, Protocol, and Conference Management\" active.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:15:55', '2026-02-06 07:15:55'),
(195, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '122.54.102.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:16:02', '2026-02-06 07:16:02'),
(196, 1, 'programmes.update', '/programmes/1', 'PATCH', 'update', 'warning', 'Set event \"Capacity Building on Liaison, Protocol, and Conference Management\" active.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:16:34', '2026-02-06 07:16:34'),
(197, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137 Version/11.1.1 Safari/605.1.15', '2026-02-06 07:16:55', '2026-02-06 07:16:55'),
(198, 30, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:18:24', '2026-02-06 07:18:24'),
(199, 30, 'participants.programmes.join', '/participants/32/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Arlita Amapola Minguez Minguez\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:19:12', '2026-02-06 07:19:12'),
(200, 30, 'participants.programmes.join', '/participants/28/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Cherrie Melanie A. Diego\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:19:22', '2026-02-06 07:19:22'),
(201, 30, 'participants.programmes.join', '/participants/36/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Cinderella Filipina Benitez-Jaro\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:19:27', '2026-02-06 07:19:27'),
(202, 30, 'participants.programmes.join', '/participants/33/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Filomena Dayagbil\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:19:32', '2026-02-06 07:19:32'),
(203, 30, 'participants.programmes.join', '/participants/29/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Julieta M. Paras\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:19:44', '2026-02-06 07:19:44'),
(204, 30, 'participants.programmes.join', '/participants/37/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Marivic Iriberri\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:19:55', '2026-02-06 07:19:55'),
(205, 30, 'participants.update', '/participants/31', 'PATCH', 'update', 'warning', 'Set participant \"Maricar R. Casquejo\" active.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:20:20', '2026-02-06 07:20:20'),
(206, 30, 'participants.programmes.join', '/participants/31/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Maricar R. Casquejo\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:20:26', '2026-02-06 07:20:26'),
(207, 30, 'participants.programmes.join', '/participants/35/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Maura Consolacion D. Cristobal\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:20:38', '2026-02-06 07:20:38'),
(208, 30, 'participants.programmes.join', '/participants/27/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Rody P. Garcia\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:20:43', '2026-02-06 07:20:43'),
(209, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Septon A. Dela Cruz\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:21:17', '2026-02-06 07:21:17'),
(210, 1, 'participants.update', '/participants/38', 'PATCH', 'update', 'warning', 'Set participant \"Atty. Septon A. Dela Cruz\" active.', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:21:31', '2026-02-06 07:21:31'),
(211, 1, 'participants.update', '/participants/38', 'PATCH', 'update', 'warning', 'Set participant \"Septon A. Dela Cruz\" active.', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:21:49', '2026-02-06 07:21:49'),
(212, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '103.235.95.93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:21:58', '2026-02-06 07:21:58'),
(213, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '122.54.102.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:22:44', '2026-02-06 07:22:44'),
(214, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Corinna Frances Cabanilla\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:23:12', '2026-02-06 07:23:12'),
(215, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"John\".', '103.235.95.93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:23:26', '2026-02-06 07:23:26'),
(216, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Ian D. Evangelista\".', '122.54.102.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:24:18', '2026-02-06 07:24:18'),
(217, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Lora L. Yusi\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:24:36', '2026-02-06 07:24:36'),
(218, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"kenmark hernandez\".', '103.235.95.93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:25:05', '2026-02-06 07:25:05'),
(219, 30, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '175.158.203.0', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '2026-02-06 07:25:56', '2026-02-06 07:25:56'),
(220, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:26:38', '2026-02-06 07:26:38'),
(221, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:26:49', '2026-02-06 07:26:49'),
(222, 1, 'participants.update', '/participants/40', 'PATCH', 'update', 'warning', 'Set participant \"John Lander Jimenez\" active.', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:28:06', '2026-02-06 07:28:06'),
(223, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Kenmark Hernandez\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:28:43', '2026-02-06 07:28:43'),
(224, 1, 'participants.update', '/participants/40', 'PATCH', 'update', 'warning', 'Set participant \"John\" active.', '103.235.95.93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:28:47', '2026-02-06 07:28:47'),
(225, 1, 'participants.update', '/participants/43', 'PATCH', 'update', 'warning', 'Set participant \"kenmark Hernandez\" active.', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:28:56', '2026-02-06 07:28:56'),
(226, 1, 'participants.update', '/participants/43', 'PATCH', 'update', 'warning', 'Set participant \"Kenmark Hernandez\" active.', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:29:03', '2026-02-06 07:29:03'),
(227, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Mayumi Belandres\".', '122.54.102.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:29:16', '2026-02-06 07:29:16'),
(228, 1, 'participants.update', '/participants/40', 'PATCH', 'update', 'warning', 'Set participant \"John Lander Jimenez\" active.', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:29:19', '2026-02-06 07:29:19'),
(229, 1, 'participants.update', '/participants/43', 'PATCH', 'update', 'warning', 'Set participant \"Kenmark Hernandez\" active.', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:29:30', '2026-02-06 07:29:30'),
(230, 30, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:29:31', '2026-02-06 07:29:31'),
(231, 1, 'participants.programmes.join', '/participants/34/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Mutya Mangubat\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:29:51', '2026-02-06 07:29:51'),
(232, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Gerhald Villasis\".', '122.54.102.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:29:58', '2026-02-06 07:29:58'),
(233, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Geoselle Dela Cruz-Berdan\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:29:58', '2026-02-06 07:29:58'),
(234, 1, 'participants.programmes.join', '/participants/44/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Mayumi Belandres\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:30:02', '2026-02-06 07:30:02'),
(235, 1, 'participants.update', '/participants/46', 'PATCH', 'update', 'warning', 'Set participant \"Geoselle Dela Cruz-Berdan\" active.', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:30:08', '2026-02-06 07:30:08'),
(236, 1, 'participants.programmes.join', '/participants/38/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Septon A. Dela Cruz\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:30:26', '2026-02-06 07:30:26'),
(237, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Adelma Tercia\".', '122.54.102.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:30:33', '2026-02-06 07:30:33'),
(238, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Jhanina Cajefe\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:30:36', '2026-02-06 07:30:36'),
(239, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Godfrey Mendoza\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:31:00', '2026-02-06 07:31:00'),
(240, 1, 'participants.programmes.join', '/participants/47/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Adelma Tercia\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:31:19', '2026-02-06 07:31:19'),
(241, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Adelma Tercia\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:31:58', '2026-02-06 07:31:58'),
(242, 1, 'participants.programmes.join', '/participants/46/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Geoselle Dela Cruz-Berdan\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:32:07', '2026-02-06 07:32:07'),
(243, 1, 'participants.programmes.join', '/participants/45/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Gerhald Villasis\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:32:12', '2026-02-06 07:32:12'),
(244, 1, 'participants.programmes.join', '/participants/49/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Godfrey Mendoza\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:32:17', '2026-02-06 07:32:17'),
(245, 1, 'participants.programmes.join', '/participants/48/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Jhanina Cajefe\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:32:22', '2026-02-06 07:32:22'),
(246, 1, 'participants.programmes.join', '/participants/40/programmes/1', 'POST', 'create', 'warning', 'Added participant \"John Lander Jimenez\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:32:27', '2026-02-06 07:32:27'),
(247, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Richard Dean N. Gavilan\".', '122.54.102.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:32:33', '2026-02-06 07:32:33'),
(248, 1, 'participants.programmes.join', '/participants/43/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Kenmark Hernandez\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:32:37', '2026-02-06 07:32:37'),
(249, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Richard Dean N. Gavilan\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:33:16', '2026-02-06 07:33:16'),
(250, 51, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:33:54', '2026-02-06 07:33:54'),
(251, 51, 'login', '/login', 'GET', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:34:15', '2026-02-06 07:34:15'),
(252, 52, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:34:39', '2026-02-06 07:34:39'),
(253, 1, 'user-types.store', '/participants/user-types', 'POST', 'create', 'warning', 'Created user types / store.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:36:00', '2026-02-06 07:36:00'),
(254, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:37:05', '2026-02-06 07:37:05'),
(255, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Myra Paz B. Manalo\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:37:46', '2026-02-06 07:37:46'),
(256, 1, 'participants.update', '/participants/50', 'PATCH', 'update', 'warning', 'Set participant \"Richard Dean N. Gavilan\" active.', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:37:56', '2026-02-06 07:37:56'),
(257, 30, 'login', '/login', 'GET', 'login', 'warning', 'Signed in.', '175.158.203.0', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '2026-02-06 07:38:25', '2026-02-06 07:38:25'),
(258, 30, 'login', '/login', 'GET', 'login', 'warning', 'Signed in.', '175.158.203.0', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '2026-02-06 07:39:36', '2026-02-06 07:39:36'),
(259, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:39:59', '2026-02-06 07:39:59'),
(260, 51, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:40:57', '2026-02-06 07:40:57'),
(261, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:41:24', '2026-02-06 07:41:24'),
(262, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Melquiades Ancheta\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:41:25', '2026-02-06 07:41:25'),
(263, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Melquiades Ancheta\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:41:55', '2026-02-06 07:41:55'),
(264, 1, 'participants.update', '/participants/51', 'PATCH', 'update', 'warning', 'Set participant \"Tech 2\" active.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:41:56', '2026-02-06 07:41:56'),
(265, 51, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:42:09', '2026-02-06 07:42:09'),
(266, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Mildred Libot\".', '122.54.102.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:42:21', '2026-02-06 07:42:21'),
(267, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Mutya Mangubat\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:42:22', '2026-02-06 07:42:22'),
(268, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:42:43', '2026-02-06 07:42:43'),
(269, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Ericson Reyes\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:42:46', '2026-02-06 07:42:46'),
(270, 1, 'participants.programmes.leave', '/participants/51/programmes/1', 'DELETE', 'delete', 'warning', 'Removed participant \"Tech 2\" from event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:42:57', '2026-02-06 07:42:57'),
(271, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Hazel D. Mendoza\".', '122.54.102.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:42:58', '2026-02-06 07:42:58'),
(272, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"John Paul Dela Cruz\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:43:05', '2026-02-06 07:43:05'),
(273, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:43:14', '2026-02-06 07:43:14'),
(274, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Remedios Talingdan\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:43:27', '2026-02-06 07:43:27'),
(275, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Peter Lloyd D. Carpio\".', '122.54.102.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:43:28', '2026-02-06 07:43:28'),
(276, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Peter Lloyd D. Carpio\".', '103.235.95.93', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:43:53', '2026-02-06 07:43:53'),
(277, 51, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:44:03', '2026-02-06 07:44:03'),
(278, 1, 'participants.store', '/participants', 'POST', 'create', 'warning', 'Added participant \"Remedios Talingdan\".', '122.54.102.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:44:09', '2026-02-06 07:44:09'),
(279, 1, 'scanner.scan', '/scanner/scan', 'POST', 'create', 'success', 'Created scanner / scan.', '209.35.160.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137 Version/11.1.1 Safari/605.1.15', '2026-02-06 07:44:31', '2026-02-06 07:44:31'),
(280, 1, 'participants.programmes.join', '/participants/51/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Tech 2\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:44:44', '2026-02-06 07:44:44'),
(281, 1, 'scanner.scan', '/scanner/scan', 'POST', 'create', 'success', 'Created scanner / scan.', '209.35.160.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137 Version/11.1.1 Safari/605.1.15', '2026-02-06 07:45:08', '2026-02-06 07:45:08'),
(282, 30, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '175.158.203.0', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '2026-02-06 07:45:56', '2026-02-06 07:45:56'),
(283, 62, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:46:24', '2026-02-06 07:46:24'),
(284, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:52:43', '2026-02-06 07:52:43'),
(285, 1, 'user-types.store', '/participants/user-types', 'POST', 'create', 'warning', 'Created user types / store.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:53:31', '2026-02-06 07:53:31'),
(286, 1, 'participants.update', '/participants/54', 'PATCH', 'update', 'warning', 'Set participant \"Melquiades Ancheta\" active.', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:54:23', '2026-02-06 07:54:23'),
(287, 1, 'participants.programmes.join', '/participants/54/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Melquiades Ancheta\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '209.35.160.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:54:27', '2026-02-06 07:54:27'),
(288, 1, 'participants.update', '/participants/34', 'PATCH', 'update', 'warning', 'Set participant \"Mutya Mangubat\" active.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:55:33', '2026-02-06 07:55:33'),
(289, 1, 'participants.programmes.join', '/participants/57/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Ericson Reyes\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:56:42', '2026-02-06 07:56:42'),
(290, 1, 'participants.update', '/participants/57', 'PATCH', 'update', 'warning', 'Set participant \"Ericson Reyes\" active.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:56:54', '2026-02-06 07:56:54'),
(291, 1, 'participants.programmes.join', '/participants/59/programmes/1', 'POST', 'create', 'warning', 'Added participant \"John Paul Dela Cruz\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:58:24', '2026-02-06 07:58:24'),
(292, 1, 'participants.update', '/participants/59', 'PATCH', 'update', 'warning', 'Set participant \"John Paul Dela Cruz\" active.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:58:33', '2026-02-06 07:58:33'),
(293, 59, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:58:49', '2026-02-06 07:58:49'),
(294, 1, 'participants.update', '/participants/60', 'PATCH', 'update', 'warning', 'Set participant \"Remedios Talingdan\" active.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:59:33', '2026-02-06 07:59:33'),
(295, 1, 'participants.programmes.join', '/participants/60/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Remedios Talingdan\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 07:59:37', '2026-02-06 07:59:37'),
(296, 1, 'participants.programmes.join', '/participants/55/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Cherrie Melanie A. Diego\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:00:19', '2026-02-06 08:00:19'),
(297, 1, 'participants.programmes.join', '/participants/53/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Myra Paz B. Manalo\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:01:38', '2026-02-06 08:01:38'),
(298, 1, 'participants.programmes.join', '/participants/50/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Richard Dean N. Gavilan\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:01:47', '2026-02-06 08:01:47'),
(299, 32, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:02:46', '2026-02-06 08:02:46'),
(300, 30, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '2026-02-06 08:02:51', '2026-02-06 08:02:51'),
(301, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:03:43', '2026-02-06 08:03:43'),
(302, 30, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '175.158.203.0', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '2026-02-06 08:06:10', '2026-02-06 08:06:10'),
(303, 30, 'participants.update', '/participants/51', 'PATCH', 'update', 'warning', 'Set participant \"Tech 2\" active.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:06:49', '2026-02-06 08:06:49'),
(304, 30, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '175.158.203.0', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '2026-02-06 08:07:20', '2026-02-06 08:07:20'),
(305, 30, 'login', '/login', 'GET', 'login', 'warning', 'Signed in.', '175.158.203.0', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '2026-02-06 08:07:53', '2026-02-06 08:07:53'),
(306, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '2026-02-06 08:09:13', '2026-02-06 08:09:13'),
(307, 30, 'participants.update', '/participants/51', 'PATCH', 'update', 'warning', 'Set participant \"Tech 2\" active.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:09:42', '2026-02-06 08:09:42'),
(308, 63, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '175.158.203.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:14:26', '2026-02-06 08:14:26'),
(309, 30, 'scanner.scan', '/scanner/scan', 'POST', 'create', 'success', 'Created scanner / scan.', '202.90.133.157', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '2026-02-06 08:17:03', '2026-02-06 08:17:03'),
(310, 30, 'scanner.scan', '/scanner/scan', 'POST', 'create', 'success', 'Created scanner / scan.', '202.90.133.157', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '2026-02-06 08:17:19', '2026-02-06 08:17:19'),
(311, 30, 'table-assignment.tables.store', '/table-assignment/tables', 'POST', 'create', 'warning', 'Added table for event.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:18:11', '2026-02-06 08:18:11'),
(312, 30, 'table-assignment.tables.update', '/table-assignment/tables/3', 'PATCH', 'update', 'warning', 'Updated table.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:18:59', '2026-02-06 08:18:59'),
(313, 30, 'table-assignment.assignments.store', '/table-assignment/assignments', 'POST', 'create', 'warning', 'Assigned participants to a table.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:19:18', '2026-02-06 08:19:18'),
(314, 30, 'table-assignment.tables.update', '/table-assignment/tables/3', 'PATCH', 'update', 'warning', 'Updated table.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:20:22', '2026-02-06 08:20:22'),
(315, 30, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:21:28', '2026-02-06 08:21:28'),
(316, 30, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:21:49', '2026-02-06 08:21:49'),
(317, 30, 'participants.update', '/participants/51', 'PATCH', 'update', 'warning', 'Set participant \"Tech 2\" active.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:22:18', '2026-02-06 08:22:18'),
(318, 30, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:22:29', '2026-02-06 08:22:29'),
(319, 30, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:22:47', '2026-02-06 08:22:47'),
(320, 30, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:23:31', '2026-02-06 08:23:31'),
(321, 30, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:23:46', '2026-02-06 08:23:46'),
(322, 30, 'vehicle-assignments.pickup', '/vehicle-assignments/12/pickup', 'PATCH', 'update', 'warning', 'Updated vehicle assignments / pickup.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:23:54', '2026-02-06 08:23:54'),
(323, 30, 'vehicle-assignments.pickup', '/vehicle-assignments/12/pickup', 'PATCH', 'update', 'warning', 'Updated vehicle assignments / pickup.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:24:06', '2026-02-06 08:24:06'),
(324, 30, 'vehicle-assignments.dropoff', '/vehicle-assignments/12/dropoff', 'PATCH', 'update', 'warning', 'Updated vehicle assignments / dropoff.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:24:06', '2026-02-06 08:24:06'),
(325, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:31:38', '2026-02-06 08:31:38'),
(326, 1, 'participants.update', '/participants/26', 'PATCH', 'update', 'warning', 'Set participant \"Rheymann Cuartocruz\" active.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:31:58', '2026-02-06 08:31:58'),
(327, 1, 'participants.programmes.join', '/participants/26/programmes/1', 'POST', 'create', 'warning', 'Added participant \"Rheymann Cuartocruz\" to event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:32:25', '2026-02-06 08:32:25'),
(328, 1, 'scanner.scan', '/scanner/scan', 'POST', 'create', 'success', 'Created scanner / scan.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:33:43', '2026-02-06 08:33:43'),
(329, 30, 'table-assignment.assignments.destroy', '/table-assignment/assignments/4', 'DELETE', 'delete', 'warning', 'Removed \"Tech 2\" from table 9 in event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:43:58', '2026-02-06 08:43:58');
INSERT INTO `activity_logs` (`id`, `user_id`, `route_name`, `path`, `method`, `activity`, `status`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(330, 30, 'table-assignment.assignments.destroy', '/table-assignment/assignments/5', 'DELETE', 'delete', 'warning', 'Removed \"Tech 3\" from table 9 in event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:44:24', '2026-02-06 08:44:24'),
(331, 30, 'participants.update', '/participants/63', 'PATCH', 'update', 'warning', 'Updated participant \"Tech 3\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:47:54', '2026-02-06 08:47:54'),
(332, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:48:38', '2026-02-06 08:48:38'),
(333, 30, 'table-assignment.tables.store', '/table-assignment/tables', 'POST', 'create', 'warning', 'Added table for event.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:52:05', '2026-02-06 08:52:05'),
(334, 30, 'table-assignment.assignments.store', '/table-assignment/assignments', 'POST', 'create', 'warning', 'Assigned participants to a table.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:52:49', '2026-02-06 08:52:49'),
(335, 30, 'table-assignment.assignments.update', '/table-assignment/assignments/6', 'PATCH', 'update', 'warning', 'Changed \"Tech 3\" to seat 2 at table 15 in event \"Capacity Building on Liaison, Protocol, and Conference Management\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:53:42', '2026-02-06 08:53:42'),
(336, 30, 'vehicle-assignments.destroy', '/vehicle-assignments/12', 'DELETE', 'delete', 'warning', 'Removed vehicle assignments / destroy.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:54:36', '2026-02-06 08:54:36'),
(337, 30, 'transport-vehicles.destroy', '/transport-vehicles/8', 'DELETE', 'delete', 'warning', 'Removed transport vehicles / destroy.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:54:49', '2026-02-06 08:54:49'),
(338, 30, 'transport-vehicles.store', '/transport-vehicles', 'POST', 'create', 'warning', 'Created transport vehicles / store.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:55:00', '2026-02-06 08:55:00'),
(339, 30, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:55:31', '2026-02-06 08:55:31'),
(340, 30, 'vehicle-assignments.store', '/vehicle-assignments', 'POST', 'create', 'warning', 'Created vehicle assignments / store.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:56:10', '2026-02-06 08:56:10'),
(341, 63, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 08:56:50', '2026-02-06 08:56:50'),
(342, 30, 'participants.update', '/participants/51', 'PATCH', 'update', 'warning', 'Updated participant \"Tech 2\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 09:30:49', '2026-02-06 09:30:49'),
(343, 30, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 10:25:05', '2026-02-06 10:25:05'),
(344, 30, 'participants.update', '/participants/51', 'PATCH', 'update', 'warning', 'Updated participant \"Tech 2\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 10:27:14', '2026-02-06 10:27:14'),
(345, 30, 'participants.update', '/participants/63', 'PATCH', 'update', 'warning', 'Updated participant \"Tech 3\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 10:27:22', '2026-02-06 10:27:22'),
(346, 30, 'participants.update', '/participants/63', 'PATCH', 'update', 'warning', 'Updated participant \"Tech 3\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 10:27:24', '2026-02-06 10:27:24'),
(347, 30, 'participants.update', '/participants/63', 'PATCH', 'update', 'warning', 'Updated participant \"Tech 3\".', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 10:27:27', '2026-02-06 10:27:27'),
(348, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 10:59:44', '2026-02-06 10:59:44'),
(349, 26, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 11:45:10', '2026-02-06 11:45:10'),
(350, 26, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 12:27:53', '2026-02-06 12:27:53'),
(351, 30, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 12:51:40', '2026-02-06 12:51:40'),
(352, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 12:52:05', '2026-02-06 12:52:05'),
(353, 51, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 13:04:40', '2026-02-06 13:04:40'),
(354, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 13:08:34', '2026-02-06 13:08:34'),
(355, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 13:50:35', '2026-02-06 13:50:35'),
(356, 1, 'login.store', '/login', 'POST', 'login', 'warning', 'Signed in.', '202.90.133.157', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '2026-02-06 14:06:06', '2026-02-06 14:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('asean-ph-2026-cache-01987a1e0fe8b8d316ddedaa38306bac', 'i:4;', 1770340178),
('asean-ph-2026-cache-01987a1e0fe8b8d316ddedaa38306bac:timer', 'i:1770340178;', 1770340178),
('asean-ph-2026-cache-0873914558caa28aba01c65fecc7f882', 'i:1;', 1770339222),
('asean-ph-2026-cache-0873914558caa28aba01c65fecc7f882:timer', 'i:1770339222;', 1770339222),
('asean-ph-2026-cache-1eb5a30518798d4763dc3a644fd943fc', 'i:1;', 1770339826),
('asean-ph-2026-cache-1eb5a30518798d4763dc3a644fd943fc:timer', 'i:1770339826;', 1770339826),
('asean-ph-2026-cache-208efe41a73311d3250aedd2ab7169b5', 'i:1;', 1770340100),
('asean-ph-2026-cache-208efe41a73311d3250aedd2ab7169b5:timer', 'i:1770340100;', 1770340100),
('asean-ph-2026-cache-363e8b3c554a77be3b434ff12cd31729', 'i:1;', 1770338425),
('asean-ph-2026-cache-363e8b3c554a77be3b434ff12cd31729:timer', 'i:1770338425;', 1770338425),
('asean-ph-2026-cache-45fdd51fbb3f1a05b25a701bd0eec25b', 'i:1;', 1770357940),
('asean-ph-2026-cache-45fdd51fbb3f1a05b25a701bd0eec25b:timer', 'i:1770357940;', 1770357940),
('asean-ph-2026-cache-469f39cba065c777702700f2d3111177', 'i:1;', 1770337424),
('asean-ph-2026-cache-469f39cba065c777702700f2d3111177:timer', 'i:1770337424;', 1770337424),
('asean-ph-2026-cache-4d6e2e749b188220c0fff7652f8ad416', 'i:1;', 1770361625),
('asean-ph-2026-cache-4d6e2e749b188220c0fff7652f8ad416:timer', 'i:1770361625;', 1770361625),
('asean-ph-2026-cache-572af53a33cc0be28c6d8633a3d37665', 'i:1;', 1770343070),
('asean-ph-2026-cache-572af53a33cc0be28c6d8633a3d37665:timer', 'i:1770343070;', 1770343070),
('asean-ph-2026-cache-6d74092efbdf49935c651db1c27e4f7e', 'i:1;', 1770338843),
('asean-ph-2026-cache-6d74092efbdf49935c651db1c27e4f7e:timer', 'i:1770338843;', 1770338843),
('asean-ph-2026-cache-7df97dd8e7dcb1b8a03ea282dcf63241', 'i:1;', 1770340526),
('asean-ph-2026-cache-7df97dd8e7dcb1b8a03ea282dcf63241:timer', 'i:1770340526;', 1770340526),
('asean-ph-2026-cache-874a391e17376818b2a97e12bce3f46d', 'i:2;', 1770338690),
('asean-ph-2026-cache-874a391e17376818b2a97e12bce3f46d:timer', 'i:1770338690;', 1770338690),
('asean-ph-2026-cache-8acecbdccc2dc839650d96b7a8525144', 'i:1;', 1770338816),
('asean-ph-2026-cache-8acecbdccc2dc839650d96b7a8525144:timer', 'i:1770338816;', 1770338816),
('asean-ph-2026-cache-999ee474ed5d548ce165d721c72e0201', 'i:1;', 1770355733),
('asean-ph-2026-cache-999ee474ed5d548ce165d721c72e0201:timer', 'i:1770355733;', 1770355733),
('asean-ph-2026-cache-9b4522032b99d37d1bc4db6447a5afbb', 'i:1;', 1770337163),
('asean-ph-2026-cache-9b4522032b99d37d1bc4db6447a5afbb:timer', 'i:1770337163;', 1770337163),
('asean-ph-2026-cache-dbd287f1b4551407f096aab79f230c22', 'i:1;', 1770357159),
('asean-ph-2026-cache-dbd287f1b4551407f096aab79f230c22:timer', 'i:1770357159;', 1770357159),
('asean-ph-2026-cache-e16c9adf7be767c5e3d5a4ce85f3fbc0', 'i:1;', 1770335039),
('asean-ph-2026-cache-e16c9adf7be767c5e3d5a4ce85f3fbc0:timer', 'i:1770335039;', 1770335039),
('asean-ph-2026-cache-f4a9f8c01076e6949d3b2ede164f5448', 'i:1;', 1770339589),
('asean-ph-2026-cache-f4a9f8c01076e6949d3b2ede164f5448:timer', 'i:1770339589;', 1770339589),
('asean-ph-2026-cache-f813b70aa09de602cb4d2c6964409169', 'i:1;', 1770338139),
('asean-ph-2026-cache-f813b70aa09de602cb4d2c6964409169:timer', 'i:1770338139;', 1770338139),
('asean-ph-2026-cache-f9e2d813b788412850d2ba223bbdc714', 'i:1;', 1770338284),
('asean-ph-2026-cache-f9e2d813b788412850d2ba223bbdc714:timer', 'i:1770338284;', 1770338284),
('asean-ph-2026-cache-jameslagman123098@gmail.com|175.158.203.0', 'i:4;', 1770340178),
('asean-ph-2026-cache-jameslagman123098@gmail.com|175.158.203.0:timer', 'i:1770340178;', 1770340178),
('asean-ph-2026-cache-rcuartocruz@ched.gov.ph|209.35.160.31', 'i:1;', 1770338425),
('asean-ph-2026-cache-rcuartocruz@ched.gov.ph|209.35.160.31:timer', 'i:1770338425;', 1770338425);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `updated_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`id`, `key`, `title`, `value`, `is_active`, `updated_by_user_id`, `created_at`, `updated_at`) VALUES
(1, 'email', 'Email', 'info@ched.gov.ph', 1, NULL, '2026-02-04 11:25:59', '2026-02-04 11:25:59'),
(2, 'phone', 'Phone', '(02) 8441-1260', 1, NULL, '2026-02-04 11:25:59', '2026-02-04 11:25:59'),
(3, 'office', 'Office', 'Higher Education Development Center Building, C.P. Garcia Ave, Diliman, Quezon City, Philippines', 1, NULL, '2026-02-04 11:25:59', '2026-02-04 11:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `flag_path` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `flag_path`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'BRN', 'Brunei', '/asean/brunei.jpg', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(2, 'KHM', 'Cambodia', '/asean/cambodia.jpg', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(3, 'IDN', 'Indonesia', '/asean/indonesia.jpg', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(4, 'LAO', 'Laos', '/asean/laos.jpg', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(5, 'MYS', 'Malaysia', '/asean/malaysia.jpg', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(6, 'MMR', 'Myanmar', '/asean/myanmar.jpg', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(7, 'PHL', 'Philippines', '/asean/philippines.jpg', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(8, 'SGP', 'Singapore', '/asean/singapore.jpg', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(9, 'THA', 'Thailand', '/asean/thailand.jpg', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(10, 'VNM', 'Vietnam', '/asean/vietnam.jpg', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(11, 'TLS', 'Timor-Leste', '/asean/timor-leste.jpg', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '9e4d2db7-c3d4-4549-837c-4dd982cd72e5', 'database', 'default', '{\"uuid\":\"9e4d2db7-c3d4-4549-837c-4dd982cd72e5\",\"displayName\":\"App\\\\Mail\\\\ParticipantWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":17:{s:8:\\\"mailable\\\";O:31:\\\"App\\\\Mail\\\\ParticipantWelcomeMail\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"country\\\";i:1;s:16:\\\"joinedProgrammes\\\";i:2;s:16:\\\"tableAssignments\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"rheyman101@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"},\"createdAt\":1770238659,\"delay\":null}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Mail\\ParticipantWelcomeMail has been attempted too many times. in C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\MaxAttemptsExceededException.php:24\nStack trace:\n#0 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(861): Illuminate\\Queue\\MaxAttemptsExceededException::forJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(573): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#2 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(476): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#3 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(437): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(358): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#6 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#7 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#13 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Command\\Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#15 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Application.php(1102): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#21 {main}', '2026-02-04 18:03:59'),
(2, '96f1d256-b329-458e-8dfa-20c1456f993c', 'database', 'default', '{\"uuid\":\"96f1d256-b329-458e-8dfa-20c1456f993c\",\"displayName\":\"App\\\\Mail\\\\ParticipantWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":17:{s:8:\\\"mailable\\\";O:31:\\\"App\\\\Mail\\\\ParticipantWelcomeMail\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"country\\\";i:1;s:16:\\\"joinedProgrammes\\\";i:2;s:16:\\\"tableAssignments\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"rcuartocruz@ched.gov.ph\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"},\"createdAt\":1770261792,\"delay\":null}', 'Symfony\\Component\\Mailer\\Exception\\UnexpectedResponseException: Expected response code \"250\" but got code \"502\", with message \"502 5.7.0 Your SMTP account is not yet activated. Please contact us at contact@sendinblue.com to request activation.\". in C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php:331\nStack trace:\n#0 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(187): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->assertResponseCode(\'502 5.7.0 Your ...\', Array)\n#1 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(150): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand(\'\\r\\n.\\r\\n\', Array)\n#2 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(223): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'\\r\\n.\\r\\n\', Array)\n#3 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#4 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#5 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#7 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(207): Illuminate\\Mail\\Mailer->send(\'emails.particip...\', Array, Object(Closure))\n#8 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(200): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(82): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#17 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(487): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(437): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(358): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#37 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Command\\Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Application.php(1102): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#45 {main}', '2026-02-04 19:23:22'),
(3, 'db545acb-b07b-4cfc-a80e-9c7b13a88dcc', 'database', 'default', '{\"uuid\":\"db545acb-b07b-4cfc-a80e-9c7b13a88dcc\",\"displayName\":\"App\\\\Mail\\\\ParticipantWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":17:{s:8:\\\"mailable\\\";O:31:\\\"App\\\\Mail\\\\ParticipantWelcomeMail\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"country\\\";i:1;s:16:\\\"joinedProgrammes\\\";i:2;s:16:\\\"tableAssignments\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"rcuartocruz@ched.gov.ph\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"},\"createdAt\":1770261917,\"delay\":null}', 'Symfony\\Component\\Mailer\\Exception\\UnexpectedResponseException: Expected response code \"250\" but got code \"502\", with message \"502 5.7.0 Your SMTP account is not yet activated. Please contact us at contact@sendinblue.com to request activation.\". in C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php:331\nStack trace:\n#0 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(187): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->assertResponseCode(\'502 5.7.0 Your ...\', Array)\n#1 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(150): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand(\'\\r\\n.\\r\\n\', Array)\n#2 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(223): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'\\r\\n.\\r\\n\', Array)\n#3 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#4 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#5 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#7 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(207): Illuminate\\Mail\\Mailer->send(\'emails.particip...\', Array, Object(Closure))\n#8 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(200): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(82): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#17 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(487): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(437): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(358): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#37 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Command\\Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Application.php(1102): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\Users\\rheym\\OneDrive\\Desktop\\Desktop\\ASEAN\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#45 {main}', '2026-02-04 19:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `participant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `programme_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_experience_rating` tinyint(3) UNSIGNED DEFAULT NULL,
  `event_ratings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`event_ratings`)),
  `recommendations` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `participant_id`, `programme_id`, `user_experience_rating`, `event_ratings`, `recommendations`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 5, NULL, NULL, '2026-02-04 18:17:38', '2026-02-04 18:17:38'),
(2, NULL, 1, 5, NULL, NULL, '2026-02-05 09:04:47', '2026-02-05 09:04:47'),
(3, NULL, 1, 5, NULL, NULL, '2026-02-05 10:03:57', '2026-02-05 10:03:57'),
(4, NULL, 3, 5, NULL, NULL, '2026-02-05 10:23:29', '2026-02-05 10:23:29'),
(5, 26, 1, 5, NULL, NULL, '2026-02-06 08:32:38', '2026-02-06 08:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `issuances`
--

CREATE TABLE `issuances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `issued_at` date NOT NULL,
  `pdf_path` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issuances`
--

INSERT INTO `issuances` (`id`, `user_id`, `title`, `issued_at`, `pdf_path`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'ASEAN PH 2026 User Manual', '2026-01-29', 'downloadables/a08f2e0d-60c4-426e-a8d1-0c71517e4b96.pdf', 1, '2026-02-04 11:43:39', '2026-02-04 11:43:39');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_19_000000_create_activity_logs_table', 1),
(5, '2025_08_26_100418_add_two_factor_columns_to_users_table', 1),
(6, '2025_09_01_000000_create_countries_and_user_types_tables', 1),
(7, '2025_09_01_000001_add_participant_fields_to_users_table', 1),
(8, '2025_09_03_000000_create_issuances_table', 1),
(9, '2025_09_05_000000_create_contact_details_table', 1),
(10, '2025_09_06_000000_create_programmes_table', 1),
(11, '2025_09_07_000000_create_venues_table', 1),
(12, '2025_09_08_000000_expand_venue_url_columns', 1),
(13, '2025_09_10_000000_add_contact_number_to_users_table', 1),
(14, '2026_01_10_010151_add_qr_id_to_users_table', 1),
(15, '2026_01_10_012652_add_qr_fields_to_users_table', 1),
(16, '2026_01_10_020000_create_participant_programmes_table', 1),
(17, '2026_01_12_000000_create_participant_attendances_table', 1),
(18, '2026_01_12_120000_create_feedback_table', 1),
(19, '2026_01_13_000000_create_participant_tables', 1),
(20, '2026_01_20_000000_add_programme_to_participant_tables', 1),
(21, '2026_01_21_000000_create_venue_sections_tables', 1),
(22, '2026_01_21_000001_add_link_to_venue_section_images_table', 1),
(23, '2026_02_01_000000_add_consents_to_users_table', 1),
(24, '2026_02_10_000000_add_signatory_fields_to_programmes_table', 1),
(25, '2026_02_20_000000_create_programme_materials_table', 1),
(26, '2026_02_25_000000_add_participant_to_feedback_table', 1),
(27, '2026_02_04_204920_create_vehicle_assignments_table', 2),
(28, '2026_02_04_231801_create_transport_vehicles_table', 3),
(29, '2026_02_04_231808_add_transport_fields_to_vehicle_assignments_table', 3),
(30, '2026_03_01_000000_add_seat_number_to_participant_table_assignments', 4),
(31, '2026_04_01_000000_add_food_restrictions_to_users_table', 5),
(32, '2026_04_02_000000_add_food_restrictions_list_to_users_table', 6),
(33, '2026_02_05_000001_add_event_and_incharge_fields_to_transport_vehicles_table', 7),
(34, '2026_02_05_000002_add_programme_id_to_vehicle_assignments_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `participant_attendances`
--

CREATE TABLE `participant_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `programme_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `scanned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participant_attendances`
--

INSERT INTO `participant_attendances` (`id`, `user_id`, `programme_id`, `status`, `scanned_at`, `created_at`, `updated_at`) VALUES
(4, 51, 1, 'scanned', '2026-02-06 07:45:08', '2026-02-06 07:45:08', '2026-02-06 07:45:08'),
(5, 63, 1, 'scanned', '2026-02-06 08:17:03', '2026-02-06 08:17:03', '2026-02-06 08:17:03'),
(6, 26, 1, 'scanned', '2026-02-06 08:33:43', '2026-02-06 08:33:43', '2026-02-06 08:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `participant_programmes`
--

CREATE TABLE `participant_programmes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `programme_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participant_programmes`
--

INSERT INTO `participant_programmes` (`id`, `user_id`, `programme_id`, `created_at`, `updated_at`) VALUES
(8, 32, 1, '2026-02-06 07:19:12', '2026-02-06 07:19:12'),
(9, 28, 1, '2026-02-06 07:19:22', '2026-02-06 07:19:22'),
(10, 36, 1, '2026-02-06 07:19:27', '2026-02-06 07:19:27'),
(11, 33, 1, '2026-02-06 07:19:32', '2026-02-06 07:19:32'),
(12, 29, 1, '2026-02-06 07:19:44', '2026-02-06 07:19:44'),
(13, 37, 1, '2026-02-06 07:19:55', '2026-02-06 07:19:55'),
(14, 31, 1, '2026-02-06 07:20:26', '2026-02-06 07:20:26'),
(15, 35, 1, '2026-02-06 07:20:38', '2026-02-06 07:20:38'),
(16, 27, 1, '2026-02-06 07:20:43', '2026-02-06 07:20:43'),
(17, 34, 1, '2026-02-06 07:29:51', '2026-02-06 07:29:51'),
(18, 44, 1, '2026-02-06 07:30:02', '2026-02-06 07:30:02'),
(19, 38, 1, '2026-02-06 07:30:26', '2026-02-06 07:30:26'),
(20, 47, 1, '2026-02-06 07:31:19', '2026-02-06 07:31:19'),
(21, 46, 1, '2026-02-06 07:32:07', '2026-02-06 07:32:07'),
(22, 45, 1, '2026-02-06 07:32:12', '2026-02-06 07:32:12'),
(23, 49, 1, '2026-02-06 07:32:17', '2026-02-06 07:32:17'),
(24, 48, 1, '2026-02-06 07:32:22', '2026-02-06 07:32:22'),
(25, 40, 1, '2026-02-06 07:32:27', '2026-02-06 07:32:27'),
(26, 43, 1, '2026-02-06 07:32:37', '2026-02-06 07:32:37'),
(28, 51, 2, '2026-02-06 07:32:42', '2026-02-06 07:32:42'),
(29, 51, 3, '2026-02-06 07:32:42', '2026-02-06 07:32:42'),
(30, 51, 4, '2026-02-06 07:32:42', '2026-02-06 07:32:42'),
(31, 52, 1, '2026-02-06 07:34:04', '2026-02-06 07:34:04'),
(32, 55, 3, '2026-02-06 07:41:37', '2026-02-06 07:41:37'),
(33, 62, 3, '2026-02-06 07:44:08', '2026-02-06 07:44:08'),
(34, 62, 1, '2026-02-06 07:44:08', '2026-02-06 07:44:08'),
(35, 51, 1, '2026-02-06 07:44:44', '2026-02-06 07:44:44'),
(36, 54, 1, '2026-02-06 07:54:27', '2026-02-06 07:54:27'),
(37, 57, 1, '2026-02-06 07:56:42', '2026-02-06 07:56:42'),
(38, 59, 1, '2026-02-06 07:58:24', '2026-02-06 07:58:24'),
(39, 60, 1, '2026-02-06 07:59:37', '2026-02-06 07:59:37'),
(40, 55, 1, '2026-02-06 08:00:19', '2026-02-06 08:00:19'),
(41, 53, 1, '2026-02-06 08:01:38', '2026-02-06 08:01:38'),
(42, 50, 1, '2026-02-06 08:01:47', '2026-02-06 08:01:47'),
(43, 63, 2, '2026-02-06 08:14:12', '2026-02-06 08:14:12'),
(44, 63, 1, '2026-02-06 08:14:12', '2026-02-06 08:14:12'),
(45, 26, 1, '2026-02-06 08:32:25', '2026-02-06 08:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `participant_tables`
--

CREATE TABLE `participant_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `programme_id` bigint(20) UNSIGNED DEFAULT NULL,
  `table_number` varchar(255) NOT NULL,
  `capacity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participant_tables`
--

INSERT INTO `participant_tables` (`id`, `programme_id`, `table_number`, `capacity`, `created_at`, `updated_at`) VALUES
(2, 2, 'Table 1', 2, '2026-02-05 10:55:22', '2026-02-05 10:55:22'),
(3, 1, '9', 4, '2026-02-06 08:18:11', '2026-02-06 08:20:22'),
(4, 1, '15', 44, '2026-02-06 08:52:05', '2026-02-06 08:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `participant_table_assignments`
--

CREATE TABLE `participant_table_assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `programme_id` bigint(20) UNSIGNED DEFAULT NULL,
  `participant_table_id` bigint(20) UNSIGNED NOT NULL,
  `seat_number` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participant_table_assignments`
--

INSERT INTO `participant_table_assignments` (`id`, `programme_id`, `participant_table_id`, `seat_number`, `user_id`, `assigned_at`, `created_at`, `updated_at`) VALUES
(6, 1, 4, 2, 63, '2026-02-06 08:52:49', '2026-02-06 08:52:49', '2026-02-06 08:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programmes`
--

CREATE TABLE `programmes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `starts_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `pdf_url` varchar(255) DEFAULT NULL,
  `signatory_name` varchar(255) DEFAULT NULL,
  `signatory_title` varchar(255) DEFAULT NULL,
  `signatory_signature_url` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programmes`
--

INSERT INTO `programmes` (`id`, `user_id`, `tag`, `title`, `description`, `starts_at`, `ends_at`, `location`, `image_url`, `pdf_url`, `signatory_name`, `signatory_title`, `signatory_signature_url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '', 'Capacity Building on Liaison, Protocol, and Conference Management', '.', '2026-02-06 07:00:00', '2026-02-06 18:00:00', '', '3cdddf5d-4bdb-41f4-b73a-641b6bd30d42.png', NULL, NULL, NULL, NULL, 1, '2026-02-04 11:37:59', '2026-02-06 07:16:34'),
(2, 1, '', 'EU-ASEAN Peer Learning Workshop: Aligning Frameworks in a Changing World', 'The EU-ASEAN Sustainable Connectivity Package – Higher Education Programme (SCOPE-HE) is an initiative (2024–2028) funded by the EU and endorsed by ASEAN, implemented by Nuffic and DAAD.', '2026-02-11 16:00:00', '2026-02-14 01:00:00', '', '59e08eaf-8478-42d8-9cc1-281ab8d4454f.png', NULL, NULL, NULL, NULL, 1, '2026-02-04 11:39:15', '2026-02-04 11:39:15'),
(3, 1, '', 'EU-ASEAN Peer Learning Workshop Welcome Dinner', '.', '2026-02-12 01:00:00', '2026-02-12 04:30:00', '', 'c4fbf1c4-bf1c-4882-a46d-779fd7d9b2e7.png', NULL, NULL, NULL, NULL, 1, '2026-02-04 11:40:37', '2026-02-04 11:40:37'),
(4, 1, '', 'ASEAN Experts Meeting on Higher Education Recognition Qualifications: The Tokyo Convention and AI', '.', '2026-05-18 16:00:00', '2026-05-22 01:00:00', '', 'f4f3dcfa-0029-4bb0-ba07-4beb547b01e4.png', NULL, NULL, NULL, NULL, 1, '2026-02-04 11:42:09', '2026-02-04 11:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `programme_materials`
--

CREATE TABLE `programme_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `programme_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programme_materials`
--

INSERT INTO `programme_materials` (`id`, `programme_id`, `file_name`, `file_path`, `file_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Briefer Protocol training.pdf', 'Briefer Protocol training.pdf', 'pdf', '2026-02-04 11:37:59', '2026-02-04 11:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3mIwbYCmZVkhjaafilFjVMFpZiHaDFCavSldOJOz', 1, '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXJQd0RtVmxLaGFVM1hTdUF4bHlQc0tsR0dXRjZQQVVRRVlzUWFjYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYXNlYW4uY2hlZHJvMTIuY29tL3NjYW5uZXIiO3M6NToicm91dGUiO3M6Nzoic2Nhbm5lciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1770360641),
('B6OUuqqyUFqRvw9JEqV65sVoUiCCl3VJ7y7cjP6V', 26, '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS20yQmVpMEhtdzdoOVg1ME1Ga05ockpWcDRrVkRCMmJsOFpzQlRvVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vYXNlYW4uY2hlZHJvMTIuY29tIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyNjt9', 1770356597),
('cZc8I3FcO9f7HrljSOeyOMnRm7rKZnAURgn1nf9M', NULL, '23.27.145.226', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3hWeG80aEk1TFhYMVZPY1NNNjNRQ3c5aTdlek4yR0NWaG5aVzF5UCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vYXNlYW4uY2hlZHJvMTIuY29tIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770418522),
('EvQHDYJZk1EmaS379cbGu8I2v6q9f3TlaX5kQOsc', NULL, '202.90.133.157', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_12 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclU2NXBjbEttTTFsekdvaHREbU5vb1dNdUdhNDUwY0RZVkE1TWhvbCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vYXNlYW4uY2hlZHJvMTIuY29tIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770356819),
('h6qpGWCLgzhz2XZIGO01Psmlv5GrFFculnTKJhiP', 1, '202.90.133.157', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWRXaG5WWmZiMndNaGJCVm5UTHdBWjJjRnlzMlIzVnY4aWxhYUdzRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vYXNlYW4uY2hlZHJvMTIuY29tL2Rhc2hib2FyZCI7czo1OiJyb3V0ZSI7czo5OiJkYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1770365476),
('Jo67wcvqvcwLNEmvWr8dXdqXnj1XlO44iMKyBc6k', NULL, '202.90.133.157', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN3dPMjlxcEVXTUtyVFR2TkpNdGVWZUdQWFluQ1QzUHA1U3NFMzltMyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cHM6Ly9hc2Vhbi5jaGVkcm8xMi5jb20vc2Nhbm5lciI7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjMyOiJodHRwczovL2FzZWFuLmNoZWRybzEyLmNvbS9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770361493),
('pLnXcKrabD2NvfdTYEPUItqgaPdb0CoT84ppFTWc', 30, '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQUFkd3Vtd3piZ081Zk9ObHJlZ0pEQ3J5TE9ST3lLM3hwSnQ1SDg2NSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYXNlYW4uY2hlZHJvMTIuY29tL3NjYW5uZXIiO3M6NToicm91dGUiO3M6Nzoic2Nhbm5lciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjMwO30=', 1770358132),
('q5TEBOV0NHoh1k2qovVswQwCrjrdspNDNK2RB3AD', 1, '202.90.133.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTJmTjlXb1BkRUZjWDRNZ09Ic3dqNUIxcVpoNTdUcERxUGtLOFVNViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1770358123),
('QQPxwhjs9rSYQQxIYYq7KZNlinWrpPnhxQSNwwH6', NULL, '152.32.99.74', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidHdZbFYwVVJ1amY1WVZUUWJhT05FOTcwZUpyU2s2Sjd6czU1S3F3RyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozODoiaHR0cHM6Ly9hc2Vhbi5jaGVkcm8xMi5jb20vcGFydGljaXBhbnQiO31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozODoiaHR0cHM6Ly9hc2Vhbi5jaGVkcm8xMi5jb20vcGFydGljaXBhbnQiO3M6NToicm91dGUiO3M6MTE6InBhcnRpY2lwYW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1770372100),
('vJU2Ij3IFRZMdhDa2ptA0okL1jbzLe6lUu9lWRZM', NULL, '209.35.160.207', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137 Version/11.1.1 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmpoNDhOYUszNGJiUjA5YnNiUmxZUmpFbVU1MnFRSktEaTAxRkhacCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vYXNlYW4uY2hlZHJvMTIuY29tIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770421440),
('WOOcsgne2uVzM5oNTtsp6fLaaNZ00RD36bTTseoQ', NULL, '152.32.99.74', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ3g0Q29lWkdWS2hWM1dGVzlNY0k2VHRSamNLR1NVZjF1bVhmTkZ3VCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozODoiaHR0cHM6Ly9hc2Vhbi5jaGVkcm8xMi5jb20vcGFydGljaXBhbnQiO31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozMjoiaHR0cHM6Ly9hc2Vhbi5jaGVkcm8xMi5jb20vbG9naW4iO3M6NToicm91dGUiO3M6NToibG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770427475);

-- --------------------------------------------------------

--
-- Table structure for table `transport_vehicles`
--

CREATE TABLE `transport_vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `programme_id` bigint(20) UNSIGNED DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `driver_contact_number` varchar(255) DEFAULT NULL,
  `incharge_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plate_number` varchar(255) DEFAULT NULL,
  `capacity` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_vehicles`
--

INSERT INTO `transport_vehicles` (`id`, `programme_id`, `label`, `driver_name`, `driver_contact_number`, `incharge_user_id`, `plate_number`, `capacity`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Van 1', NULL, NULL, NULL, '2133123', 5, '2026-02-04 15:46:22', '2026-02-04 15:46:22'),
(2, NULL, 'Van 2', NULL, NULL, NULL, '123123', 2, '2026-02-04 15:46:42', '2026-02-04 15:46:42'),
(4, 2, 'Van 2', 'asdasd', '123123123', NULL, NULL, NULL, '2026-02-05 11:59:58', '2026-02-05 11:59:58'),
(6, 3, 'Van 1', 'Jude', '09123123123', NULL, 'dasdasd', NULL, '2026-02-05 12:14:15', '2026-02-05 12:14:15'),
(9, 1, 'vaaaan', 'dsd', '1121', 51, '12sss', NULL, '2026-02-06 08:55:00', '2026-02-06 08:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `display_id` varchar(30) DEFAULT NULL,
  `qr_token` char(36) DEFAULT NULL,
  `qr_payload` text DEFAULT NULL,
  `qr_id` varchar(60) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `consent_contact_sharing` tinyint(1) NOT NULL DEFAULT 0,
  `consent_photo_video` tinyint(1) NOT NULL DEFAULT 0,
  `has_food_restrictions` tinyint(1) NOT NULL DEFAULT 0,
  `food_restrictions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`food_restrictions`)),
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `display_id`, `qr_token`, `qr_payload`, `qr_id`, `name`, `email`, `contact_number`, `country_id`, `user_type_id`, `is_active`, `consent_contact_sharing`, `consent_photo_video`, `has_food_restrictions`, `food_restrictions`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ASEAN-WZRI-R0CA', '3b268729-c868-44de-bf2a-c995e31c6fbb', 'eyJpdiI6Im1KRWRGakNvb3BRdS9ZbmVaRWIrdFE9PSIsInZhbHVlIjoiYmxDY3pLUmZmNW9jSHBRK0hUeWRuaHJsMkVudmtXTkI2ZEhNTVNZMWRVN3N1OGJzYTNDSFM5ZTB2MjQweTJYTyIsIm1hYyI6IjQ3NjZkZGNkMDM3MGZkM2Q3ZWViYzMxZjY3NWY2NDFlNmYyNGVmNDFiNjMyMGQyMDBkYmEwMTA5N2Q3OTFkMDIiLCJ0YWciOiIifQ==', NULL, 'CHEDRO XII', 'chedro12hemis@ched.gov.ph', '09357329786', 7, 3, 1, 1, 1, 0, NULL, NULL, '$2y$12$IciwJDtHGSY9GbGOUEw/eOUusbFUqTOCRexwZEFa04UQjukgKJdbu', NULL, NULL, NULL, NULL, '2026-02-04 11:28:30', '2026-02-04 11:28:30'),
(26, 'ASEAN-T99R-MEJJ', '46155ba0-c84c-41ff-86e9-e5a495cc3bcf', 'eyJpdiI6IlJBTUFSUlVQcUFpSUVXOXdxaEM0WHc9PSIsInZhbHVlIjoiRzZqNlNOZVU5K0xDeUgwWmlGM1JTS3pCV3MwQXZhcTYvVHdJc3VoRU50d09lZ01yQW16RVllMWJBZGZORTlMYSIsIm1hYyI6IjU2OWJkM2U3YmRjY2U2NjdkMTM5YWQxMjE4OGIyNjYwNjE2OTM1YjFiZmFkODIxNmNhODBhYzhkY2NlOWFkOWYiLCJ0YWciOiIifQ==', NULL, 'Rheymann Cuartocruz', 'rheyman101@gmail.com', '09357329786', 7, 2, 1, 0, 0, 0, '[]', NULL, '$2y$12$mGoLrN2SMTks4VWEFUvHEedk9VvR/rKu83KCg.nkZwkBbqT5ZrhMu', NULL, NULL, NULL, NULL, '2026-02-05 14:26:27', '2026-02-06 08:31:58'),
(27, 'ASEAN-N0SJ-YSOG', 'a84b87bd-7c9c-484a-b762-0dc38b6172fa', 'eyJpdiI6IlFZWUwvbGhwM3FQbkx1bEJWSEQ1V1E9PSIsInZhbHVlIjoiR2RGaXdtTjk3bWJoaWNSK0lxQUZDNE1LZkI3TDFnbDQ2UmJ5K2NKbDIwdTJWQjRkS3Z4eG1MbnQ4cndqTHRELyIsIm1hYyI6ImZkMTYzNzU5ZDVkZmE5NzcxYWM2NzUyNmE5YmZkNTJkNTk3NzdjN2YxYWNjNjE0Y2UwNDM5MGYxZGQ0MWIzMmYiLCJ0YWciOiIifQ==', NULL, 'Rody P. Garcia', 'rgarcia@ched.gov.ph', '09173249976', 7, 6, 1, 0, 0, 0, '[]', NULL, '$2y$12$Q5SNEuOmeDHRMI7dwgnCCuIPuU1ncrweSoGqCZED4QtWV2eZriP2e', NULL, NULL, NULL, NULL, '2026-02-05 15:45:00', '2026-02-05 15:45:00'),
(28, 'ASEAN-WTAE-0RXJ', 'b9776ec1-5066-47fb-923c-6ce4222507d8', 'eyJpdiI6IitaV1M2c2xNUy83TGRpemszS0FKckE9PSIsInZhbHVlIjoiT0JrbHlEcFZrQVFad0JLUFp6alZyR3MrK3MyeFNoNmNERm1GNmM1ZnBPckJlbUxCYmZPTE05cmt5N0k1SS93YyIsIm1hYyI6ImViOTMxNzllMGNmZDM0ZGJlZmZlMjFhZWU5OTM5MGEzMmZlZmFjNGNhOGFkOTk4ZTVhNjE1ODFlZWVmY2QxN2IiLCJ0YWciOiIifQ==', NULL, 'Cherrie Melanie A. Diego', 'cmdiego@ched.gov.ph', NULL, 7, 6, 1, 0, 0, 0, '[]', NULL, '$2y$12$HouJCjOMci8gwOxu59TkvuebKBWSIxambhy8dRo8B3A6EtTOu5gaS', NULL, NULL, NULL, NULL, '2026-02-05 15:53:06', '2026-02-05 15:53:06'),
(29, 'ASEAN-7CZ1-JM3S', 'e42f74fa-eb49-48ac-8665-5fd1255ace4f', 'eyJpdiI6IldaWk5SVWQrSGxXN2o3NVloazk4UUE9PSIsInZhbHVlIjoiamtaZVBtY2hrWk5vSlErb3ZvdGFDemY5eW05N3o5djg3ZjBEblZMeTczSlhNdjkvRHhOdytXS1QvZmtNY1FDNyIsIm1hYyI6IjhkOGQ2MDM4M2MzNDllNTQ0Njc0YWYyY2ZiN2I3NTBlNWE1OWQ2YzBiOTA3MWYxYjdjNjg3ODdjOWY5YTRkYzQiLCJ0YWciOiIifQ==', NULL, 'Julieta M. Paras', 'jparas@ched.gov.ph', NULL, 7, 6, 1, 0, 0, 0, '[]', NULL, '$2y$12$sY7o9Y6j.El2QAmZBLC6oeLIUeFCirPWM14fbGPjfirB.fdjc7wrS', NULL, NULL, NULL, NULL, '2026-02-05 15:55:20', '2026-02-05 15:55:20'),
(30, 'ASEAN-2KUT-I1RD', 'e4812d0a-292d-4a73-86ae-3cd210990751', 'eyJpdiI6ImhTeXFIUUdRYWlWREtiN3hmb0FtbVE9PSIsInZhbHVlIjoiTE1iNGFRa3V0WWVWSEhBZTlBWVUyc0Nvd0RSRnFEQVhVdmYrOHl4aUhaTVZORGxHRHgzRjkxbHhRSHdDSk5MRyIsIm1hYyI6IjExZmI5MjcwYmZjMmRlYTE2ZTViNDBjMTk0ZjVmOGI0MTM4MmRmMmNhZDY2MTQwNThjNTBmNDk0MzUyNWNjODUiLCJ0YWciOiIifQ==', NULL, 'CHED IAS', 'ias@ched.gov.ph', NULL, 7, 3, 1, 0, 0, 0, '[]', NULL, '$2y$12$upAGFUGqw96yOmpS10OdfefQfhA1eBMvVX3J6sglGuk/i4UrBg5bO', NULL, NULL, NULL, NULL, '2026-02-05 15:56:27', '2026-02-05 15:56:27'),
(31, 'ASEAN-IENG-KNTT', '75305811-8951-4b1a-8484-2bfd40ea0ea4', 'eyJpdiI6IjZBRTFHcyt2SXpTTkhicVIvdGlZV1E9PSIsInZhbHVlIjoiRGo4YVROZDRjMm1sODJjVzY0Y3NPZ3FLODRjVk8rZ1hwYlRrMkFjL3Jqb1g4cWg3bmhxcDdGOXdnL0d6NGFPRCIsIm1hYyI6ImNmNGI3ZjcwNTZhZWIwMDFlNGJmNTMxYzBiM2EyM2JiZDIzMjk0YTY3YzNlYWRmZjQwM2FiMzFkZWRlNDBlNTQiLCJ0YWciOiIifQ==', NULL, 'Maricar R. Casquejo', 'mcasquejo@ched.gov.ph', '09435385503', 7, 6, 1, 0, 0, 0, '[]', NULL, '$2y$12$7F.LyfzMDqR3dV5xnXwkleF/8M42/wAfWMpvo/1FLxMHjFfyIfNZy', NULL, NULL, NULL, NULL, '2026-02-05 15:57:21', '2026-02-06 07:20:20'),
(32, 'ASEAN-Z7UK-XKA7', 'f2adf5f7-711c-4738-a3ed-c86fb1859e15', 'eyJpdiI6IkNwSklONGV3TU5MMWFobU9aczROM3c9PSIsInZhbHVlIjoibjJwaXQwYVVLNi9Wb05pdUorT09RNmpWYmVTTUIyMnFoZm5DL2RIWlpXUlFBcGFvR2wxdkwvbm9KZ25lTzJsNSIsIm1hYyI6IjlkNGVhMjM1ZDNhMDc5ZTQ0ODY5ZTlkZmZmMDE5MTJhNjdiNDBmZTc2ZDgwNDY0MzdiZjA0M2ZmNzBjMjhhZDEiLCJ0YWciOiIifQ==', NULL, 'Arlita Amapola Minguez Minguez', 'aaminguez@ched.gov.ph', '09173042658', 7, 6, 1, 0, 0, 0, '[]', NULL, '$2y$12$Ds0ynxbyQ9Jogjb7boL1G.SR0daFMs18tMbWvprjA72WWWoDg0VCO', NULL, NULL, NULL, NULL, '2026-02-05 15:59:00', '2026-02-05 15:59:00'),
(33, 'ASEAN-PDTX-WFH1', 'f9aecc21-b758-41ae-8776-cad9eb05bb17', 'eyJpdiI6ImVrRzJSNUdKMkd6RklZWmpRYWNIZVE9PSIsInZhbHVlIjoiaVhTM1Y4WGl1QzFrUXBBalV4eUVYT0hianVYdTBxTFdNT3dabXhRT1k0WE9oREhLNWs0TzVyOEdwN2F6S0RJTyIsIm1hYyI6IjQ4OTc5MjAxYmVkNGQ1NTk4OWQ1MTVkZTc0MGY1ODI4YTI0ZDEwNWY2NDdhYmMyYTQxZGEwZDRkYjBiMDcxODAiLCJ0YWciOiIifQ==', NULL, 'Filomena Dayagbil', 'fdayagbil@ched.gov.ph', '09176281068', 7, 6, 1, 0, 0, 0, '[]', NULL, '$2y$12$6l26KzXcg1tqQnxxT7bIbuE5sWLNrgsIV0lXxHYivo7heXA9J5Hby', NULL, NULL, NULL, NULL, '2026-02-05 16:00:50', '2026-02-05 16:00:50'),
(34, 'ASEAN-DDP9-C2GB', 'a2e3499a-fd81-4531-a96c-64034c5c7f93', 'eyJpdiI6ImN6MkZ2bEJENVBvazNUbk5LV21zdEE9PSIsInZhbHVlIjoidlk5NlFVVFVJemtnWU96ZU9xbUNDWDlKdkRqdzRSTVBiWWdJZDgwK3pLRTdURHovZEMrUUFjQ09jcEZBUlBZWiIsIm1hYyI6IjZlZDMyM2ZjMTJkYjEyMzU3OTkzNjdjZTFiYmRiY2EwZTc3NDc3YWU0YWVhOGNjMDI5MWQxNTBlNmM0ZGRlMDkiLCJ0YWciOiIifQ==', NULL, 'Mutya Mangubat', 'mmangubat@ched.gov.ph', '09086885455', 7, 9, 1, 0, 0, 0, '[]', NULL, '$2y$12$cS/yuA9V5q1/fYmT.YoH2.5/NqaY8xQ94B8Q.TEluONAjfU5Ef3gm', NULL, NULL, NULL, NULL, '2026-02-05 16:02:55', '2026-02-06 07:55:33'),
(35, 'ASEAN-KKRW-RLLN', '49013dc0-7df1-46bc-95fa-f6c6a52835e2', 'eyJpdiI6IlB4dVpIRTVBTW4yaEtoNTFIb2JxSFE9PSIsInZhbHVlIjoiOFV5RndPNmJ0Lyt1MnY5MSt3QjZzenpCci9xNDlaNzd3Y1lsSHNiRDRqanhEamUxdXBxTlA1aVhVY0xCU1JuMiIsIm1hYyI6IjlmODY5NzUwZmU2MjdkZmViMTg4ZWExZWZlOTlhMzlhMmMwMzM5ZTNhYzZkNWVmMzdlMDQzZGU4YjZlYzA2YWYiLCJ0YWciOiIifQ==', NULL, 'Maura Consolacion D. Cristobal', 'mccristobal@ched.gov.ph', '09178432912', 7, 6, 1, 0, 0, 0, '[]', NULL, '$2y$12$dDsrhbdr3iuk4VWRammWSuI9z3RhGHCm7y5HAKqfpLT6vf8/K4bSK', NULL, NULL, NULL, NULL, '2026-02-05 16:05:09', '2026-02-05 16:05:09'),
(36, 'ASEAN-NRXK-WNLO', '7534d901-ae2e-4dc8-93d8-8a5ba7d7adf6', 'eyJpdiI6IkxTTXYxRW5oWitJUU4wcm52bjlEOWc9PSIsInZhbHVlIjoiK2NaNmJaUHRRUXZiM2xjbThRcFhLSWkvNVJtRXdWaERuU3RvVG55UStaTDlqNnl1RldTSjBDL1NCckhNYURyaSIsIm1hYyI6ImVjMGFmZmE0MjZjOTcwMjk3NGU1M2RkMjM3ZGVmNjMwNDFhNzRjM2NhYmUyNDkxYjJkYzJlY2Y5MTk4M2FkNGUiLCJ0YWciOiIifQ==', NULL, 'Cinderella Filipina Benitez-Jaro', 'cjaro@ched.gov.ph', NULL, 7, 7, 1, 0, 0, 0, '[]', NULL, '$2y$12$Dugqb2VD9Gf0Fh6CUQDuL.vGeI6i9gfRC3/u2F2/1bkoBPV54jl5e', NULL, NULL, NULL, NULL, '2026-02-05 16:07:18', '2026-02-05 16:07:18'),
(37, 'ASEAN-RFTI-DBWP', '099ca29f-72a7-4b46-85d4-f8e31e0affc2', 'eyJpdiI6InZHY1VKTnNtakJWVmNBNncveTM5aUE9PSIsInZhbHVlIjoicDFEOFRubjJhemhYVUhhOGxLZFZUZHByQ2RQWlczUTRHOFBkZ1hNUlB2K0MzenZBSXp0UlR2bkgzaFJjNG9lSyIsIm1hYyI6ImEyMmI3NjUwNDczYzFhMTQ0ZTdjYzM0MmQyMTBmYTY0YmUxYmQxZGE5ODVmY2UzZDAzZWMzNDUwZmFlNmU2MzYiLCJ0YWciOiIifQ==', NULL, 'Marivic Iriberri', 'miriberri@ched.gov.ph', '09173227016', 7, 6, 1, 0, 0, 0, '[]', NULL, '$2y$12$/6R5OYQvIlgQWqP1htbso.so1t/RCUNlkdpqLQwu29.GXmGz6suoa', NULL, NULL, NULL, NULL, '2026-02-05 16:08:31', '2026-02-05 16:08:31'),
(38, 'ASEAN-HZGS-PPJZ', '4dc9dec9-333b-4425-b6f4-7adace7834ad', 'eyJpdiI6Ikt4SGhBK2hHakZJZ0lVakxzcHdqVUE9PSIsInZhbHVlIjoiQnJnR0w2eFM5UGJ5SXNGbmRBb2lvdG8yeDlNMCtaVzBaZnZWeHEvckVoYnFZazFPdTd1TnVYck5IUFQwWkRPNCIsIm1hYyI6IjM4OWUxMGViMTQ4YjIxYmQyMGZhZWJhY2NhNDNiODllMmMyY2U5OTVkYTVlYzJkM2FmYzUwMGFlYzU5MDViMDkiLCJ0YWciOiIifQ==', NULL, 'Septon A. Dela Cruz', 'sdelacruz@ched.gov.ph', NULL, 7, 7, 1, 0, 0, 0, '[]', NULL, '$2y$12$yYRTJHV47gOdHRfsoIBv6.eRFKImQC1gdTmqbF80NSYiPl1H29k3u', NULL, NULL, NULL, NULL, '2026-02-06 07:21:17', '2026-02-06 07:21:49'),
(39, 'ASEAN-SGUW-1ICQ', '1156444c-d639-43d5-9d5c-bf116d697ba3', 'eyJpdiI6ImdCNmd3dTRlbFhiQ3YwQjZIRW4zZ2c9PSIsInZhbHVlIjoiak1BZnZRT0VFemU0dE1lTHk0N2k0MXJNLzBZRGtKZm9LbVRvLzhBMHQxQmtJTHlDSjVGZC81VnVUcEhMc0hVLyIsIm1hYyI6IjYyMjBkYzMwZDAyYmQwZDkzNTVjZGExM2Q3YTlkOTgyNjc0YjQwNWMwMDIzZDE0ODBkZjk0Y2ExZWY2MTAyMDYiLCJ0YWciOiIifQ==', NULL, 'Corinna Frances Cabanilla', 'cfcabanilla@ched.gov.ph', NULL, 7, 3, 1, 0, 0, 0, '[]', NULL, '$2y$12$HwlMOJhgtW.s9161dLem9OxJYrNTwOCI0iK0cXF.F8wJf5PUQp3j.', NULL, NULL, NULL, NULL, '2026-02-06 07:23:12', '2026-02-06 07:23:12'),
(40, 'ASEAN-WSB0-0MPZ', '1c53e3b5-81dc-4de3-8223-44ad53954425', 'eyJpdiI6Im9BdXlhNGg1SzIxWHZxZmJCRlBpb2c9PSIsInZhbHVlIjoiNXlCQXFsblhCeE11RjhJcmpkTVplUmlUR0dSWkxSdDN0d1ljRDJOTmtYaURONVhTQTNqdFlQMDY2MGgxRlA4SyIsIm1hYyI6IjVjYzAxYmEwZDQ1YjZmODgwYmIyOGI2YWQxMWRkMTkyM2JiNzc4ZWE0M2NjYzFmNDBiNGFhMTM1ODRhZTMyODAiLCJ0YWciOiIifQ==', NULL, 'John Lander Jimenez', 'jljimenez@ched.gov.ph', NULL, 7, 2, 1, 0, 0, 0, '[]', NULL, '$2y$12$JBGAag77sjNVhYzxv7eysuYo/gTcxnmHSGbagqi60pLYdKkY8cpHq', NULL, NULL, NULL, NULL, '2026-02-06 07:23:26', '2026-02-06 07:29:19'),
(41, 'ASEAN-ABVU-PL2S', '23b8c06e-5889-4178-a4ca-57a7ba247e62', 'eyJpdiI6IlRKbjBhMTgwK0QrVHFnYldVQXBDNHc9PSIsInZhbHVlIjoiYUh6aTZtVjVYbGh1dXZvaFg2aGQrZ1JMcTlWQ215TFhnRFRxM3dRVThka0RvSDhyRllnM00rUk4zQ2ROV3VzVCIsIm1hYyI6IjM3MmU2MTMyZTMyZWJiMGNiZWQxNzcyM2U3ZmE4YjhiZTgxMTUwYmRjMzQ5Yzk1NTY0NmNlNzRlZmI2Nzg5ODUiLCJ0YWciOiIifQ==', NULL, 'Ian D. Evangelista', 'ievangelista@ched.gov.ph', NULL, 7, 3, 1, 0, 0, 0, '[]', NULL, '$2y$12$XEDHWCcxdjsWzdQI.anMfON8agzoQi5DXjj2fpMdov3ctfEQ9rQUa', NULL, NULL, NULL, NULL, '2026-02-06 07:24:18', '2026-02-06 07:24:18'),
(42, 'ASEAN-NJDS-G9DC', '8756aa1b-7c13-45d0-a336-b4ae69a924af', 'eyJpdiI6IktpemkzcG9sNFNYU1lGYVRTQVRNclE9PSIsInZhbHVlIjoiVDQrTEV5QjlUKzVEamhUU0l2RGNwZDNWVEtuU1BxRkhtWGhBQWIxbFFaRTBjdyttZjVrZENPdXk1d2FXT0NPQSIsIm1hYyI6ImMzY2M0M2IzZWRjNjkxNmFlMmE0YjQyNDcxODQyNjQ2ZjhkN2I0YzNhMmRmMDA5OTdjOTU0MDZjOTA5YjRkMzYiLCJ0YWciOiIifQ==', NULL, 'Lora L. Yusi', 'lyusi@ched.gov.ph', NULL, 7, 3, 1, 0, 0, 0, '[]', NULL, '$2y$12$bXpEkHbh14mQyq96KTFZ3.LcmjlSFeOneDUZDcqFU2RfmSsfHxCka', NULL, NULL, NULL, NULL, '2026-02-06 07:24:36', '2026-02-06 07:24:36'),
(43, 'ASEAN-4DIH-5LA6', 'd94aaa93-19a4-4e32-aa01-3b3cfd5dc868', 'eyJpdiI6IkdzSXc0Qy9TcGljMG42aWdza0NyeGc9PSIsInZhbHVlIjoiaUdkY3NJN2FpNFlyYU1uZGpOOGExdndmM1pkbzQzZ0E1WFNsaFRrb0M1bktCSGRHYjF1b1BZditCZTFnSXVNTyIsIm1hYyI6ImQyZGRjYzFiODI3MGU1NDE4ZDJiODYwYmUwNmUyMzY1NGViN2RiNjljN2JmNGMyYmI0MDNlMTIzMDRmYjQ0YmUiLCJ0YWciOiIifQ==', NULL, 'Kenmark Hernandez', 'khernandez@ched.gov.ph', NULL, 7, 2, 1, 0, 0, 0, '[]', NULL, '$2y$12$C1B40Tq60sBjFXfz3CemzeM/vWowRYxnxEplPMkcyBMyVL7L8Qfp.', NULL, NULL, NULL, NULL, '2026-02-06 07:25:05', '2026-02-06 07:29:30'),
(44, 'ASEAN-HEHP-5PGY', 'd76e78b8-c189-48b3-8432-240d206cc2cc', 'eyJpdiI6InFiSnNPMjI3M2FLL2MrS2s1ajlFV1E9PSIsInZhbHVlIjoicnkwZVJqaThadFZtQXpwdGx1ckxkekNQcjZ2a1N1UFRzc0ZWQUI0RUY4ZmN6ZVJSZlFndDIvcGtKaUg4L25aSyIsIm1hYyI6ImU2YjU4MmZkODYwMDM4NDVhZWNhNDdhZTE4MzEzNzI0OWM0ZDhiNjYwNjU1ZGYzNzYyYWE5Y2Y1YTcyNTA0NmYiLCJ0YWciOiIifQ==', NULL, 'Mayumi Belandres', 'mbelandres@ched.gov.ph', NULL, 7, 5, 1, 0, 0, 0, '[]', NULL, '$2y$12$zh28fQUbjBcvNEHP7H8lluHiOLLxuldF4cHHxNR.oWNEC1gwRmh7W', NULL, NULL, NULL, NULL, '2026-02-06 07:29:16', '2026-02-06 07:29:16'),
(45, 'ASEAN-UOC0-QL5V', '8b680a91-8cb8-4cfa-b241-806aac0a2500', 'eyJpdiI6ImZXTFduRStjVko2YmhRQlA4TEF6OUE9PSIsInZhbHVlIjoiaEUrMTBBdDluTmEzLzgzb0ZQNUJyZjQ0OEZzZjJodG1Vb2NqVlUxYjI3S2RuNW1aRWc5K1VqY1BwY2Y5NjlHWiIsIm1hYyI6Ijk5MGJlMWNiYWFiYmY0NjVmMDFmNzM5NzYxNTk5NzRhOGIxYjlhZjc0OWIyMGQwNDRiZGNiZDQwM2M5OGUxMDgiLCJ0YWciOiIifQ==', NULL, 'Gerhald Villasis', 'gvillasis@ched.gov.ph', NULL, 7, 5, 1, 0, 0, 0, '[]', NULL, '$2y$12$cewvQad2cHIrCiNxQaprge9D1okszddICqE/8wnU1ihxz58lzpko2', NULL, NULL, NULL, NULL, '2026-02-06 07:29:58', '2026-02-06 07:29:58'),
(46, 'ASEAN-HNOK-WQR8', '12ccd03b-279b-413b-9983-007afdb6502e', 'eyJpdiI6ImVWcW1DZmlwVzJ4Z3QreHR4Sk1DYnc9PSIsInZhbHVlIjoiemZIS2gvQUFFS05WRVcyanZXai83cEsydE1kOXJQS2VBNzBVaWNpenZTSm83MUtZNEt1eHI5WFcrZDloaDJUZCIsIm1hYyI6Ijk1YmI1MTIyZTA1NTYyYTQwZTVlNzI4MjBmMGUyZmVmYTVkNzYxMjg5MWIwZjg0YmQ1ZWJmODk1Y2Y5OWE5MGIiLCJ0YWciOiIifQ==', NULL, 'Geoselle Dela Cruz-Berdan', 'gberdan@ched.gov.ph', NULL, 7, 2, 1, 0, 0, 0, '[]', NULL, '$2y$12$jiZ1T7w6Kskoau/BPmKW7.615YrPL3uSEx1kyTwP2uaCQq/PSenyi', NULL, NULL, NULL, NULL, '2026-02-06 07:29:58', '2026-02-06 07:30:08'),
(47, 'ASEAN-RIJC-ZC4L', 'a13b246d-aa43-47cf-9ea9-4cdb8d7d49a5', 'eyJpdiI6ImlCaW9VS3lZU1dpbTBrT09lMTFnZ2c9PSIsInZhbHVlIjoia2hWaWlWWVZpV1ZVOUVrMWZuTGNPbmwwOUNqZ1BZRFpTdEdrYmRwbEhSSjhjYjdaY0FjSXV1VldWRjNJTmtxVSIsIm1hYyI6Ijg1YmYzZWVkMGI3NTdlYzdkODYyYWIxNGRhOTBkMWU2YTkyMTE4ZWUwMmFhYzY3NmU2NjgxODY2ZWI5OTkzZTMiLCJ0YWciOiIifQ==', NULL, 'Adelma Tercia', 'atercia@ched.gov.ph', NULL, 7, 5, 1, 0, 0, 0, '[]', NULL, '$2y$12$OD8n9VKunQaFGt.hsmFsxOfc5/jG4hHZMgAHMbLDiIRUeXzpd/Hc6', NULL, NULL, NULL, NULL, '2026-02-06 07:30:33', '2026-02-06 07:30:33'),
(48, 'ASEAN-PW8N-L147', '8ea41799-043d-4ffe-a493-55e0b145b61f', 'eyJpdiI6IkxhbjZWSEg3TEhQM2Q2d0JGbDBGYVE9PSIsInZhbHVlIjoid3puOHo2dzBwbWhMYS84czdyQVJUdUJlZVljdHBDM1I2MHMxZUp3b1NOK01Mb0twUWFSK21ZZmNkcXNzU1kyWiIsIm1hYyI6ImFlZjM0MmY4ODk2NTQ1ZGY4Mzc4Y2VlZTJiNmVjMTljMWI4NmFhNzQyZGM1MmJiYmYxNTI3N2JmYjg2Y2YyZmQiLCJ0YWciOiIifQ==', NULL, 'Jhanina Cajefe', 'jcajefe@ched.gov.ph', NULL, 7, 2, 1, 0, 0, 0, '[]', NULL, '$2y$12$Jz7wvUOFRqNJCDRlRC76o.lMA5RnNDC1..PL4bvupzS22.sr7RjwW', NULL, NULL, NULL, NULL, '2026-02-06 07:30:36', '2026-02-06 07:30:36'),
(49, 'ASEAN-ZAQJ-DZLW', '904f9200-1868-402e-a53f-e4e59e542248', 'eyJpdiI6IndrdGxWZk5tZDBobnBQRmQxcStxUXc9PSIsInZhbHVlIjoid010WERjbTF3a1ZDL3hVTHpQeVplTSsxbXF3OWpRWWd1RFFtbnp6eVRSVDlrWFFrWGpnUWVIUUpQejVnQnhwcSIsIm1hYyI6ImQyYjg4ZjQzNmNkOTNlOTM3ZGRkNjY5MmExYTQwMzI3ZTY3ZTE0MmZhOGZlNDk0MTI5ODY5ZGM3MzRlNjUzYzQiLCJ0YWciOiIifQ==', NULL, 'Godfrey Mendoza', 'gmendoza@ched.gov.ph', NULL, 7, 2, 1, 0, 0, 0, '[]', NULL, '$2y$12$I6/Wd4IB4K8ISwkowm/FIuLtPawSnEkusBT5hpcR/bVkYTKodtojO', NULL, NULL, NULL, NULL, '2026-02-06 07:31:00', '2026-02-06 07:31:00'),
(50, 'ASEAN-CEGH-VTFR', '6909c64b-22d2-4a3c-8aa7-5bd1ba774025', 'eyJpdiI6Iit6NzAwa1dFajJBQ003YnFUTUN3L0E9PSIsInZhbHVlIjoiN04vUXVXQ2dMT04wWjUzWTVyOHdwNmVjZkZvWU9QZzF4TmZYakM2TEVrR2pUUk1kN2ZZSlVlUG1kTW9COWxqTiIsIm1hYyI6Ijk1MTExNDgyMzJlOTg1NzllMDE1YjNhMjdlYzkzM2E4NDg1YTRjYWJmMTZkZGU0Y2Q3NWY1NzdjYmI3NTlkMGQiLCJ0YWciOiIifQ==', NULL, 'Richard Dean N. Gavilan', 'rdgavilan@ched.gov.ph', NULL, 7, 8, 1, 0, 0, 0, '[]', NULL, '$2y$12$58Yfl8gkv3NR.TfuIha7/.nHvUB5DiLEJ/5iTLL2suQBR2SRTJAiy', NULL, NULL, NULL, NULL, '2026-02-06 07:32:33', '2026-02-06 07:37:56'),
(51, 'ASEAN-V22G-S1J3', '82d08556-80bf-45e7-a4d9-7ac612cf0a4e', 'eyJpdiI6Im9tQUJrTHNpUkphSk9Ea2huc1RBekE9PSIsInZhbHVlIjoid3RqRW9DWENqSEFCMjJyOUYvKzFad090TU96WFhaR0FKREZ0c2ZHVFZIUU5rdk5PU2pQUHNQeStGYmZqNndjMyIsIm1hYyI6IjE3NDEwMTVkMzMxZDZmZWRhYTQyZjg2OTM2YWI3Y2QxZGEyZDJlZGZmN2IyODg3ZWFlZmQ4ZjJmZTU5YzhjNDQiLCJ0YWciOiIifQ==', NULL, 'Tech 2', 'james.lagman123098@gmail.com', '0395555', 11, 4, 1, 1, 1, 0, '[]', NULL, '$2y$12$ALF7fi0YuhX5YgI3uqpx.egye6wxrZdQVGolWryFVgCQCVvXzlpCG', NULL, NULL, NULL, NULL, '2026-02-06 07:32:42', '2026-02-06 10:27:14'),
(52, 'ASEAN-66US-LFNJ', '3c6b7e5c-14ca-419e-b76c-82cd2b7df051', 'eyJpdiI6IjVJUlNOb2NtY3dnbzRaN3lLTmNUYWc9PSIsInZhbHVlIjoiWnZwZGlXSzRPNEhqMWpWOUhLWGFtRFFYUmdueU9adm5uMGRPL0FxYy84M2Z4ZWtTdUtEWGJmbngrWTBtMjZqdyIsIm1hYyI6IjhlODMzMTRiY2M0NTZmNDI5YjgyNDM2MTQzMWZkZTBmYWYyZTIzZDdmZGM5N2RlZDRlMjAxZjBmYWQ1ZjE2ZmUiLCJ0YWciOiIifQ==', NULL, 'Jhanina V. Cajefe', 'jhaninacajefe@ched.gov.ph', '09067749329', 7, 2, 1, 1, 1, 0, '[]', NULL, '$2y$12$ezimlT0d3mmk55PhO4p5ROk7yLnkY45FWnofe37YeAZI15xw8u8ra', NULL, NULL, NULL, NULL, '2026-02-06 07:34:04', '2026-02-06 07:34:04'),
(53, 'ASEAN-4MBO-VPHH', '324ea21f-2d66-4f2a-8d1a-4ad52b3e0091', 'eyJpdiI6ImZHRzRHbHJXSW5YeWxySzVOOXNlcEE9PSIsInZhbHVlIjoib2JNSHVtV0VjSE5pbk9GOVZ2NFN3UHFUZmFvZ1FGS3ZhYXRaMGtLR0dGc0NoZWVqalhoSmY0RFRldVJxNVRHTyIsIm1hYyI6IjdiMGNhN2M2NTYwZTU5OWI2YWZhZDJkYTcyNzNiNDZiZGViM2U3YzIzNWY2MmI0YTJlZmE1ODk0MmRiMDM0M2MiLCJ0YWciOiIifQ==', NULL, 'Myra Paz B. Manalo', 'mmanalo@ched.gov.ph', NULL, 7, 8, 1, 0, 0, 0, '[]', NULL, '$2y$12$Z4Msaas.3VIKDmJ54pV0R.KRTslFQ1DuJF8ScVERdujzRiazph0JC', NULL, NULL, NULL, NULL, '2026-02-06 07:37:46', '2026-02-06 07:37:46'),
(54, 'ASEAN-TJEF-ARXP', '62b751dd-437e-46aa-b796-8c56ed6c51c4', 'eyJpdiI6IjNsM0FzSjZmdHJuYmZKY2R0RTBPZHc9PSIsInZhbHVlIjoiYzRIQzNQbFQzdjJ5UkprRk83d3M4cFljNlFjSDhGQkwwbmpodC8wKzRNM1ozeDgzTU9NYzlaUHNlQTBKOFUyeCIsIm1hYyI6ImVjNWExMjkyYjgzZTBhYmFlMDRjNGI0NWQ4MmU4NmQ5NmE1MWIzZGQ2NWYwYjM5NzEzNTUxZjAyNjFhNTBmYWIiLCJ0YWciOiIifQ==', NULL, 'Melquiades Ancheta', 'mcancheta@ched.gov.ph', NULL, 7, 9, 1, 0, 0, 0, '[]', NULL, '$2y$12$26RveibXAaG6AC73wcQpeewnLsrc8JJqdpfe9ui/6CP.QvowIqf7O', NULL, NULL, NULL, NULL, '2026-02-06 07:41:25', '2026-02-06 07:54:23'),
(55, 'ASEAN-WDEU-QF32', '29e1030e-77ed-4505-ae42-0cdcc47a7816', 'eyJpdiI6IjdLVElPaDNQOHlMc3Y1d1p3bEljS3c9PSIsInZhbHVlIjoiaFlHcjZ6YSs1amdGTzFvUnI4cjFGK2JGblFhaUJ0RWNyaUVWc0NadEFOZU40azdkQzFGZ2hMZ1FaQzRJWUREUyIsIm1hYyI6IjYxZmJkZTYyMjNkY2YyYTMyY2EwNDc3NzFlN2NjN2I5MzAyZGVlZjVlNDcxNTFmODRiZDNlODcxYmMzZWU4MjQiLCJ0YWciOiIifQ==', NULL, 'Cherrie Melanie A. Diego', 'cherrie.diego@gmail.com', '09957527519', 7, 6, 1, 1, 1, 0, '[]', NULL, '$2y$12$/4wV7vBACgTdiX2JINBJWOdeJcuYR26lr/lqnkphX5UWdNvSTKTRm', NULL, NULL, NULL, NULL, '2026-02-06 07:41:37', '2026-02-06 07:41:37'),
(56, 'ASEAN-SXQP-BWNH', 'b660c3d0-c4bb-48da-9635-c5feea6faf5a', 'eyJpdiI6IjcxMjk0VEplTUoxbFJueXYwWWROQnc9PSIsInZhbHVlIjoiUktSbWlPYnY0UmdlUVFNazRTcE16LzNQeDRwcXQ1Q3pxRm4vMzN4N1NHVm9pOVZtYzZrajNqTE94TW9nZWpJQiIsIm1hYyI6IjBjNDU1N2U3NjQ0Y2EyZmE0ZGVlNmNhMzBlMWE2M2QzODZmNTBmNjNkNjY3OTIyNmI3MzE4Yjk5Zjc2Mzg1YWMiLCJ0YWciOiIifQ==', NULL, 'Mildred Libot', 'mlibot@ched.gov.ph', NULL, 7, 3, 1, 0, 0, 0, '[]', NULL, '$2y$12$7O.DwEopnY1mrLH.qI1PIuJXzR1EeCPFY17IQLraQ6WSSRA1vEOKa', NULL, NULL, NULL, NULL, '2026-02-06 07:42:21', '2026-02-06 07:42:21'),
(57, 'ASEAN-ROWC-BJJV', '406bfb3a-fe81-477b-8c24-9beec2412b66', 'eyJpdiI6Ijgwb1ZxT3E5Umo4SVRZS0haSlFKU3c9PSIsInZhbHVlIjoiSnFWZFhZQkxnbGE0UktSL0F6YWg4d0wweDZXcm1KT1J2NVNtMzFSTWw2cHpCQUNHandUck5NcWZkdW40aWsvQSIsIm1hYyI6IjQyNjljMWM5NDYyYzJiNTY4ZmM2YzZmYjU0ZmE5NzkzNzk4MTVmMzVjYjhhOTViNDgzMTdlNTZmMjE4YzUzM2QiLCJ0YWciOiIifQ==', NULL, 'Ericson Reyes', 'ereyes@ched.gov.ph', NULL, 7, 9, 1, 0, 0, 0, '[]', NULL, '$2y$12$pPgtuw7s8hY3/xsh19nT0OdpcASeQl3eTn3njF/WgUimZwO30THQm', NULL, NULL, NULL, NULL, '2026-02-06 07:42:46', '2026-02-06 07:56:54'),
(58, 'ASEAN-F6J1-8QCE', '75736fdd-8bf8-4391-91d0-6976e80b700f', 'eyJpdiI6Im1wYVJRblRHUm5maGxtWnpGNzV1S3c9PSIsInZhbHVlIjoicFd1MUV4WTlPcmliVk5OSEdma3AzYTRGbFQ4RzFGOWZtaTMwanRUdS9CME9oaC9Nc3dON0poSXlYZTdiUU52MiIsIm1hYyI6IjcwN2EwNWFhMWYxNzc4NjE5M2ExNDI1MWI2NDBlMTEyMTNjMDI0YmM5YzJlYzg0NWVlMjE0ZGQzOWYxMWM5ZDMiLCJ0YWciOiIifQ==', NULL, 'Hazel D. Mendoza', 'hmendoza@ched.gov.ph', NULL, 7, 3, 1, 0, 0, 0, '[]', NULL, '$2y$12$be.1wLzojXPp9NKcj6JJTuXsiGCsXLhNvXHSUCOMLl8bgGkDaj/oq', NULL, NULL, NULL, NULL, '2026-02-06 07:42:58', '2026-02-06 07:42:58'),
(59, 'ASEAN-XP7Z-8MEU', 'ebe41f1c-4763-4c2b-a5b1-f103121746f3', 'eyJpdiI6IkpPUndWVWJtY2FPRnBHT1FrMjA1RlE9PSIsInZhbHVlIjoiZVlpN3ZlSVEzUU5iZldpaFlkNnA1eFRKdS9ldnBFMzlyQ3p4VEV3QXkrTXhqYWxhRmYvVkxlODZ1QWIyME1ZeCIsIm1hYyI6IjUwZjJiYTNkOWViZDkxNDdlMTMyYWI0OTUzYmQyNzNjMzU5YjIxNjQ5ODQzZmMwZWVjNzNlNGZiOTc3MTkyNjQiLCJ0YWciOiIifQ==', NULL, 'John Paul Dela Cruz', 'jpdelacruz@ched.gov.ph', NULL, 7, 9, 1, 0, 0, 0, '[]', NULL, '$2y$12$n3Uk9QOGcm0Eyx/NIWnc8uL7sMxG98Jt2ZflPZos8E2htoOIvgQVu', NULL, NULL, NULL, NULL, '2026-02-06 07:43:05', '2026-02-06 07:58:33'),
(60, 'ASEAN-KWQL-EKNO', '91c0b8c5-9396-4118-bd90-be2de2931bab', 'eyJpdiI6Im8rb00vWE1NZU94VDh1Q2ZyUU9CS1E9PSIsInZhbHVlIjoiUUdabnE0azRWdTZkSDE1V2pNNWluVWliVmxtRjY5RmxyTTF6Vlp6WG85dEliOEJWUDRZMG11VDFYYWRtc1dVNyIsIm1hYyI6IjUzYzMxYjViYzczMjcyZWY1MTlhNWFmZDlmZmMwNzQ5ZGVlZTdiYTJmYjNmZDFhYzEyZGVmZDYxYjZjYzEwMDYiLCJ0YWciOiIifQ==', NULL, 'Remedios Talingdan', 'rtalingdan@ched.gov.ph', NULL, 7, 9, 1, 0, 0, 0, '[]', NULL, '$2y$12$O1IAqd0Pwq/.zdEwW/E9GeQ4spwLVLrTVKO86Pqz1JN7WbbHgTv0S', NULL, NULL, NULL, NULL, '2026-02-06 07:43:27', '2026-02-06 07:59:33'),
(61, 'ASEAN-PJNQ-STHS', '78c24981-f2de-4591-b671-a441f3a27cfa', 'eyJpdiI6Im1maTVTY2dYc0ZZWFVhVFZCVTFFcmc9PSIsInZhbHVlIjoiWDhUUnF4ZlF1QjBnZGNqVzJ0aXVVUitDbm95eTRlSjVIOER2UjNsMzJMdmVydHlZNnd4ZTdiNXlwNEx4TnQxLyIsIm1hYyI6IjhjNTAyYTk0MjZkNTI1OWNjYWE5OGJiMGYzMzA5NWE5MDc5YTJkMzk5MDUyMTIyMzIwNzNjMTBmODQyNGJiZTAiLCJ0YWciOiIifQ==', NULL, 'Peter Lloyd D. Carpio', 'plcarpio@ched.gov.ph', NULL, 7, 3, 1, 0, 0, 0, '[]', NULL, '$2y$12$9pA3o.CUxZXiXU84Yw9X/.EkW6lt6qCN.v.a9PpOkZJ9o7O2qoXei', NULL, NULL, NULL, NULL, '2026-02-06 07:43:28', '2026-02-06 07:43:28'),
(62, 'ASEAN-CCSZ-D1IB', '86ff0a1d-057a-4407-9d40-9f4eb1296408', 'eyJpdiI6Imdmbm9lMGROVkRta0FYYk45RHJBZlE9PSIsInZhbHVlIjoidThZY1FocmJiZjdXZTB1QnJrRURxeDhpUUlRY2RGNDRWSzhVbit1N2xQb0pxUHZhSE5jY3F6ZUU4M3FKcC9BRSIsIm1hYyI6IjY4ZDczODlmYTQ3MGI0YWY0MzFhZTFmNzNjOTlkODM3YWQ5NTVhMjVjNDJjNDJiNTA3MWRlNTMxZmQ0MDVjZDUiLCJ0YWciOiIifQ==', NULL, 'Al Gerald S. Barde', 'algeraldsbarde@gmail.com', '09777055733', 7, 2, 1, 1, 1, 0, '[]', NULL, '$2y$12$YvmqpbtkcqKO9kMrDCtqWeSpR0aPrdvhdhVKUEAkkUZwQsWYr8xMa', NULL, NULL, NULL, NULL, '2026-02-06 07:44:08', '2026-02-06 07:44:08'),
(63, 'ASEAN-T8RM-ZIWP', '206a8b54-4222-4c10-bf44-e840d542d460', 'eyJpdiI6InI5Nk1jSUR4dk1sZjlidG4vQ09xK1E9PSIsInZhbHVlIjoicmR6MmFxZjdpRThpZXpHSFBmek51MEJRbFg2M1VzZXE5dEF3cHpiTTlXMEFiaWVQTmV5RjhTTVJtOC9uU2xlMCIsIm1hYyI6IjBmNDZkZGFjMTEzNGFhMzBlMjJiOTgwODEzMTliZTJhMzliMmVmZjQxODJkZmZhZGExODY5ZWNjZDFmMDcwNjUiLCJ0YWciOiIifQ==', NULL, 'Tech 3', 'jameslagman52@gmail.com', '968', 8, 2, 1, 1, 1, 1, '[\"vegetarian\"]', NULL, '$2y$12$jPEFjzxuFZ0TvJqQWETrWuF/HMJeSmibMz2GBC42B5xwk7rjy1hxO', NULL, NULL, NULL, NULL, '2026-02-06 08:14:12', '2026-02-06 10:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Prime Minister', 'prime-minister', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(2, 'Staff', 'staff', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(3, 'CHED', 'ched', 1, '2026-02-04 11:26:34', '2026-02-04 11:26:34'),
(4, 'CHED LO', 'ched-lo', 1, '2026-02-05 10:34:53', '2026-02-05 10:34:53'),
(5, 'OPRKM', 'oprkm', 1, '2026-02-05 14:24:52', '2026-02-05 14:24:52'),
(6, 'Regional Director', 'regional-director', 1, '2026-02-05 14:25:00', '2026-02-05 14:25:00'),
(7, 'Executive Director IV', 'executive-director-iv', 1, '2026-02-05 16:06:53', '2026-02-05 16:06:53'),
(8, 'HEDF', 'hedf', 1, '2026-02-06 07:36:00', '2026-02-06 07:36:00'),
(9, 'OPSD', 'opsd', 1, '2026-02-06 07:53:31', '2026-02-06 07:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_assignments`
--

CREATE TABLE `vehicle_assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `programme_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vehicle_label` varchar(255) NOT NULL,
  `pickup_status` varchar(255) NOT NULL DEFAULT 'pending',
  `pickup_location` varchar(255) DEFAULT NULL,
  `pickup_at` datetime DEFAULT NULL,
  `dropoff_location` varchar(255) DEFAULT NULL,
  `dropoff_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notify_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_assignments`
--

INSERT INTO `vehicle_assignments` (`id`, `user_id`, `programme_id`, `vehicle_label`, `pickup_status`, `pickup_location`, `pickup_at`, `dropoff_location`, `dropoff_at`, `created_at`, `updated_at`, `vehicle_id`, `driver_user_id`, `notify_admin`) VALUES
(13, 63, 1, 'vaaaan', 'pending', NULL, NULL, NULL, NULL, '2026-02-06 08:55:31', '2026-02-06 08:55:31', 9, 51, 0);

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `programme_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `google_maps_url` text DEFAULT NULL,
  `embed_url` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `programme_id`, `name`, `address`, `google_maps_url`, `embed_url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Commission on Higher Education (CHED)', '55 C.P. Garcia Ave, Diliman, Quezon City, 1101 Metro Manila', 'https://maps.app.goo.gl/a2qWL88NJnMNdkWj7', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3860.0408259823935!2d121.0554852!3d14.653624!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b76d1e8d6f7f%3A0x13d55af0015a9624!2sCommission%20on%20Higher%20Education%20(CHED)!5e0!3m2!1sen!2sph!4v1770234578456!5m2!1sen!2sph', 1, '2026-02-04 11:49:59', '2026-02-04 11:49:59'),
(2, 2, 'Makati Diamond Residences, Makati City, Philippines', '118 Legazpi Street, Legazpi Village, Makati, 1229 Kalakhang Maynila', 'https://maps.app.goo.gl/yz6uoDxU2ve82o8q6', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7723.569939502494!2d121.0183563!3d14.5542857!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c90fef46629d%3A0xb57ef3c80b437538!2sMakati%20Diamond%20Residences!5e0!3m2!1sen!2sph!4v1770234848156!5m2!1sen!2sph', 1, '2026-02-04 11:54:26', '2026-02-04 11:54:26'),
(3, 3, 'Commission on Higher Education (CHED)', '55 C.P. Garcia Ave, Diliman, Quezon City, 1101 Metro Manila', 'https://maps.app.goo.gl/caDqytuuEvjotnAJ6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3860.0408259823935!2d121.05806009999999!3d14.653623999999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b76d1e8d6f7f%3A0x13d55af0015a9624!2sCommission%20on%20Higher%20Education%20(CHED)!5e0!3m2!1sen!2sph!4v1770234937060!5m2!1sen!2sph', 1, '2026-02-04 11:55:51', '2026-02-04 11:55:51'),
(4, 4, 'Shangri-La The Fort, Manila, Philippines', '30th Street, corner 5th Ave, Taguig, 1634 Metro Manila', 'https://maps.app.goo.gl/fZsq1B4YYBYPxr4J7', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3861.822291110736!2d121.0434496!3d14.5521528!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c8f0efdc1869%3A0x55d745f5355cb907!2sShangri-La%20The%20Fort%2C%20Manila!5e0!3m2!1sen!2sph!4v1770234995529!5m2!1sen!2sph', 1, '2026-02-04 11:56:50', '2026-02-04 11:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `venue_sections`
--

CREATE TABLE `venue_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue_sections`
--

INSERT INTO `venue_sections` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Philippine Higher Education: World University Rankings 2026', '2026-02-04 11:29:08', '2026-02-04 11:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `venue_section_images`
--

CREATE TABLE `venue_section_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `venue_section_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue_section_images`
--

INSERT INTO `venue_section_images` (`id`, `venue_section_id`, `title`, `description`, `link`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ateneo de Manila University', '1001–1200th in World University Rankings 2026. Ateneo de Manila University is divided into two major schools of higher education: the Loyola School, located in Quezon City, and the Professional School, located in the Rockwell and Salcedo Campuses in Makati City. The Loyola School offers undergraduate and graduate degree programmes in the arts and sciences. It comprises four schools: Humanities, the John Gokongwei School of Management, Science and Engineering, and Social Sciences. The Ateneo Professional School is the postgraduate part of the university and comprises the schools of Business, Medicine and Public Health, Law, and Government.', 'https://www.timeshighereducation.com/world-university-rankings/ateneo-de-manila-university', 'd3cccc47-80b8-48e8-af6c-24728fac22f9.png', '2026-02-03 06:52:19', '2026-02-03 06:52:19'),
(2, 1, 'University of the Philippines', '1201–1500th in World University Rankings 2026. The University of the Philippines is a network of seven universities and one autonomous college scattered across the island nation. Many of its constituent universities have more than one campus of their own.', 'https://www.timeshighereducation.com/world-university-rankings/university-philippines', 'ab847c0a-44e4-40fb-8b47-e89c9f5da049.png', '2026-02-03 06:54:49', '2026-02-03 06:54:49'),
(3, 1, 'De La Salle University', '1501+ in World University Rankings 2026. De La Salle University positions itself as a learner-centered research institution of higher learning, building the foundation of tomorrow\'s leaders. It is renowned for its academic excellence, groundbreaking research, and empowering community engagement.', 'https://www.timeshighereducation.com/world-university-rankings/de-la-salle-university', '28936f8a-5e34-4da2-b755-91d5f299bc62.png', '2026-02-03 06:57:44', '2026-02-03 06:57:44'),
(4, 1, 'Mapúa University', '1501+ in World University Rankings 2026. Mapúa University is the Philippines’ premier engineering and technological school and one of the world’s best universities. It offers excellent senior high school, undergraduate, and graduate programs, including Engineering and Sciences, Architecture and Design, Information Technology, and Communication and Media Studies. Mapúa also offers international education in Business and Management and Health Sciences through its collaboration with Arizona State University, the most innovative school in the US.', 'https://www.timeshighereducation.com/world-university-rankings/mapua-university', 'b345de8b-797d-493d-aa3b-cff979a18814.png', '2026-02-03 07:01:23', '2026-02-03 07:02:55'),
(5, 1, 'Mindanao State University – Iligan Institute of Technology', '1501+ in World University Rankings 2026. Mindanao State University-Iligan Institute of Technology (MSU-IIT) was founded in 1968 but its history dates back to 1946 when Iligan City High School was established. The school was renamed Northern Mindanao Institute of Technology in 1965 and three years later it became a unit of the Mindanao State University as the Iligan Institute of technology.', 'https://www.timeshighereducation.com/world-university-rankings/mindanao-state-university-iligan-institute-technology', 'c6f83424-d1a1-4ff6-9aa3-b78cf67a3566.png', '2026-02-03 07:05:58', '2026-02-03 07:05:58'),
(6, 1, 'University of Santo Tomas', '1501+ in World University Rankings 2026. The University of Santo Tomas (UST) is the oldest existing university in Asia. The institution was established through the initiative of Miguel de Benavides, the third Archbishop of Manila. In 1605, he bequeathed a modest amount from his personal funds for the establishment of a seminary-college to prepare young men for the priesthood.', 'https://www.timeshighereducation.com/world-university-rankings/university-santo-tomas', '0509094c-5f9d-441a-bfb3-1fdbb939e649.webp', '2026-02-03 07:08:32', '2026-02-03 07:08:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_created_at_index` (`user_id`,`created_at`),
  ADD KEY `activity_logs_route_name_activity_index` (`route_name`,`activity`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_details_key_unique` (`key`),
  ADD KEY `contact_details_updated_by_user_id_foreign` (`updated_by_user_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_code_unique` (`code`),
  ADD UNIQUE KEY `countries_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_participant_id_foreign` (`participant_id`),
  ADD KEY `feedback_programme_id_foreign` (`programme_id`);

--
-- Indexes for table `issuances`
--
ALTER TABLE `issuances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issuances_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participant_attendances`
--
ALTER TABLE `participant_attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `participant_attendances_user_id_programme_id_unique` (`user_id`,`programme_id`),
  ADD KEY `participant_attendances_programme_id_foreign` (`programme_id`);

--
-- Indexes for table `participant_programmes`
--
ALTER TABLE `participant_programmes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `participant_programmes_user_id_programme_id_unique` (`user_id`,`programme_id`),
  ADD KEY `participant_programmes_programme_id_foreign` (`programme_id`);

--
-- Indexes for table `participant_tables`
--
ALTER TABLE `participant_tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `participant_tables_programme_table_unique` (`programme_id`,`table_number`);

--
-- Indexes for table `participant_table_assignments`
--
ALTER TABLE `participant_table_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pt_assign_table_user_unique` (`participant_table_id`,`user_id`),
  ADD UNIQUE KEY `pt_assign_table_seat_unique` (`participant_table_id`,`seat_number`),
  ADD UNIQUE KEY `pt_assign_programme_user_unique` (`programme_id`,`user_id`),
  ADD KEY `pt_assign_user_index` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `programmes`
--
ALTER TABLE `programmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programmes_user_id_foreign` (`user_id`);

--
-- Indexes for table `programme_materials`
--
ALTER TABLE `programme_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programme_materials_programme_id_foreign` (`programme_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transport_vehicles`
--
ALTER TABLE `transport_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_vehicles_programme_id_foreign` (`programme_id`),
  ADD KEY `transport_vehicles_incharge_user_id_foreign` (`incharge_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_qr_id_unique` (`qr_id`),
  ADD UNIQUE KEY `users_display_id_unique` (`display_id`),
  ADD UNIQUE KEY `users_qr_token_unique` (`qr_token`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_user_type_id_foreign` (`user_type_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_types_name_unique` (`name`),
  ADD UNIQUE KEY `user_types_slug_unique` (`slug`);

--
-- Indexes for table `vehicle_assignments`
--
ALTER TABLE `vehicle_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_assignments_user_id_foreign` (`user_id`),
  ADD KEY `vehicle_assignments_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `vehicle_assignments_driver_user_id_foreign` (`driver_user_id`),
  ADD KEY `vehicle_assignments_programme_id_foreign` (`programme_id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venues_programme_id_foreign` (`programme_id`);

--
-- Indexes for table `venue_sections`
--
ALTER TABLE `venue_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_section_images`
--
ALTER TABLE `venue_section_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venue_section_images_venue_section_id_foreign` (`venue_section_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `issuances`
--
ALTER TABLE `issuances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `participant_attendances`
--
ALTER TABLE `participant_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `participant_programmes`
--
ALTER TABLE `participant_programmes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `participant_tables`
--
ALTER TABLE `participant_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `participant_table_assignments`
--
ALTER TABLE `participant_table_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `programmes`
--
ALTER TABLE `programmes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `programme_materials`
--
ALTER TABLE `programme_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transport_vehicles`
--
ALTER TABLE `transport_vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle_assignments`
--
ALTER TABLE `vehicle_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `venue_sections`
--
ALTER TABLE `venue_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `venue_section_images`
--
ALTER TABLE `venue_section_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD CONSTRAINT `contact_details_updated_by_user_id_foreign` FOREIGN KEY (`updated_by_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `feedback_programme_id_foreign` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `issuances`
--
ALTER TABLE `issuances`
  ADD CONSTRAINT `issuances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `participant_attendances`
--
ALTER TABLE `participant_attendances`
  ADD CONSTRAINT `participant_attendances_programme_id_foreign` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `participant_attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `participant_programmes`
--
ALTER TABLE `participant_programmes`
  ADD CONSTRAINT `participant_programmes_programme_id_foreign` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `participant_programmes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `participant_tables`
--
ALTER TABLE `participant_tables`
  ADD CONSTRAINT `participant_tables_programme_id_foreign` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `participant_table_assignments`
--
ALTER TABLE `participant_table_assignments`
  ADD CONSTRAINT `participant_table_assignments_participant_table_id_foreign` FOREIGN KEY (`participant_table_id`) REFERENCES `participant_tables` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `participant_table_assignments_programme_id_foreign` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `participant_table_assignments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `programmes`
--
ALTER TABLE `programmes`
  ADD CONSTRAINT `programmes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `programme_materials`
--
ALTER TABLE `programme_materials`
  ADD CONSTRAINT `programme_materials_programme_id_foreign` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transport_vehicles`
--
ALTER TABLE `transport_vehicles`
  ADD CONSTRAINT `transport_vehicles_incharge_user_id_foreign` FOREIGN KEY (`incharge_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transport_vehicles_programme_id_foreign` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_user_type_id_foreign` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vehicle_assignments`
--
ALTER TABLE `vehicle_assignments`
  ADD CONSTRAINT `vehicle_assignments_driver_user_id_foreign` FOREIGN KEY (`driver_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `vehicle_assignments_programme_id_foreign` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `vehicle_assignments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_assignments_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `transport_vehicles` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `venues`
--
ALTER TABLE `venues`
  ADD CONSTRAINT `venues_programme_id_foreign` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `venue_section_images`
--
ALTER TABLE `venue_section_images`
  ADD CONSTRAINT `venue_section_images_venue_section_id_foreign` FOREIGN KEY (`venue_section_id`) REFERENCES `venue_sections` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
