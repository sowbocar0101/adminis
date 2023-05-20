-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 27, 2022 at 06:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u185461751_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(50) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2021-03-02 08:03:07'),
(8, 9, 3, 'App Settings', 'fa-cog', 'app-settings', '*', '2020-04-02 12:42:07', '2022-12-08 12:19:29'),
(9, 0, 2, 'Settings', 'fa-cogs', NULL, '*', '2020-04-02 13:34:23', '2022-12-08 12:19:29'),
(10, 0, 62, 'Cancellation Reasons', 'fa-th-list', 'cancellation-reasons', '*', '2020-04-02 14:15:00', '2022-12-09 18:47:10'),
(12, 0, 60, 'Tax Lists', 'fa-briefcase', 'tax-lists', '*', '2020-04-02 15:45:48', '2022-12-09 18:47:10'),
(16, 9, 4, 'Trip Settings', 'fa-asterisk', 'trip-settings', '*', '2020-04-03 06:46:34', '2022-12-08 12:19:29'),
(18, 0, 64, 'Faqs', 'fa-bars', 'faqs', '*', '2020-04-03 07:29:41', '2022-12-24 07:46:48'),
(19, 0, 65, 'Privacy Policies', 'fa-eye', 'privacy-policies', '*', '2020-04-03 07:56:48', '2022-12-24 07:46:48'),
(20, 74, 55, 'Payment Methods', 'fa-hand-o-right', 'payment-methods', '*', '2020-04-03 08:23:01', '2022-12-09 18:47:10'),
(21, 0, 58, 'Promo Codes', 'fa-gift', 'promo-codes', '*', '2020-04-03 08:39:09', '2022-12-09 18:47:10'),
(22, 9, 6, 'Referral Settings', 'fa-book', 'referral-settings', '*', '2020-04-03 23:54:28', '2022-12-08 12:19:29'),
(23, 0, 31, 'Vehicle Categories', 'fa-automobile', 'vehicle-categories', '*', '2020-04-04 00:19:34', '2022-12-09 08:53:23'),
(24, 38, 51, 'Complaint Categories', 'fa-close', 'complaint-categories', '*', '2020-04-04 00:34:52', '2022-12-09 18:47:10'),
(25, 38, 52, 'Complaint Sub Categories', 'fa-adjust', 'complaint-sub-categories', '*', '2020-04-04 01:15:57', '2022-12-09 18:47:10'),
(27, 38, 53, 'Complaints', 'fa-comment', 'complaints', '*', '2020-04-04 12:30:58', '2022-12-09 18:47:10'),
(28, 45, 15, 'Customers', 'fa-female', 'customers', NULL, '2020-04-04 12:58:58', '2022-12-09 08:53:23'),
(29, 41, 22, 'Drivers', 'fa-compass', 'drivers', '*', '2020-04-04 13:42:27', '2022-12-09 08:53:23'),
(31, 41, 23, 'Driver Vehicles', 'fa-cab', 'driver-vehicles', '*', '2020-04-06 04:03:38', '2022-12-09 08:53:23'),
(32, 9, 5, 'Contact Settings', 'fa-pinterest-p', 'contact-settings', '*', '2020-04-06 11:26:03', '2022-12-08 12:19:29'),
(33, 0, 61, 'Notification Messages', 'fa-bell', 'notification-messages', '*', '2020-04-07 07:50:56', '2022-12-09 18:47:10'),
(36, 0, 11, 'Countries', 'fa-reorder', 'countries', '*', '2020-09-06 09:33:41', '2022-12-09 08:53:23'),
(37, 0, 12, 'Currencies', 'fa-usd', 'currencies', '*', '2020-09-06 12:07:09', '2022-12-09 08:53:23'),
(38, 0, 50, 'Complaints', 'fa-bars', NULL, '*', '2020-09-07 07:58:36', '2022-12-09 18:47:10'),
(39, 0, 63, 'User Types', 'fa-bars', 'user-types', '*', '2020-09-27 10:17:53', '2022-12-24 07:46:48'),
(40, 45, 18, 'Customer Wallet Histories', 'fa-cc-mastercard', 'customer-wallet-histories', '*', '2020-09-27 11:41:29', '2022-12-09 08:53:23'),
(41, 0, 21, 'Drivers', 'fa-male', NULL, '*', '2020-10-01 22:10:55', '2022-12-09 08:53:23'),
(42, 41, 24, 'Driver Wallet Histories', 'fa-bars', 'driver-wallet-histories', '*', '2020-10-01 22:11:53', '2022-12-09 08:53:23'),
(43, 41, 26, 'Driver Earnings', 'fa-bars', 'driver-earnings', '*', '2020-10-01 22:12:25', '2022-12-09 08:53:23'),
(44, 41, 27, 'Driver Withdrawals', 'fa-bars', 'driver-withdrawals', '*', '2020-10-01 22:14:36', '2022-12-09 08:53:23'),
(45, 0, 14, 'Customers', 'fa-group', NULL, NULL, '2020-10-01 22:37:39', '2022-12-09 08:53:23'),
(46, 41, 28, 'Driver Bank Details', 'fa-bars', 'driver-bank-kyc-details', '*', '2020-10-02 03:08:01', '2022-12-09 08:53:23'),
(47, 41, 30, 'Driver Tutorials', 'fa-bars', 'driver-tutorials', '*', '2020-10-04 06:17:55', '2022-12-09 08:53:23'),
(48, 62, 33, 'Trips', 'fa-bars', 'trips', '*', '2020-10-14 23:02:27', '2022-12-09 08:53:23'),
(49, 62, 37, 'Booking Statuses', 'fa-bars', 'booking-statuses', '*', '2020-10-15 07:05:00', '2022-12-09 08:53:23'),
(55, 74, 56, 'Payment Types', 'fa-bars', 'payment-types', '*', '2020-11-25 05:54:07', '2022-12-09 18:47:10'),
(59, 9, 7, 'Scratch Card Settings', 'fa-bookmark', 'scratch-card-settings', '*', '2020-12-05 09:52:59', '2022-12-08 12:19:29'),
(61, 45, 17, 'Customer Sos Contacts', 'fa-bars', 'customer-sos-contacts', '*', '2021-01-08 06:28:28', '2022-12-09 08:53:23'),
(62, 0, 32, 'Trips', 'fa-angle-double-right', NULL, '*', '2021-02-05 04:30:35', '2022-12-09 08:53:23'),
(63, 62, 34, 'Trip Types', 'fa-bars', 'trip-types', '*', '2021-02-05 04:31:29', '2022-12-09 08:53:23'),
(64, 65, 43, 'Daily Fare Managements', 'fa-dollar', 'daily-fare-managements', '*', '2021-02-12 07:37:37', '2022-12-09 18:47:10'),
(65, 0, 42, 'Fare Managements', 'fa-dollar', NULL, '*', '2021-02-12 07:38:09', '2022-12-09 18:47:10'),
(66, 65, 46, 'Outstation Fare Managements', 'fa-dollar', 'outstation-fare-managements', '*', '2021-02-12 08:18:55', '2022-12-09 18:47:10'),
(67, 65, 44, 'Packages', 'fa-dollar', 'packages', '*', '2021-02-12 08:22:15', '2022-12-09 18:47:10'),
(68, 65, 45, 'Rental Fare Managements', 'fa-dollar', 'rental-fare-managements', '*', '2021-02-12 08:23:42', '2022-12-09 18:47:10'),
(69, 62, 39, 'Trip Request Statuses', 'fa-arrow-right', 'trip-request-statuses', '*', '2021-02-26 10:09:00', '2022-12-09 08:53:23'),
(70, 62, 38, 'Driver Trip Requests', 'fa-bars', 'driver-trip-requests', '*', '2021-02-26 10:45:56', '2022-12-09 08:53:23'),
(73, 74, 57, 'Payment histories', 'fa-bars', 'payment-histories', '*', '2021-03-02 08:01:45', '2022-12-09 18:47:10'),
(74, 0, 54, 'Payments', 'fa-dollar', NULL, '*', '2021-03-02 08:02:17', '2022-12-09 18:47:10'),
(75, 62, 36, 'Trip Requests', 'fa-arrow-circle-right', 'trip-requests', '*', '2021-03-02 08:05:43', '2022-12-09 08:53:23'),
(76, 0, 67, 'Status', 'fa-arrow-circle-right', 'statuses', '*', '2021-03-06 02:50:54', '2022-12-24 07:46:48'),
(78, 41, 29, 'Driver Recharges', 'fa-money', 'driver_recharges', NULL, '2021-03-23 17:27:58', '2022-12-09 08:53:23'),
(79, 45, 19, 'Customer Favourites', 'fa-bars', 'customer-favourites', '*', '2021-03-29 09:51:11', '2022-12-09 08:53:23'),
(80, 62, 35, 'Trip Sub Types', 'fa-bars', 'trip-sub-types', '*', '2021-04-12 04:25:47', '2022-12-09 08:53:23'),
(81, 65, 47, 'Delivery Fare Management', 'fa-bars', 'delivery-fare-managements', '*', '2021-04-12 09:58:56', '2022-12-09 18:47:10'),
(85, 62, 40, 'Stops', 'fa-arrow-right', 'stops', '*', '2021-06-27 15:07:52', '2022-12-09 08:53:23'),
(86, 0, 20, 'Livechat', 'fa-wechat', 'live_chat', NULL, '2022-05-28 02:41:04', '2022-12-09 08:53:23'),
(87, 41, 25, 'Driver Tips', 'fa-money', 'driver_tips', NULL, '2022-06-26 10:38:04', '2022-12-09 08:53:23'),
(88, 0, 13, 'Zones', 'fa-map-marker', 'zones', NULL, '2022-06-27 14:08:57', '2022-12-09 08:53:23'),
(89, 65, 48, 'Shared Fare Management', 'fa-money', 'shared-fare-managements', NULL, '2022-08-06 01:24:32', '2022-12-09 18:47:10'),
(90, 0, 59, 'Subscriptions', 'fa-reorder', 'subscriptions', NULL, '2022-10-02 14:17:32', '2022-12-09 18:47:10'),
(91, 45, 16, 'Customer Subscription Histories', 'fa-align-justify', 'customer-subscription-histories', NULL, '2022-10-08 09:22:53', '2022-12-09 08:53:23'),
(92, 0, 10, 'Dispatch Panel', 'fa-desktop', 'dispatch_panel', NULL, '2022-12-08 12:45:08', '2022-12-09 08:53:23'),
(93, 9, 8, 'Surge Settings', 'fa-cogs', 'surge-settings', NULL, '2022-12-09 08:51:57', '2022-12-09 08:53:23'),
(94, 9, 9, 'Surge Fare Settings', 'fa-dollar', 'surge-fare-settings', NULL, '2022-12-09 08:53:12', '2022-12-09 08:53:23'),
(95, 65, 49, 'Driver Hiring Fare', 'fa-dollar', 'driver-hiring-fare-managements', NULL, '2022-12-09 18:33:17', '2022-12-09 18:47:10'),
(96, 0, 41, 'Driver Hiring Requests', 'fa-caret-right', 'driver-hiring-requests', NULL, '2022-12-09 18:46:31', '2022-12-09 18:47:10'),
(97, 0, 66, 'Driver Hiring Status', 'fa-bars', 'driver-hiring-statuses', NULL, '2022-12-09 18:53:39', '2022-12-24 07:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '49.205.81.149', '[]', '2022-12-24 12:55:04', '2022-12-24 12:55:04'),
(2, 1, 'admin/currencies', 'GET', '49.205.81.149', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 12:55:34', '2022-12-24 12:55:34'),
(3, 1, 'admin', 'GET', '82.134.29.102', '[]', '2022-12-24 12:59:35', '2022-12-24 12:59:35'),
(4, 1, 'admin/tax-lists', 'GET', '82.134.29.102', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 12:59:46', '2022-12-24 12:59:46'),
(5, 1, 'admin/zones', 'GET', '82.134.29.102', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 12:59:50', '2022-12-24 12:59:50'),
(6, 1, 'admin/app-settings', 'GET', '82.134.29.102', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 12:59:59', '2022-12-24 12:59:59'),
(7, 1, 'admin/auth/logout', 'GET', '49.205.81.149', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 13:54:07', '2022-12-24 13:54:07'),
(8, 1, 'admin', 'GET', '109.75.54.45', '[]', '2022-12-24 15:50:48', '2022-12-24 15:50:48'),
(9, 1, 'admin', 'GET', '109.75.54.45', '[]', '2022-12-24 15:57:40', '2022-12-24 15:57:40'),
(10, 1, 'admin/payment-methods', 'GET', '109.75.54.45', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 15:59:26', '2022-12-24 15:59:26'),
(11, 1, 'admin/app-settings', 'GET', '109.75.54.45', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 16:00:27', '2022-12-24 16:00:27'),
(12, 1, 'admin/trip-settings', 'GET', '109.75.54.45', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 16:00:49', '2022-12-24 16:00:49'),
(13, 1, 'admin/surge-settings', 'GET', '109.75.54.45', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 16:01:12', '2022-12-24 16:01:12'),
(14, 1, 'admin/dispatch_panel', 'GET', '109.75.54.45', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 16:01:28', '2022-12-24 16:01:28'),
(15, 1, 'admin/currencies', 'GET', '109.75.54.45', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 16:01:33', '2022-12-24 16:01:33'),
(16, 1, 'admin/daily-fare-managements', 'GET', '109.75.54.45', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 16:02:51', '2022-12-24 16:02:51'),
(17, 1, 'admin/shared-fare-managements', 'GET', '109.75.54.45', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 16:03:21', '2022-12-24 16:03:21'),
(18, 1, 'admin/countries', 'GET', '109.75.54.45', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 16:03:38', '2022-12-24 16:03:38'),
(19, 1, 'admin/vehicle-categories', 'GET', '109.75.54.45', '{\"_pjax\":\"#pjax-container\"}', '2022-12-24 16:04:16', '2022-12-24 16:04:16'),
(20, 1, 'admin', 'GET', '137.97.68.13', '[]', '2022-12-25 02:59:36', '2022-12-25 02:59:36'),
(21, 1, 'admin', 'GET', '111.92.44.61', '[]', '2022-12-25 05:27:20', '2022-12-25 05:27:20'),
(22, 1, 'admin', 'GET', '116.72.31.182', '[]', '2022-12-25 07:27:50', '2022-12-25 07:27:50'),
(23, 1, 'admin/trip-settings', 'GET', '116.72.31.182', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 07:28:09', '2022-12-25 07:28:09'),
(24, 1, 'admin/surge-fare-settings', 'GET', '116.72.31.182', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 07:28:26', '2022-12-25 07:28:26'),
(25, 1, 'admin/dispatch_panel', 'GET', '116.72.31.182', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 07:28:34', '2022-12-25 07:28:34'),
(26, 1, 'admin/driver-hiring-requests', 'GET', '116.72.31.182', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 07:29:06', '2022-12-25 07:29:06'),
(27, 1, 'admin/packages', 'GET', '116.72.31.182', '[]', '2022-12-25 07:29:15', '2022-12-25 07:29:15'),
(28, 1, 'admin/driver-hiring-fare-managements', 'GET', '116.72.31.182', '[]', '2022-12-25 07:29:23', '2022-12-25 07:29:23'),
(29, 1, 'admin/daily-fare-managements', 'GET', '116.72.31.182', '[]', '2022-12-25 07:29:24', '2022-12-25 07:29:24'),
(30, 1, 'admin/outstation-fare-managements', 'GET', '116.72.31.182', '[]', '2022-12-25 07:29:26', '2022-12-25 07:29:26'),
(31, 1, 'admin', 'GET', '111.92.44.61', '[]', '2022-12-25 07:31:53', '2022-12-25 07:31:53'),
(32, 1, 'admin/vehicle-categories', 'GET', '111.92.44.61', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 07:31:58', '2022-12-25 07:31:58'),
(33, 1, 'admin/rental-fare-managements', 'GET', '111.92.44.61', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 07:32:21', '2022-12-25 07:32:21'),
(34, 1, 'admin', 'GET', '49.43.96.34', '[]', '2022-12-25 12:18:46', '2022-12-25 12:18:46'),
(35, 1, 'admin', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:18:56', '2022-12-25 12:18:56'),
(36, 1, 'admin/app-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:19:02', '2022-12-25 12:19:02'),
(37, 1, 'admin/trip-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:19:12', '2022-12-25 12:19:12'),
(38, 1, 'admin/contact-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:19:14', '2022-12-25 12:19:14'),
(39, 1, 'admin/referral-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:19:16', '2022-12-25 12:19:16'),
(40, 1, 'admin/scratch-card-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:19:18', '2022-12-25 12:19:18'),
(41, 1, 'admin/surge-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:19:20', '2022-12-25 12:19:20'),
(42, 1, 'admin/surge-fare-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:19:21', '2022-12-25 12:19:21'),
(43, 1, 'admin/dispatch_panel', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:19:26', '2022-12-25 12:19:26'),
(44, 1, 'admin/create-trips/create', 'GET', '49.43.96.34', '[]', '2022-12-25 12:19:39', '2022-12-25 12:19:39'),
(45, 1, 'admin/countries', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:19:58', '2022-12-25 12:19:58'),
(46, 1, 'admin/currencies', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:20:03', '2022-12-25 12:20:03'),
(47, 1, 'admin/currencies', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:20:06', '2022-12-25 12:20:06'),
(48, 1, 'admin/statuses', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:20:21', '2022-12-25 12:20:21'),
(49, 1, 'admin/payment-methods', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:20:34', '2022-12-25 12:20:34'),
(50, 1, 'admin/user-types', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:20:51', '2022-12-25 12:20:51'),
(51, 1, 'admin/driver-hiring-statuses', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:20:59', '2022-12-25 12:20:59'),
(52, 1, 'admin/currencies', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:21:05', '2022-12-25 12:21:05'),
(53, 1, 'admin/zones', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:21:16', '2022-12-25 12:21:16'),
(54, 1, 'admin/zones', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:21:18', '2022-12-25 12:21:18'),
(55, 1, 'admin/customers', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:21:21', '2022-12-25 12:21:21'),
(56, 1, 'admin/customer-subscription-histories', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:21:23', '2022-12-25 12:21:23'),
(57, 1, 'admin/customer-sos-contacts', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:21:25', '2022-12-25 12:21:25'),
(58, 1, 'admin/surge-fare-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:28:51', '2022-12-25 12:28:51'),
(59, 1, 'admin/surge-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:28:52', '2022-12-25 12:28:52'),
(60, 1, 'admin/scratch-card-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:28:53', '2022-12-25 12:28:53'),
(61, 1, 'admin/referral-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:28:54', '2022-12-25 12:28:54'),
(62, 1, 'admin/contact-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:28:54', '2022-12-25 12:28:54'),
(63, 1, 'admin/trip-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:28:55', '2022-12-25 12:28:55'),
(64, 1, 'admin/app-settings', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:28:56', '2022-12-25 12:28:56'),
(65, 1, 'admin', 'GET', '49.43.96.34', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:28:57', '2022-12-25 12:28:57'),
(66, 1, 'admin', 'GET', '223.224.5.65', '[]', '2022-12-25 12:30:31', '2022-12-25 12:30:31'),
(67, 1, 'admin/app-settings', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:30:46', '2022-12-25 12:30:46'),
(68, 1, 'admin/app-settings', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:30:49', '2022-12-25 12:30:49'),
(69, 1, 'admin/trip-settings', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:31:03', '2022-12-25 12:31:03'),
(70, 1, 'admin/dispatch_panel', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:31:09', '2022-12-25 12:31:09'),
(71, 1, 'admin/trips', 'GET', '223.224.5.65', '{\"status\":\"5\"}', '2022-12-25 12:31:18', '2022-12-25 12:31:18'),
(72, 1, 'admin/currencies', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:31:31', '2022-12-25 12:31:31'),
(73, 1, 'admin/currencies', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:32:23', '2022-12-25 12:32:23'),
(74, 1, 'admin/payment-methods', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:33:09', '2022-12-25 12:33:09'),
(75, 1, 'admin/payment-types', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:34:01', '2022-12-25 12:34:01'),
(76, 1, 'admin/surge-fare-settings', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:34:39', '2022-12-25 12:34:39'),
(77, 1, 'admin/payment-types', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:34:46', '2022-12-25 12:34:46'),
(78, 1, 'admin/payment-methods', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:34:47', '2022-12-25 12:34:47'),
(79, 1, 'admin/currencies', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:34:47', '2022-12-25 12:34:47'),
(80, 1, 'admin/trip-settings', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:34:51', '2022-12-25 12:34:51'),
(81, 1, 'admin/app-settings', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:34:52', '2022-12-25 12:34:52'),
(82, 1, 'admin/app-settings', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:34:54', '2022-12-25 12:34:54'),
(83, 1, 'admin', 'GET', '223.224.5.65', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 12:34:55', '2022-12-25 12:34:55'),
(84, 1, 'admin/auth/login', 'GET', '223.224.5.65', '[]', '2022-12-25 12:34:56', '2022-12-25 12:34:56'),
(85, 1, 'admin', 'GET', '49.205.81.8', '[]', '2022-12-25 19:19:55', '2022-12-25 19:19:55'),
(86, 1, 'admin/drivers', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 19:21:33', '2022-12-25 19:21:33'),
(87, 1, 'admin/customers', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 19:21:36', '2022-12-25 19:21:36'),
(88, 1, 'admin/currencies', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 19:23:20', '2022-12-25 19:23:20'),
(89, 1, 'admin/countries', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 19:23:21', '2022-12-25 19:23:21'),
(90, 1, 'admin', 'GET', '105.112.115.235', '[]', '2022-12-25 21:52:50', '2022-12-25 21:52:50'),
(91, 1, 'admin/dispatch_panel', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 21:53:13', '2022-12-25 21:53:13'),
(92, 1, 'admin/create-trips/create', 'GET', '105.112.115.235', '[]', '2022-12-25 21:53:21', '2022-12-25 21:53:21'),
(93, 1, 'admin', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 21:53:45', '2022-12-25 21:53:45'),
(94, 1, 'admin/driver-earnings', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 22:01:04', '2022-12-25 22:01:04'),
(95, 1, 'admin/driver_tips', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 22:01:10', '2022-12-25 22:01:10'),
(96, 1, 'admin/driver-tutorials', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 22:01:15', '2022-12-25 22:01:15'),
(97, 1, 'admin/statuses', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 22:01:25', '2022-12-25 22:01:25'),
(98, 1, 'admin/subscriptions', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 22:04:10', '2022-12-25 22:04:10'),
(99, 1, 'admin/trips', 'GET', '105.112.115.235', '{\"booking_type\":\"1\"}', '2022-12-25 22:04:33', '2022-12-25 22:04:33'),
(100, 1, 'admin/auth/setting', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 22:07:43', '2022-12-25 22:07:43'),
(101, 1, 'admin', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 22:23:47', '2022-12-25 22:23:47'),
(102, 1, 'admin', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 22:23:57', '2022-12-25 22:23:57'),
(103, 1, 'admin/app-settings', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 22:24:01', '2022-12-25 22:24:01'),
(104, 1, 'admin/scratch-card-settings', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 22:24:18', '2022-12-25 22:24:18'),
(105, 1, 'admin/scratch-card-settings', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 22:24:23', '2022-12-25 22:24:23'),
(106, 1, 'admin/scratch-card-settings', 'GET', '105.112.115.235', '[]', '2022-12-25 23:11:32', '2022-12-25 23:11:32'),
(107, 1, 'admin/scratch-card-settings', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 23:11:44', '2022-12-25 23:11:44'),
(108, 1, 'admin', 'GET', '105.112.115.235', '{\"_pjax\":\"#pjax-container\"}', '2022-12-25 23:11:47', '2022-12-25 23:11:47'),
(109, 1, 'admin/vehicle-categories', 'GET', '109.75.54.70', '[]', '2022-12-26 01:34:25', '2022-12-26 01:34:25'),
(110, 1, 'admin', 'GET', '113.11.48.217', '[]', '2022-12-26 03:23:24', '2022-12-26 03:23:24'),
(111, 1, 'admin/faqs', 'GET', '113.11.48.217', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 05:56:05', '2022-12-26 05:56:05'),
(112, 1, 'admin', 'GET', '202.53.6.54', '[]', '2022-12-26 07:14:19', '2022-12-26 07:14:19'),
(113, 1, 'admin/countries', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:14:57', '2022-12-26 07:14:57'),
(114, 1, 'admin/countries/create', 'GET', '202.53.6.54', '[]', '2022-12-26 07:15:06', '2022-12-26 07:15:06'),
(115, 1, 'admin', 'GET', '103.79.164.61', '[]', '2022-12-26 07:22:40', '2022-12-26 07:22:40'),
(116, 1, 'admin/countries', 'POST', '202.53.6.54', '{\"phone_code\":\"+41\",\"country_name\":\"switzerland\",\"short_name\":\"CH\",\"country_name_ar\":\"\\u0633\\u0648\\u064a\\u0633\\u0631\\u0627\",\"short_name_ar\":\"CH\",\"timezone\":\"Bern\\/Swiss Confederation\",\"capital_lat\":\"46.204391\",\"capital_lng\":\"6.143158\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 07:22:50', '2022-12-26 07:22:50'),
(117, 1, 'admin/countries', 'GET', '202.53.6.54', '[]', '2022-12-26 07:22:50', '2022-12-26 07:22:50'),
(118, 1, 'admin/currencies', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:22:56', '2022-12-26 07:22:56'),
(119, 1, 'admin/currencies/create', 'GET', '202.53.6.54', '[]', '2022-12-26 07:23:05', '2022-12-26 07:23:05'),
(120, 1, 'admin/customers', 'GET', '103.79.164.61', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:23:15', '2022-12-26 07:23:15'),
(121, 1, 'admin/currencies', 'POST', '202.53.6.54', '{\"country_id\":\"1\",\"currency\":\"CHF\",\"currency_short_code\":\"CHF\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 07:26:34', '2022-12-26 07:26:34'),
(122, 1, 'admin/currencies', 'GET', '202.53.6.54', '[]', '2022-12-26 07:26:34', '2022-12-26 07:26:34'),
(123, 1, 'admin/vehicle-categories', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:26:42', '2022-12-26 07:26:42'),
(124, 1, 'admin/vehicle-categories/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:27:20', '2022-12-26 07:27:20'),
(125, 1, 'admin/vehicle-categories/5', 'PUT', '202.53.6.54', '{\"country_id\":\"1\",\"vehicle_type\":\"HatchBack\",\"vehicle_mode\":\"18\",\"description\":\"A hatchback is a car body configuration with a rear door that swings upward to provide access to a cargo area.\",\"vehicle_type_ar\":\"Hatchback\",\"description_ar\":\"A hatchback is a car body configuration with a rear door that swings upward to provide access to a cargo area.\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\"}', '2022-12-26 07:27:25', '2022-12-26 07:27:25'),
(126, 1, 'admin/vehicle-categories', 'GET', '202.53.6.54', '[]', '2022-12-26 07:27:25', '2022-12-26 07:27:25'),
(127, 1, 'admin/vehicle-categories/6/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:27:43', '2022-12-26 07:27:43'),
(128, 1, 'admin/vehicle-categories/6', 'PUT', '202.53.6.54', '{\"country_id\":\"1\",\"vehicle_type\":\"Sedan\",\"vehicle_mode\":\"18\",\"description\":\"A sedan is defined as a 4-door passenger car with a trunk that is separate from the passengers with a three-box body: the engine, the area for passengers, and the trunk.\",\"vehicle_type_ar\":\"Sedan\",\"description_ar\":\"A sedan is defined as a 4-door passenger car with a trunk that is separate from the passengers with a three-box body: the engine, the area for passengers, and the trunk.\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/vehicle-categories\\/5\\/edit\"}', '2022-12-26 07:27:49', '2022-12-26 07:27:49'),
(129, 1, 'admin/vehicle-categories/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:27:49', '2022-12-26 07:27:49'),
(130, 1, 'admin/vehicle-categories/5', 'PUT', '202.53.6.54', '{\"country_id\":\"1\",\"vehicle_type\":\"HatchBack\",\"vehicle_mode\":\"18\",\"description\":\"A hatchback is a car body configuration with a rear door that swings upward to provide access to a cargo area.\",\"vehicle_type_ar\":\"Hatchback\",\"description_ar\":\"A hatchback is a car body configuration with a rear door that swings upward to provide access to a cargo area.\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/vehicle-categories\\/6\\/edit\"}', '2022-12-26 07:27:54', '2022-12-26 07:27:54'),
(131, 1, 'admin/vehicle-categories/6/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:27:54', '2022-12-26 07:27:54'),
(132, 1, 'admin/vehicle-categories/5/edit', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:27:57', '2022-12-26 07:27:57'),
(133, 1, 'admin/daily-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:28:03', '2022-12-26 07:28:03'),
(134, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:28:10', '2022-12-26 07:28:10'),
(135, 1, 'admin/rental-fare-managements/14/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:28:20', '2022-12-26 07:28:20'),
(136, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"1\"}', '2022-12-26 07:28:22', '2022-12-26 07:28:22'),
(137, 1, 'admin/rental-fare-managements/14', 'PUT', '202.53.6.54', '{\"country_id\":\"1\",\"vehicle_type\":\"6\",\"package_id\":\"2\",\"price_per_km\":\"3\",\"price_per_hour\":\"4\",\"package_price\":\"5\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\"}', '2022-12-26 07:28:24', '2022-12-26 07:28:24'),
(138, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 07:28:24', '2022-12-26 07:28:24'),
(139, 1, 'admin/rental-fare-managements/13/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:28:39', '2022-12-26 07:28:39'),
(140, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"1\"}', '2022-12-26 07:28:42', '2022-12-26 07:28:42'),
(141, 1, 'admin/rental-fare-managements/13', 'PUT', '202.53.6.54', '{\"country_id\":\"1\",\"vehicle_type\":\"5\",\"package_id\":\"1\",\"price_per_km\":\"2\",\"price_per_hour\":\"2\",\"package_price\":\"5\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/rental-fare-managements\\/14\\/edit\"}', '2022-12-26 07:28:43', '2022-12-26 07:28:43'),
(142, 1, 'admin/rental-fare-managements/14/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:28:43', '2022-12-26 07:28:43'),
(143, 1, 'admin/rental-fare-managements/16/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:28:53', '2022-12-26 07:28:53'),
(144, 1, 'admin/rental-fare-managements/15/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:28:58', '2022-12-26 07:28:58'),
(145, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"1\"}', '2022-12-26 07:29:01', '2022-12-26 07:29:01'),
(146, 1, 'admin/rental-fare-managements/15', 'PUT', '202.53.6.54', '{\"country_id\":\"1\",\"vehicle_type\":\"5\",\"package_id\":\"2\",\"price_per_km\":\"3\",\"price_per_hour\":\"3\",\"package_price\":\"5\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/rental-fare-managements\\/16\\/edit\"}', '2022-12-26 07:29:02', '2022-12-26 07:29:02'),
(147, 1, 'admin/rental-fare-managements/16/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:29:02', '2022-12-26 07:29:02'),
(148, 1, 'admin/rental-fare-managements/15/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:29:02', '2022-12-26 07:29:02'),
(149, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:29:13', '2022-12-26 07:29:13'),
(150, 1, 'admin/shared-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:29:22', '2022-12-26 07:29:22'),
(151, 1, 'admin/shared-fare-managements/4/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:29:29', '2022-12-26 07:29:29'),
(152, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"1\"}', '2022-12-26 07:29:32', '2022-12-26 07:29:32'),
(153, 1, 'admin/shared-fare-managements/4', 'PUT', '202.53.6.54', '{\"country_id\":\"1\",\"vehicle_type\":\"5\",\"base_fare\":\"5\",\"price_per_km\":\"2\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\"}', '2022-12-26 07:29:33', '2022-12-26 07:29:33'),
(154, 1, 'admin/shared-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 07:29:33', '2022-12-26 07:29:33'),
(155, 1, 'admin/shared-fare-managements/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:29:39', '2022-12-26 07:29:39'),
(156, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"1\"}', '2022-12-26 07:29:41', '2022-12-26 07:29:41'),
(157, 1, 'admin/shared-fare-managements/5', 'PUT', '202.53.6.54', '{\"country_id\":\"1\",\"vehicle_type\":\"6\",\"base_fare\":\"10\",\"price_per_km\":\"3\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/shared-fare-managements\\/4\\/edit\"}', '2022-12-26 07:29:42', '2022-12-26 07:29:42'),
(158, 1, 'admin/shared-fare-managements/4/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:29:43', '2022-12-26 07:29:43'),
(159, 1, 'admin/shared-fare-managements/4', 'PUT', '202.53.6.54', '{\"country_id\":\"1\",\"vehicle_type\":\"5\",\"base_fare\":\"5\",\"price_per_km\":\"2\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/shared-fare-managements\\/5\\/edit\"}', '2022-12-26 07:29:57', '2022-12-26 07:29:57'),
(160, 1, 'admin/shared-fare-managements/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:29:57', '2022-12-26 07:29:57'),
(161, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:30:08', '2022-12-26 07:30:08'),
(162, 1, 'admin/currencies', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:30:17', '2022-12-26 07:30:17'),
(163, 1, 'admin/countries', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:30:21', '2022-12-26 07:30:21'),
(164, 1, 'admin/countries', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:30:28', '2022-12-26 07:30:28'),
(165, 1, 'admin/countries', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:30:37', '2022-12-26 07:30:37'),
(166, 1, 'admin/currencies', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:30:44', '2022-12-26 07:30:44'),
(167, 1, 'admin/countries', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:30:46', '2022-12-26 07:30:46'),
(168, 1, 'admin/countries/1/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 07:30:51', '2022-12-26 07:30:51'),
(169, 1, 'admin', 'GET', '49.205.81.8', '[]', '2022-12-26 07:56:57', '2022-12-26 07:56:57'),
(170, 1, 'admin/daily-fare-managements', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:57:25', '2022-12-26 07:57:25'),
(171, 1, 'admin/drivers', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:57:45', '2022-12-26 07:57:45'),
(172, 1, 'admin/vehicle-categories', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:58:00', '2022-12-26 07:58:00'),
(173, 1, 'admin/currencies', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:59:11', '2022-12-26 07:59:11'),
(174, 1, 'admin/countries', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:59:14', '2022-12-26 07:59:14'),
(175, 1, 'admin/zones', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 07:59:31', '2022-12-26 07:59:31'),
(176, 1, 'admin/zones/create', 'GET', '49.205.81.8', '[]', '2022-12-26 07:59:51', '2022-12-26 07:59:51'),
(177, 1, 'admin/vehicle-categories', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:00:23', '2022-12-26 08:00:23'),
(178, 1, 'admin/vehicle-categories/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:00:34', '2022-12-26 08:00:34'),
(179, 1, 'admin/countries', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:00:40', '2022-12-26 08:00:40'),
(180, 1, 'admin/countries/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:00:48', '2022-12-26 08:00:48'),
(181, 1, 'admin/zones', 'POST', '49.205.81.8', '{\"country_id\":\"1\",\"name\":\"Zurich\",\"name_ar\":\"\\u0632\\u064a\\u0648\\u0631\\u062e\",\"polygon\":null,\"_token\":\"CHpsNPInpTpTZCEuPS6WG7kfxqw9QOo8KIBziYTo\"}', '2022-12-26 08:01:57', '2022-12-26 08:01:57'),
(182, 1, 'admin/zones', 'GET', '49.205.81.8', '[]', '2022-12-26 08:01:57', '2022-12-26 08:01:57'),
(183, 1, 'admin/create_zones/1', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:02:07', '2022-12-26 08:02:07'),
(184, 1, 'admin/zones', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:02:37', '2022-12-26 08:02:37'),
(185, 1, 'admin/create_zones/1', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:03:14', '2022-12-26 08:03:14'),
(186, 1, 'admin/zones', 'GET', '49.205.81.8', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:03:15', '2022-12-26 08:03:15'),
(187, 1, 'admin', 'GET', '49.205.81.8', '[]', '2022-12-26 08:03:20', '2022-12-26 08:03:20'),
(188, 1, 'admin/countries', 'POST', '202.53.6.54', '{\"phone_code\":\"+91\",\"country_name\":\"India\",\"short_name\":\"IN\",\"country_name_ar\":\"\\u0627\\u0644\\u0647\\u0646\\u062f\",\"short_name_ar\":\"\\u0641\\u064a\",\"timezone\":\"India\\/New Delhi\",\"capital_lat\":\"21.7679\",\"capital_lng\":\"78.8718\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 08:07:18', '2022-12-26 08:07:18'),
(189, 1, 'admin/countries', 'GET', '202.53.6.54', '[]', '2022-12-26 08:07:18', '2022-12-26 08:07:18'),
(190, 1, 'admin/vehicle-categories', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:07:23', '2022-12-26 08:07:23'),
(191, 1, 'admin/vehicle-categories/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:07:32', '2022-12-26 08:07:32'),
(192, 1, 'admin/vehicle-categories/5', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"HatchBack\",\"vehicle_mode\":\"18\",\"description\":\"A hatchback is a car body configuration with a rear door that swings upward to provide access to a cargo area.\",\"vehicle_type_ar\":\"Hatchback\",\"description_ar\":\"A hatchback is a car body configuration with a rear door that swings upward to provide access to a cargo area.\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\"}', '2022-12-26 08:07:37', '2022-12-26 08:07:37'),
(193, 1, 'admin/vehicle-categories', 'GET', '202.53.6.54', '[]', '2022-12-26 08:07:38', '2022-12-26 08:07:38'),
(194, 1, 'admin/vehicle-categories/6/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:07:54', '2022-12-26 08:07:54'),
(195, 1, 'admin/vehicle-categories/6', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"Sedan\",\"vehicle_mode\":\"18\",\"description\":\"A sedan is defined as a 4-door passenger car with a trunk that is separate from the passengers with a three-box body: the engine, the area for passengers, and the trunk.\",\"vehicle_type_ar\":\"Sedan\",\"description_ar\":\"A sedan is defined as a 4-door passenger car with a trunk that is separate from the passengers with a three-box body: the engine, the area for passengers, and the trunk.\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/vehicle-categories\\/5\\/edit\"}', '2022-12-26 08:08:00', '2022-12-26 08:08:00'),
(196, 1, 'admin/vehicle-categories/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:08:00', '2022-12-26 08:08:00'),
(197, 1, 'admin/vehicle-categories', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:08:09', '2022-12-26 08:08:09'),
(198, 1, 'admin/vehicle-categories/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:10:49', '2022-12-26 08:10:49'),
(199, 1, 'admin/vehicle-categories/3/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:11:18', '2022-12-26 08:11:18'),
(200, 1, 'admin/vehicle-categories/3/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:11:30', '2022-12-26 08:11:30'),
(201, 1, 'admin/vehicle-categories/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:11:46', '2022-12-26 08:11:46'),
(202, 1, 'admin/vehicle-categories', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"SUV\",\"vehicle_mode\":\"18\",\"description\":\"The term \'SUV\' is car industry jargon that\'s an acronym for Sports Utility Vehicle. It refers to a type of car that sits high off the ground and which often has four-wheel drive and rugged styling.\",\"vehicle_type_ar\":\"SUV\",\"description_ar\":\"The term \'SUV\' is car industry jargon that\'s an acronym for Sports Utility Vehicle. It refers to a type of car that sits high off the ground and which often has four-wheel drive and rugged styling.\",\"status\":null,\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/vehicle-categories\\/3\\/edit\"}', '2022-12-26 08:12:41', '2022-12-26 08:12:41'),
(203, 1, 'admin/vehicle-categories/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:12:41', '2022-12-26 08:12:41'),
(204, 1, 'admin/vehicle-categories/4/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:12:52', '2022-12-26 08:12:52'),
(205, 1, 'admin/vehicle-categories/create', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:12:57', '2022-12-26 08:12:57'),
(206, 1, 'admin/vehicle-categories/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:13:00', '2022-12-26 08:13:00'),
(207, 1, 'admin/vehicle-categories', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:13:05', '2022-12-26 08:13:05'),
(208, 1, 'admin/vehicle-categories/3/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:13:16', '2022-12-26 08:13:16'),
(209, 1, 'admin/vehicle-categories/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:13:24', '2022-12-26 08:13:24'),
(210, 1, 'admin/vehicle-categories', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"SUV\",\"vehicle_mode\":\"18\",\"description\":\"The term \'SUV\' is car industry jargon that\'s an acronym for Sports Utility Vehicle. It refers to a type of car that sits high off the ground and which often has four-wheel drive and rugged styling.\",\"vehicle_type_ar\":\"SUV\",\"description_ar\":\"The term \'SUV\' is car industry jargon that\'s an acronym for Sports Utility Vehicle. It refers to a type of car that sits high off the ground and which often has four-wheel drive and rugged styling.\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/vehicle-categories\\/3\\/edit\"}', '2022-12-26 08:14:06', '2022-12-26 08:14:06'),
(211, 1, 'admin/vehicle-categories/3/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:14:06', '2022-12-26 08:14:06'),
(212, 1, 'admin/vehicle-categories/4/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:14:15', '2022-12-26 08:14:15'),
(213, 1, 'admin/vehicle-categories', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:14:23', '2022-12-26 08:14:23'),
(214, 1, 'admin/vehicle-categories/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:14:29', '2022-12-26 08:14:29'),
(215, 1, 'admin/vehicle-categories', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"SCV & LCV Goods Carrier\",\"vehicle_mode\":\"19\",\"description\":\"SCV & LCV Goods Carrier\",\"vehicle_type_ar\":\"SCV & LCV Goods Carrier\",\"description_ar\":\"SCV & LCV Goods Carrier\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/vehicle-categories\\/4\\/edit\"}', '2022-12-26 08:16:46', '2022-12-26 08:16:46'),
(216, 1, 'admin/vehicle-categories/4/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:16:46', '2022-12-26 08:16:46'),
(217, 1, 'admin/vehicle-categories', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:16:56', '2022-12-26 08:16:56'),
(218, 1, 'admin/currencies', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:17:04', '2022-12-26 08:17:04'),
(219, 1, 'admin/currencies/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:17:10', '2022-12-26 08:17:10'),
(220, 1, 'admin/currencies', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"currency\":\"Rs\",\"currency_short_code\":\"INR\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 08:17:24', '2022-12-26 08:17:24'),
(221, 1, 'admin/currencies', 'GET', '202.53.6.54', '[]', '2022-12-26 08:17:24', '2022-12-26 08:17:24'),
(222, 1, 'admin/daily-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:17:34', '2022-12-26 08:17:34'),
(223, 1, 'admin/daily-fare-managements/1/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:17:50', '2022-12-26 08:17:50'),
(224, 1, 'admin/daily-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:18:00', '2022-12-26 08:18:00'),
(225, 1, 'admin/daily-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:18:06', '2022-12-26 08:18:06'),
(226, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:18:09', '2022-12-26 08:18:09'),
(227, 1, 'admin/daily-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"5\",\"base_fare\":\"5\",\"price_per_km\":\"10\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/daily-fare-managements\\/1\\/edit\"}', '2022-12-26 08:18:22', '2022-12-26 08:18:22'),
(228, 1, 'admin/daily-fare-managements/1/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:18:22', '2022-12-26 08:18:22'),
(229, 1, 'admin/daily-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:18:34', '2022-12-26 08:18:34'),
(230, 1, 'admin/daily-fare-managements/2/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:18:50', '2022-12-26 08:18:50'),
(231, 1, 'admin/daily-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:19:40', '2022-12-26 08:19:40'),
(232, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:19:43', '2022-12-26 08:19:43'),
(233, 1, 'admin/daily-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"6\",\"base_fare\":\"10\",\"price_per_km\":\"4\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/daily-fare-managements\\/2\\/edit\"}', '2022-12-26 08:20:03', '2022-12-26 08:20:03'),
(234, 1, 'admin/daily-fare-managements/2/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:20:03', '2022-12-26 08:20:03'),
(235, 1, 'admin/daily-fare-managements/3/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:20:10', '2022-12-26 08:20:10'),
(236, 1, 'admin/daily-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:20:17', '2022-12-26 08:20:17'),
(237, 1, 'admin/daily-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:20:26', '2022-12-26 08:20:26'),
(238, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:20:28', '2022-12-26 08:20:28'),
(239, 1, 'admin/daily-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"7\",\"base_fare\":\"15\",\"price_per_km\":\"6\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/daily-fare-managements\\/3\\/edit\"}', '2022-12-26 08:20:43', '2022-12-26 08:20:43'),
(240, 1, 'admin/daily-fare-managements/3/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:20:43', '2022-12-26 08:20:43'),
(241, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:21:01', '2022-12-26 08:21:01'),
(242, 1, 'admin/rental-fare-managements/13/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:22:00', '2022-12-26 08:22:00'),
(243, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:22:03', '2022-12-26 08:22:03'),
(244, 1, 'admin/rental-fare-managements/13', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"5\",\"package_id\":\"1\",\"price_per_km\":\"2\",\"price_per_hour\":\"2\",\"package_price\":\"5\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\"}', '2022-12-26 08:22:05', '2022-12-26 08:22:05'),
(245, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 08:22:05', '2022-12-26 08:22:05'),
(246, 1, 'admin/rental-fare-managements/14/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:22:10', '2022-12-26 08:22:10'),
(247, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:22:13', '2022-12-26 08:22:13'),
(248, 1, 'admin/rental-fare-managements/14', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"6\",\"package_id\":\"2\",\"price_per_km\":\"3\",\"price_per_hour\":\"4\",\"package_price\":\"5\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/rental-fare-managements\\/13\\/edit\"}', '2022-12-26 08:22:14', '2022-12-26 08:22:14'),
(249, 1, 'admin/rental-fare-managements/13/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:22:15', '2022-12-26 08:22:15'),
(250, 1, 'admin/rental-fare-managements/15/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:22:20', '2022-12-26 08:22:20'),
(251, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:22:22', '2022-12-26 08:22:22'),
(252, 1, 'admin/rental-fare-managements/15', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"5\",\"package_id\":\"2\",\"price_per_km\":\"3\",\"price_per_hour\":\"3\",\"package_price\":\"5\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/rental-fare-managements\\/14\\/edit\"}', '2022-12-26 08:22:23', '2022-12-26 08:22:23'),
(253, 1, 'admin/rental-fare-managements/14/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:22:24', '2022-12-26 08:22:24'),
(254, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:22:30', '2022-12-26 08:22:30'),
(255, 1, 'admin/rental-fare-managements/12/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:22:45', '2022-12-26 08:22:45'),
(256, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:22:50', '2022-12-26 08:22:50'),
(257, 1, 'admin/rental-fare-managements/12', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":null,\"package_id\":\"4\",\"price_per_km\":\"4\",\"price_per_hour\":\"4\",\"package_price\":\"4\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/rental-fare-managements\\/15\\/edit\"}', '2022-12-26 08:22:52', '2022-12-26 08:22:52'),
(258, 1, 'admin/rental-fare-managements/12/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:22:53', '2022-12-26 08:22:53'),
(259, 1, 'admin/rental-fare-managements/12', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"3\",\"package_id\":\"4\",\"price_per_km\":\"4\",\"price_per_hour\":\"4\",\"package_price\":\"4\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\"}', '2022-12-26 08:22:57', '2022-12-26 08:22:57'),
(260, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 08:22:58', '2022-12-26 08:22:58'),
(261, 1, 'admin/rental-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:25:30', '2022-12-26 08:25:30'),
(262, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"1\"}', '2022-12-26 08:25:33', '2022-12-26 08:25:33'),
(263, 1, 'admin/rental-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"1\",\"vehicle_type\":\"1\",\"package_id\":\"4\",\"price_per_km\":\"10\",\"price_per_hour\":\"2\",\"package_price\":\"6\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/rental-fare-managements\\/12\\/edit\"}', '2022-12-26 08:26:05', '2022-12-26 08:26:05'),
(264, 1, 'admin/rental-fare-managements/12/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:26:06', '2022-12-26 08:26:06'),
(265, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:26:54', '2022-12-26 08:26:54'),
(266, 1, 'admin/rental-fare-managements/12/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:27:56', '2022-12-26 08:27:56'),
(267, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"1\"}', '2022-12-26 08:27:59', '2022-12-26 08:27:59'),
(268, 1, 'admin/rental-fare-managements/12', 'PUT', '202.53.6.54', '{\"country_id\":\"1\",\"vehicle_type\":\"3\",\"package_id\":\"4\",\"price_per_km\":\"4\",\"price_per_hour\":\"4\",\"package_price\":\"4\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/rental-fare-managements\\/create\"}', '2022-12-26 08:28:00', '2022-12-26 08:28:00'),
(269, 1, 'admin/rental-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:28:00', '2022-12-26 08:28:00'),
(270, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:28:06', '2022-12-26 08:28:06'),
(271, 1, 'admin/rental-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:28:39', '2022-12-26 08:28:39'),
(272, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:28:42', '2022-12-26 08:28:42'),
(273, 1, 'admin/rental-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"5\",\"package_id\":\"3\",\"price_per_km\":\"10\",\"price_per_hour\":\"2\",\"package_price\":\"6\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/rental-fare-managements\\/12\\/edit\"}', '2022-12-26 08:28:51', '2022-12-26 08:28:51'),
(274, 1, 'admin/rental-fare-managements/12/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:28:51', '2022-12-26 08:28:51'),
(275, 1, 'admin/rental-fare-managements/12/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:28:55', '2022-12-26 08:28:55'),
(276, 1, 'admin/daily-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:29:01', '2022-12-26 08:29:01'),
(277, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:29:08', '2022-12-26 08:29:08'),
(278, 1, 'admin/rental-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:29:33', '2022-12-26 08:29:33'),
(279, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:29:36', '2022-12-26 08:29:36'),
(280, 1, 'admin/rental-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"6\",\"package_id\":\"1\",\"price_per_km\":\"15\",\"price_per_hour\":\"2\",\"package_price\":\"7\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/rental-fare-managements\\/12\\/edit\"}', '2022-12-26 08:29:50', '2022-12-26 08:29:50'),
(281, 1, 'admin/rental-fare-managements/12/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 08:29:50', '2022-12-26 08:29:50'),
(282, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:29:56', '2022-12-26 08:29:56'),
(283, 1, 'admin/rental-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:30:03', '2022-12-26 08:30:03'),
(284, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:30:09', '2022-12-26 08:30:09'),
(285, 1, 'admin/rental-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"6\",\"package_id\":\"4\",\"price_per_km\":\"12\",\"price_per_hour\":\"2\",\"package_price\":\"5\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 08:30:24', '2022-12-26 08:30:24'),
(286, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 08:30:25', '2022-12-26 08:30:25'),
(287, 1, 'admin/rental-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:30:34', '2022-12-26 08:30:34'),
(288, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:30:37', '2022-12-26 08:30:37'),
(289, 1, 'admin/rental-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"6\",\"package_id\":\"3\",\"price_per_km\":\"12\",\"price_per_hour\":\"6\",\"package_price\":\"4\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 08:30:48', '2022-12-26 08:30:48'),
(290, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 08:30:48', '2022-12-26 08:30:48'),
(291, 1, 'admin/rental-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:31:19', '2022-12-26 08:31:19'),
(292, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:31:22', '2022-12-26 08:31:22'),
(293, 1, 'admin/rental-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"7\",\"package_id\":\"1\",\"price_per_km\":\"10\",\"price_per_hour\":\"2\",\"package_price\":\"7\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 08:31:34', '2022-12-26 08:31:34'),
(294, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 08:31:35', '2022-12-26 08:31:35'),
(295, 1, 'admin/rental-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 08:31:39', '2022-12-26 08:31:39'),
(296, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 08:31:42', '2022-12-26 08:31:42'),
(297, 1, 'admin/rental-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"7\",\"package_id\":\"2\",\"price_per_km\":\"10\",\"price_per_hour\":\"5\",\"package_price\":\"3\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 08:31:54', '2022-12-26 08:31:54'),
(298, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 08:31:54', '2022-12-26 08:31:54'),
(299, 1, 'admin', 'GET', '122.50.203.127', '[]', '2022-12-26 08:49:26', '2022-12-26 08:49:26'),
(300, 1, 'admin/zones', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:50:45', '2022-12-26 08:50:45'),
(301, 1, 'admin/zones/create', 'GET', '122.50.203.127', '[]', '2022-12-26 08:50:56', '2022-12-26 08:50:56'),
(302, 1, 'admin/zones', 'POST', '122.50.203.127', '{\"country_id\":\"2\",\"name\":\"west bengol\",\"name_ar\":\"kolkata\",\"polygon\":null,\"_token\":\"6IseHhbKxJ2AEsZrgCWEMWOveIZqNAqY3Cixh4OX\"}', '2022-12-26 08:52:42', '2022-12-26 08:52:42'),
(303, 1, 'admin/zones', 'GET', '122.50.203.127', '[]', '2022-12-26 08:52:42', '2022-12-26 08:52:42'),
(304, 1, 'admin/zones/create', 'GET', '122.50.203.127', '[]', '2022-12-26 08:52:48', '2022-12-26 08:52:48'),
(305, 1, 'admin/zones', 'POST', '122.50.203.127', '{\"country_id\":\"2\",\"name\":\"uttar pradesh\",\"name_ar\":\"jhansi\",\"polygon\":null,\"_token\":\"6IseHhbKxJ2AEsZrgCWEMWOveIZqNAqY3Cixh4OX\"}', '2022-12-26 08:53:09', '2022-12-26 08:53:09'),
(306, 1, 'admin/zones', 'GET', '122.50.203.127', '[]', '2022-12-26 08:53:09', '2022-12-26 08:53:09'),
(307, 1, 'admin/view_zones/2', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:53:36', '2022-12-26 08:53:36'),
(308, 1, 'admin/view_zones/2', 'GET', '122.50.203.127', '[]', '2022-12-26 08:53:37', '2022-12-26 08:53:37');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(309, 1, 'admin/zones', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:54:50', '2022-12-26 08:54:50'),
(310, 1, 'admin/create_zones/2', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 08:54:56', '2022-12-26 08:54:56'),
(311, 1, 'admin/zones', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:05:35', '2022-12-26 09:05:35'),
(312, 1, 'admin/create_zones/3', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:05:38', '2022-12-26 09:05:38'),
(313, 1, 'admin/zones', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:06:09', '2022-12-26 09:06:09'),
(314, 1, 'admin/drivers', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:08:38', '2022-12-26 09:08:38'),
(315, 1, 'admin/view_documents/2', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:08:56', '2022-12-26 09:08:56'),
(316, 1, 'admin/drivers', 'GET', '122.50.203.127', '[]', '2022-12-26 09:08:56', '2022-12-26 09:08:56'),
(317, 1, 'admin/drivers', 'GET', '122.50.203.127', '[]', '2022-12-26 09:09:15', '2022-12-26 09:09:15'),
(318, 1, 'admin/drivers', 'GET', '122.50.203.127', '[]', '2022-12-26 09:11:53', '2022-12-26 09:11:53'),
(319, 1, 'admin/view_documents/2', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:11:58', '2022-12-26 09:11:58'),
(320, 1, 'admin/drivers', 'GET', '122.50.203.127', '[]', '2022-12-26 09:11:58', '2022-12-26 09:11:58'),
(321, 1, 'admin/drivers', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:12:02', '2022-12-26 09:12:02'),
(322, 1, 'admin/drivers/2/edit', 'GET', '122.50.203.127', '[]', '2022-12-26 09:12:33', '2022-12-26 09:12:33'),
(323, 1, 'admin/drivers/2', 'PUT', '122.50.203.127', '{\"country_id\":\"2\",\"zone\":\"3\",\"first_name\":\"Sumit\",\"last_name\":\"Singh\",\"gender\":\"1\",\"phone_number\":\"7007919341\",\"phone_with_code\":\"+917007919341\",\"email\":\"makemerealworld@gmail.com\",\"password\":\"$2y$12$RmcuhGRj09p1nNWy1I04v.ZY2AddrTZ1\\/gMEJ4V4anCnXvxCbqPWK\",\"date_of_birth\":\"1970-01-01\",\"licence_number\":\"12345788\",\"currency\":\"Rs\",\"id_proof_status\":\"16\",\"status\":\"1\",\"_token\":\"6IseHhbKxJ2AEsZrgCWEMWOveIZqNAqY3Cixh4OX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/drivers\"}', '2022-12-26 09:12:44', '2022-12-26 09:12:44'),
(324, 1, 'admin/drivers', 'GET', '122.50.203.127', '[]', '2022-12-26 09:12:44', '2022-12-26 09:12:44'),
(325, 1, 'admin/driver-vehicles', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:13:21', '2022-12-26 09:13:21'),
(326, 1, 'admin/driver-vehicles/1/edit', 'GET', '122.50.203.127', '[]', '2022-12-26 09:13:35', '2022-12-26 09:13:35'),
(327, 1, 'admin/driver-vehicles/1', 'PUT', '122.50.203.127', '{\"country_id\":\"2\",\"driver_id\":\"2\",\"vehicle_type\":\"5\",\"brand\":\"800\",\"color\":\"Red\",\"vehicle_name\":\"Marooti\",\"vehicle_number\":\"12341234\",\"vehicle_image_status\":\"16\",\"vehicle_certificate_status\":\"16\",\"vehicle_insurance_status\":\"16\",\"status\":\"1\",\"_token\":\"6IseHhbKxJ2AEsZrgCWEMWOveIZqNAqY3Cixh4OX\",\"_method\":\"PUT\"}', '2022-12-26 09:13:51', '2022-12-26 09:13:51'),
(328, 1, 'admin/driver-vehicles', 'GET', '122.50.203.127', '[]', '2022-12-26 09:13:54', '2022-12-26 09:13:54'),
(329, 1, 'admin/driver_recharges', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:14:41', '2022-12-26 09:14:41'),
(330, 1, 'admin/driver_recharges/create', 'GET', '122.50.203.127', '[]', '2022-12-26 09:16:44', '2022-12-26 09:16:44'),
(331, 1, 'admin/driver_recharges', 'POST', '122.50.203.127', '{\"driver_id\":\"2\",\"amount\":\"5000\",\"_token\":\"6IseHhbKxJ2AEsZrgCWEMWOveIZqNAqY3Cixh4OX\"}', '2022-12-26 09:16:53', '2022-12-26 09:16:53'),
(332, 1, 'admin/driver_recharges', 'GET', '122.50.203.127', '[]', '2022-12-26 09:16:54', '2022-12-26 09:16:54'),
(333, 1, 'admin/dispatch_panel', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:18:17', '2022-12-26 09:18:17'),
(334, 1, 'admin/drivers', 'GET', '122.50.203.127', '{\"online_status\":\"1\"}', '2022-12-26 09:18:27', '2022-12-26 09:18:27'),
(335, 1, 'admin/rental-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:35:17', '2022-12-26 09:35:17'),
(336, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:35:24', '2022-12-26 09:35:24'),
(337, 1, 'admin/rental-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"7\",\"package_id\":\"1\",\"price_per_km\":\"10\",\"price_per_hour\":\"5\",\"package_price\":\"3\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 09:35:38', '2022-12-26 09:35:38'),
(338, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 09:35:38', '2022-12-26 09:35:38'),
(339, 1, 'admin/rental-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:35:45', '2022-12-26 09:35:45'),
(340, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:35:47', '2022-12-26 09:35:47'),
(341, 1, 'admin/rental-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"7\",\"package_id\":\"2\",\"price_per_km\":\"10\",\"price_per_hour\":\"3\",\"package_price\":\"6\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 09:35:58', '2022-12-26 09:35:58'),
(342, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 09:35:58', '2022-12-26 09:35:58'),
(343, 1, 'admin/rental-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:36:03', '2022-12-26 09:36:03'),
(344, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:36:06', '2022-12-26 09:36:06'),
(345, 1, 'admin/rental-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"7\",\"package_id\":\"3\",\"price_per_km\":\"6\",\"price_per_hour\":\"2\",\"package_price\":\"4\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 09:36:22', '2022-12-26 09:36:22'),
(346, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 09:36:22', '2022-12-26 09:36:22'),
(347, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:36:34', '2022-12-26 09:36:34'),
(348, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2022-12-26 09:36:48', '2022-12-26 09:36:48'),
(349, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:37:01', '2022-12-26 09:37:01'),
(350, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:37:19', '2022-12-26 09:37:19'),
(351, 1, 'admin/outstation-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:37:36', '2022-12-26 09:37:36'),
(352, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:38:40', '2022-12-26 09:38:40'),
(353, 1, 'admin/outstation-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"5\",\"trip_sub_type_id\":\"1\",\"base_fare\":\"50\",\"price_per_km\":\"10\",\"driver_allowance\":\"6\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 09:38:51', '2022-12-26 09:38:51'),
(354, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 09:38:51', '2022-12-26 09:38:51'),
(355, 1, 'admin/outstation-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:38:58', '2022-12-26 09:38:58'),
(356, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:39:03', '2022-12-26 09:39:03'),
(357, 1, 'admin/outstation-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"6\",\"trip_sub_type_id\":\"1\",\"base_fare\":\"10\",\"price_per_km\":\"12\",\"driver_allowance\":\"6\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 09:39:13', '2022-12-26 09:39:13'),
(358, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 09:39:14', '2022-12-26 09:39:14'),
(359, 1, 'admin/outstation-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:39:18', '2022-12-26 09:39:18'),
(360, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:39:20', '2022-12-26 09:39:20'),
(361, 1, 'admin/outstation-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"7\",\"trip_sub_type_id\":\"1\",\"base_fare\":\"12\",\"price_per_km\":\"6\",\"driver_allowance\":\"3\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 09:39:33', '2022-12-26 09:39:33'),
(362, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 09:39:34', '2022-12-26 09:39:34'),
(363, 1, 'admin/outstation-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:39:41', '2022-12-26 09:39:41'),
(364, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:39:43', '2022-12-26 09:39:43'),
(365, 1, 'admin/outstation-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"5\",\"trip_sub_type_id\":\"2\",\"base_fare\":\"50\",\"price_per_km\":\"10\",\"driver_allowance\":\"6\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 09:39:52', '2022-12-26 09:39:52'),
(366, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 09:39:53', '2022-12-26 09:39:53'),
(367, 1, 'admin/outstation-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:39:55', '2022-12-26 09:39:55'),
(368, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:40:00', '2022-12-26 09:40:00'),
(369, 1, 'admin/outstation-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"6\",\"trip_sub_type_id\":\"2\",\"base_fare\":\"12\",\"price_per_km\":\"10\",\"driver_allowance\":\"2\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 09:40:12', '2022-12-26 09:40:12'),
(370, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 09:40:13', '2022-12-26 09:40:13'),
(371, 1, 'admin/outstation-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:40:22', '2022-12-26 09:40:22'),
(372, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:40:25', '2022-12-26 09:40:25'),
(373, 1, 'admin/outstation-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"7\",\"trip_sub_type_id\":\"2\",\"base_fare\":\"10\",\"price_per_km\":\"6\",\"driver_allowance\":\"3\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 09:40:36', '2022-12-26 09:40:36'),
(374, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 09:40:37', '2022-12-26 09:40:37'),
(375, 1, 'admin/delivery-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:41:13', '2022-12-26 09:41:13'),
(376, 1, 'admin/delivery-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:41:23', '2022-12-26 09:41:23'),
(377, 1, 'admin/get_delivery_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:41:26', '2022-12-26 09:41:26'),
(378, 1, 'admin/delivery-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"8\",\"trip_sub_type_id\":\"3\",\"base_fare\":\"50\",\"price_per_km\":\"10\",\"driver_allowance\":\"6\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\"}', '2022-12-26 09:41:34', '2022-12-26 09:41:34'),
(379, 1, 'admin/delivery-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 09:41:35', '2022-12-26 09:41:35'),
(380, 1, 'admin/delivery-fare-managements/craete', 'GET', '202.53.6.54', '[]', '2022-12-26 09:41:42', '2022-12-26 09:41:42'),
(381, 1, 'admin/delivery-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:41:48', '2022-12-26 09:41:48'),
(382, 1, 'admin/get_delivery_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:41:50', '2022-12-26 09:41:50'),
(383, 1, 'admin/delivery-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"8\",\"trip_sub_type_id\":\"4\",\"base_fare\":\"10\",\"price_per_km\":\"4\",\"driver_allowance\":\"3\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/delivery-fare-managements\\/craete\"}', '2022-12-26 09:42:01', '2022-12-26 09:42:01'),
(384, 1, 'admin/delivery-fare-managements/craete', 'GET', '202.53.6.54', '[]', '2022-12-26 09:42:01', '2022-12-26 09:42:01'),
(385, 1, 'admin/delivery-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:42:02', '2022-12-26 09:42:02'),
(386, 1, 'admin/shared-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:42:08', '2022-12-26 09:42:08'),
(387, 1, 'admin/shared-fare-managements/4/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 09:42:27', '2022-12-26 09:42:27'),
(388, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:42:30', '2022-12-26 09:42:30'),
(389, 1, 'admin/shared-fare-managements/4', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"5\",\"base_fare\":\"5\",\"price_per_km\":\"2\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\"}', '2022-12-26 09:42:31', '2022-12-26 09:42:31'),
(390, 1, 'admin/shared-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 09:42:32', '2022-12-26 09:42:32'),
(391, 1, 'admin/shared-fare-managements/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 09:42:37', '2022-12-26 09:42:37'),
(392, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:42:40', '2022-12-26 09:42:40'),
(393, 1, 'admin/shared-fare-managements/5', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"6\",\"base_fare\":\"10\",\"price_per_km\":\"3\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/shared-fare-managements\\/4\\/edit\"}', '2022-12-26 09:42:41', '2022-12-26 09:42:41'),
(394, 1, 'admin/shared-fare-managements/4/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 09:42:42', '2022-12-26 09:42:42'),
(395, 1, 'admin/shared-fare-managements/create', 'GET', '202.53.6.54', '[]', '2022-12-26 09:42:49', '2022-12-26 09:42:49'),
(396, 1, 'admin/get_vehicle_type', 'GET', '202.53.6.54', '{\"q\":\"2\"}', '2022-12-26 09:42:52', '2022-12-26 09:42:52'),
(397, 1, 'admin/shared-fare-managements', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"7\",\"base_fare\":\"50\",\"price_per_km\":\"6\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/shared-fare-managements\\/5\\/edit\"}', '2022-12-26 09:42:59', '2022-12-26 09:42:59'),
(398, 1, 'admin/shared-fare-managements/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 09:43:00', '2022-12-26 09:43:00'),
(399, 1, 'admin/currencies', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:43:04', '2022-12-26 09:43:04'),
(400, 1, 'admin/vehicle-categories', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:43:07', '2022-12-26 09:43:07'),
(401, 1, 'admin/drivers', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:49:21', '2022-12-26 09:49:21'),
(402, 1, 'admin/drivers/3/edit', 'GET', '122.50.203.127', '[]', '2022-12-26 09:49:35', '2022-12-26 09:49:35'),
(403, 1, 'admin/drivers/3', 'PUT', '122.50.203.127', '{\"country_id\":\"2\",\"zone\":\"3\",\"first_name\":\"Saket\",\"last_name\":\"Shukla\",\"gender\":\"1\",\"phone_number\":\"7355553943\",\"phone_with_code\":\"+917355553943\",\"email\":\"saketshukla078@gmail.com\",\"password\":\"$2y$12$zo36SaertQyM5eFo0u5.geDAiefzQ9\\/a7LN8ijGJvj9Fqhao1UiIy\",\"date_of_birth\":\"2023-01-01\",\"licence_number\":\"1234\",\"currency\":\"Rs\",\"id_proof_status\":\"16\",\"status\":\"1\",\"_token\":\"6IseHhbKxJ2AEsZrgCWEMWOveIZqNAqY3Cixh4OX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/drivers?online_status=1\"}', '2022-12-26 09:49:50', '2022-12-26 09:49:50'),
(404, 1, 'admin/drivers', 'GET', '122.50.203.127', '{\"online_status\":\"1\"}', '2022-12-26 09:49:51', '2022-12-26 09:49:51'),
(405, 1, 'admin/drivers/3/edit', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:50:21', '2022-12-26 09:50:21'),
(406, 1, 'admin/driver-vehicles', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:51:57', '2022-12-26 09:51:57'),
(407, 1, 'admin/driver-vehicles/2/edit', 'GET', '122.50.203.127', '[]', '2022-12-26 09:52:07', '2022-12-26 09:52:07'),
(408, 1, 'admin/driver-vehicles/2', 'PUT', '122.50.203.127', '{\"country_id\":\"2\",\"driver_id\":\"3\",\"vehicle_type\":\"6\",\"brand\":\"2020\",\"color\":\"White\",\"vehicle_name\":\"Saket\",\"vehicle_number\":\"Up93ab1234\",\"vehicle_image_status\":\"16\",\"vehicle_certificate_status\":\"16\",\"vehicle_insurance_status\":\"16\",\"status\":\"1\",\"_token\":\"6IseHhbKxJ2AEsZrgCWEMWOveIZqNAqY3Cixh4OX\",\"_method\":\"PUT\"}', '2022-12-26 09:52:19', '2022-12-26 09:52:19'),
(409, 1, 'admin/driver-vehicles', 'GET', '122.50.203.127', '[]', '2022-12-26 09:52:22', '2022-12-26 09:52:22'),
(410, 1, 'admin/driver_recharges', 'GET', '122.50.203.127', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 09:52:42', '2022-12-26 09:52:42'),
(411, 1, 'admin/driver_recharges/create', 'GET', '122.50.203.127', '[]', '2022-12-26 09:53:05', '2022-12-26 09:53:05'),
(412, 1, 'admin/driver_recharges', 'POST', '122.50.203.127', '{\"driver_id\":\"3\",\"amount\":\"5000\",\"_token\":\"6IseHhbKxJ2AEsZrgCWEMWOveIZqNAqY3Cixh4OX\"}', '2022-12-26 09:53:13', '2022-12-26 09:53:13'),
(413, 1, 'admin/driver_recharges', 'GET', '122.50.203.127', '[]', '2022-12-26 09:53:14', '2022-12-26 09:53:14'),
(414, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 10:52:20', '2022-12-26 10:52:20'),
(415, 1, 'admin/vehicle-categories', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:52:32', '2022-12-26 10:52:32'),
(416, 1, 'admin/daily-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:52:40', '2022-12-26 10:52:40'),
(417, 1, 'admin/packages', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:52:48', '2022-12-26 10:52:48'),
(418, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:52:52', '2022-12-26 10:52:52'),
(419, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-12-26 10:53:52', '2022-12-26 10:53:52'),
(420, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:54:00', '2022-12-26 10:54:00'),
(421, 1, 'admin/delivery-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:54:18', '2022-12-26 10:54:18'),
(422, 1, 'admin/delivery-fare-managements/3/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 10:54:31', '2022-12-26 10:54:31'),
(423, 1, 'admin/delivery-fare-managements/3', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"8\",\"trip_sub_type_id\":\"3\",\"base_fare\":\"50\",\"price_per_km\":\"10\",\"driver_allowance\":\"300\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\"}', '2022-12-26 10:54:38', '2022-12-26 10:54:38'),
(424, 1, 'admin/delivery-fare-managements', 'GET', '202.53.6.54', '[]', '2022-12-26 10:54:38', '2022-12-26 10:54:38'),
(425, 1, 'admin/delivery-fare-managements/4/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 10:54:46', '2022-12-26 10:54:46'),
(426, 1, 'admin/delivery-fare-managements/4', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"vehicle_type\":\"8\",\"trip_sub_type_id\":\"4\",\"base_fare\":\"10\",\"price_per_km\":\"4\",\"driver_allowance\":\"350\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/delivery-fare-managements\\/3\\/edit\"}', '2022-12-26 10:54:55', '2022-12-26 10:54:55'),
(427, 1, 'admin/delivery-fare-managements/3/edit', 'GET', '202.53.6.54', '[]', '2022-12-26 10:54:56', '2022-12-26 10:54:56'),
(428, 1, 'admin/delivery-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:55:04', '2022-12-26 10:55:04'),
(429, 1, 'admin/shared-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:55:11', '2022-12-26 10:55:11'),
(430, 1, 'admin/driver-hiring-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:55:15', '2022-12-26 10:55:15'),
(431, 1, 'admin/privacy-policies', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:55:26', '2022-12-26 10:55:26'),
(432, 1, 'admin/privacy-policies/5edit', 'GET', '202.53.6.54', '[]', '2022-12-26 10:56:00', '2022-12-26 10:56:00'),
(433, 1, 'admin/privacy-policies/5/edit', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:56:07', '2022-12-26 10:56:07'),
(434, 1, 'admin/privacy-policies/5', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"user_type_id\":\"1\",\"slug\":\"information\",\"title\":\"Information\",\"description\":\"We collect information you provide to us in connection with our Services, such as when you create or update your account, log into your account, request or reserve transportation, contact our customer service, or otherwise communicate with us via telephone, our websites, mobile applications or otherwise. This information includes your name, telephone number, email address, mailing address, photographs or other text or images you use, e.g., for your profile, the types of Services you request (collectively, \\u201cPersonal Information\\u201d), as well as transaction details, billing and payment information, and other information you use or provide to us in using the Services. If you do not wish to provide any Personal Information, you may simply decline to use our Services.\",\"title_ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0629\",\"description_ar\":\"\\u0646\\u0642\\u0648\\u0645 \\u0628\\u062c\\u0645\\u0639 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u0642\\u062f\\u0645\\u0647\\u0627 \\u0644\\u0646\\u0627 \\u0641\\u064a\\u0645\\u0627 \\u064a\\u062a\\u0639\\u0644\\u0642 \\u0628\\u062e\\u062f\\u0645\\u0627\\u062a\\u0646\\u0627 \\u060c \\u0639\\u0644\\u0649 \\u0633\\u0628\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062b\\u0627\\u0644 \\u0639\\u0646\\u062f\\u0645\\u0627 \\u062a\\u0642\\u0648\\u0645 \\u0628\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0623\\u0648 \\u062a\\u062d\\u062f\\u064a\\u062b \\u062d\\u0633\\u0627\\u0628\\u0643 \\u060c \\u0623\\u0648 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u062d\\u0633\\u0627\\u0628\\u0643 \\u060c \\u0623\\u0648 \\u0637\\u0644\\u0628 \\u0623\\u0648 \\u062d\\u062c\\u0632 \\u0648\\u0633\\u064a\\u0644\\u0629 \\u0646\\u0642\\u0644 \\u060c \\u0623\\u0648 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u060c \\u0623\\u0648 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0639\\u0646\\u0627 \\u0628\\u0637\\u0631\\u064a\\u0642\\u0629 \\u0623\\u062e\\u0631\\u0649 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0647\\u0627\\u062a\\u0641 \\u060c \\u0623\\u0648 \\u0645\\u0648\\u0627\\u0642\\u0639\\u0646\\u0627 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u060c \\u0623\\u0648 \\u0627\\u0644\\u0647\\u0627\\u062a\\u0641 \\u0627\\u0644\\u0645\\u062d\\u0645\\u0648\\u0644. \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642\\u0627\\u062a \\u0623\\u0648 \\u063a\\u064a\\u0631 \\u0630\\u0644\\u0643. \\u062a\\u062a\\u0636\\u0645\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0633\\u0645\\u0643 \\u0648\\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641\\u0643 \\u0648\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0628\\u0631\\u064a\\u062f\\u0643 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0648\\u0639\\u0646\\u0648\\u0627\\u0646\\u0643 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f\\u064a \\u0648\\u0627\\u0644\\u0635\\u0648\\u0631 \\u0627\\u0644\\u0641\\u0648\\u062a\\u0648\\u063a\\u0631\\u0627\\u0641\\u064a\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0646\\u0635\\u0648\\u0635 \\u0623\\u0648 \\u0627\\u0644\\u0635\\u0648\\u0631 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649 \\u0627\\u0644\\u062a\\u064a \\u062a\\u0633\\u062a\\u062e\\u062f\\u0645\\u0647\\u0627 \\u060c \\u0639\\u0644\\u0649 \\u0633\\u0628\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062b\\u0627\\u0644 \\u060c \\u0644\\u0645\\u0644\\u0641\\u0643 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a \\u060c \\u0648\\u0623\\u0646\\u0648\\u0627\\u0639 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u0637\\u0644\\u0628\\u0647\\u0627 (\\u064a\\u064f\\u0634\\u0627\\u0631 \\u0625\\u0644\\u064a\\u0647\\u0627 \\u0625\\u062c\\u0645\\u0627\\u0644\\u0627\\u064b \\u0628\\u0627\\u0633\\u0645 \\\"\\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a\\u0629\\\") \\u060c \\u0641\\u0636\\u0644\\u0627\\u064b \\u0639\\u0646 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0639\\u0627\\u0645\\u0644\\u0629 \\u0648\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0641\\u0648\\u062a\\u0631\\u0629 \\u0648\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0648\\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649 \\u0627\\u0644\\u062a\\u064a \\u062a\\u0633\\u062a\\u062e\\u062f\\u0645\\u0647\\u0627 \\u0623\\u0648 \\u062a\\u0632\\u0648\\u062f\\u0646\\u0627 \\u0628\\u0647\\u0627 \\u0641\\u064a \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a. \\u0625\\u0630\\u0627 \\u0643\\u0646\\u062a \\u0644\\u0627 \\u062a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0623\\u064a \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0634\\u062e\\u0635\\u064a\\u0629 \\u060c \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0631\\u0641\\u0636 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u062e\\u062f\\u0645\\u0627\\u062a\\u0646\\u0627.\",\"status\":\"1\",\"_token\":\"59LlKOORyL6f8OzndDVDTfVRD2p3mU8XQkZwImri\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/privacy-policies\\/5edit\"}', '2022-12-26 10:56:12', '2022-12-26 10:56:12'),
(435, 1, 'admin/privacy-policies/5edit', 'GET', '202.53.6.54', '[]', '2022-12-26 10:56:13', '2022-12-26 10:56:13'),
(436, 1, 'admin/privacy-policies', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:56:16', '2022-12-26 10:56:16'),
(437, 1, 'admin/trips', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:56:30', '2022-12-26 10:56:30'),
(438, 1, 'admin/trip-types', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:56:33', '2022-12-26 10:56:33'),
(439, 1, 'admin/driver-hiring-statuses', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 10:56:42', '2022-12-26 10:56:42'),
(440, 1, 'admin', 'GET', '202.53.6.54', '[]', '2022-12-26 11:48:57', '2022-12-26 11:48:57'),
(441, 1, 'admin/shared-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 11:49:03', '2022-12-26 11:49:03'),
(442, 1, 'admin/delivery-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 11:49:08', '2022-12-26 11:49:08'),
(443, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 11:49:16', '2022-12-26 11:49:16'),
(444, 1, 'admin/rental-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-12-26 11:49:44', '2022-12-26 11:49:44'),
(445, 1, 'admin/outstation-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 11:49:52', '2022-12-26 11:49:52'),
(446, 1, 'admin/delivery-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 11:50:00', '2022-12-26 11:50:00'),
(447, 1, 'admin/shared-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 11:50:03', '2022-12-26 11:50:03'),
(448, 1, 'admin/driver-hiring-fare-managements', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 11:50:08', '2022-12-26 11:50:08'),
(449, 1, 'admin/subscriptions', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 11:50:16', '2022-12-26 11:50:16'),
(450, 1, 'admin/cancellation-reasons', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 11:50:23', '2022-12-26 11:50:23'),
(451, 1, 'admin/statuses', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 11:50:28', '2022-12-26 11:50:28'),
(452, 1, 'admin/app-settings', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 12:40:53', '2022-12-26 12:40:53'),
(453, 1, 'admin/dispatch_panel', 'GET', '122.50.203.153', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 17:51:04', '2022-12-26 17:51:04'),
(454, 1, 'admin/trips', 'GET', '122.50.203.153', '{\"status\":\"3\"}', '2022-12-26 17:51:42', '2022-12-26 17:51:42'),
(455, 1, 'admin', 'GET', '49.37.50.59', '[]', '2022-12-26 18:29:50', '2022-12-26 18:29:50'),
(456, 1, 'admin', 'GET', '49.37.50.59', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 18:30:05', '2022-12-26 18:30:05'),
(457, 1, 'admin/trip-settings', 'GET', '49.37.50.59', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 18:30:08', '2022-12-26 18:30:08'),
(458, 1, 'admin', 'GET', '49.37.50.59', '{\"_pjax\":\"#pjax-container\"}', '2022-12-26 18:30:11', '2022-12-26 18:30:11'),
(459, 1, 'admin', 'GET', '106.195.33.0', '[]', '2022-12-27 05:35:52', '2022-12-27 05:35:52'),
(460, 1, 'admin', 'GET', '202.53.6.54', '[]', '2022-12-27 05:36:03', '2022-12-27 05:36:03'),
(461, 1, 'admin/auth/login', 'GET', '106.195.33.0', '[]', '2022-12-27 05:36:03', '2022-12-27 05:36:03'),
(462, 1, 'admin', 'GET', '106.195.33.0', '[]', '2022-12-27 05:36:03', '2022-12-27 05:36:03'),
(463, 1, 'admin/dispatch_panel', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:09', '2022-12-27 05:36:09'),
(464, 1, 'admin/countries', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:11', '2022-12-27 05:36:11'),
(465, 1, 'admin/dispatch_panel', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:12', '2022-12-27 05:36:12'),
(466, 1, 'admin/dispatch_panel', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:13', '2022-12-27 05:36:13'),
(467, 1, 'admin/countries', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:16', '2022-12-27 05:36:16'),
(468, 1, 'admin/currencies', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:18', '2022-12-27 05:36:18'),
(469, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:19', '2022-12-27 05:36:19'),
(470, 1, 'admin/live_chat', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:22', '2022-12-27 05:36:22'),
(471, 1, 'admin/live_chat', 'GET', '106.195.33.0', '[]', '2022-12-27 05:36:23', '2022-12-27 05:36:23'),
(472, 1, 'admin', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:31', '2022-12-27 05:36:31'),
(473, 1, 'admin/driver-hiring-requests', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:36', '2022-12-27 05:36:36'),
(474, 1, 'admin/driver-hiring-requests', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:38', '2022-12-27 05:36:38'),
(475, 1, 'admin/vehicle-categories', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:42', '2022-12-27 05:36:42'),
(476, 1, 'admin/vehicle-categories', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:44', '2022-12-27 05:36:44'),
(477, 1, 'admin/live_chat', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:47', '2022-12-27 05:36:47'),
(478, 1, 'admin/live_chat', 'GET', '106.195.33.0', '[]', '2022-12-27 05:36:47', '2022-12-27 05:36:47'),
(479, 1, 'admin/privacy-policies', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:51', '2022-12-27 05:36:51'),
(480, 1, 'admin/faqs', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:52', '2022-12-27 05:36:52'),
(481, 1, 'admin/user-types', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:53', '2022-12-27 05:36:53'),
(482, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:53', '2022-12-27 05:36:53'),
(483, 1, 'admin/cancellation-reasons', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:54', '2022-12-27 05:36:54'),
(484, 1, 'admin/notification-messages', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:55', '2022-12-27 05:36:55'),
(485, 1, 'admin/tax-lists', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:56', '2022-12-27 05:36:56'),
(486, 1, 'admin/subscriptions', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:57', '2022-12-27 05:36:57'),
(487, 1, 'admin/promo-codes', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:36:58', '2022-12-27 05:36:58'),
(488, 1, 'admin/subscriptions', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:00', '2022-12-27 05:37:00'),
(489, 1, 'admin/promo-codes', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:04', '2022-12-27 05:37:04'),
(490, 1, 'admin/driver-hiring-requests', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:10', '2022-12-27 05:37:10'),
(491, 1, 'admin/vehicle-categories', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:15', '2022-12-27 05:37:15'),
(492, 1, 'admin/live_chat', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:22', '2022-12-27 05:37:22'),
(493, 1, 'admin/live_chat', 'GET', '106.195.33.0', '[]', '2022-12-27 05:37:22', '2022-12-27 05:37:22'),
(494, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:24', '2022-12-27 05:37:24'),
(495, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:25', '2022-12-27 05:37:25'),
(496, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:26', '2022-12-27 05:37:26'),
(497, 1, 'admin/view_zones/1', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:31', '2022-12-27 05:37:31'),
(498, 1, 'admin/view_zones/1', 'GET', '106.195.33.0', '[]', '2022-12-27 05:37:32', '2022-12-27 05:37:32'),
(499, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:41', '2022-12-27 05:37:41'),
(500, 1, 'admin/create_zones/1', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:42', '2022-12-27 05:37:42'),
(501, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:46', '2022-12-27 05:37:46'),
(502, 1, 'admin/currencies', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:53', '2022-12-27 05:37:53'),
(503, 1, 'admin/view_documents/4', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:55', '2022-12-27 05:37:55'),
(504, 1, 'admin/drivers', 'GET', '202.53.6.54', '[]', '2022-12-27 05:37:55', '2022-12-27 05:37:55'),
(505, 1, 'admin/countries', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:37:55', '2022-12-27 05:37:55'),
(506, 1, 'admin/view_documents/3', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:38:01', '2022-12-27 05:38:01'),
(507, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:38:06', '2022-12-27 05:38:06'),
(508, 1, 'admin/view_documents/2', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:38:08', '2022-12-27 05:38:08'),
(509, 1, 'admin/currencies', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:38:09', '2022-12-27 05:38:09'),
(510, 1, 'admin/statuses', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:38:17', '2022-12-27 05:38:17'),
(511, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:38:18', '2022-12-27 05:38:18'),
(512, 1, 'admin/zones', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:40:07', '2022-12-27 05:40:07'),
(513, 1, 'admin/zones', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:40:16', '2022-12-27 05:40:16'),
(514, 1, 'admin/zones/create', 'GET', '202.53.6.54', '[]', '2022-12-27 05:40:42', '2022-12-27 05:40:42'),
(515, 1, 'admin/zones', 'POST', '202.53.6.54', '{\"country_id\":\"2\",\"name\":\"madurai\",\"name_ar\":\"madurai\",\"polygon\":null,\"_token\":\"u6ntGrd31h7RAS6zIqbGaMprX6FvfLv5HHTRYdhw\"}', '2022-12-27 05:40:55', '2022-12-27 05:40:55'),
(516, 1, 'admin/zones', 'GET', '202.53.6.54', '[]', '2022-12-27 05:40:56', '2022-12-27 05:40:56'),
(517, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:42:32', '2022-12-27 05:42:32'),
(518, 1, 'admin/view_documents/5', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:42:49', '2022-12-27 05:42:49'),
(519, 1, 'admin/daily-fare-managements', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:42:59', '2022-12-27 05:42:59'),
(520, 1, 'admin/drivers', 'GET', '202.53.6.54', '[]', '2022-12-27 05:42:59', '2022-12-27 05:42:59'),
(521, 1, 'admin/driver-vehicles', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:43:09', '2022-12-27 05:43:09'),
(522, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:44:40', '2022-12-27 05:44:40'),
(523, 1, 'admin/view_documents/2', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:45:04', '2022-12-27 05:45:04'),
(524, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:45:09', '2022-12-27 05:45:09'),
(525, 1, 'admin/drivers/view', 'GET', '202.53.6.54', '[]', '2022-12-27 05:46:14', '2022-12-27 05:46:14'),
(526, 1, 'admin/drivers/2/edit', 'GET', '202.53.6.54', '[]', '2022-12-27 05:46:57', '2022-12-27 05:46:57'),
(527, 1, 'admin/drivers/2', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"zone\":\"3\",\"first_name\":\"Sumit\",\"last_name\":\"Singh\",\"gender\":\"1\",\"phone_number\":\"7007919341\",\"phone_with_code\":\"+917007919341\",\"email\":\"makemerealworld@gmail.com\",\"password\":\"123456\",\"date_of_birth\":\"1970-01-01\",\"licence_number\":\"12345788\",\"currency\":\"Rs\",\"id_proof_status\":\"16\",\"status\":\"1\",\"_token\":\"u6ntGrd31h7RAS6zIqbGaMprX6FvfLv5HHTRYdhw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/drivers\\/view\"}', '2022-12-27 05:47:14', '2022-12-27 05:47:14'),
(528, 1, 'admin/drivers/view', 'GET', '202.53.6.54', '[]', '2022-12-27 05:47:15', '2022-12-27 05:47:15'),
(529, 1, 'admin/drivers/2/edit', 'GET', '202.53.6.54', '[]', '2022-12-27 05:47:15', '2022-12-27 05:47:15'),
(530, 1, 'admin/drivers/2', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"zone\":\"3\",\"first_name\":\"Sumit\",\"last_name\":\"Singh\",\"gender\":\"1\",\"phone_number\":\"7007919341\",\"phone_with_code\":\"+917007919341\",\"email\":\"makemerealworld@gmail.com\",\"password\":\"123456\",\"date_of_birth\":\"1970-01-01\",\"licence_number\":\"12345788\",\"currency\":\"Rs\",\"id_proof_status\":\"16\",\"status\":\"1\",\"_token\":\"u6ntGrd31h7RAS6zIqbGaMprX6FvfLv5HHTRYdhw\",\"_method\":\"PUT\"}', '2022-12-27 05:47:45', '2022-12-27 05:47:45'),
(531, 1, 'admin/drivers', 'GET', '202.53.6.54', '[]', '2022-12-27 05:47:46', '2022-12-27 05:47:46'),
(532, 1, 'admin/statuses', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:47:56', '2022-12-27 05:47:56'),
(533, 1, 'admin/daily-fare-managements', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:02', '2022-12-27 05:48:02'),
(534, 1, 'admin/statuses', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:04', '2022-12-27 05:48:04'),
(535, 1, 'admin/currencies', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:05', '2022-12-27 05:48:05'),
(536, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:06', '2022-12-27 05:48:06'),
(537, 1, 'admin/view_zones/1', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:09', '2022-12-27 05:48:09'),
(538, 1, 'admin/view_zones/1', 'GET', '106.195.33.0', '[]', '2022-12-27 05:48:09', '2022-12-27 05:48:09'),
(539, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:11', '2022-12-27 05:48:11'),
(540, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:46', '2022-12-27 05:48:46'),
(541, 1, 'admin/vehicle-categories', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:46', '2022-12-27 05:48:46'),
(542, 1, 'admin/vehicle-categories', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:46', '2022-12-27 05:48:46'),
(543, 1, 'admin/driver-vehicles', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:49', '2022-12-27 05:48:49'),
(544, 1, 'admin/vehicle-categories', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:55', '2022-12-27 05:48:55'),
(545, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:56', '2022-12-27 05:48:56'),
(546, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:57', '2022-12-27 05:48:57'),
(547, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:48:58', '2022-12-27 05:48:58'),
(548, 1, 'admin/live_chat', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:01', '2022-12-27 05:49:01'),
(549, 1, 'admin/live_chat', 'GET', '106.195.33.0', '[]', '2022-12-27 05:49:01', '2022-12-27 05:49:01'),
(550, 1, 'admin/vehicle-categories', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:02', '2022-12-27 05:49:02'),
(551, 1, 'admin/driver-hiring-requests', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:04', '2022-12-27 05:49:04'),
(552, 1, 'admin/promo-codes', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:07', '2022-12-27 05:49:07'),
(553, 1, 'admin/subscriptions', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:08', '2022-12-27 05:49:08'),
(554, 1, 'admin/promo-codes', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:09', '2022-12-27 05:49:09'),
(555, 1, 'admin/subscriptions', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:10', '2022-12-27 05:49:10'),
(556, 1, 'admin/tax-lists', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:12', '2022-12-27 05:49:12'),
(557, 1, 'admin/notification-messages', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:16', '2022-12-27 05:49:16'),
(558, 1, 'admin/cancellation-reasons', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:20', '2022-12-27 05:49:20'),
(559, 1, 'admin/user-types', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:22', '2022-12-27 05:49:22'),
(560, 1, 'admin/faqs', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:26', '2022-12-27 05:49:26'),
(561, 1, 'admin/privacy-policies', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:35', '2022-12-27 05:49:35'),
(562, 1, 'admin/live_chat', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:39', '2022-12-27 05:49:39'),
(563, 1, 'admin/live_chat', 'GET', '106.195.33.0', '[]', '2022-12-27 05:49:39', '2022-12-27 05:49:39'),
(564, 1, 'admin/vehicle-categories', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:41', '2022-12-27 05:49:41'),
(565, 1, 'admin/vehicle-categories', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:41', '2022-12-27 05:49:41'),
(566, 1, 'admin/driver-hiring-requests', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:42', '2022-12-27 05:49:42'),
(567, 1, 'admin/driver-hiring-requests', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:43', '2022-12-27 05:49:43'),
(568, 1, 'admin', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:45', '2022-12-27 05:49:45'),
(569, 1, 'admin/live_chat', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:52', '2022-12-27 05:49:52'),
(570, 1, 'admin/live_chat', 'GET', '106.195.33.0', '[]', '2022-12-27 05:49:52', '2022-12-27 05:49:52'),
(571, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:54', '2022-12-27 05:49:54'),
(572, 1, 'admin/currencies', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:55', '2022-12-27 05:49:55'),
(573, 1, 'admin/countries', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:56', '2022-12-27 05:49:56'),
(574, 1, 'admin/dispatch_panel', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:49:57', '2022-12-27 05:49:57'),
(575, 1, 'admin/dispatch_panel', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:50:02', '2022-12-27 05:50:02'),
(576, 1, 'admin/countries', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:50:10', '2022-12-27 05:50:10'),
(577, 1, 'admin/dispatch_panel', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:50:11', '2022-12-27 05:50:11'),
(578, 1, 'admin', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:50:12', '2022-12-27 05:50:12'),
(579, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:50:48', '2022-12-27 05:50:48'),
(580, 1, 'admin/zones', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:51:47', '2022-12-27 05:51:47'),
(581, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:52:01', '2022-12-27 05:52:01'),
(582, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:52:17', '2022-12-27 05:52:17'),
(583, 1, 'admin/drivers/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-27 05:53:20', '2022-12-27 05:53:20'),
(584, 1, 'admin/drivers/5', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"zone\":\"4\",\"first_name\":\"Vino\",\"last_name\":\"Jin\",\"gender\":\"1\",\"phone_number\":\"9876543210\",\"phone_with_code\":\"+919876543210\",\"email\":\"Vino@gmail.com\",\"password\":\"$2y$12$QCTMuJ9NtmwMROKSUCXt5ewJmAVK22VA9rJIzb3beFJROYQA5xbM6\",\"date_of_birth\":\"1970-01-01\",\"licence_number\":\"TN64A1234\",\"currency\":\"Rs\",\"id_proof_status\":\"16\",\"status\":\"1\",\"_token\":\"u6ntGrd31h7RAS6zIqbGaMprX6FvfLv5HHTRYdhw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/c2d_pro.demoproducts.in\\/admin\\/drivers\\/2\\/edit\"}', '2022-12-27 05:53:29', '2022-12-27 05:53:29'),
(585, 1, 'admin/drivers/2/edit', 'GET', '202.53.6.54', '[]', '2022-12-27 05:53:30', '2022-12-27 05:53:30'),
(586, 1, 'admin/driver-vehicles', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:53:36', '2022-12-27 05:53:36'),
(587, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:54:20', '2022-12-27 05:54:20'),
(588, 1, 'admin/driver-vehicles', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:54:31', '2022-12-27 05:54:31'),
(589, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 05:54:38', '2022-12-27 05:54:38'),
(590, 1, 'admin/drivers/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-27 05:54:47', '2022-12-27 05:54:47'),
(591, 1, 'admin/drivers/5', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"zone\":\"4\",\"first_name\":\"Vino\",\"last_name\":\"Jin\",\"gender\":\"1\",\"phone_number\":\"9876543210\",\"phone_with_code\":\"+919876543210\",\"email\":\"Vino@gmail.com\",\"password\":\"$2y$12$QCTMuJ9NtmwMROKSUCXt5ewJmAVK22VA9rJIzb3beFJROYQA5xbM6\",\"date_of_birth\":\"1970-01-01\",\"licence_number\":\"TN64A1234\",\"currency\":\"Rs\",\"id_proof_status\":\"15\",\"status\":\"1\",\"_token\":\"u6ntGrd31h7RAS6zIqbGaMprX6FvfLv5HHTRYdhw\",\"_method\":\"PUT\"}', '2022-12-27 05:54:58', '2022-12-27 05:54:58'),
(592, 1, 'admin/drivers', 'GET', '202.53.6.54', '[]', '2022-12-27 05:54:58', '2022-12-27 05:54:58'),
(593, 1, 'admin/drivers', 'GET', '202.53.6.54', '[]', '2022-12-27 06:02:33', '2022-12-27 06:02:33'),
(594, 1, 'admin/driver-vehicles', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:02:41', '2022-12-27 06:02:41'),
(595, 1, 'admin/driver-vehicles/edit', 'GET', '202.53.6.54', '[]', '2022-12-27 06:02:55', '2022-12-27 06:02:55'),
(596, 1, 'admin/driver-vehicles/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-27 06:03:04', '2022-12-27 06:03:04'),
(597, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:03:15', '2022-12-27 06:03:15');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(598, 1, 'admin/drivers/5/edit', 'GET', '202.53.6.54', '[]', '2022-12-27 06:03:30', '2022-12-27 06:03:30'),
(599, 1, 'admin/drivers/5', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"zone\":\"4\",\"first_name\":\"Vino\",\"last_name\":\"Jin\",\"gender\":\"1\",\"phone_number\":\"9876543210\",\"phone_with_code\":\"+919876543210\",\"email\":\"Vino@gmail.com\",\"password\":\"$2y$12$QCTMuJ9NtmwMROKSUCXt5ewJmAVK22VA9rJIzb3beFJROYQA5xbM6\",\"date_of_birth\":\"1970-01-01\",\"licence_number\":\"TN64A1234\",\"currency\":\"Rs\",\"id_proof_status\":\"16\",\"status\":\"1\",\"_token\":\"u6ntGrd31h7RAS6zIqbGaMprX6FvfLv5HHTRYdhw\",\"_method\":\"PUT\"}', '2022-12-27 06:03:37', '2022-12-27 06:03:37'),
(600, 1, 'admin/drivers', 'GET', '202.53.6.54', '[]', '2022-12-27 06:03:37', '2022-12-27 06:03:37'),
(601, 1, 'admin/driver-vehicles', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:03:44', '2022-12-27 06:03:44'),
(602, 1, 'admin/driver-vehicles/4/edit', 'GET', '202.53.6.54', '[]', '2022-12-27 06:03:56', '2022-12-27 06:03:56'),
(603, 1, 'admin/driver-vehicles/4', 'PUT', '202.53.6.54', '{\"country_id\":\"2\",\"driver_id\":\"5\",\"vehicle_type\":\"5\",\"brand\":\"Seden\",\"color\":\"Red\",\"vehicle_name\":\"Seden\",\"vehicle_number\":\"TN32 A1234\",\"vehicle_image_status\":\"16\",\"vehicle_certificate_status\":\"16\",\"vehicle_insurance_status\":\"16\",\"status\":\"1\",\"_token\":\"u6ntGrd31h7RAS6zIqbGaMprX6FvfLv5HHTRYdhw\",\"_method\":\"PUT\"}', '2022-12-27 06:04:06', '2022-12-27 06:04:06'),
(604, 1, 'admin/driver-vehicles', 'GET', '202.53.6.54', '[]', '2022-12-27 06:04:09', '2022-12-27 06:04:09'),
(605, 1, 'admin/driver-wallet-histories', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:04:33', '2022-12-27 06:04:33'),
(606, 1, 'admin/driver_recharges', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:04:47', '2022-12-27 06:04:47'),
(607, 1, 'admin/driver-wallet-histories', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:06:15', '2022-12-27 06:06:15'),
(608, 1, 'admin/driver_recharges', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:06:18', '2022-12-27 06:06:18'),
(609, 1, 'admin', 'GET', '49.204.136.200', '[]', '2022-12-27 06:06:29', '2022-12-27 06:06:29'),
(610, 1, 'admin/driver_recharges/create', 'GET', '202.53.6.54', '[]', '2022-12-27 06:06:39', '2022-12-27 06:06:39'),
(611, 1, 'admin/driver_recharges', 'POST', '202.53.6.54', '{\"driver_id\":\"5\",\"amount\":\"10000\",\"_token\":\"u6ntGrd31h7RAS6zIqbGaMprX6FvfLv5HHTRYdhw\"}', '2022-12-27 06:06:48', '2022-12-27 06:06:48'),
(612, 1, 'admin/driver_recharges', 'GET', '202.53.6.54', '[]', '2022-12-27 06:06:49', '2022-12-27 06:06:49'),
(613, 1, 'admin', 'GET', '106.195.33.0', '[]', '2022-12-27 06:11:24', '2022-12-27 06:11:24'),
(614, 1, 'admin', 'GET', '106.195.33.0', '[]', '2022-12-27 06:11:28', '2022-12-27 06:11:28'),
(615, 1, 'admin/notification-messages', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:11:31', '2022-12-27 06:11:31'),
(616, 1, 'admin/privacy-policies', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:11:33', '2022-12-27 06:11:33'),
(617, 1, 'admin', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:11:38', '2022-12-27 06:11:38'),
(618, 1, 'admin', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:11:39', '2022-12-27 06:11:39'),
(619, 1, 'admin/trip-settings', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:11:52', '2022-12-27 06:11:52'),
(620, 1, 'admin/contact-settings', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:12:05', '2022-12-27 06:12:05'),
(621, 1, 'admin/surge-settings', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:12:17', '2022-12-27 06:12:17'),
(622, 1, 'admin/surge-fare-settings', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:12:27', '2022-12-27 06:12:27'),
(623, 1, 'admin/dispatch_panel', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:12:42', '2022-12-27 06:12:42'),
(624, 1, 'admin/dispatch_panel', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:12:43', '2022-12-27 06:12:43'),
(625, 1, 'admin/dispatch_panel', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:12:44', '2022-12-27 06:12:44'),
(626, 1, 'admin/drivers', 'GET', '106.195.33.0', '{\"online_status\":\"1\"}', '2022-12-27 06:12:57', '2022-12-27 06:12:57'),
(627, 1, 'admin/drivers', 'GET', '106.195.33.0', '{\"online_status\":\"1\",\"_export_\":\"all\"}', '2022-12-27 06:13:01', '2022-12-27 06:13:01'),
(628, 1, 'admin/view_documents/3', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:13:42', '2022-12-27 06:13:42'),
(629, 1, 'admin/drivers', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:14:00', '2022-12-27 06:14:00'),
(630, 1, 'admin/countries', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:14:09', '2022-12-27 06:14:09'),
(631, 1, 'admin/currencies', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:14:12', '2022-12-27 06:14:12'),
(632, 1, 'admin/zones', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:14:15', '2022-12-27 06:14:15'),
(633, 1, 'admin/live_chat', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:14:29', '2022-12-27 06:14:29'),
(634, 1, 'admin/live_chat', 'GET', '106.195.33.0', '[]', '2022-12-27 06:14:29', '2022-12-27 06:14:29'),
(635, 1, 'admin/vehicle-categories', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:14:48', '2022-12-27 06:14:48'),
(636, 1, 'admin/live_chat', 'GET', '106.195.33.0', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:14:49', '2022-12-27 06:14:49'),
(637, 1, 'admin/live_chat', 'GET', '106.195.33.0', '[]', '2022-12-27 06:14:49', '2022-12-27 06:14:49'),
(638, 1, 'admin/drivers', 'GET', '202.53.6.54', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:21:01', '2022-12-27 06:21:01'),
(639, 1, 'admin/zones', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:41:03', '2022-12-27 06:41:03'),
(640, 1, 'admin/create_zones/4', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:41:07', '2022-12-27 06:41:07'),
(641, 1, 'admin/zones', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:41:13', '2022-12-27 06:41:13'),
(642, 1, 'admin/view_zones/4', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:41:14', '2022-12-27 06:41:14'),
(643, 1, 'admin/view_zones/4', 'GET', '49.204.143.78', '[]', '2022-12-27 06:41:15', '2022-12-27 06:41:15'),
(644, 1, 'admin/zones', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:41:20', '2022-12-27 06:41:20'),
(645, 1, 'admin/create_zones/4', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:41:21', '2022-12-27 06:41:21'),
(646, 1, 'admin/zones', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:43:55', '2022-12-27 06:43:55'),
(647, 1, 'admin/view_zones/4', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:43:57', '2022-12-27 06:43:57'),
(648, 1, 'admin/view_zones/4', 'GET', '49.204.143.78', '[]', '2022-12-27 06:43:58', '2022-12-27 06:43:58'),
(649, 1, 'admin/zones', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:44:02', '2022-12-27 06:44:02'),
(650, 1, 'admin/create_zones/4', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:44:05', '2022-12-27 06:44:05'),
(651, 1, 'admin/zones', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:46:18', '2022-12-27 06:46:18'),
(652, 1, 'admin/view_zones/4', 'GET', '49.204.143.78', '{\"_pjax\":\"#pjax-container\"}', '2022-12-27 06:46:20', '2022-12-27 06:46:20'),
(653, 1, 'admin/view_zones/4', 'GET', '49.204.143.78', '[]', '2022-12-27 06:46:21', '2022-12-27 06:46:21'),
(654, 1, 'admin/live_chat', 'GET', '106.195.36.143', '[]', '2022-12-27 07:29:05', '2022-12-27 07:29:05'),
(655, 1, 'admin/live_chat', 'GET', '106.195.36.143', '[]', '2022-12-27 07:29:06', '2022-12-27 07:29:06'),
(656, 1, 'admin/dispatch_panel', 'GET', '106.195.36.81', '[]', '2022-12-27 11:35:44', '2022-12-27 11:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Customers', 'customers', 'GET,POST,PUT,DELETE,PATCH,OPTIONS,HEAD', '/customers*', '2021-04-19 20:39:47', '2021-04-19 20:39:47'),
(7, 'ONKAR UG', 'GERMAN', 'HEAD', NULL, '2022-07-11 18:35:33', '2022-07-11 18:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-04-02 02:49:21', '2020-04-02 02:49:21'),
(2, 'manager', 'manager', '2021-04-19 20:36:19', '2021-04-19 20:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 12, NULL, NULL),
(1, 16, NULL, NULL),
(1, 18, NULL, NULL),
(1, 19, NULL, NULL),
(1, 20, NULL, NULL),
(1, 21, NULL, NULL),
(1, 22, NULL, NULL),
(1, 23, NULL, NULL),
(1, 24, NULL, NULL),
(1, 25, NULL, NULL),
(1, 27, NULL, NULL),
(1, 28, NULL, NULL),
(1, 29, NULL, NULL),
(1, 31, NULL, NULL),
(1, 32, NULL, NULL),
(1, 33, NULL, NULL),
(1, 36, NULL, NULL),
(1, 37, NULL, NULL),
(1, 38, NULL, NULL),
(1, 39, NULL, NULL),
(1, 40, NULL, NULL),
(1, 41, NULL, NULL),
(1, 42, NULL, NULL),
(1, 43, NULL, NULL),
(1, 44, NULL, NULL),
(1, 45, NULL, NULL),
(1, 46, NULL, NULL),
(1, 47, NULL, NULL),
(1, 48, NULL, NULL),
(1, 49, NULL, NULL),
(1, 50, NULL, NULL),
(1, 51, NULL, NULL),
(1, 52, NULL, NULL),
(1, 55, NULL, NULL),
(1, 57, NULL, NULL),
(1, 58, NULL, NULL),
(1, 59, NULL, NULL),
(1, 61, NULL, NULL),
(1, 62, NULL, NULL),
(1, 63, NULL, NULL),
(1, 64, NULL, NULL),
(1, 65, NULL, NULL),
(1, 66, NULL, NULL),
(1, 67, NULL, NULL),
(1, 68, NULL, NULL),
(1, 69, NULL, NULL),
(1, 70, NULL, NULL),
(1, 73, NULL, NULL),
(1, 74, NULL, NULL),
(1, 75, NULL, NULL),
(1, 76, NULL, NULL),
(1, 78, NULL, NULL),
(1, 79, NULL, NULL),
(1, 80, NULL, NULL),
(1, 81, NULL, NULL),
(2, 28, NULL, NULL),
(1, 1, NULL, NULL),
(2, 1, NULL, NULL),
(2, 45, NULL, NULL),
(1, 85, NULL, NULL),
(1, 86, NULL, NULL),
(1, 87, NULL, NULL),
(1, 88, NULL, NULL),
(1, 89, NULL, NULL),
(1, 90, NULL, NULL),
(1, 91, NULL, NULL),
(1, 92, NULL, NULL),
(1, 93, NULL, NULL),
(1, 94, NULL, NULL),
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 12, NULL, NULL),
(1, 16, NULL, NULL),
(1, 18, NULL, NULL),
(1, 19, NULL, NULL),
(1, 20, NULL, NULL),
(1, 21, NULL, NULL),
(1, 22, NULL, NULL),
(1, 23, NULL, NULL),
(1, 24, NULL, NULL),
(1, 25, NULL, NULL),
(1, 27, NULL, NULL),
(1, 28, NULL, NULL),
(1, 29, NULL, NULL),
(1, 31, NULL, NULL),
(1, 32, NULL, NULL),
(1, 33, NULL, NULL),
(1, 36, NULL, NULL),
(1, 37, NULL, NULL),
(1, 38, NULL, NULL),
(1, 39, NULL, NULL),
(1, 40, NULL, NULL),
(1, 41, NULL, NULL),
(1, 42, NULL, NULL),
(1, 43, NULL, NULL),
(1, 44, NULL, NULL),
(1, 45, NULL, NULL),
(1, 46, NULL, NULL),
(1, 47, NULL, NULL),
(1, 48, NULL, NULL),
(1, 49, NULL, NULL),
(1, 50, NULL, NULL),
(1, 51, NULL, NULL),
(1, 52, NULL, NULL),
(1, 53, NULL, NULL),
(1, 55, NULL, NULL),
(1, 57, NULL, NULL),
(1, 58, NULL, NULL),
(1, 59, NULL, NULL),
(1, 61, NULL, NULL),
(1, 62, NULL, NULL),
(1, 63, NULL, NULL),
(1, 64, NULL, NULL),
(1, 65, NULL, NULL),
(1, 66, NULL, NULL),
(1, 67, NULL, NULL),
(1, 68, NULL, NULL),
(1, 69, NULL, NULL),
(1, 70, NULL, NULL),
(1, 73, NULL, NULL),
(1, 74, NULL, NULL),
(1, 75, NULL, NULL),
(1, 76, NULL, NULL),
(1, 78, NULL, NULL),
(1, 79, NULL, NULL),
(1, 80, NULL, NULL),
(1, 81, NULL, NULL),
(2, 28, NULL, NULL),
(1, 1, NULL, NULL),
(2, 1, NULL, NULL),
(2, 45, NULL, NULL),
(1, 85, NULL, NULL),
(1, 86, NULL, NULL),
(1, 87, NULL, NULL),
(1, 88, NULL, NULL),
(1, 89, NULL, NULL),
(1, 90, NULL, NULL),
(1, 91, NULL, NULL),
(1, 92, NULL, NULL),
(1, 93, NULL, NULL),
(1, 94, NULL, NULL),
(1, 95, NULL, NULL),
(1, 96, NULL, NULL),
(1, 97, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 5, NULL, NULL),
(2, 6, NULL, NULL),
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 5, NULL, NULL),
(2, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 1, NULL, NULL),
(1, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(1, 5, NULL, NULL),
(2, 6, NULL, NULL),
(2, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$cFYR6LpTr9E8KL4KdJZfE./gR/5v.6KGSyjpT12cAOqbayZdQ3Kee', 'Admin', 'image/man-avatar-icon-free-vector.jpg', 'UBT3lE1gpu0XZ3yObzRkF21AALnGGVttdFGXlGGhhtMoFnyWhVAYk4PrdXu7', '2020-04-02 02:49:21', '2022-12-19 06:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL),
(4, 3, NULL, NULL),
(5, 1, NULL, NULL),
(6, 2, NULL, NULL),
(6, 3, NULL, NULL),
(6, 6, NULL, NULL),
(7, 2, NULL, NULL),
(7, 3, NULL, NULL),
(7, 4, NULL, NULL),
(7, 5, NULL, NULL),
(7, 6, NULL, NULL),
(2, 1, NULL, NULL),
(4, 3, NULL, NULL),
(5, 1, NULL, NULL),
(6, 2, NULL, NULL),
(6, 3, NULL, NULL),
(6, 6, NULL, NULL),
(7, 2, NULL, NULL),
(7, 3, NULL, NULL),
(7, 4, NULL, NULL),
(7, 5, NULL, NULL),
(7, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) NOT NULL,
  `app_name` varchar(250) NOT NULL,
  `app_type` int(11) NOT NULL DEFAULT 1,
  `logo` varchar(250) NOT NULL,
  `app_version` varchar(10) NOT NULL,
  `default_currency` varchar(100) NOT NULL,
  `default_country` int(11) NOT NULL DEFAULT 1,
  `default_currency_symbol` varchar(10) NOT NULL,
  `login_image` varchar(250) NOT NULL,
  `currency_short_code` varchar(10) NOT NULL,
  `about_us` text NOT NULL,
  `about_us_ar` text DEFAULT NULL,
  `referral_amount` double DEFAULT NULL,
  `driver_referral_amount` double NOT NULL,
  `language_status` int(11) NOT NULL DEFAULT 1,
  `default_language` varchar(100) NOT NULL DEFAULT 'en',
  `subscription_status` int(11) NOT NULL DEFAULT 1,
  `polyline_status` int(11) NOT NULL DEFAULT 1,
  `driver_trip_time` double NOT NULL DEFAULT 10,
  `one_signal_id` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `app_name`, `app_type`, `logo`, `app_version`, `default_currency`, `default_country`, `default_currency_symbol`, `login_image`, `currency_short_code`, `about_us`, `about_us_ar`, `referral_amount`, `driver_referral_amount`, `language_status`, `default_language`, `subscription_status`, `polyline_status`, `driver_trip_time`, `one_signal_id`, `created_at`, `updated_at`) VALUES
(1, 'Cab2Door', 2, 'image/f2121c830f5dc1d425dfdc828100351f.png', '3.0', 'INR', 1, '₹', 'image/331127112852bbb4c418ea2e0b3e1a7a.png', 'INR', 'You can now get an advanced app for taxi booking  for Android and iOS. The application works on real time and has integrated Mobile Payment feature which ensures that the payment for signed up drivers can be automatically taken care of. There are two mobile applications that come with the Taxi Booking app', NULL, 100, 100, 1, 'en', 1, 1, 15, NULL, '2022-12-18 11:10:55', '2022-12-18 11:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `booking_statuses`
--

CREATE TABLE `booking_statuses` (
  `id` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL,
  `customer_status_name` varchar(250) NOT NULL,
  `status_name_ar` varchar(100) DEFAULT NULL,
  `customer_status_name_ar` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_statuses`
--

INSERT INTO `booking_statuses` (`id`, `status_name`, `customer_status_name`, `status_name_ar`, `customer_status_name_ar`, `created_at`, `updated_at`) VALUES
(1, 'Accepted', 'Your ride on the way', 'وافقت', 'رحلتك على الطريق', '2020-10-13 15:10:16', '2021-03-06 03:35:43'),
(2, 'At Point', 'Driver reached your location', 'عند نقطة', 'وصل السائق إلى موقعك', '2020-10-13 15:10:16', '2021-03-06 03:36:23'),
(3, 'Start Trip', 'Your trip started,  enjoy your doorstep pick-up on-time', 'ابدأ الرحلة', 'بدأت رحلتك ، واستمتع باستلامك عند عتبة بابك في الوقت المحدد', '2020-10-13 15:11:58', '2021-03-06 03:37:22'),
(4, 'End Trip', 'Reached your drop point. Hope you are enjoy the travel.', 'نهاية الرحلة', 'وصلت إلى نقطة إسقاطك. أتمنى أن تستمتع بالسفر.', '2020-10-13 15:11:58', '2021-03-06 03:37:57'),
(5, 'Completed', 'Trip was completed. We are waiting for your another booking', 'مكتمل', 'اكتملت الرحلة. نحن ننتظر حجزك الآخر', '2020-10-13 15:13:14', '2021-03-06 03:38:39'),
(6, 'Cancelled By Customer', 'Your trip was cancelled', 'ألغى العميل', 'تم إلغاء رحلتك', '2020-10-13 15:12:32', '2021-03-06 03:40:20'),
(7, 'Cancelled By Driver', 'Your trip was cancelled by this driver, sorry for your inconvenience', 'ألغى السائق', 'تم إلغاء رحلتك من قبل هذا السائق ، نأسف للإزعاج', '2020-10-13 15:12:32', '2021-03-06 03:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation_reasons`
--

CREATE TABLE `cancellation_reasons` (
  `id` int(11) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `reason_ar` varchar(250) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancellation_reasons`
--

INSERT INTO `cancellation_reasons` (`id`, `reason`, `reason_ar`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Change in our destination place', 'تغيير في مكان وجهتنا', 1, '2021-03-01 10:14:28', '2021-03-06 03:44:28'),
(2, 'Want to change vehicle', 'تريد تغيير السيارة', 1, '2021-03-01 12:50:47', '2021-03-06 03:44:47'),
(3, 'No need this driver', 'لا حاجة لهذا السائق', 1, '2021-03-01 12:51:29', '2021-03-06 03:45:04'),
(4, 'Vehicle is not good', 'المركبة غير نظيفة', 1, '2021-03-19 12:51:25', '2021-03-19 12:51:25'),
(5, 'Customer didn\'t pick phone call', 'الزبون لم يختار مكالمة هاتفية', 2, '2021-06-03 12:48:47', '2021-06-03 12:48:47'),
(6, 'Long distance drop location', 'موقع إسقاط لمسافات طويلة', 2, '2021-06-03 12:49:51', '2021-06-03 12:49:51'),
(7, 'Bad location', 'موقع سيء', 2, '2021-06-03 12:50:48', '2021-06-03 12:50:48'),
(8, 'Some personal issues', 'بعض القضايا الشخصية', 2, '2021-06-03 12:51:28', '2021-06-03 12:51:28');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation_settings`
--

CREATE TABLE `cancellation_settings` (
  `id` int(11) NOT NULL,
  `no_of_free_cancellation` int(11) NOT NULL,
  `cancellation_charge` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `complaint_category` int(11) NOT NULL,
  `complaint_sub_category` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_categories`
--

CREATE TABLE `complaint_categories` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `complaint_category_name` varchar(250) NOT NULL,
  `complaint_category_name_ar` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaint_categories`
--

INSERT INTO `complaint_categories` (`id`, `country_id`, `complaint_category_name`, `complaint_category_name_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Payment Issue', 'مستحقات الدفع \\ مشاكل الدفع', 1, '2021-03-06 04:10:02', '2022-12-11 16:28:42'),
(2, 1, 'Driver related issue', 'مشكلة متعلقة بالسائق', 1, '2021-03-06 04:10:29', '2022-12-11 16:28:47'),
(4, 3, 'Payment Issue', 'مستحقات الدفع \\ مشاكل الدفع', 1, '2021-03-06 04:10:02', '2022-05-30 14:03:06'),
(5, 3, 'Driver related issue', 'مشكلة متعلقة بالسائق', 1, '2021-03-06 04:10:29', '2022-05-30 14:03:14'),
(6, 6, 'Payment Issue', 'Payment Issue', 1, '2022-10-29 04:33:58', '2022-10-29 04:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_sub_categories`
--

CREATE TABLE `complaint_sub_categories` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `complaint_category` int(11) NOT NULL,
  `complaint_sub_category_name` varchar(250) NOT NULL,
  `complaint_sub_category_name_ar` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaint_sub_categories`
--

INSERT INTO `complaint_sub_categories` (`id`, `country_id`, `complaint_category`, `complaint_sub_category_name`, `complaint_sub_category_name_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Driver asked extra price', 'طلب السائق سعرًا إضافيًا', 1, '2021-03-06 04:17:40', '2022-11-09 13:07:10'),
(2, 1, 1, 'Bad behaviour of driver', 'السلوك السيئ للسائق', 1, '2021-03-06 04:18:57', '2021-03-06 04:18:57'),
(3, 1, 2, 'Driver asked extra price', 'طلب السائق سعرًا إضافيًا', 1, '2021-03-06 04:17:40', '2021-03-06 04:17:40'),
(4, 1, 2, 'Bad behaviour of driver', 'السلوك السيئ للسائق', 1, '2021-03-06 04:18:57', '2021-03-06 04:18:57'),
(5, 6, 6, 'Driver asked extra price', 'Driver asked extra price', 1, '2022-10-29 04:34:13', '2022-10-29 04:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `contact_settings`
--

CREATE TABLE `contact_settings` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `lat` varchar(250) NOT NULL,
  `lng` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_settings`
--

INSERT INTO `contact_settings` (`id`, `phone_number`, `email`, `address`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(1, '+919789354285', 'sales@menpanitech.com', 'Menpani Technology, Madurai.', '9.8899873', '78.0818419', '2022-12-18 10:49:40', '2022-12-18 10:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `phone_code` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `short_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_name_ar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(250) DEFAULT NULL,
  `capital_lat` varchar(250) NOT NULL,
  `capital_lng` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `phone_code`, `country_name`, `status`, `short_name`, `country_name_ar`, `short_name_ar`, `timezone`, `capital_lat`, `capital_lng`, `created_at`, `updated_at`) VALUES
(1, '+41', 'switzerland', 1, 'CH', 'سويسرا', 'CH', 'Bern/Swiss Confederation', '46.204391', '6.143158', '2022-12-26 07:22:50', '2022-12-26 07:22:50'),
(2, '+91', 'India', 1, 'IN', 'الهند', 'في', 'India/New Delhi', '21.7679', '78.8718', '2022-12-26 08:07:18', '2022-12-26 08:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `currency_short_code` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country_id`, `currency`, `currency_short_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'CHF', 'CHF', 1, '2022-12-26 07:26:34', '2022-12-26 07:26:34'),
(2, 2, 'Rs', 'INR', 1, '2022-12-26 08:17:24', '2022-12-26 08:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currency_short_code` varchar(50) NOT NULL DEFAULT 'LBP',
  `country_code` varchar(10) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `phone_with_code` varchar(100) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `email_verification_status` int(11) NOT NULL DEFAULT 0,
  `email_verification_code` varchar(250) DEFAULT NULL,
  `profile_picture` varchar(250) DEFAULT 'customers/avatar.png',
  `password` varchar(250) DEFAULT NULL,
  `fcm_token` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `wallet` double DEFAULT 0,
  `gender` int(11) DEFAULT 0,
  `referral_code` varchar(100) DEFAULT NULL,
  `overall_ratings` double NOT NULL DEFAULT 0,
  `no_of_ratings` int(11) NOT NULL DEFAULT 0,
  `refered_by` varchar(100) DEFAULT NULL,
  `current_sub_id` int(11) NOT NULL DEFAULT 0,
  `subscription_trips` int(11) NOT NULL DEFAULT 0,
  `sub_purchased_at` date DEFAULT NULL,
  `sub_expired_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_chat_messages`
--

CREATE TABLE `customer_chat_messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `is_seen` int(11) NOT NULL DEFAULT 0,
  `file` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_favourites`
--

CREATE TABLE `customer_favourites` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `lat` varchar(250) NOT NULL,
  `lng` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_offers`
--

CREATE TABLE `customer_offers` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `view_status` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL DEFAULT 0,
  `title_ar` varchar(150) DEFAULT NULL,
  `description_ar` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_promo_histories`
--

CREATE TABLE `customer_promo_histories` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_sos_contacts`
--

CREATE TABLE `customer_sos_contacts` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_subscription_histories`
--

CREATE TABLE `customer_subscription_histories` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL DEFAULT 0,
  `purchased_at` date NOT NULL,
  `expiry_at` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallet_histories`
--

CREATE TABLE `customer_wallet_histories` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `message` varchar(250) NOT NULL,
  `message_ar` varchar(150) DEFAULT NULL,
  `amount` double NOT NULL,
  `transaction_type` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_fare_management`
--

CREATE TABLE `daily_fare_management` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL DEFAULT 1,
  `base_fare` varchar(250) NOT NULL,
  `price_per_km` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_fare_management`
--

INSERT INTO `daily_fare_management` (`id`, `country_id`, `vehicle_type`, `base_fare`, `price_per_km`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '5', '10', 1, '2022-12-18 11:14:48', '2022-12-23 04:52:27'),
(2, 1, 2, '10', '4', 1, '2022-12-18 11:15:02', '2022-12-18 11:15:02'),
(3, 1, 3, '15', '6', 1, '2022-12-18 11:15:20', '2022-12-18 11:15:20'),
(4, 2, 5, '5', '10', 1, '2022-12-26 08:18:22', '2022-12-26 08:18:22'),
(5, 2, 6, '10', '4', 1, '2022-12-26 08:20:03', '2022-12-26 08:20:03'),
(6, 2, 7, '15', '6', 1, '2022-12-26 08:20:43', '2022-12-26 08:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_fare_management`
--

CREATE TABLE `delivery_fare_management` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL DEFAULT 0,
  `trip_sub_type_id` int(11) NOT NULL,
  `base_fare` varchar(250) NOT NULL,
  `price_per_km` varchar(250) NOT NULL,
  `driver_allowance` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_fare_management`
--

INSERT INTO `delivery_fare_management` (`id`, `country_id`, `vehicle_type`, `trip_sub_type_id`, `base_fare`, `price_per_km`, `driver_allowance`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 3, '50', '10', '100', 1, '2022-12-18 11:25:02', '2022-12-18 11:25:02'),
(2, 1, 4, 4, '100', '20', '200', 1, '2022-12-18 11:25:18', '2022-12-18 11:25:18'),
(3, 2, 8, 3, '50', '10', '300', 1, '2022-12-26 09:41:34', '2022-12-26 10:54:38'),
(4, 2, 8, 4, '10', '4', '350', 1, '2022-12-26 09:42:01', '2022-12-26 10:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_trips`
--

CREATE TABLE `dispatch_trips` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_phone` varchar(150) NOT NULL,
  `pickup_address` varchar(250) DEFAULT NULL,
  `drop_address` varchar(250) DEFAULT NULL,
  `pickup_lat` varchar(100) NOT NULL,
  `pickup_lng` varchar(100) NOT NULL,
  `drop_lat` varchar(100) NOT NULL,
  `drop_lng` varchar(100) NOT NULL,
  `vehicle_type` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `phone_with_code` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` int(11) NOT NULL DEFAULT 1,
  `profile_picture` varchar(250) NOT NULL DEFAULT 'drivers/avatar.png',
  `date_of_birth` date NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `licence_number` varchar(250) NOT NULL,
  `id_proof` varchar(250) NOT NULL DEFAULT 'static_images/id_proof_icon.png	',
  `id_proof_status` int(11) NOT NULL DEFAULT 14,
  `rejected_reason` text DEFAULT NULL,
  `online_status` int(11) NOT NULL DEFAULT 0,
  `currency` varchar(10) NOT NULL,
  `wallet` double NOT NULL DEFAULT 0,
  `zone` int(11) NOT NULL DEFAULT 0,
  `overall_ratings` varchar(50) NOT NULL DEFAULT '0',
  `no_of_ratings` varchar(50) NOT NULL DEFAULT '0',
  `otp` varchar(50) DEFAULT NULL,
  `fcm_token` text DEFAULT NULL,
  `shared_ride_status` int(11) NOT NULL DEFAULT 0,
  `driver_hiring_status` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `referral_code` varchar(100) DEFAULT NULL,
  `refered_by` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_bank_kyc_details`
--

CREATE TABLE `driver_bank_kyc_details` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_account_number` varchar(50) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `aadhar_number` varchar(50) NOT NULL,
  `pan_number` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_checkins`
--

CREATE TABLE `driver_checkins` (
  `id` int(11) NOT NULL,
  `driver-id` int(11) NOT NULL,
  `checkin_time` datetime NOT NULL,
  `checkout_time` datetime DEFAULT NULL,
  `total_hours` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_commissions`
--

CREATE TABLE `driver_commissions` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `picked_up` varchar(250) NOT NULL,
  `dropped` varchar(250) NOT NULL,
  `commission` varchar(250) NOT NULL,
  `mode_of_payment` int(11) NOT NULL,
  `date` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_earnings`
--

CREATE TABLE `driver_earnings` (
  `id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_hiring_fare_management`
--

CREATE TABLE `driver_hiring_fare_management` (
  `id` int(11) NOT NULL,
  `base_fare` double NOT NULL,
  `base_hours` int(11) NOT NULL,
  `extra_hour_charge` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_hiring_fare_management`
--

INSERT INTO `driver_hiring_fare_management` (`id`, `base_fare`, `base_hours`, `extra_hour_charge`, `created_at`, `updated_at`) VALUES
(1, 10, 10, 10, '2022-12-18 11:26:46', '2022-12-18 11:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `driver_hiring_requests`
--

CREATE TABLE `driver_hiring_requests` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `pickup_location` text NOT NULL,
  `pickup_lat` varchar(100) NOT NULL,
  `pickup_lng` varchar(100) NOT NULL,
  `drop_location` text NOT NULL,
  `drop_lat` varchar(100) NOT NULL,
  `drop_lng` varchar(100) NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_time` time NOT NULL,
  `drop_date` date DEFAULT NULL,
  `drop_time` time DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `total` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `sub_total` double NOT NULL DEFAULT 0,
  `payment_method` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_hiring_statuses`
--

CREATE TABLE `driver_hiring_statuses` (
  `id` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL,
  `customer_status_name` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_hiring_statuses`
--

INSERT INTO `driver_hiring_statuses` (`id`, `status_name`, `customer_status_name`, `created_at`, `updated_at`) VALUES
(1, 'Booking placed', 'Your booking placed successfully.', '2022-12-01 07:22:40', '2022-12-02 11:55:53'),
(2, 'Accept', 'Driver accepted your request', '2022-12-01 07:23:14', '2022-12-02 11:56:03'),
(3, 'At Point', 'Driver reached your location.', '2022-12-01 07:23:35', '2022-12-02 11:56:19'),
(4, 'Start', 'Your trip started, enjoy your journey', '2022-12-01 07:24:01', '2022-12-02 11:55:30'),
(5, 'End', 'Reached your drop point. Hope you are enjoy the travel.', '2022-12-01 07:24:26', '2022-12-02 11:55:18'),
(6, 'Completed', 'Trip was completed. We are waiting for your another ride...', '2022-12-01 07:25:17', '2022-12-10 19:39:18'),
(7, 'Rejected', 'Your trip was cancelled by this driver, sorry for your inconvenience.', '2022-12-01 07:25:55', '2022-12-02 11:55:07'),
(8, 'Cancelled', 'Your trip was cancelled.', '2022-12-02 11:56:58', '2022-12-02 11:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `driver_queries`
--

CREATE TABLE `driver_queries` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_recharges`
--

CREATE TABLE `driver_recharges` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_tips`
--

CREATE TABLE `driver_tips` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `tip` double NOT NULL,
  `tip_mode` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_trip_requests`
--

CREATE TABLE `driver_trip_requests` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL DEFAULT 0,
  `trip_request_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_tutorials`
--

CREATE TABLE `driver_tutorials` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `title_ar` varchar(150) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `file` text NOT NULL,
  `thumbnail_image` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_vehicles`
--

CREATE TABLE `driver_vehicles` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `color` varchar(250) NOT NULL,
  `vehicle_name` varchar(250) NOT NULL,
  `vehicle_number` varchar(250) NOT NULL,
  `vehicle_image` varchar(250) NOT NULL DEFAULT 'static_images/vehicle_image_icon.png',
  `vehicle_image_status` int(11) NOT NULL DEFAULT 14,
  `vehicle_certificate` varchar(500) NOT NULL DEFAULT 'static_images/vehicle_certificate_icon.png',
  `vehicle_certificate_status` int(11) NOT NULL DEFAULT 14,
  `vehicle_insurance` varchar(500) NOT NULL DEFAULT 'static_images/vehicle_insurance_icon.png',
  `vehicle_insurance_status` int(11) NOT NULL DEFAULT 14,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_wallet_histories`
--

CREATE TABLE `driver_wallet_histories` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `message` varchar(250) NOT NULL,
  `message_ar` varchar(250) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_withdrawals`
--

CREATE TABLE `driver_withdrawals` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `reference_proof` varchar(200) DEFAULT NULL,
  `reference_no` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` text NOT NULL,
  `question_ar` varchar(250) DEFAULT NULL,
  `answer_ar` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `country_id`, `user_type_id`, `question`, `answer`, `question_ar`, `answer_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'What is cancellation fee?', 'In Cab2door we appreciate the partners’ time and, thus, we always compensate the time spent on the road to the passenger if the trip never took place. In that case, user can be charged with a volume of 40 USD, if: -you cancelled trip more than 5 minutes after you have accepted the request -you are late for more than 5 minutes after driver has arrived at the pickup location, and you didn’t contact the driver to let him know about your delay User doesn’t charged a cancellation fee, if: -you cancelled trip during first 5 minutes after making request -driver is late for more than 5 minutes (after ETA, which you’ve accepted while made request) Mention that if you are late, you can notify driver that you are late via call or sms.', 'ما هي رسوم الإلغاء؟', 'في Cab2door نقدر وقت الشركاء ، وبالتالي ، فإننا نعوض دائمًا الوقت الذي يقضيه الراكب على الطريق إذا لم تحدث الرحلة مطلقًا. في هذه الحالة ، يمكن تحميل المستخدم مبلغ 40 دولارًا أمريكيًا ، إذا: - ألغيت الرحلة بعد أكثر من 5 دقائق من قبولك للطلب - تأخرت لأكثر من 5 دقائق بعد وصول السائق إلى موقع الالتقاء ، و لم تتصل بالسائق لإخباره بالتأخير الذي أجريته ، لم يتقاضى المستخدم رسوم إلغاء ، إذا: - ألغيت الرحلة خلال أول 5 دقائق بعد تقديم الطلب - تأخر السائق لأكثر من 5 دقائق (بعد ETA ، والتي لقد قبلت أثناء تقديم الطلب) اذكر أنه إذا تأخرت ، يمكنك إخطار السائق بأنك تأخرت عن طريق الاتصال أو الرسائل القصيرة.', 1, '2021-03-01 10:00:28', '2021-03-06 07:14:04'),
(2, 1, 1, 'How to change language settings of the app?', 'Cab2door app automatically sets the language based on the language settings of your device, so in order to change the language of the application, you should change the language settings of your smartphone.', 'كيفية تغيير إعدادات لغة التطبيق؟', 'يضبط تطبيق Cab2door اللغة تلقائيًا بناءً على إعدادات اللغة بجهازك ، لذلك لتغيير لغة التطبيق ، يجب عليك تغيير إعدادات اللغة بهاتفك الذكي.', 1, '2021-03-01 10:01:18', '2021-03-06 07:15:35'),
(3, 1, 1, 'Do you provide self drive cars?', 'Sorry, we do not provide self-drive cars. Our driver drives up to your doorstep with the vehicle and drives you around during your entire journey.', 'هل تقدمون سيارات ذاتية القيادة؟', 'عذرا ، نحن لا نقدم سيارات ذاتية القيادة. سائقنا يقود سيارتك حتى عتبة داركم بالسيارة ويقودك خلال رحلتك بأكملها.', 1, '2021-03-01 10:02:09', '2021-03-06 07:16:07'),
(4, 1, 1, 'What if my cab shows up late?', 'We are proud of our on-time performance but sometimes delays do happen. If the nature of your booking is time-sensative ...involving an airport pickup/drop or meeting at your destination, please budget for additional travel time (usually add 30mins for traffic delays for every 2 hours of estimated travel time) and also let us know of this as a special request when making your reservation. We will make additional efforts to ensure that we\'re vigilant and ensure a safe & punctual transit for you. if for any case, your cab is delayed and you have to cancel your reservation we will issue a full refund of any payment that you may have made in the form of advance towards the taxi reservation', 'ماذا لو تأخرت سيارتي؟', 'نحن فخورون بأدائنا في الوقت المحدد ولكن في بعض الأحيان يحدث تأخير. إذا كانت طبيعة حجزك حساسة للوقت ... بما في ذلك النقل من المطار / النزول أو الاجتماع في وجهتك ، فالرجاء تخصيص ميزانية لوقت السفر الإضافي (عادةً ما تضيف 30 دقيقة لتأخير حركة المرور لكل ساعتين من وقت السفر المقدر) وكذلك السماح نحن نعرف هذا كطلب خاص عند إجراء الحجز الخاص بك. سنبذل جهودًا إضافية للتأكد من أننا يقظين ونضمن لك عبورًا آمنًا ودقيقًا. إذا تأخرت سيارة الأجرة الخاصة بك على أي حال وكان عليك إلغاء الحجز الخاص بك ، فسنقوم بإرجاع كامل المبلغ المدفوع الذي ربما تكون قد سددته في شكل مقدم تجاه حجز سيارة الأجرة', 1, '2021-03-01 10:03:20', '2021-03-06 07:16:43'),
(5, 1, 1, 'What if the cab breaks down during the journey?', 'All our taxi\'s are regularly inspected along over 30 different points. However, breakdowns cannot be anticipated and do happen. In those cases, we expediently arrange a backup cab to ensure that your travel plans continue uninterrupted and with the least possible delay.', NULL, NULL, 1, '2021-03-01 10:04:00', '2021-03-01 10:04:00'),
(6, 1, 1, 'Do you provide an English-speaking driver?', 'We do try our best to provide a English speaking driver if the request is received on your booking under the additional requests section ahead of time. This is generally subject to availability of a English-speaking driver. If you are not a resident of the region, we suggest that you install Google Translate on your phone. Using the apps voice transcription features, you can speak in your native language and the app would translate it into spoken words of the language of your choice.', NULL, NULL, 1, '2021-03-01 10:04:46', '2021-03-01 10:04:46'),
(7, 1, 1, 'How can I get a bill/receipt for my trip?', 'Invoices are automatically generated and sent to you by email for every trip that you complete with us.', NULL, NULL, 1, '2021-03-01 10:05:32', '2021-03-01 10:05:32'),
(8, 1, 2, 'how to enter or change my destinations', 'You will need to enter your destination before confirming your booking. You can do this by: Entering the address in the ‘destination’ field at the top of the screen. You can also change your destination during your ride by: Clicking ‘Edit’ and entering the correct destination', 'كيف أدخل وجهتي أو أغيرها', 'ستحتاج إلى إدخال وجهتك قبل تأكيد حجزك. يمكنك القيام بذلك عن طريق: إدخال العنوان في حقل \"الوجهة\" أعلى الشاشة. يمكنك أيضًا تغيير وجهتك أثناء رحلتك عن طريق: النقر على \"تعديل\" وإدخال الوجهة الصحيحة', 1, '2021-03-01 10:09:21', '2021-03-01 10:09:21'),
(9, 1, 2, 'how to track your ride', 'Once your booking is confirmed, you’ll be able to track your ride and see the following details on your app in real time: Your driver’s ETA and current location. The driver’s route to your pick-up address. The entire route of your ride.', 'كيفية تتبع رحلتك', 'بمجرد تأكيد حجزك ، ستتمكن من تتبع رحلتك والاطلاع على التفاصيل التالية على تطبيقك في الوقت الفعلي: الوقت المقدر للسائق والموقع الحالي. طريق السائق إلى عنوان سيارتك. المسار الكامل لرحلتك.', 1, '2021-03-01 10:10:06', '2021-03-01 10:10:06'),
(10, 1, 2, 'how to rate our ride', 'Ratings enable us to ensure both our riders and drivers are having a great experience using Ola. You’ll always be prompted to rate your driver after you take a ride with us. Once you reach your destination, a notification will appear that will prompt you to rate your driver. You’ll be able to rate your ride from 1 to 5 stars. Select certain fields about the ride and provide specific details.', 'كيف تقيم رحلتنا', 'تمكننا التقييمات من ضمان تمتع كل من ركابنا وسائقينا بتجربة رائعة باستخدام Ola. ستتم مطالبتك دائمًا بتقييم سائقك بعد أن تأخذ مشوارًا معنا. بمجرد وصولك إلى وجهتك ، سيظهر إشعار يطالبك بتقييم سائقك. ستتمكن من تقييم رحلتك من نجمة إلى 5 نجوم. حدد حقولًا معينة حول الرحلة وقدم تفاصيل محددة.', 1, '2021-03-01 10:10:54', '2021-03-01 10:10:54'),
(11, 2, 1, 'What is cancellation fee?', 'In Cab2door we appreciate the partners’ time and, thus, we always compensate the time spent on the road to the passenger if the trip never took place. In that case, user can be charged with a volume of 40 USD, if: -you cancelled trip more than 5 minutes after you have accepted the request -you are late for more than 5 minutes after driver has arrived at the pickup location, and you didn’t contact the driver to let him know about your delay User doesn’t charged a cancellation fee, if: -you cancelled trip during first 5 minutes after making request -driver is late for more than 5 minutes (after ETA, which you’ve accepted while made request) Mention that if you are late, you can notify driver that you are late via call or sms.', 'ما هي رسوم الإلغاء؟', 'في Cab2door نقدر وقت الشركاء ، وبالتالي ، فإننا نعوض دائمًا الوقت الذي يقضيه الراكب على الطريق إذا لم تحدث الرحلة مطلقًا. في هذه الحالة ، يمكن تحميل المستخدم مبلغ 40 دولارًا أمريكيًا ، إذا: - ألغيت الرحلة بعد أكثر من 5 دقائق من قبولك للطلب - تأخرت لأكثر من 5 دقائق بعد وصول السائق إلى موقع الالتقاء ، و لم تتصل بالسائق لإخباره بالتأخير الذي أجريته ، لم يتقاضى المستخدم رسوم إلغاء ، إذا: - ألغيت الرحلة خلال أول 5 دقائق بعد تقديم الطلب - تأخر السائق لأكثر من 5 دقائق (بعد ETA ، والتي لقد قبلت أثناء تقديم الطلب) اذكر أنه إذا تأخرت ، يمكنك إخطار السائق بأنك تأخرت عن طريق الاتصال أو الرسائل القصيرة.', 1, '2021-05-15 09:16:22', '2021-05-18 07:52:53'),
(12, 2, 1, 'How to change language settings of the app?', 'Cab2door app automatically sets the language based on the language settings of your device, so in order to change the language of the application, you should change the language settings of your smartphone.', 'كيفية تغيير إعدادات لغة التطبيق؟', 'يضبط تطبيق Cab2door اللغة تلقائيًا بناءً على إعدادات اللغة بجهازك ، لذلك لتغيير لغة التطبيق ، يجب عليك تغيير إعدادات اللغة بهاتفك الذكي.', 1, '2021-05-15 09:17:47', '2021-05-18 07:53:04'),
(13, 6, 1, 'Do you provide self drive cars?', 'Sorry, we do not provide self-drive cars. Our driver drives up to your doorstep with the vehicle and drives you around during your entire journey.', 'هل تقدمون سيارات ذاتية القيادة؟', 'عذرا ، نحن لا نقدم سيارات ذاتية القيادة. سائقنا يقود سيارتك حتى عتبة داركم بالسيارة ويقودك خلال رحلتك بأكملها.', 1, '2021-05-15 09:18:46', '2022-10-29 04:36:14'),
(14, 2, 2, 'How to enter or change my destinations?', 'You will need to enter your destination before confirming your booking. You can do this by: Entering the address in the ‘destination’ field at the top of the screen. You can also change your destination during your ride by: Clicking ‘Edit’ and entering the correct destination', 'كيف أدخل وجهتي أو أغيرها', 'ستحتاج إلى إدخال وجهتك قبل تأكيد حجزك. يمكنك القيام بذلك عن طريق: إدخال العنوان في حقل \"الوجهة\" أعلى الشاشة. يمكنك أيضًا تغيير وجهتك أثناء رحلتك عن طريق: النقر على \"تعديل\" وإدخال الوجهة الصحيحة', 1, '2021-05-15 09:20:07', '2021-05-18 07:53:23'),
(15, 2, 2, 'How to track your ride?', 'Once your booking is confirmed, you’ll be able to track your ride and see the following details on your app in real time: Your driver’s ETA and current location. The driver’s route to your pick-up address. The entire route of your ride.', 'كيفية تتبع رحلتك', 'بمجرد تأكيد حجزك ، ستتمكن من تتبع رحلتك والاطلاع على التفاصيل التالية على تطبيقك في الوقت الفعلي: الوقت المقدر للسائق والموقع الحالي. طريق السائق إلى عنوان سيارتك. المسار الكامل لرحلتك.', 1, '2021-05-15 09:21:11', '2021-05-18 07:53:33'),
(16, 2, 2, 'How to rate our ride?', 'Ratings enable us to ensure both our riders and drivers are having a great experience using Ola. You’ll always be prompted to rate your driver after you take a ride with us. Once you reach your destination, a notification will appear that will prompt you to rate your driver. You’ll be able to rate your ride from 1 to 5 stars. Select certain fields about the ride and provide specific details.', 'كيف تقيم رحلتنا', 'تمكننا التقييمات من ضمان تمتع كل من ركابنا وسائقينا بتجربة رائعة باستخدام Ola. ستتم مطالبتك دائمًا بتقييم سائقك بعد أن تأخذ مشوارًا معنا. بمجرد وصولك إلى وجهتك ، سيظهر إشعار يطالبك بتقييم سائقك. ستتمكن من تقييم رحلتك من نجمة إلى 5 نجوم. حدد حقولًا معينة حول الرحلة وقدم تفاصيل محددة.', 1, '2021-05-15 09:22:35', '2021-05-18 07:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `fare_management`
--

CREATE TABLE `fare_management` (
  `id` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL DEFAULT 0,
  `fare_type` float NOT NULL,
  `base_fare` float NOT NULL,
  `price_per_km` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_settings`
--

CREATE TABLE `feature_settings` (
  `id` int(11) NOT NULL,
  `enable_sms` int(2) NOT NULL,
  `enable_mail` int(2) NOT NULL,
  `enable_referral_module` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instant_offers`
--

CREATE TABLE `instant_offers` (
  `id` int(11) NOT NULL,
  `discount_type` int(11) NOT NULL DEFAULT 1,
  `discount` varchar(10) NOT NULL,
  `offer_name` varchar(150) NOT NULL,
  `offer_description` text NOT NULL,
  `offer_name_ar` varchar(150) DEFAULT NULL,
  `offer_description_ar` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lucky_offers`
--

CREATE TABLE `lucky_offers` (
  `id` int(11) NOT NULL,
  `offer_name` varchar(250) NOT NULL,
  `offer_description` text DEFAULT NULL,
  `offer_name_ar` varchar(150) DEFAULT NULL,
  `offer_description_ar` text DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_contents`
--

CREATE TABLE `mail_contents` (
  `id` int(11) NOT NULL,
  `code` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `title_ar` varchar(250) DEFAULT NULL,
  `content_ar` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `code` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(500) NOT NULL,
  `message_ar` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `missed_trip_requests`
--

CREATE TABLE `missed_trip_requests` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `weight` float NOT NULL DEFAULT 0.25,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `missed_trip_requests`
--

INSERT INTO `missed_trip_requests` (`id`, `customer_id`, `country_id`, `zone`, `latitude`, `longitude`, `weight`, `created_at`, `updated_at`) VALUES
(1, 10, 2, 0, 37.669357047059, 71.825374681503, 0.25, '2022-12-24 15:37:03', '2022-12-24 15:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `notification_messages`
--

CREATE TABLE `notification_messages` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `type` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(250) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(250) DEFAULT NULL,
  `message_ar` text DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_messages`
--

INSERT INTO `notification_messages` (`id`, `country_id`, `type`, `title`, `message`, `title_ar`, `message_ar`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'First Order Offer', 'Festival Offer! Get started your ride! Keep Purchasing with fast ride. Enter your destination address in the \"Where to?\" box, or tap a shortcut icon at the bottom of your screen. Shortcuts include recent destinations from your ride history or custom \"Saved Places\" you can set in your app, Your default pickup point is set to your current GPS location. If you are not being picked up at your current location, tap your pickup location on the map and update the address. When your request has been accepted, you\'ll see your driver\'s location on your map and an estimated time of arrival at your pickup location Remember to keep each stop under 3 minutes. If you\'re splitting your fare, it will be split for the entire ride, not split by the cost to each stop.Creating an Uber account requires a valid email address and phone number. You\'ll also need to create a password and agree to terms and conditions and our privacy notice.', 'عرض الطلب الأول', 'عرض المهرجان! ابدأ رحلتك! استمر في الشراء مع الركوب السريع. أدخل عنوان وجهتك في \"إلى أين؟\" مربع ، أو انقر فوق رمز الاختصار في الجزء السفلي من الشاشة. تتضمن الاختصارات الوجهات الأخيرة من سجل رحلتك أو \"الأماكن المحفوظة\" المخصصة التي يمكنك تعيينها في تطبيقك ، ويتم تعيين نقطة الالتقاط الافتراضية على موقع GPS الحالي الخاص بك. إذا لم يتم اصطحابك في موقعك الحالي ، فانقر فوق موقع الالتقاط على الخريطة وقم بتحديث العنوان. عندما يتم قبول طلبك ، سترى موقع الشريك السائق على خريطتك والوقت المقدر للوصول إلى موقع الالتقاء الخاص بك. إذا كنت تقوم بتقسيم الأجرة الخاصة بك ، فسيتم تقسيمها للرحلة بأكملها ، وليس حسب التكلفة لكل محطة. يتطلب إنشاء حساب Uber عنوان بريد إلكتروني ورقم هاتف صالحين. ستحتاج أيضًا إلى إنشاء كلمة مرور والموافقة على الشروط والأحكام وإشعار الخصوصية الخاص بنا.', 'image/1a92cbe24f054a8cc2d9fe57f0a12d89.png', 1, '2021-05-18 09:08:21', '2022-12-18 11:45:57'),
(2, 1, '2', 'Your details are approved', 'Hi, this is the notification that your driver details are approved, When a new processor is added to the vendor, the operating system sends this notification to device drivers after the operating system has started the new processor, but before the operating system begins scheduling threads on the processor. When a device driver receives this notification, it can allocate any per processor data structures and assign any other per processor resources to the new processor. This prepares the device driver to run its dispatch routines, interrupt service routines (ISRs), deferred procedure calls (DPCs), and any other driver threads on the new processor.Fill in your first and last name, phone number, and preferred language. Once you complete this part of the signup process, we send a text SMS to verify your phone number.After you provide this info, we\'ll send an email to confirm your account registration. Once you confirm, you\'ll be able to use your app to request a ride.', 'تمت الموافقة على التفاصيل الخاصة بك', 'مرحبًا ، هذا هو الإشعار الخاص بالموافقة على تفاصيل برنامج التشغيل الخاص بك ، عند إضافة معالج جديد إلى البائع ، يرسل نظام التشغيل هذا الإخطار إلى برامج تشغيل الجهاز بعد أن يبدأ نظام التشغيل المعالج الجديد ، ولكن قبل أن يبدأ نظام التشغيل في جدولة مؤشرات الترابط على المعالج. عندما يتلقى برنامج تشغيل الجهاز هذا الإشعار ، يمكنه تخصيص أي هياكل بيانات لكل معالج وتعيين أي موارد أخرى لكل معالج إلى المعالج الجديد. يعمل هذا على إعداد برنامج تشغيل الجهاز لتشغيل إجراءات الإرسال وإجراءات خدمة المقاطعة (ISRs) ومكالمات الإجراءات المؤجلة (DPCs) وأي مؤشرات ترابط أخرى لبرنامج التشغيل على المعالج الجديد. املأ اسمك الأول والأخير ورقم الهاتف واللغة المفضلة. بمجرد إكمال هذا الجزء من عملية التسجيل ، نرسل رسالة نصية قصيرة للتحقق من رقم هاتفك ، وبعد تقديم هذه المعلومات ، سنرسل بريدًا إلكترونيًا لتأكيد تسجيل حسابك بمجرد التأكيد ، ستتمكن من استخدام التطبيق الخاص بك لطلب مشوار.', 'image/dc818a792b51ead5ce9ea1ebb9ad7d10.jpg', 1, '2021-05-18 09:09:47', '2021-05-18 09:09:47'),
(3, 1, '1', 'Cancel trip offer', 'Before you cancel a cash trip, you will receive a notification to ensure that you are aware of the fee that will be added to your next trip\r\nAfter completing your next trip, the total fare that you will pay will include the fare as well as the previous trip’s cancellation fee.\r\nIf you have cancelled multiple cash trips consecutively, the cancellation fees for the multiple trips will accumulate as arrears and prevent any more requests from going through. In such cases, you’re expected to clear the arrears using an alternative payment method, such as a credit or debit card. Once the payments in arrears have been cleared, you will be able to request an taxi as usual.', 'إلغاء عرض الرحلة', 'قبل إلغاء رحلة نقدية ، ستتلقى إشعارًا للتأكد من أنك على علم بالرسوم التي ستتم إضافتها إلى رحلتك التالية\r\nبعد الانتهاء من رحلتك التالية ، سيتضمن إجمالي الأجرة التي ستدفعها الأجرة بالإضافة إلى رسوم إلغاء الرحلة السابقة.\r\nإذا قمت بإلغاء عدة رحلات نقدية متتالية ، فسوف تتراكم رسوم الإلغاء للرحلات المتعددة كمتأخرات وتمنع أي طلبات أخرى من المرور. في مثل هذه الحالات ، يُتوقع منك تسوية المتأخرات باستخدام طريقة دفع بديلة ، مثل بطاقة الائتمان أو الخصم. بمجرد تسوية المدفوعات المتأخرة ، ستتمكن من طلب Uber كالمعتاد.', 'image/5ca000c39a043d3a96462660c12a257e.png', 1, '2021-05-18 09:12:08', '2021-05-18 09:22:17'),
(4, 1, '2', 'How do I make $100 a day on taxi?', 'putting in the hours and patience. I average $10 per trip and about $15 per hour. Sometimes it is easy and within 3 hours, I have surpassed the $100 mark. Other times, I sit and wait for hours.\r\n\r\nI’ll drive from the airport sometimes to get into town and hit the downtown crowds just before/after dinner, late night is good but stressful (or funny, depending on your patience)., Finding a good location in your area is key… I know that if I park at an intersection that gives me multiple areas (north and west in my case), that I’ll have a pickup in a few minutes (good for the weekday mid evening times).', 'كيف أجني 100 دولار في اليوم بسيارة أجرة؟', 'وضع الساعات والصبر. متوسط ​​10 دولارات للرحلة وحوالي 15 دولارًا في الساعة. في بعض الأحيان يكون الأمر سهلاً وفي غضون 3 ساعات ، تجاوزت علامة 100 دولار. في أوقات أخرى ، أجلس وانتظر لساعات.\r\n\r\nسأقود من المطار أحيانًا للوصول إلى المدينة وأضرب حشود وسط المدينة قبل / بعد العشاء مباشرة ، وقت متأخر من الليل يكون جيدًا ولكنه مرهق (أو مضحك ، اعتمادًا على صبرك). ، العثور على موقع جيد في منطقتك هو المفتاح ... أعلم أنه إذا أوقفت سيارتي عند تقاطع يعطيني مناطق متعددة (الشمال والغرب في حالتي) ، فسوف أحصل على سيارة بيك آب في غضون بضع دقائق (مناسبة لأيام الأسبوع في منتصف المساء).', 'image/87b8493836c90d2cd2a707dffcd7f0e1.jpg', 1, '2021-05-18 09:18:16', '2021-05-18 09:18:16'),
(9, 6, '1', 'First order offer', 'estival Offer! Get started your ride! Keep Purchasing with fast ride. Enter your destination address in the \"Where to?\" box, or tap a shortcut icon at the bottom of your screen. Shortcuts include recent destinations from your ride history or custom \"Saved Places\" you can set in your app, Your default pickup point is set to your current GPS location. If you are not being picked up at your current location, tap your pickup location on the map and update the address. When your request has been accepted, you\'ll see your driver\'s location on your map and an estimated time of arrival at your pickup location Remember to keep each stop under 3 minutes. If you\'re splitting your fare, it will be split for the entire ride, not split by the cost to each stop.Creating an Uber account requires a valid email address and phone number. You\'ll also need to create a password and agree to terms and conditions and our privacy notice.', NULL, NULL, 'image/88bcba731023ee087d7e15b0c57ee3eb.jpg', 1, '2022-10-29 13:46:26', '2022-10-29 13:46:26'),
(10, 1, '1', 'Hiii', 'Testing chennai', NULL, 'Hiii', 'image/3617cf7dcf8517d6e0d31c9fd621b349.jpg', 1, '2022-12-13 09:30:09', '2022-12-13 09:30:09'),
(11, 1, '1', 'Test', 'Test', NULL, NULL, 'image/db59c135619fa7cf39768dc14db98e9f.jfif', 1, '2022-12-17 11:02:01', '2022-12-17 11:02:01'),
(12, 1, '2', 'Test', 'Test', NULL, NULL, 'image/bcb6a027e22f707881fb788d84b02d63.jfif', 1, '2022-12-17 11:03:08', '2022-12-17 11:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `offer_types`
--

CREATE TABLE `offer_types` (
  `id` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outstation_fare_management`
--

CREATE TABLE `outstation_fare_management` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL DEFAULT 0,
  `trip_sub_type_id` int(11) NOT NULL,
  `base_fare` varchar(250) NOT NULL,
  `price_per_km` varchar(250) NOT NULL,
  `driver_allowance` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outstation_fare_management`
--

INSERT INTO `outstation_fare_management` (`id`, `country_id`, `vehicle_type`, `trip_sub_type_id`, `base_fare`, `price_per_km`, `driver_allowance`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '50', '10', '100', 1, '2022-12-18 11:23:07', '2022-12-18 11:23:07'),
(2, 1, 2, 1, '50', '10', '100', 1, '2022-12-18 11:23:24', '2022-12-18 11:23:24'),
(3, 1, 3, 1, '50', '10', '100', 1, '2022-12-18 11:23:41', '2022-12-18 11:23:41'),
(4, 1, 1, 2, '100', '20', '200', 1, '2022-12-18 11:24:00', '2022-12-18 11:24:00'),
(5, 1, 2, 2, '100', '20', '200', 1, '2022-12-18 11:24:21', '2022-12-18 11:24:21'),
(6, 1, 3, 2, '100', '20', '200', 1, '2022-12-18 11:24:40', '2022-12-18 11:24:40'),
(7, 2, 5, 1, '50', '10', '6', 1, '2022-12-26 09:38:51', '2022-12-26 09:38:51'),
(8, 2, 6, 1, '10', '12', '6', 1, '2022-12-26 09:39:13', '2022-12-26 09:39:13'),
(9, 2, 7, 1, '12', '6', '3', 1, '2022-12-26 09:39:33', '2022-12-26 09:39:33'),
(10, 2, 5, 2, '50', '10', '6', 1, '2022-12-26 09:39:52', '2022-12-26 09:39:52'),
(11, 2, 6, 2, '12', '10', '2', 1, '2022-12-26 09:40:12', '2022-12-26 09:40:12'),
(12, 2, 7, 2, '10', '6', '3', 1, '2022-12-26 09:40:36', '2022-12-26 09:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `package_name` varchar(250) NOT NULL,
  `package_name_ar` varchar(150) DEFAULT NULL,
  `hours` varchar(250) NOT NULL,
  `kilometers` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_name_ar`, `hours`, `kilometers`, `created_at`, `updated_at`) VALUES
(1, 'Minimum', 'Minimum', '1', '5', '2022-12-18 11:16:00', '2022-12-18 11:16:00'),
(2, 'Normal', 'Normal', '2', '10', '2022-12-18 11:16:23', '2022-12-18 11:16:23'),
(3, 'Moderate', 'Moderate', '3', '15', '2022-12-18 11:16:39', '2022-12-18 11:16:39'),
(4, 'Maximum', 'Maximum', '4', '20', '2022-12-18 11:16:58', '2022-12-18 11:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_histories`
--

CREATE TABLE `payment_histories` (
  `id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `amount` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `payment` varchar(250) NOT NULL,
  `payment_ar` varchar(250) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `country_id`, `payment`, `payment_ar`, `payment_type`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cash', 'نقدي', 1, 'image/ef208bf91ebd4c54cb9903b7dc0c7d71.webp', 1, '2021-05-18 07:30:05', '2022-12-18 11:28:41'),
(2, 1, 'Wallet', 'محفظة', 2, 'image/9163f13f7babc3016454e270e7fa016c.webp', 1, '2021-05-18 07:32:05', '2022-12-18 11:29:11'),
(3, 1, 'Cash/Wallet', 'النقدية / المحفظة', 3, 'image/3b67208da8e5be3dad103621aa3fdd94.png', 1, '2021-05-18 07:33:10', '2022-12-18 11:29:46'),
(4, 1, 'Subscription', 'الاشتراك', 4, 'image/0e90215cacc8c8f76adc7831d2be2cb3.png', 1, '2022-10-03 06:21:45', '2022-12-18 11:30:23'),
(5, 1, 'Razorpay', 'رازورباي', 5, 'image/3db6164079427083d8efee2d419b9337.png', 1, '2022-10-03 07:29:49', '2022-12-24 09:36:44'),
(6, 1, 'Stripe', 'شريط', 6, 'image/455dcf38a40ee8c48b05a61531689701.png', 2, '2022-10-03 07:29:49', '2022-12-24 00:39:27'),
(30, 2, 'Cash', 'نقدي', 1, 'image/3e1d506d45d019496188bf1ac65bc717.webp', 1, '2022-12-24 00:40:53', '2022-12-24 00:40:53'),
(31, 2, 'Wallet', 'محفظة', 2, 'image/7ede35db97683a03f3890dbc074086b7.webp', 1, '2022-12-24 00:42:04', '2022-12-24 00:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(250) NOT NULL,
  `payment_type_ar` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `payment_type`, `payment_type_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 'نقدي', 1, '2021-03-01 10:17:25', '2021-03-06 07:34:21'),
(2, 'Wallet', 'محفظة', 1, '2021-03-01 10:18:28', '2021-03-06 07:34:40'),
(3, 'Cash/Wallet', 'النقدية / المحفظة', 1, '2021-03-01 10:19:03', '2021-03-06 07:35:02'),
(4, 'Subscription', 'الاشتراك', 1, '2021-10-07 05:53:42', '2021-10-07 05:53:42'),
(5, 'Razorpay', 'رازورباي', 1, '2022-10-03 06:12:01', '2022-10-03 06:12:01'),
(6, 'Stripe', 'شريط', 1, '2022-10-03 06:12:01', '2022-10-03 06:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settings`
--

CREATE TABLE `paypal_settings` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `title_ar` varchar(250) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `country_id`, `slug`, `title`, `description`, `title_ar`, `description_ar`, `status`, `created_at`, `updated_at`, `user_type_id`) VALUES
(1, 1, '', 'Information', 'We collect information you provide to us in connection with our Services, such as when you create or update your account, log into your account, request or reserve transportation, contact our customer service, or otherwise communicate with us via telephone, our websites, mobile applications or otherwise. This information includes your name, telephone number, email address, mailing address, photographs or other text or images you use, e.g., for your profile, the types of Services you request (collectively, “Personal Information”), as well as transaction details, billing and payment information, and other information you use or provide to us in using the Services. If you do not wish to provide any Personal Information, you may simply decline to use our Services.', 'معلومة', 'نقوم بجمع المعلومات التي تقدمها لنا فيما يتعلق بخدماتنا ، على سبيل المثال عندما تقوم بإنشاء أو تحديث حسابك ، أو تسجيل الدخول إلى حسابك ، أو طلب أو حجز وسيلة نقل ، أو الاتصال بخدمة العملاء لدينا ، أو التواصل معنا بطريقة أخرى عبر الهاتف ، أو مواقعنا الإلكترونية ، أو الهاتف المحمول. التطبيقات أو غير ذلك. تتضمن هذه المعلومات اسمك ورقم هاتفك وعنوان بريدك الإلكتروني وعنوانك البريدي والصور الفوتوغرافية أو النصوص أو الصور الأخرى التي تستخدمها ، على سبيل المثال ، لملفك الشخصي ، وأنواع الخدمات التي تطلبها (يُشار إليها إجمالاً باسم \"المعلومات الشخصية\") ، فضلاً عن تفاصيل المعاملة ومعلومات الفوترة والدفع والمعلومات الأخرى التي تستخدمها أو تزودنا بها في استخدام الخدمات. إذا كنت لا ترغب في تقديم أي معلومات شخصية ، يمكنك ببساطة رفض استخدام خدماتنا.', 1, '2021-03-01 10:45:16', '2021-03-06 07:49:50', 1),
(2, 1, 'location', 'Location', 'In order for us to be able to provide your requested Services, you will need to grant us permission to obtain your geographic location from your device. Thereafter, you can disable this function in the settings of your device, understanding that you may not be able to avail yourself of our Services that require your location.', 'موقع', 'لكي نتمكن من تقديم الخدمات المطلوبة ، ستحتاج إلى منحنا إذنًا بالحصول على موقعك الجغرافي من جهازك. بعد ذلك ، يمكنك تعطيل هذه الوظيفة في إعدادات جهازك ، مع العلم أنك قد لا تتمكن من الاستفادة من خدماتنا التي تتطلب موقعك.', 1, '2021-03-01 11:02:19', '2022-05-20 05:08:44', 1),
(3, 1, 'driver_notes', 'Driver notes', 'The personal data of those who order or receive trips or deliveries via partner websites or apps (such as when ordering from a restaurant or grocery store), or arranged by other account owners (collectively “Guest Users”) is used solely to provide such trips, deliveries, or other services requested through a third party, and for purposes of safety and security, customer support, research and development, enabling communication between users, and in connection with legal proceedings and requirements, each as described in “How we use personal data” below. Guest User data may be shared with third parties for these purposes. Such data may be associated with, and accessible by, the owner of that account. This specifically includes Guest Users who receive rides/deliveries ordered by owners of Uber Health, Uber Central, Uber Direct or Uber for Business accounts, or who receive rides or deliveries ordered by friends, family members or others. To submit questions, comments or complaints regarding Guest User data, or to submit requests regarding such data', 'ملاحظات السائق', 'تُستخدم البيانات الشخصية لأولئك الذين يطلبون أو يستقبلون الرحلات أو التوصيلات عبر مواقع الويب أو التطبيقات الشريكة (على سبيل المثال عند الطلب من مطعم أو متجر بقالة) ، أو يتم ترتيبها بواسطة مالكي حسابات آخرين (يشار إليهم جميعًا باسم \"المستخدمون الضيوف\") فقط لتوفير هذه الرحلات أو عمليات التسليم أو الخدمات الأخرى المطلوبة من خلال طرف ثالث ، ولأغراض السلامة والأمن ، ودعم العملاء ، والبحث والتطوير ، وتمكين الاتصال بين المستخدمين ، وفيما يتعلق بالإجراءات والمتطلبات القانونية ، كل على النحو الموضح في \"كيف نستخدم الشخصية البيانات \"أدناه. قد تتم مشاركة بيانات المستخدم الضيف مع جهات خارجية لهذه الأغراض. قد تكون هذه البيانات مرتبطة بمالك هذا الحساب ويمكن الوصول إليه من قبله. يشمل هذا تحديدًا المستخدمين الضيوف الذين يتلقون المشاوير / التوصيلات التي طلبها مالكو حسابات Uber Health أو Uber Central أو Uber Direct أو Uber for Business ، أو الذين يتلقون المشاوير أو التوصيلات التي طلبها الأصدقاء أو أفراد العائلة أو غيرهم. لتقديم أسئلة أو تعليقات أو شكاوى بخصوص بيانات المستخدم الضيف ، أو لتقديم طلبات بخصوص هذه البيانات', 1, '2021-03-01 12:43:33', '2022-05-20 05:08:57', 2),
(4, 1, 'driver_data', 'Devices data', 'We collect data generated by rental devices, such as bicycles, scooters, or other light electric vehicles or devices, when they’re in use. This includes the date and time of use, and the location, route, and distance traveled. To the extent permitted by law, the location data collected from the rental device during the trip will be linked to the renter’s account, even if they have not enabled Uber to collect location data from their mobile device. In certain jurisdictions, and where permitted by law, users can record the audio of their trips through an in-app feature. Recordings are encrypted and stored on users’ devices, and are only shared with Uber if submitted to customer support by the users in connection with safety incidents.', 'بيانات الأجهزة', 'نجمع البيانات التي تم إنشاؤها بواسطة الأجهزة المستأجرة ، مثل الدراجات أو الدراجات البخارية أو غيرها من المركبات أو الأجهزة الكهربائية الخفيفة ، عندما تكون قيد الاستخدام. يتضمن ذلك تاريخ ووقت الاستخدام والموقع والطريق والمسافة المقطوعة. إلى الحد الذي يسمح به القانون ، سيتم ربط بيانات الموقع التي تم جمعها من الجهاز المستأجر أثناء الرحلة بحساب المستأجر ، حتى إذا لم يتم تمكين أوبر من جمع بيانات الموقع من أجهزتهم المحمولة. في بعض الولايات القضائية ، وحيثما يسمح القانون ، يمكن للمستخدمين تسجيل صوت رحلاتهم من خلال ميزة داخل التطبيق. يتم تشفير التسجيلات وتخزينها على أجهزة المستخدمين ، ولا تتم مشاركتها إلا مع Uber إذا تم إرسالها إلى دعم العملاء من قبل المستخدمين فيما يتعلق بحوادث السلامة.', 1, '2021-03-01 12:45:00', '2022-05-20 05:09:11', 2),
(5, 2, 'information', 'Information', 'We collect information you provide to us in connection with our Services, such as when you create or update your account, log into your account, request or reserve transportation, contact our customer service, or otherwise communicate with us via telephone, our websites, mobile applications or otherwise. This information includes your name, telephone number, email address, mailing address, photographs or other text or images you use, e.g., for your profile, the types of Services you request (collectively, “Personal Information”), as well as transaction details, billing and payment information, and other information you use or provide to us in using the Services. If you do not wish to provide any Personal Information, you may simply decline to use our Services.', 'معلومة', 'نقوم بجمع المعلومات التي تقدمها لنا فيما يتعلق بخدماتنا ، على سبيل المثال عندما تقوم بإنشاء أو تحديث حسابك ، أو تسجيل الدخول إلى حسابك ، أو طلب أو حجز وسيلة نقل ، أو الاتصال بخدمة العملاء لدينا ، أو التواصل معنا بطريقة أخرى عبر الهاتف ، أو مواقعنا الإلكترونية ، أو الهاتف المحمول. التطبيقات أو غير ذلك. تتضمن هذه المعلومات اسمك ورقم هاتفك وعنوان بريدك الإلكتروني وعنوانك البريدي والصور الفوتوغرافية أو النصوص أو الصور الأخرى التي تستخدمها ، على سبيل المثال ، لملفك الشخصي ، وأنواع الخدمات التي تطلبها (يُشار إليها إجمالاً باسم \"المعلومات الشخصية\") ، فضلاً عن تفاصيل المعاملة ومعلومات الفوترة والدفع والمعلومات الأخرى التي تستخدمها أو تزودنا بها في استخدام الخدمات. إذا كنت لا ترغب في تقديم أي معلومات شخصية ، يمكنك ببساطة رفض استخدام خدماتنا.', 1, '2021-05-15 09:53:59', '2022-12-26 10:56:12', 1),
(6, 2, 'location', 'Location', 'In order for us to be able to provide your requested Services, you will need to grant us permission to obtain your geographic location from your device. Thereafter, you can disable this function in the settings of your device, understanding that you may not be able to avail yourself of our Services that require your location.', 'موقع', 'لكي نتمكن من تقديم الخدمات المطلوبة ، ستحتاج إلى منحنا إذنًا بالحصول على موقعك الجغرافي من جهازك. بعد ذلك ، يمكنك تعطيل هذه الوظيفة في إعدادات جهازك ، مع العلم أنك قد لا تتمكن من الاستفادة من خدماتنا التي تتطلب موقعك.', 1, '2021-05-15 09:54:57', '2022-05-20 05:09:55', 1),
(7, 2, 'driver_notes', 'Driver notes', 'The personal data of those who order or receive trips or deliveries via partner websites or apps (such as when ordering from a restaurant or grocery store), or arranged by other account owners (collectively “Guest Users”) is used solely to provide such trips, deliveries, or other services requested through a third party, and for purposes of safety and security, customer support, research and development, enabling communication between users, and in connection with legal proceedings and requirements, each as described in “How we use personal data” below. Guest User data may be shared with third parties for these purposes. Such data may be associated with, and accessible by, the owner of that account. This specifically includes Guest Users who receive rides/deliveries ordered by owners of Uber Health, Uber Central, Uber Direct or Uber for Business accounts, or who receive rides or deliveries ordered by friends, family members or others. To submit questions, comments or complaints regarding Guest User data, or to submit requests regarding such data', 'ملاحظات السائق', 'تُستخدم البيانات الشخصية لأولئك الذين يطلبون أو يستقبلون الرحلات أو التوصيلات عبر مواقع الويب أو التطبيقات الشريكة (على سبيل المثال عند الطلب من مطعم أو متجر بقالة) ، أو يتم ترتيبها بواسطة مالكي حسابات آخرين (يشار إليهم جميعًا باسم \"المستخدمون الضيوف\") فقط لتوفير هذه الرحلات أو عمليات التسليم أو الخدمات الأخرى المطلوبة من خلال طرف ثالث ، ولأغراض السلامة والأمن ، ودعم العملاء ، والبحث والتطوير ، وتمكين الاتصال بين المستخدمين ، وفيما يتعلق بالإجراءات والمتطلبات القانونية ، كل على النحو الموضح في \"كيف نستخدم الشخصية البيانات \"أدناه. قد تتم مشاركة بيانات المستخدم الضيف مع جهات خارجية لهذه الأغراض. قد تكون هذه البيانات مرتبطة بمالك هذا الحساب ويمكن الوصول إليه من قبله. يشمل هذا تحديدًا المستخدمين الضيوف الذين يتلقون المشاوير / التوصيلات التي طلبها مالكو حسابات Uber Health أو Uber Central أو Uber Direct أو Uber for Business ، أو الذين يتلقون المشاوير أو التوصيلات التي طلبها الأصدقاء أو أفراد العائلة أو غيرهم. لتقديم أسئلة أو تعليقات أو شكاوى بخصوص بيانات المستخدم الضيف ، أو لتقديم طلبات بخصوص هذه البيانات', 1, '2021-05-15 09:56:05', '2022-05-20 05:11:14', 2),
(8, 2, 'devices_data', 'Devices data', 'We collect data generated by rental devices, such as bicycles, scooters, or other light electric vehicles or devices, when they’re in use. This includes the date and time of use, and the location, route, and distance traveled. To the extent permitted by law, the location data collected from the rental device during the trip will be linked to the renter’s account, even if they have not enabled Uber to collect location data from their mobile device. In certain jurisdictions, and where permitted by law, users can record the audio of their trips through an in-app feature. Recordings are encrypted and stored on users’ devices, and are only shared with Uber if submitted to customer support by the users in connection with safety incidents.', 'بيانات الأجهزة', 'نجمع البيانات التي تم إنشاؤها بواسطة الأجهزة المستأجرة ، مثل الدراجات أو الدراجات البخارية أو غيرها من المركبات أو الأجهزة الكهربائية الخفيفة ، عندما تكون قيد الاستخدام. يتضمن ذلك تاريخ ووقت الاستخدام والموقع والطريق والمسافة المقطوعة. إلى الحد الذي يسمح به القانون ، سيتم ربط بيانات الموقع التي تم جمعها من الجهاز المستأجر أثناء الرحلة بحساب المستأجر ، حتى إذا لم يتم تمكين أوبر من جمع بيانات الموقع من أجهزتهم المحمولة. في بعض الولايات القضائية ، وحيثما يسمح القانون ، يمكن للمستخدمين تسجيل صوت رحلاتهم من خلال ميزة داخل التطبيق. يتم تشفير التسجيلات وتخزينها على أجهزة المستخدمين ، ولا تتم مشاركتها إلا مع Uber إذا تم إرسالها إلى دعم العملاء من قبل المستخدمين فيما يتعلق بحوادث السلامة.', 1, '2021-05-15 09:57:05', '2022-05-20 05:11:43', 2),
(9, 2, 'cancellation_policy', 'Cancellation Policies', 'The minimum night stay at your property. Simply click Edit on your base or seasonal rates and select the desired minimum stay\r\nThe changeover day (the day guests can arrive at your property). Either set it to the day of the week that suits you or keep it flexible. Click Edit on your base or seasonal rates, select Require changeover day and choose an option\r\nhe currency your listing is advertised in. Please note that this should be a currency that you can receive payouts in on PayPal or in your bank account\r\nPlease note: any changes you make will only apply to future bookings, not to an existing booking where the guest has paid the booking deposit. This is because you’ve already agreed on the contract - it keeps things secure for both you and your guest.\r\nFor all free listings and most annual listings using online booking, you’ll need to have a rental agreement attached to all quotes. This is to ensure that there are clear terms agreed between you and the guest should any disputes arise. Our standard rental agreement is the default contract automatically attached to your quotes. You can also upload your own one by going to Booking policies.\r\nFor all free listings and most annual listings using online booking, you’ll need to have a rental agreement attached to all quotes. This is to ensure that there are clear terms agreed between you and the guest should any disputes arise. Our standard rental agreement is the default contract automatically attached to your quotes. You can also upload your own one by going to Booking policies.', NULL, NULL, 1, '2022-05-20 06:47:32', '2022-05-20 08:41:20', 1),
(10, 1, 'cancellation_policy', 'Cancellation Policies', 'The minimum night stay at your property. Simply click Edit on your base or seasonal rates and select the desired minimum stay\r\nThe changeover day (the day guests can arrive at your property). Either set it to the day of the week that suits you or keep it flexible. Click Edit on your base or seasonal rates, select Require changeover day and choose an option\r\nhe currency your listing is advertised in. Please note that this should be a currency that you can receive payouts in on PayPal or in your bank account\r\nPlease note: any changes you make will only apply to future bookings, not to an existing booking where the guest has paid the booking deposit. This is because you’ve already agreed on the contract - it keeps things secure for both you and your guest.\r\nFor all free listings and most annual listings using online booking, you’ll need to have a rental agreement attached to all quotes. This is to ensure that there are clear terms agreed between you and the guest should any disputes arise. Our standard rental agreement is the default contract automatically attached to your quotes. You can also upload your own one by going to Booking policies.\r\nFor all free listings and most annual listings using online booking, you’ll need to have a rental agreement attached to all quotes. This is to ensure that there are clear terms agreed between you and the guest should any disputes arise. Our standard rental agreement is the default contract automatically attached to your quotes. You can also upload your own one by going to Booking policies.', NULL, NULL, 1, '2022-05-20 07:14:51', '2022-05-20 08:39:28', 1),
(11, 7, 'cancellation_policy', 'Cancellation Policy', 'The minimum night stay at your property. Simply click Edit on your base or seasonal rates and select the desired minimum stay\r\nThe changeover day (the day guests can arrive at your property). Either set it to the day of the week that suits you or keep it flexible. Click Edit on your base or seasonal rates, select Require changeover day and choose an option\r\nhe currency your listing is advertised in. Please note that this should be a currency that you can receive payouts in on PayPal or in your bank account\r\nPlease note: any changes you make will only apply to future bookings, not to an existing booking where the guest has paid the booking deposit. This is because you’ve already agreed on the contract - it keeps things secure for both you and your guest.\r\nFor all free listings and most annual listings using online booking, you’ll need to have a rental agreement attached to all quotes. This is to ensure that there are clear terms agreed between you and the guest should any disputes arise. Our standard rental agreement is the default contract automatically attached to your quotes. You can also upload your own one by going to Booking policies.\r\nFor all free listings and most annual listings using online booking, you’ll need to have a rental agreement attached to all quotes. This is to ensure that there are clear terms agreed between you and the guest should any disputes arise. Our standard rental agreement is the default contract automatically attached to your quotes. You can also upload your own one by going to Booking policies.', NULL, NULL, 1, '2022-12-02 05:58:22', '2022-12-02 05:58:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT 0,
  `promo_name` varchar(250) NOT NULL,
  `promo_code` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `promo_name_ar` varchar(250) DEFAULT NULL,
  `promo_code_ar` varchar(150) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `promo_type` int(11) NOT NULL,
  `discount` double NOT NULL,
  `min_fare` double NOT NULL DEFAULT 0,
  `max_discount_value` double NOT NULL DEFAULT 0,
  `redemptions` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `country_id`, `customer_id`, `promo_name`, `promo_code`, `description`, `promo_name_ar`, `promo_code_ar`, `description_ar`, `promo_type`, `discount`, `min_fare`, `max_discount_value`, `redemptions`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'First50', 'FIRST50', '50% offer for first order', 'First50', 'FIRST50', '50% offer for first order', 6, 50, 100, 50, 1, 1, '2022-12-18 13:45:38', '2022-12-18 13:45:38'),
(2, 1, NULL, 'Christmas offer', 'Crist', 'Enjoy your christmas offer', NULL, NULL, NULL, 5, 50, 100, 50, 15, 1, '2022-12-23 04:50:53', '2022-12-23 04:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_settings`
--

CREATE TABLE `referral_settings` (
  `id` int(11) NOT NULL,
  `referral_message` text NOT NULL,
  `referral_message_ar` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referral_settings`
--

INSERT INTO `referral_settings` (`id`, `referral_message`, `referral_message_ar`, `created_at`, `updated_at`) VALUES
(1, 'Hi, when your friends or relatives register with your referral code, you get referral amount added to your wallet.', NULL, '2022-12-18 10:50:12', '2022-12-18 10:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `rental_fare_management`
--

CREATE TABLE `rental_fare_management` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL DEFAULT 0,
  `package_id` int(11) NOT NULL DEFAULT 0,
  `price_per_km` double NOT NULL,
  `price_per_hour` double NOT NULL,
  `package_price` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rental_fare_management`
--

INSERT INTO `rental_fare_management` (`id`, `country_id`, `vehicle_type`, `package_id`, `price_per_km`, `price_per_hour`, `package_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2, 2, 5, 1, '2022-12-18 11:17:38', '2022-12-18 11:17:38'),
(2, 1, 2, 1, 3, 3, 3, 1, '2022-12-18 11:17:58', '2022-12-18 11:17:58'),
(3, 1, 1, 2, 2, 2, 2, 1, '2022-12-18 11:18:23', '2022-12-18 11:19:25'),
(4, 1, 3, 1, 4, 4, 4, 1, '2022-12-18 11:19:58', '2022-12-18 11:19:58'),
(5, 1, 2, 2, 3, 3, 3, 1, '2022-12-18 11:20:33', '2022-12-18 11:20:33'),
(6, 1, 3, 2, 4, 4, 4, 1, '2022-12-18 11:20:48', '2022-12-18 11:20:48'),
(7, 1, 1, 3, 2, 2, 2, 1, '2022-12-18 11:21:02', '2022-12-18 11:21:02'),
(8, 1, 2, 3, 3, 3, 3, 1, '2022-12-18 11:21:16', '2022-12-18 11:21:16'),
(9, 1, 3, 3, 4, 4, 4, 1, '2022-12-18 11:21:46', '2022-12-18 11:21:46'),
(10, 1, 1, 4, 3, 3, 3, 1, '2022-12-18 11:22:09', '2022-12-18 11:22:09'),
(11, 1, 2, 4, 3, 3, 3, 1, '2022-12-18 11:22:20', '2022-12-18 11:22:20'),
(12, 1, 3, 4, 4, 4, 4, 1, '2022-12-18 11:22:35', '2022-12-26 08:28:00'),
(13, 2, 5, 1, 2, 2, 5, 1, '2022-12-24 00:59:26', '2022-12-26 08:22:05'),
(14, 2, 6, 2, 3, 4, 5, 1, '2022-12-24 01:00:53', '2022-12-26 08:22:14'),
(15, 2, 5, 2, 3, 3, 5, 1, '2022-12-24 01:02:51', '2022-12-26 08:22:23'),
(16, 1, 1, 4, 10, 2, 6, 1, '2022-12-26 08:26:05', '2022-12-26 08:26:05'),
(17, 2, 5, 3, 10, 2, 6, 1, '2022-12-26 08:28:51', '2022-12-26 08:28:51'),
(18, 2, 6, 1, 15, 2, 7, 1, '2022-12-26 08:29:50', '2022-12-26 08:29:50'),
(19, 2, 6, 4, 12, 2, 5, 1, '2022-12-26 08:30:24', '2022-12-26 08:30:24'),
(20, 2, 6, 3, 12, 6, 4, 1, '2022-12-26 08:30:48', '2022-12-26 08:30:48'),
(21, 2, 7, 1, 10, 2, 7, 1, '2022-12-26 08:31:34', '2022-12-26 08:31:34'),
(22, 2, 7, 2, 10, 5, 3, 1, '2022-12-26 08:31:54', '2022-12-26 08:31:54'),
(23, 2, 7, 1, 10, 5, 3, 1, '2022-12-26 09:35:38', '2022-12-26 09:35:38'),
(24, 2, 7, 2, 10, 3, 6, 1, '2022-12-26 09:35:58', '2022-12-26 09:35:58'),
(25, 2, 7, 3, 6, 2, 4, 1, '2022-12-26 09:36:22', '2022-12-26 09:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `scratch_card_settings`
--

CREATE TABLE `scratch_card_settings` (
  `id` int(11) NOT NULL,
  `coupon_type` int(11) NOT NULL DEFAULT 1,
  `lucky_offer` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shared_fare_management`
--

CREATE TABLE `shared_fare_management` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL DEFAULT 1,
  `base_fare` varchar(250) NOT NULL,
  `price_per_km` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shared_fare_management`
--

INSERT INTO `shared_fare_management` (`id`, `country_id`, `vehicle_type`, `base_fare`, `price_per_km`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '5', '2', 1, '2022-12-18 11:25:42', '2022-12-18 11:25:42'),
(2, 1, 2, '10', '4', 1, '2022-12-18 11:25:56', '2022-12-18 11:25:56'),
(3, 1, 3, '10', '4', 1, '2022-12-18 11:26:09', '2022-12-18 11:26:09'),
(4, 2, 5, '5', '2', 1, '2022-12-24 00:36:24', '2022-12-26 09:42:31'),
(5, 2, 6, '10', '3', 1, '2022-12-24 00:37:22', '2022-12-26 09:42:41'),
(6, 2, 7, '50', '6', 1, '2022-12-26 09:42:59', '2022-12-26 09:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `shared_trip_settings`
--

CREATE TABLE `shared_trip_settings` (
  `id` int(11) NOT NULL,
  `pickup_radius` double NOT NULL,
  `drop_radius` double NOT NULL,
  `max_bookings` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_ar` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `type`, `name`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 'general', 'Active', 'نشيط', '2020-04-04 00:00:00', '2021-03-06 08:23:29'),
(2, 'general', 'InActive', 'غير نشط', '2020-04-04 00:00:00', '2021-03-06 08:23:56'),
(3, 'enable_disable', 'Enable', 'يمكن', '2020-04-06 00:00:00', '2021-03-06 08:24:25'),
(4, 'enable_disable', 'Disable', 'تعطيل', '2020-04-06 00:00:00', '2021-03-06 08:24:53'),
(5, 'promo_type', 'Fixed', 'مثبت', '2020-02-20 08:05:49', '2021-03-06 08:25:34'),
(6, 'promo_type', 'Percentage', 'النسبة المئوية', '2020-02-20 08:44:49', '2021-03-06 08:26:08'),
(7, 'user_type', 'Customer', 'عميل', '2020-02-20 08:44:49', '2021-03-06 08:27:24'),
(8, 'user_type', 'Driver', 'سائق', '2020-02-20 08:44:49', '2021-03-06 08:27:53'),
(9, 'trip_status', 'Accepted', 'وافقت', '2020-10-03 18:54:54', '2021-03-06 08:28:24'),
(10, 'trip_status', 'Completed', 'مكتمل', '2020-10-03 18:54:54', '2021-03-06 08:28:42'),
(11, 'withdrawal', 'Pending', 'قيد الانتظار', '2020-10-03 23:37:18', '2021-03-06 08:29:25'),
(12, 'withdrawal', 'Completed', 'مكتمل', '2020-10-03 23:37:18', '2021-03-06 08:29:46'),
(13, 'withdrawal', 'Rejected', 'مرفوض', '2020-10-03 23:37:18', '2021-03-06 08:30:05'),
(14, 'verification_status', 'Waiting For Upload', 'في انتظار التحميل', '2021-03-08 06:03:00', '2021-03-09 15:15:13'),
(15, 'verification_status', 'Waiting for Approval', 'بانتظار الموافقة', '2021-03-08 06:04:19', '2021-03-09 15:15:50'),
(16, 'verification_status', 'Approved', 'وافق', '2021-03-08 06:07:50', '2021-03-09 15:16:20'),
(17, 'verification_status', 'Rejected', 'مرفوض', '2021-03-09 15:16:55', '2021-03-09 15:16:55'),
(18, 'vehicle_mode', 'Passenger Vehicle', 'سيارة ركاب', '2021-04-12 04:35:23', '2021-04-12 04:35:23'),
(19, 'vehicle_mode', 'Commercial Vehicle', 'مركبة تجارية', '2021-04-12 04:36:06', '2021-04-12 04:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `stops`
--

CREATE TABLE `stops` (
  `id` int(11) NOT NULL,
  `trip_request_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL DEFAULT 0,
  `address` varchar(250) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `sub_name` varchar(250) NOT NULL,
  `sub_image` varchar(250) NOT NULL,
  `sub_description` text NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `free_bookings` int(11) NOT NULL DEFAULT 0,
  `validity` int(11) NOT NULL DEFAULT 0,
  `validity_label` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `sub_name`, `sub_image`, `sub_description`, `amount`, `free_bookings`, `validity`, `validity_label`, `created_at`, `updated_at`) VALUES
(1, 'Platinum', 'subscriptions//961af00869aebbcfdc5d9fa4ec2a7b66.webp', 'Platinam subscription', 1000, 20, 60, '2 Months', '2022-12-18 11:41:07', '2022-12-18 11:41:07'),
(2, 'Gold', 'subscriptions//101c7281c288fa9f03233c67cd795b0c.png', 'Gold subscription', 500, 10, 30, '1 Month', '2022-12-18 11:41:50', '2022-12-18 11:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `surge_fare_settings`
--

CREATE TABLE `surge_fare_settings` (
  `id` int(11) NOT NULL,
  `surge` float NOT NULL,
  `requests` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surge_fare_settings`
--

INSERT INTO `surge_fare_settings` (`id`, `surge`, `requests`, `created_at`, `updated_at`) VALUES
(1, 1.5, 1, '2022-12-03 04:11:09', '2022-12-03 04:11:09'),
(2, 2, 2, '2022-12-03 04:11:23', '2022-12-03 04:11:23'),
(3, 2.5, 3, '2022-12-03 04:11:34', '2022-12-03 04:11:34'),
(4, 3, 4, '2022-12-03 04:11:42', '2022-12-03 04:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `surge_settings`
--

CREATE TABLE `surge_settings` (
  `id` int(11) NOT NULL,
  `searching_time` int(11) NOT NULL,
  `minimum_trips` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surge_settings`
--

INSERT INTO `surge_settings` (`id`, `searching_time`, `minimum_trips`, `created_at`, `updated_at`) VALUES
(1, 300, 1, '2022-12-03 04:55:52', '2022-12-03 04:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `tax_lists`
--

CREATE TABLE `tax_lists` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `percent` double NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_lists`
--

INSERT INTO `tax_lists` (`id`, `country_id`, `tax_name`, `percent`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, 'CGST(2.5%)', 2.5, 1, '2022-08-09 02:55:58', '2022-12-10 04:49:35'),
(7, 1, 'SGST(2.5%)', 2.5, 1, '2022-10-29 13:42:17', '2022-12-10 04:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `tip` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `country_id`, `tip`, `created_at`, `updated_at`) VALUES
(1, 1, 10, '2022-12-19 17:27:58', '2022-12-19 17:27:58'),
(2, 1, 20, '2022-12-19 17:27:58', '2022-12-19 17:27:58'),
(3, 1, 30, '2022-12-19 17:27:58', '2022-12-19 17:27:58'),
(4, 1, 40, '2022-12-19 17:27:58', '2022-12-19 17:27:58'),
(5, 1, 50, '2022-12-19 17:27:58', '2022-12-19 17:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_method` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(11) NOT NULL,
  `trip_id` varchar(250) DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL,
  `trip_type` int(11) NOT NULL DEFAULT 0,
  `trip_sub_type` int(11) NOT NULL DEFAULT 0,
  `booking_type` int(11) NOT NULL DEFAULT 1,
  `package_id` int(11) NOT NULL DEFAULT 0,
  `driver_id` int(11) NOT NULL,
  `pickup_date` datetime NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `pickup_address` varchar(250) NOT NULL,
  `actual_pickup_address` text DEFAULT NULL,
  `actual_pickup_lat` varchar(100) DEFAULT NULL,
  `actual_pickup_lng` varchar(100) DEFAULT NULL,
  `pickup_lat` varchar(250) NOT NULL,
  `pickup_lng` varchar(250) NOT NULL,
  `drop_address` text DEFAULT NULL,
  `actual_drop_address` text DEFAULT NULL,
  `actual_drop_lat` varchar(100) NOT NULL DEFAULT '0',
  `actual_drop_lng` varchar(100) NOT NULL DEFAULT '0',
  `drop_lat` varchar(250) NOT NULL DEFAULT '0',
  `drop_lng` varchar(250) NOT NULL DEFAULT '0',
  `zone` int(11) NOT NULL,
  `distance` double NOT NULL DEFAULT 0,
  `vehicle_id` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL DEFAULT 0,
  `payment_method` int(11) NOT NULL,
  `total` double NOT NULL,
  `sub_total` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL,
  `tax` double NOT NULL DEFAULT 0,
  `promo_code` int(11) NOT NULL,
  `tip` double NOT NULL DEFAULT 0,
  `otp` int(4) NOT NULL,
  `ratings` varchar(50) NOT NULL DEFAULT '0',
  `customer_rating` double NOT NULL DEFAULT 0,
  `static_map` varchar(250) DEFAULT NULL,
  `is_multiple_drops` int(11) NOT NULL DEFAULT 0,
  `is_subscription_trip` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `surge` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_cancellations`
--

CREATE TABLE `trip_cancellations` (
  `id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `reason_id` int(11) NOT NULL,
  `cancelled_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_histories`
--

CREATE TABLE `trip_histories` (
  `id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_requests`
--

CREATE TABLE `trip_requests` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL DEFAULT 0,
  `package_id` int(11) NOT NULL DEFAULT 0,
  `distance` double NOT NULL DEFAULT 0,
  `vehicle_type` int(11) NOT NULL,
  `trip_type` int(11) NOT NULL DEFAULT 1,
  `trip_sub_type` int(11) NOT NULL DEFAULT 0,
  `booking_type` int(11) NOT NULL DEFAULT 1,
  `pickup_address` text NOT NULL,
  `pickup_date` datetime NOT NULL,
  `pickup_lat` varchar(250) NOT NULL,
  `pickup_lng` varchar(250) NOT NULL,
  `drop_address` text DEFAULT NULL,
  `drop_lat` varchar(250) NOT NULL DEFAULT '0',
  `drop_lng` varchar(250) NOT NULL DEFAULT '0',
  `surge` double NOT NULL DEFAULT 1,
  `zone` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `sub_total` double NOT NULL DEFAULT 0,
  `promo` int(11) NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `static_map` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_multiple_drops` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_request_statuses`
--

CREATE TABLE `trip_request_statuses` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT '1',
  `status_ar` varchar(150) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_request_statuses`
--

INSERT INTO `trip_request_statuses` (`id`, `status`, `status_ar`, `created_at`, `updated_at`) VALUES
(1, 'Booking Placed', 'تم وضع الحجز', '2021-02-26 09:55:55', '2021-03-06 08:32:50'),
(2, 'Ride Later', 'اركب لاحقًا', '2021-02-26 09:55:55', '2021-03-06 08:33:12'),
(3, 'Accepted', 'وافقت', '2021-02-26 09:55:55', '2021-03-06 08:33:31'),
(4, 'Not Picked', 'غير منتقى', '2021-02-26 09:55:55', '2021-03-06 08:33:49'),
(5, 'Timeout', 'نفذ الوقت', '2021-02-26 09:55:55', '2021-03-06 08:34:05'),
(6, 'Cancelled by customer', 'ألغى العميل', '2021-02-26 09:55:55', '2021-03-06 08:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `trip_settings`
--

CREATE TABLE `trip_settings` (
  `id` int(11) NOT NULL,
  `admin_commission` double NOT NULL DEFAULT 20,
  `maximum_searching_time` int(11) DEFAULT NULL,
  `booking_searching_radius` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_settings`
--

INSERT INTO `trip_settings` (`id`, `admin_commission`, `maximum_searching_time`, `booking_searching_radius`, `created_at`, `updated_at`) VALUES
(1, 90, 30, 10, '2021-01-06 07:46:51', '2022-12-23 04:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `trip_sub_types`
--

CREATE TABLE `trip_sub_types` (
  `id` int(11) NOT NULL,
  `trip_type` int(11) NOT NULL,
  `trip_sub_type` varchar(100) NOT NULL,
  `trip_sub_type_ar` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_sub_types`
--

INSERT INTO `trip_sub_types` (`id`, `trip_type`, `trip_sub_type`, `trip_sub_type_ar`, `created_at`, `updated_at`) VALUES
(1, 3, 'Rounded Trip', NULL, '2022-05-10 05:40:15', '2022-05-10 05:40:15'),
(2, 3, 'One Way Trip', NULL, '2022-05-10 05:40:40', '2022-05-10 05:40:40'),
(3, 4, 'Rounded Trip', NULL, '2022-05-10 05:40:55', '2022-05-10 05:40:55'),
(4, 4, 'One Way Trip', NULL, '2022-05-10 05:41:08', '2022-05-10 05:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `trip_types`
--

CREATE TABLE `trip_types` (
  `id` int(11) NOT NULL,
  `active_icon` varchar(250) NOT NULL,
  `Inactive_icon` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `vehicle_mode` int(11) NOT NULL,
  `name_ar` varchar(150) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_types`
--

INSERT INTO `trip_types` (`id`, `active_icon`, `Inactive_icon`, `name`, `vehicle_mode`, `name_ar`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'trip_types//daily_active.png', 'trip_types//daily_inactive.png', 'Daily', 18, 'يوميا', 1, 1, '2021-03-01 10:37:21', '2022-12-18 11:01:37'),
(2, 'trip_types//rental_active.png', 'trip_types//rental_inactive.png', 'Rental', 18, 'تأجير', 3, 1, '2021-03-01 10:38:00', '2022-12-18 11:02:32'),
(3, 'trip_types//out_active.png', 'trip_types//out_inactive.png', 'Outstation', 18, 'النائية', 4, 1, '2021-03-01 10:38:44', '2022-12-18 11:06:55'),
(4, 'trip_types//delivery_active.png', 'trip_types//delivery_inactive.png', 'Delivery', 19, 'توصيل', 5, 1, '2021-04-12 04:29:08', '2022-12-18 11:08:26'),
(5, 'trip_types//0d076a1d9fd37e0b798e838e86752676.png', 'trip_types//45b5a18ba22eab2730d7ada4e7a0b024.png', 'Shared', 18, 'مشترك', 2, 1, '2021-03-01 10:37:21', '2022-12-18 11:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'User', '2021-03-01 09:58:53', '2021-03-01 09:58:53'),
(2, 'Driver', '2021-03-01 09:59:15', '2021-03-01 09:59:15'),
(3, 'Vendor', '2022-12-14 08:31:59', '2022-12-14 08:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `vehicle_type` varchar(250) NOT NULL,
  `vehicle_mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `base_fare` double NOT NULL DEFAULT 0,
  `price_per_km` double NOT NULL DEFAULT 0,
  `active_icon` varchar(250) NOT NULL,
  `inactive_icon` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `vehicle_type_ar` varchar(150) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`id`, `country_id`, `vehicle_type`, `vehicle_mode`, `status`, `base_fare`, `price_per_km`, `active_icon`, `inactive_icon`, `description`, `vehicle_type_ar`, `description_ar`, `created_at`, `updated_at`) VALUES
(1, 1, 'HatchBack', 18, 1, 0, 0, 'vehicle_categories//d699f917a1278727bdde40b09c6b4d5a.png', 'vehicle_categories//c9b4a051cd21755237655f0a5dbe34cb.png', 'Image result for hatchback description\r\nA hatchback is a car body configuration with a rear door that swings upward to provide access to a cargo area.', 'Hatchback', 'Image result for hatchback description\r\nA hatchback is a car body configuration with a rear door that swings upward to provide access to a cargo area.', '2022-12-18 10:54:06', '2022-12-18 10:54:06'),
(2, 1, 'Sedan', 18, 1, 0, 0, 'vehicle_categories//75875fc29af45e03ea92960f310b752e.png', 'vehicle_categories//76c7b7391e11a70751804ff06d736be4.png', 'A sedan is defined as a 4-door passenger car with a trunk that is separate from the passengers with a three-box body: the engine, the area for passengers, and the trunk.', 'Sedan', 'A sedan is defined as a 4-door passenger car with a trunk that is separate from the passengers with a three-box body: the engine, the area for passengers, and the trunk.', '2022-12-18 10:55:32', '2022-12-18 10:55:32'),
(3, 1, 'SUV', 18, 1, 0, 0, 'vehicle_categories//dcecd57cd4b3533b286bea45cf1c7745.jpeg', 'vehicle_categories//0e517ca301fa24104781bb99504b069b.jpeg', 'The term \'SUV\' is car industry jargon that\'s an acronym for Sports Utility Vehicle. It refers to a type of car that sits high off the ground and which often has four-wheel drive and rugged styling.', 'SUV', 'The term \'SUV\' is car industry jargon that\'s an acronym for Sports Utility Vehicle. It refers to a type of car that sits high off the ground and which often has four-wheel drive and rugged styling.', '2022-12-18 10:57:18', '2022-12-18 10:57:18'),
(4, 1, 'SCV & LCV Goods Carrier', 19, 1, 0, 0, 'vehicle_categories//8ebc5f185ecbfd95bf33a5397e994287.jpeg', 'vehicle_categories//9454f186d8d0d0b5e2198ed80f6dc8a3.jpeg', 'SCV & LCV Goods Carrier', 'SCV & LCV Goods Carrier', 'SCV & LCV Goods Carrier', '2022-12-18 10:58:42', '2022-12-18 10:58:42'),
(5, 2, 'HatchBack', 18, 1, 0, 0, 'vehicle_categories//d57342c355a1b5f7abc635eb1d395b0f.png', 'vehicle_categories//8549d4232f2dc974fea0731fa2a00c52.png', 'A hatchback is a car body configuration with a rear door that swings upward to provide access to a cargo area.', 'Hatchback', 'A hatchback is a car body configuration with a rear door that swings upward to provide access to a cargo area.', '2022-12-24 00:26:18', '2022-12-26 08:07:37'),
(6, 2, 'Sedan', 18, 1, 0, 0, 'vehicle_categories//33fba840e6a190f6bfd57c909e44e2a6.png', 'vehicle_categories//cae3da9b622171d92dcedcd6cc7d30cc.png', 'A sedan is defined as a 4-door passenger car with a trunk that is separate from the passengers with a three-box body: the engine, the area for passengers, and the trunk.', 'Sedan', 'A sedan is defined as a 4-door passenger car with a trunk that is separate from the passengers with a three-box body: the engine, the area for passengers, and the trunk.', '2022-12-24 00:28:23', '2022-12-26 08:08:00'),
(7, 2, 'SUV', 18, 1, 0, 0, 'vehicle_categories//b3baa162ff5662967e2fbd0c9b88aee4.jpeg', 'vehicle_categories//3736105d382af0eff533d5ad53547e10.jpeg', 'The term \'SUV\' is car industry jargon that\'s an acronym for Sports Utility Vehicle. It refers to a type of car that sits high off the ground and which often has four-wheel drive and rugged styling.', 'SUV', 'The term \'SUV\' is car industry jargon that\'s an acronym for Sports Utility Vehicle. It refers to a type of car that sits high off the ground and which often has four-wheel drive and rugged styling.', '2022-12-26 08:14:06', '2022-12-26 08:14:06'),
(8, 2, 'SCV & LCV Goods Carrier', 19, 1, 0, 0, 'vehicle_categories//ddd3c4abe9bf845b7b2c19262b99932d.jpeg', 'vehicle_categories//72090b8be1d11a676381eb264d122996.jpeg', 'SCV & LCV Goods Carrier', 'SCV & LCV Goods Carrier', 'SCV & LCV Goods Carrier', '2022-12-26 08:16:46', '2022-12-26 08:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `name_ar` varchar(250) NOT NULL,
  `polygon` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancellation_reasons`
--
ALTER TABLE `cancellation_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancellation_settings`
--
ALTER TABLE `cancellation_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_categories`
--
ALTER TABLE `complaint_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_sub_categories`
--
ALTER TABLE `complaint_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_settings`
--
ALTER TABLE `contact_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_chat_messages`
--
ALTER TABLE `customer_chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_favourites`
--
ALTER TABLE `customer_favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_offers`
--
ALTER TABLE `customer_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_promo_histories`
--
ALTER TABLE `customer_promo_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_sos_contacts`
--
ALTER TABLE `customer_sos_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_subscription_histories`
--
ALTER TABLE `customer_subscription_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallet_histories`
--
ALTER TABLE `customer_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_fare_management`
--
ALTER TABLE `daily_fare_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_fare_management`
--
ALTER TABLE `delivery_fare_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatch_trips`
--
ALTER TABLE `dispatch_trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_bank_kyc_details`
--
ALTER TABLE `driver_bank_kyc_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_checkins`
--
ALTER TABLE `driver_checkins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_commissions`
--
ALTER TABLE `driver_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_earnings`
--
ALTER TABLE `driver_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_hiring_fare_management`
--
ALTER TABLE `driver_hiring_fare_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_hiring_requests`
--
ALTER TABLE `driver_hiring_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_hiring_statuses`
--
ALTER TABLE `driver_hiring_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_queries`
--
ALTER TABLE `driver_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_recharges`
--
ALTER TABLE `driver_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_tips`
--
ALTER TABLE `driver_tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_trip_requests`
--
ALTER TABLE `driver_trip_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_tutorials`
--
ALTER TABLE `driver_tutorials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_vehicles`
--
ALTER TABLE `driver_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_wallet_histories`
--
ALTER TABLE `driver_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_withdrawals`
--
ALTER TABLE `driver_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fare_management`
--
ALTER TABLE `fare_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_settings`
--
ALTER TABLE `feature_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instant_offers`
--
ALTER TABLE `instant_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky_offers`
--
ALTER TABLE `lucky_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_contents`
--
ALTER TABLE `mail_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missed_trip_requests`
--
ALTER TABLE `missed_trip_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_messages`
--
ALTER TABLE `notification_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_types`
--
ALTER TABLE `offer_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outstation_fare_management`
--
ALTER TABLE `outstation_fare_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_settings`
--
ALTER TABLE `referral_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_fare_management`
--
ALTER TABLE `rental_fare_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scratch_card_settings`
--
ALTER TABLE `scratch_card_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shared_fare_management`
--
ALTER TABLE `shared_fare_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shared_trip_settings`
--
ALTER TABLE `shared_trip_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surge_fare_settings`
--
ALTER TABLE `surge_fare_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surge_settings`
--
ALTER TABLE `surge_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_lists`
--
ALTER TABLE `tax_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_cancellations`
--
ALTER TABLE `trip_cancellations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_requests`
--
ALTER TABLE `trip_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_request_statuses`
--
ALTER TABLE `trip_request_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_settings`
--
ALTER TABLE `trip_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_sub_types`
--
ALTER TABLE `trip_sub_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_types`
--
ALTER TABLE `trip_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=657;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cancellation_reasons`
--
ALTER TABLE `cancellation_reasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cancellation_settings`
--
ALTER TABLE `cancellation_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_categories`
--
ALTER TABLE `complaint_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `complaint_sub_categories`
--
ALTER TABLE `complaint_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_settings`
--
ALTER TABLE `contact_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_chat_messages`
--
ALTER TABLE `customer_chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_favourites`
--
ALTER TABLE `customer_favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_offers`
--
ALTER TABLE `customer_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_promo_histories`
--
ALTER TABLE `customer_promo_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_sos_contacts`
--
ALTER TABLE `customer_sos_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_subscription_histories`
--
ALTER TABLE `customer_subscription_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_wallet_histories`
--
ALTER TABLE `customer_wallet_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_fare_management`
--
ALTER TABLE `daily_fare_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_fare_management`
--
ALTER TABLE `delivery_fare_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dispatch_trips`
--
ALTER TABLE `dispatch_trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_bank_kyc_details`
--
ALTER TABLE `driver_bank_kyc_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_checkins`
--
ALTER TABLE `driver_checkins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_commissions`
--
ALTER TABLE `driver_commissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_earnings`
--
ALTER TABLE `driver_earnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_hiring_fare_management`
--
ALTER TABLE `driver_hiring_fare_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver_hiring_requests`
--
ALTER TABLE `driver_hiring_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_hiring_statuses`
--
ALTER TABLE `driver_hiring_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `driver_queries`
--
ALTER TABLE `driver_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_recharges`
--
ALTER TABLE `driver_recharges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_tips`
--
ALTER TABLE `driver_tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_trip_requests`
--
ALTER TABLE `driver_trip_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_tutorials`
--
ALTER TABLE `driver_tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_vehicles`
--
ALTER TABLE `driver_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_wallet_histories`
--
ALTER TABLE `driver_wallet_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_withdrawals`
--
ALTER TABLE `driver_withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `fare_management`
--
ALTER TABLE `fare_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_settings`
--
ALTER TABLE `feature_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instant_offers`
--
ALTER TABLE `instant_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lucky_offers`
--
ALTER TABLE `lucky_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_contents`
--
ALTER TABLE `mail_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `missed_trip_requests`
--
ALTER TABLE `missed_trip_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_messages`
--
ALTER TABLE `notification_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `offer_types`
--
ALTER TABLE `offer_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `outstation_fare_management`
--
ALTER TABLE `outstation_fare_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_histories`
--
ALTER TABLE `payment_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_settings`
--
ALTER TABLE `referral_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rental_fare_management`
--
ALTER TABLE `rental_fare_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `scratch_card_settings`
--
ALTER TABLE `scratch_card_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shared_fare_management`
--
ALTER TABLE `shared_fare_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shared_trip_settings`
--
ALTER TABLE `shared_trip_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `stops`
--
ALTER TABLE `stops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `surge_fare_settings`
--
ALTER TABLE `surge_fare_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surge_settings`
--
ALTER TABLE `surge_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_lists`
--
ALTER TABLE `tax_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip_cancellations`
--
ALTER TABLE `trip_cancellations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip_requests`
--
ALTER TABLE `trip_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip_request_statuses`
--
ALTER TABLE `trip_request_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trip_settings`
--
ALTER TABLE `trip_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trip_sub_types`
--
ALTER TABLE `trip_sub_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trip_types`
--
ALTER TABLE `trip_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
