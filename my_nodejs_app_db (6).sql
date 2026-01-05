-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2026 at 06:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_nodejs_app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_time` time DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('ACTIVE','CANCELLED','INACTIVE') DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `message`, `meeting_date`, `meeting_time`, `location`, `created_by`, `created_at`, `status`) VALUES
(1, 'Meeting', 'For 2025', '1899-11-30', '22:49:00', 'anahawan gym', 0, '2026-01-02 13:50:00', 'INACTIVE'),
(2, 'meeting for bantay dagat', 'change of schedule', '2026-01-05', '08:30:00', '', 0, '2026-01-02 14:36:21', 'ACTIVE'),
(3, 'dakop', 'asdasdsad', '2026-01-09', '15:21:00', 'anahawan gym', 0, '2026-01-02 14:55:51', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `extra_name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `marital_status` enum('Single','Married','Widowed','Divorced') DEFAULT NULL,
  `applicant_type` enum('Regular','Senior Citizen','PWD','Other') DEFAULT NULL,
  `applicant_photo` varchar(255) DEFAULT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `username`, `password`, `first_name`, `middle_name`, `last_name`, `extra_name`, `age`, `sex`, `birthdate`, `address`, `marital_status`, `applicant_type`, `applicant_photo`, `created_at`) VALUES
(8, '2025-8325', '$2b$10$wEbFanWy3V8x0lmFhV9tWOkniMj3od5S677UIVJOegEeAMVDIJtJy', 'Mellyvillleeeee John', 'Amora', 'Edera', 'Jr', 23, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Senior Citizen', '/applicant_photos/1767291883522_IMG_20190613_173017.png', '2025-03-15'),
(34, 'mellyville johnnn.edera', '$2b$10$miRHJ8QPZMWXflpGEE/ch.tCq0nKZpSZtXq1.uOpUUoA0F74rIo9G', 'Mellyville Johnna', 'Amora', 'Edera', '', 23, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'PWD', '/applicant_photos/1764274012815_Screenshot 2024-10-20 123107.png', '2024-03-15'),
(35, 'nicole.vero', '$2b$10$fawZsqyCwdWptZNGxGLgjOVerwb5YLwhkAF6Vn3yfczj69/FVzNpe', 'nicole', 'vero', 'vero', 'Sr.', 23, 'Female', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1764280040155_Screenshot 2024-11-20 190534.png', '2023-03-15'),
(37, 'barry neil.magcosta', '$2b$10$WIsVJRW7viRy44hLcs91mO.XU5Cl9KqDuWw8rLuRpKfp7pWVUDOzu', 'Barry Neil', 'Mags', 'Magcosta', 'Sr.', 23, 'Male', '1951-09-03', 'Amagusan, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1764280028326_Screenshot 2024-11-20 190534.png', '2025-11-27'),
(38, 'amelyn.gatab', '$2b$10$nDS59QobQ9kW6WoIB3UyPe/zs6yuMrs1fO8VyIq/yyc8FWWUGDfUa', 'Amelyn', 'budlat', 'Gatab', '', 23, 'Male', '2003-03-30', 'Calintaan, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1764524630317_fisherfolk_logo.png', '2025-11-30'),
(40, 'mellyville.edera', '$2b$10$91mfzWNzjU9tJ9fIvzwmQ.9GbvFzi2jsYzgyrgAKW.V3iddPmrOKC', 'Mellyvilleee', 'Amora', 'Edera', 'Jr', 22, 'Male', '2003-03-13', 'Amagusan, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1764886185064_1663393991349.jpg', '2025-12-01'),
(43, 'jerrylyn.modeo', '$2b$10$OCuKVKGkHEi2zSX21mzsKOcObNzUaLAeOOaw9F/R4dYRe4JduuDKG', 'Jerrylyn', 'modeo', 'Modeo', '', 20, 'Female', '2003-03-13', 'Kagingkingan, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1765758087290_IMG_20190613_173017.png', '2025-12-01'),
(48, 'olive.edera', '$2b$10$pBLzgkRYbD5hBLA4ejJfteVNzlUSJr6lqKwXeTmTugEQ3DeaWOdea', 'Olive', 'Amora', 'Edera', NULL, 40, 'Female', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Married', 'Regular', '/applicant_photos/1765297290431_IMG_20190613_173017.png', '2025-12-09'),
(50, 'mellyvillee john.edera', '$2b$10$PoYn/mVzLJgcSXFCpK6qNuf52D/80pbpRhuVTZAUeaXss50VM54Wm', 'Mellyvillee john', 'Amora', 'Edera', 'Jr', 22, 'Male', '2003-03-13', 'Manigawng, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1765723342761_Screenshot_2024-10-20_123107.png', '2025-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `apprehension_reports`
--

CREATE TABLE `apprehension_reports` (
  `id` int(11) NOT NULL,
  `violator_no` varchar(50) DEFAULT NULL,
  `apprehension_date` datetime NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` enum('Male','Female','Other') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `place_of_apprehension` varchar(255) DEFAULT NULL,
  `vessel_type` enum('Motorized','Non-Motorized','None') DEFAULT 'None',
  `gear_used` enum('Yes','None') DEFAULT 'None',
  `mflet_count` int(11) DEFAULT 0,
  `violation_type` varchar(255) DEFAULT NULL,
  `penalty_details` varchar(255) DEFAULT NULL,
  `no_of_days` varchar(250) DEFAULT NULL,
  `status` enum('RELEASED','APPREHENDED') NOT NULL DEFAULT 'APPREHENDED',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apprehension_reports`
--

INSERT INTO `apprehension_reports` (`id`, `violator_no`, `apprehension_date`, `full_name`, `address`, `age`, `sex`, `birthdate`, `place_of_apprehension`, `vessel_type`, `gear_used`, `mflet_count`, `violation_type`, `penalty_details`, `no_of_days`, `status`, `created_at`) VALUES
(45, 'AA-2026-45', '2025-01-04 21:03:00', 'nicole vero', 'cabalian', 22, 'Female', '2003-03-13', 'canlabian', 'Motorized', 'None', 1, 'Section 66  — Violations of the Terms and Conditions of a License', '₱2,500.00', '4', '', '2026-01-01 14:04:44'),
(46, 'AA-2026-46', '2026-01-01 22:14:00', 'nicole vero', 'cabalian', 22, 'Male', '2003-03-13', 'canlabian', 'Non-Motorized', 'None', 1, 'Section 66  — Violations of the Terms and Conditions of a License | Section 67  — Fishing by a Person Not Registered', '₱3,050.00', '5', 'APPREHENDED', '2026-01-01 16:15:40'),
(47, 'AA-2026-47', '2024-01-01 03:22:00', 'amelyn gatab', 'cabalian', 22, 'Male', '2003-03-13', 'canlabian', 'Non-Motorized', 'None', 1, 'Section 66  — Violations of the Terms and Conditions of a License | Section 67  — Fishing by a Person Not Registered', '₱3,050.00', '5', 'APPREHENDED', '2026-01-01 16:23:46'),
(48, 'AA-2026-48', '2023-01-01 18:24:00', 'nikko reiveral', ' anahawan', 22, 'Male', '2003-03-13', 'canlabian', 'Non-Motorized', 'None', 1, 'Section 66  — Violations of the Terms and Conditions of a License | Section 67  — Fishing by a Person Not Registered', '₱3,050.00', '3', 'APPREHENDED', '2026-01-01 16:25:42'),
(49, 'AA-2026-49', '2025-12-01 16:29:00', 'nikko reiveral', 'cabalian', 22, 'Male', '2003-03-13', 'canlabian', 'Non-Motorized', 'None', 1, 'Section 66  — Violations of the Terms and Conditions of a License | Section 67  — Fishing by a Person Not Registered', '₱3,050.00', '3', 'APPREHENDED', '2026-01-01 16:30:09'),
(50, 'AA-2026-50', '2023-01-06 16:37:00', 'amelyn gatab', 'cabalian', 22, 'Male', '2003-03-13', 'canlabian', 'Non-Motorized', 'None', 1, 'Section 66  — Violations of the Terms and Conditions of a License | Section 67  — Fishing by a Person Not Registered', '₱3,050.00', '5', 'APPREHENDED', '2026-01-01 16:38:08'),
(51, 'AA-2026-51', '2025-12-01 10:49:00', 'joy', 'cabalian', 22, 'Male', '2003-03-13', 'canlabian', 'Motorized', 'Yes', 1, 'section 1 — Fishing by kuan | Section 66  — Violations of the Terms and Conditions of a License | Section 67  — Fishing by a Person Not Registered', '₱8,050.00', '5', 'RELEASED', '2026-01-02 15:48:26'),
(52, 'AA-2026-52', '2022-01-02 22:00:00', 'tiasd', 'cabalian', 22, 'Male', '2003-03-13', 'canlabian', 'Non-Motorized', 'None', 1, 'section 1 — Fishing by kuan | Section 66  — Violations of the Terms and Conditions of a License | Section 67  — Fishing by a Person Not Registered', '₱8,050.00', '5', 'RELEASED', '2026-01-02 16:00:59'),
(53, 'AA-2026-53', '2025-12-30 12:44:00', 'mrk lloyd villoria', 'cabalian', 22, 'Male', '2003-03-13', 'canlabian', 'Motorized', 'Yes', 7, 'Section 66  — Violations of the Terms and Conditions of a License | Section 67  — Fishing by a Person Not Registered', '₱3,050.00', '5', 'APPREHENDED', '2026-01-04 12:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `apprehension_reports_gears`
--

CREATE TABLE `apprehension_reports_gears` (
  `id` int(11) NOT NULL,
  `apprehension_id` int(11) NOT NULL,
  `hand_instruments` varchar(150) DEFAULT NULL,
  `fishing_lines` varchar(150) DEFAULT NULL,
  `palubog_nets` varchar(150) DEFAULT NULL,
  `fishing_nets` varchar(150) DEFAULT NULL,
  `traps` varchar(150) DEFAULT NULL,
  `accessories` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `gear_id` int(11) DEFAULT NULL,
  `gear_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apprehension_reports_gears`
--

INSERT INTO `apprehension_reports_gears` (`id`, `apprehension_id`, `hand_instruments`, `fishing_lines`, `palubog_nets`, `fishing_nets`, `traps`, `accessories`, `created_at`, `gear_id`, `gear_no`) VALUES
(30, 51, 'Speargun (1), Scoop/Dip Net (1), Gaff Hook (1), Spears (1)', 'Long line 500 hooks (1), Lone line 500+ hooks (1)', 'Pang-ilak (1), Panglonggot (1), Pang-mangodolong (1), Panghawol-hawol (1), Pangmangsi (1)', 'Bungsod (1), Palutaw Nets (1), Palaran (1), Pamawo (1)', 'Bobo Small (11), Bobo Large (1), Tambuan (1)', 'pressure_light', '2026-01-02 15:48:26', 23, 'GEAR-AA-2025-43-01'),
(31, 53, 'Speargun (1), Scoop/Dip Net (1), Gaff Hook (1), Spears (1)', 'Long line 500 hooks (1), Lone line 500+ hooks (1)', 'Pang-ilak (1), Panglonggot (1), Pang-mangodolong (1), Panghawol-hawol (1), Pangmangsi (1)', 'Bungsod (1), Palutaw Nets (1), Palaran (1), Pamawo (1)', 'Bobo Small (13), Bobo Large (1), Tambuan (1)', 'pressure_light', '2026-01-04 12:46:44', 23, 'GEAR-AA-2025-43-01');

-- --------------------------------------------------------

--
-- Table structure for table `apprehension_reports_mflet`
--

CREATE TABLE `apprehension_reports_mflet` (
  `id` int(11) NOT NULL,
  `apprehension_id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apprehension_reports_mflet`
--

INSERT INTO `apprehension_reports_mflet` (`id`, `apprehension_id`, `full_name`, `created_at`) VALUES
(60, 45, 'melly edera', '2026-01-01 14:04:44'),
(61, 46, 'melly edera', '2026-01-01 16:15:40'),
(62, 47, 'melly edera', '2026-01-01 16:23:46'),
(63, 48, 'melly edera', '2026-01-01 16:25:42'),
(64, 49, 'melly edera', '2026-01-01 16:30:09'),
(65, 50, 'melly edera', '2026-01-01 16:38:08'),
(66, 51, 'melly edera', '2026-01-02 15:48:26'),
(67, 52, 'melly edera', '2026-01-02 16:00:59'),
(68, 53, 'barry magcosta', '2026-01-04 12:46:44'),
(69, 53, 'nicole vero', '2026-01-04 12:46:44'),
(70, 53, 'melly edera', '2026-01-04 12:46:44'),
(71, 53, 'meljohn edera', '2026-01-04 12:46:44'),
(72, 53, 'bas magcosta', '2026-01-04 12:46:44'),
(73, 53, 'nicole V', '2026-01-04 12:46:44'),
(74, 53, 'prof villoria', '2026-01-04 12:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `apprehension_reports_vessels`
--

CREATE TABLE `apprehension_reports_vessels` (
  `id` int(11) NOT NULL,
  `apprehension_id` int(11) NOT NULL,
  `length_m` decimal(6,2) DEFAULT NULL,
  `breadth_m` decimal(6,2) DEFAULT NULL,
  `depth_m` decimal(6,2) DEFAULT NULL,
  `gross_tonnage` decimal(8,2) DEFAULT NULL,
  `net_tonnage` decimal(8,2) DEFAULT NULL,
  `vessel_color` varchar(100) DEFAULT NULL,
  `engine_make` varchar(100) DEFAULT NULL,
  `engine_serial_number` varchar(100) DEFAULT NULL,
  `horse_power` decimal(6,2) DEFAULT NULL,
  `cylinders` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `vessel_no` varchar(50) DEFAULT NULL,
  `vessel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apprehension_reports_vessels`
--

INSERT INTO `apprehension_reports_vessels` (`id`, `apprehension_id`, `length_m`, `breadth_m`, `depth_m`, `gross_tonnage`, `net_tonnage`, `vessel_color`, `engine_make`, `engine_serial_number`, `horse_power`, `cylinders`, `created_at`, `vessel_no`, `vessel_id`) VALUES
(37, 45, 1.60, 1.80, 1.80, 1.04, 0.93, 'red', 'honda', 'yg123', 7.00, 1, '2026-01-01 14:04:44', 'SOL-AA-2025-43-01', 26),
(38, 46, 1.30, 1.30, 1.30, 0.44, 0.40, 'red', NULL, NULL, NULL, NULL, '2026-01-01 16:15:40', 'SOL-AA-2025-8-02', 6),
(39, 47, 1.30, 1.30, 1.30, 0.44, 0.40, 'red', NULL, NULL, NULL, NULL, '2026-01-01 16:23:46', 'SOL-AA-2025-8-03', 11),
(40, 48, 1.30, 1.30, 1.30, 0.44, 0.40, 'red', NULL, NULL, NULL, NULL, '2026-01-01 16:25:42', 'SOL-AA-2025-8-07', 19),
(41, 49, 1.20, 1.20, 1.30, 0.37, 0.34, 'red', NULL, NULL, NULL, NULL, '2026-01-01 16:30:09', 'SOL-AA-2025-8-01', 5),
(42, 50, 1.30, 1.80, 1.30, 0.61, 0.55, 'red', NULL, NULL, NULL, NULL, '2026-01-01 16:38:08', 'SOL-AA-2025-8-10', 23),
(43, 51, 2.00, 2.00, 3.00, 2.40, 2.16, 'red', 'kawasaki', 'hwk123', 7.00, 1, '2026-01-02 15:48:26', 'SOL-AA-2025-8-05', 17),
(44, 52, 1.00, 1.00, 1.00, 1.00, 1.00, 'red', NULL, NULL, NULL, NULL, '2026-01-02 16:00:59', NULL, NULL),
(45, 53, 2.00, 2.00, 3.00, 2.40, 2.16, 'red', 'kawasaki', 'hwk123', 7.00, 1, '2026-01-04 12:46:44', 'SOL-AA-2025-8-05', 17);

-- --------------------------------------------------------

--
-- Table structure for table `bantay_dagat`
--

CREATE TABLE `bantay_dagat` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `extra_name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `marital_status` varchar(10) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `address` text NOT NULL,
  `bantay_dagat_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bantay_dagat`
--

INSERT INTO `bantay_dagat` (`id`, `username`, `password`, `first_name`, `middle_name`, `last_name`, `extra_name`, `age`, `sex`, `marital_status`, `birthdate`, `address`, `bantay_dagat_photo`) VALUES
(4, 'mellyville13', '$2b$10$pLR7ZSg/.b7jkEyUjNEnQeG5QdG0XmTf1QtryrDiiV2cz0ioAOGOS', 'Mellyville John', 'Amora', 'Edera', '', 22, 'Male', 'Single', '2003-03-13', 'Cogon, Anahawan, Southern Leyte, 6610', '/bantay_dagat_photo/1767468536909_IMG_20190613_173017.png'),
(5, 'sample_only', '$2b$10$NhhOGSVf2HH9.WrSAdmt6u1vmVkHlCu.jqmJaM5ESIHdcIezvf/OW', 'sample_only', 'sample_only', 'sample_only', 'sample_only', 22, 'Male', 'Single', '2003-03-13', 'Cogon, Anahawan, Southern Leyte, 6610', '/bantay_dagat_photo/1765768258594_proffy.png'),
(6, 'barryneil13', '$2b$10$atEdyfU6i4JtQB5EaunDueAyxn7ocui.YYHHCPwBmnIfdr3sxTnYa', 'Barry Neil', 'Magcosta', 'Magcosta', 'iii', 24, 'Male', 'Single', '2001-09-04', 'Amagusan, Anahawan, Southern Leyte, 6610', '/bantay_dagat_photo/1765297420116_Screenshot_2024-01-16_210458.png'),
(7, 'john.edera', '$2b$10$eJu1vP93fwKo.JykYBrzN.9nWHBzZtRYpBcatu7Cg7wg8USxO3Oaq', 'Mellyville Johnnmmm', 'Amora', 'Edera', 'iii', 22, 'Male', 'Single', '2003-12-03', 'Poblacion, Anahawan, Southern Leyte, 6610', '/bantay_dagat_photo/1765896944928_Snapchat-501043918.jpg'),
(8, 'nicole', '$2b$10$UcB1DTw1JHX7XdXSIPQpV.XzafTJBEyZPdIjLiVzyTdEfCcVJO8W.', 'nicole', 'vvv', 'Vero', 'Jr', 22, 'Male', 'Single', '2003-03-13', 'purok african daisy', '/bantay_dagat_photo/1767466242056_IMG_20190613_173017.png'),
(9, 'Villoria', '$2b$10$Vs5hzjo3MdW0MXYSoO7knODs4UIMLI.yldD39oFpVmy.taWA0U7da', 'markky', 'Lloyd', 'Villoria', 'iii', 22, 'Male', 'Single', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', '/bantay_dagat_photo/1767466465397_IMG_20190613_173017.png'),
(10, 'carlokuku', '$2b$10$GT4jcNwRpf9Mx2rk8M9Ip.93dKkENrh07nwmgpae4yfJPBDNncFgS', 'carl', 'carl', 'carl', '', 22, 'Female', 'Single', '2003-03-13', 'cabalian', '/bantay_dagat_photo/1767470171654_IMG_20190613_173017.png');

-- --------------------------------------------------------

--
-- Table structure for table `bantay_dagat_reports`
--

CREATE TABLE `bantay_dagat_reports` (
  `id` int(11) NOT NULL,
  `bantay_dagat_id` int(11) NOT NULL,
  `report_title` varchar(255) NOT NULL,
  `report_description` text NOT NULL,
  `report_photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bantay_dagat_reports`
--

INSERT INTO `bantay_dagat_reports` (`id`, `bantay_dagat_id`, `report_title`, `report_description`, `report_photo`, `created_at`) VALUES
(3, 5, '1', '1', NULL, '2026-01-03 12:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_applicants_history`
--

CREATE TABLE `deleted_applicants_history` (
  `history_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `extra_name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `marital_status` enum('Single','Married','Widowed','Divorced') DEFAULT NULL,
  `applicant_type` enum('Regular','Senior Citizen','PWD','Other') DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_by_user_id` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deleted_applicants_history`
--

INSERT INTO `deleted_applicants_history` (`history_id`, `applicant_id`, `username`, `password`, `first_name`, `middle_name`, `last_name`, `extra_name`, `age`, `sex`, `birthdate`, `address`, `marital_status`, `applicant_type`, `photo_url`, `created_at`, `deleted_by_user_id`, `deleted_at`) VALUES
(1, 1, '2025-3555', '$2b$10$qhItr91MjE80nl8EVSCwWeEdYQWu8HAF1CNuAPbC1tQ3vkxqs7MNe', 'Mellyville John', 'Amora', 'Edera', NULL, 22, 'Male', '2003-03-13', 'Calintaan, Anahawan, Southern Leyte, 6610', NULL, NULL, NULL, '2025-09-17 18:22:27', NULL, '2025-10-08 14:31:04'),
(2, 3, '2025-1295', '$2b$10$3O5s0q2Y2eNpEQvfNP/4cekFJ7AHCX6GadVNTVyMIDrLj7KlxvyZO', 'barry', 'villoria', 'magcosta', 'n/a', 30, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Divorced', 'PWD', NULL, '2025-09-17 18:47:12', NULL, '2025-10-08 14:47:13'),
(3, 2, '2025-8016', '$2b$10$W39dy28d8.0q7QcwuikEUuDEOBneIGNVDTb2tZuA4rLbGvE/isGd.', 'Mellyville John', 'Amora', 'Edera', 'n/a', 22, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-09-17 18:23:55', '4', '2025-10-08 14:54:13'),
(4, 4, '2025-3869', '$2b$10$lKhe9DvORrMgd1PZnO.IMe2dbBJgZYPgZXqWRNMKS59ra9W//AoLW', 'Nicole', 'Bilat', 'Vero', 'n/a', 60, 'Male', '1970-10-09', 'Amagusan, Anahawan, Southern Leyte, 6610', 'Widowed', 'PWD', NULL, '2025-09-17 18:54:29', '4', '2025-10-08 14:54:55'),
(5, 5, '2025-8139', '$2b$10$Kbk0mxNopNzJqgiS5Ttp5eWwTOiO30VmPWzVy.TYkjp0Y43L2Mfe2', 'me', 'Amora', 'Edera', NULL, 22, 'Male', '2006-01-23', 'Calintaan, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-09-17 18:54:55', '4', '2025-10-08 15:20:47'),
(6, 7, '2025-8003', '$2b$10$vk/j/zoRB3rhHf4zSokw8OJP9N0QIqrf1S62rPHRQKJiKvIqyutpe', 'Jollyvel joy ', 'Amora', 'Edera', 'III', 23, 'Female', '2002-01-10', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-10-08 14:46:04', '4', '2025-11-02 20:08:04'),
(7, 12, 'jollyvel.edera', '$2b$10$v8qTPBSTZ6PmnMIjgScllej7U6NBZyGOdgScr1gzkJJCnmi8JDd3K', 'jollyvel', NULL, 'edera', NULL, 22, 'Female', NULL, 'Manigawng, Anahawan, Southern Leyte, 6610', NULL, NULL, NULL, '2025-11-02 20:10:21', '4', '2025-11-02 20:15:58'),
(8, 11, 'jolly.edera', '$2b$10$ki2l.0OYBYAs5gKm3HdcVuymuD05ZcigLAFjDPxLH3hjGdVvkb62i', 'jolly', NULL, 'edera', NULL, 22, 'Male', NULL, 'Manigawng, Anahawan, Southern Leyte, 6610', NULL, NULL, NULL, '2025-11-02 20:09:02', '4', '2025-11-02 20:16:00'),
(9, 15, 'mellyville john.edera', '$2b$10$KiEmjNBHDGI5wEpsa1mHmOV/4/mS7i9h1KjN7QQsBP7Bo1EzUhjQq', 'Mellyville John', NULL, 'edera', NULL, 22, 'Male', '2003-03-13', 'Manigawng, Anahawan, Southern Leyte, 6610', NULL, NULL, NULL, '2025-11-02 20:17:20', '4', '2025-11-02 20:21:17'),
(10, 14, 'jolly.edera', '$2b$10$sAcO5aKd2ui/X0hFLiD5c.zqU6JuwzaCwZxsV6OYELW6UdqOYduly', 'jolly', NULL, 'edera', NULL, 22, 'Female', '2002-01-10', 'Manigawng, Anahawan, Southern Leyte, 6610', NULL, NULL, NULL, '2025-11-02 20:16:25', '4', '2025-11-02 20:21:19'),
(11, 13, 'julita.amora', '$2b$10$OPzJh5pTId3X3qDdjMK5nua0zAiA7kHO0ZNQyCTsZGyOZDlSUog6C', 'Julita', NULL, 'Amora', NULL, 60, 'Female', '1951-07-30', 'Poblacion, Anahawan, Southern Leyte, 6610', NULL, NULL, NULL, '2025-11-02 20:15:09', '4', '2025-11-02 20:21:21'),
(12, 10, '2025-1443', '$2b$10$nyll7KqX4ZDqspvuC3ZIOubQLp/0VZzZHsFuUxzORwcxH4HHo4D9a', 'Amelyn', 'budlat', 'Gatab', NULL, 22, 'Female', '2003-02-02', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', 'placeholder-url', '2025-11-02 13:41:29', '4', '2025-11-02 20:21:24'),
(13, 16, 'amelyn.gatab', '$2b$10$ujLTu/Jfhz18MF0QiM1Xg.fBmv/X12NlNzm/MNiVDP.huYDlpEGsW', 'Amelyn', NULL, 'Gatab', NULL, 22, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', NULL, NULL, NULL, '2025-11-02 20:21:59', '4', '2025-11-02 20:24:46'),
(14, 6, '2025-2572', '$2b$10$ebwiMfLOvJJ5AsQVlPZfZ.jW7ioeXKxlg5GkRW3/692/UA3VLNkD2', 'Nikko lance', 'magcosta', 'Riveral', 'jr', 24, 'Male', '2001-02-06', 'Amagusan, Anahawan, Southern Leyte, 6610', 'Married', 'Regular', 'placeholder-url', '2025-10-06 11:22:31', '4', '2025-11-02 22:34:17'),
(15, 20, 'amelynss.gatabsss', '$2b$10$AnvXGBnKCMTz83Ce/GzuNuUQVUYr4c7ur6iHglwVZYm.VtQJGbgEW', 'Amelynss', 'budlats', 'Gatabsss', NULL, 24, NULL, '2000-02-22', 'Cogon, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-02 20:31:45', '4', '2025-11-19 09:38:56'),
(16, 17, 'mark lloyd.villoria', '$2b$10$H8CHhjDuskXX1p8QitwUUuL3EYhTEbK9MUtx3.xcy5zr8trrPYRRS', 'Mark lloyd', NULL, 'Villoria', NULL, 24, 'Male', '2000-02-22', 'Canlabian, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-02 20:23:45', '4', '2025-11-23 12:41:14'),
(17, 22, 'mellyville john.edera', '$2b$10$0ckTQGM87SfFch3L1NWbr.zIRciHtmDpMIJVhRu7nNSQBMEctckcm', 'Mellyville John', 'Amora', 'Edera', NULL, 22, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-23 12:38:44', '4', '2025-11-23 12:46:04'),
(18, 24, 'mellyville johna.edera', '$2b$10$xnZnm3n7K4yfe.4FXz5.eOzTIGtF1g1.4RIxPC3uc0xzCnFETw7Jq', 'Mellyville Johna', 'Amoraa', 'Edera', NULL, 24, 'Male', '2004-03-13', 'Calintaan, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-23 12:47:49', '4', '2025-11-23 12:57:32'),
(19, 23, 'mellyville john.edera', '$2b$10$vfcj.X3l7QwnKoOxrhpKceC75YrmizmDrO1lX9FtA6CshUxX0qf0C', 'Mellyville John', 'Amora', 'Edera', NULL, 22, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-23 12:46:21', '4', '2025-11-23 12:57:34'),
(20, 25, 'mellyville john.ederaa', '$2b$10$.ZIp51ZwBUaxDdG.nPYa4./pE23lYgM1k45cGF6EdBV5lptwzR0qa', 'Mellyville John', 'Amora', 'Ederaa', NULL, 22, NULL, '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-23 12:58:47', '4', '2025-11-23 12:59:02'),
(21, 26, 'mellyville john.ederaa', '$2b$10$7WMk65zOzCo6zjQUprkzeuI8JsebFshVVHuIXM7RUCEo.LpxbWPoy', 'Mellyville John', 'Amora', 'Ederaa', NULL, 22, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-23 12:59:13', '4', '2025-11-23 13:00:08'),
(22, 27, 'mellyville john.ederaa', '$2b$10$GIeCmtaPJIkrXqOX.08pVODEXthssmYthk9mmOKkkXO/prEkLR4Lq', 'Mellyville John', 'Amora', 'Ederaa', NULL, 22, NULL, '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-23 13:00:18', '4', '2025-11-23 13:00:26'),
(23, 28, 'lola.lolaa', '$2b$10$MSSFceqQL5WFw/U3RIYEtO2C7z2CuQ3XxBiPVDSGu3WdiwH0EjdWW', 'lola', 'lola', 'lolaa', NULL, 22, 'Female', '2003-03-13', 'Manigawng, Anahawan, Southern Leyte, 6610', 'Single', NULL, NULL, '2025-11-23 13:03:19', '4', '2025-11-23 13:03:23'),
(24, 31, 'kenn.palcos', '$2b$10$bMmRM/ZDl6Xf53HVzEBheONMuijEl5J7JNhQ42cVBA2zMN2ZGtFFO', 'Kenn', 'Bulagsac', 'Palcos', NULL, 24, NULL, '2003-03-13', 'Calintaan, Anahawan, Southern Leyte, 6610', NULL, NULL, NULL, '2025-11-23 13:40:52', '4', '2025-11-23 13:41:31'),
(25, 30, 'kenn.palcss', '$2b$10$7q1zCiZ9u93BxD5Fu1Gkbe31T1NHzw0xdy7cxIGcx6SzMoaogxxP6', 'Kenn', 'Bulagsac', 'Palcss', NULL, 24, NULL, '2003-03-13', 'Calintaan, Anahawan, Southern Leyte, 6610', NULL, NULL, NULL, '2025-11-23 13:35:24', '4', '2025-11-23 13:41:37'),
(26, 32, 'kenntoy.palcos', '$2b$10$e9rB24unHtNvc7FrfAJfsucGQUGwwd0CXwonWshTgGAA2BZjmbhBu', 'Kenntoy', 'Bulagsac', 'Palcos', NULL, 22, 'Male', '2003-03-13', 'Calintaan, Anahawan, Southern Leyte, 6610', 'Single', 'PWD', NULL, '2025-11-23 13:41:26', '4', '2025-11-23 14:13:16'),
(27, 29, 'kenn.palco', '$2b$10$RkU2VzbRbAs5kgK.V2p5zeqshYAXYspt0anj8Fc3w7.taX0FWDZlC', 'Kenn', 'Bulagsac', 'Palco', NULL, 24, 'Male', '2003-03-13', 'Calintaan, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-23 13:28:46', '4', '2025-11-23 20:55:23'),
(28, 21, 'lola.lola', '$2b$10$f6C7CLEuyoZsTISHkoZQsu3iiptTX0Jte.W0sfsmUhXYEgSxLzbYy', 'Julita', 'Malate', 'Amora', NULL, 60, 'Female', '1981-03-30', 'Manigawng, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-02 20:33:03', '4', '2025-11-27 20:19:32'),
(29, 18, 'amelyn.gatab', '$2b$10$AWz566YDRusBFB.UgxxdWe3KTaVLxdhyJxKqkaPxXRNTPImCenhDm', 'Amelyn', 'budlat', 'Gatab', NULL, 24, 'Female', '2000-02-22', 'Cogon, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-02 20:25:09', '4', '2025-11-27 21:45:57'),
(30, 33, 'mellyvillejohn.ederas', '$2b$10$RShvn3KiccF49M7M6MZy9uttUFaqycvmxIlu3sA4TiLJTPS7yvadC', 'MellyvilleJohn', 'Amora', 'Ederas', NULL, 22, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-23 19:57:25', '4', '2025-11-27 21:46:06'),
(31, 19, 'amelyns.gatabs', '$2b$10$2G.L33zFTdbu1DNL81El1umtUW.ggVapZbFPqO02HmiwriuHSQHTy', 'Amelyns', 'budlat', 'Gatabs', NULL, 24, 'Female', '2000-02-22', 'Cogon, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-11-02 20:31:29', '4', '2025-11-29 13:54:52'),
(32, 39, 'lola.lola', '$2b$10$I3iYcKS.QR8PEZc9R4R14udovKRJt2qFitMD38xAcJtyBcqXcmsze', 'lolaa', 'amora', 'lola', 'iii', 23, 'Female', '2003-03-30', 'Manigawng, Anahawan, Southern Leyte, 6610', 'Single', 'Senior Citizen', '/applicant_photos/1764543441645_fisherfolk_logo.png', '2025-11-30 18:36:26', '4', '2025-11-30 23:01:39'),
(33, 42, 'jerrylyn.modeo', '$2b$10$J/WxfCbTbyc2DfuSUwaVC.2v5/lthZE4.UvsOiibkr2cZ6uSTxl5a', 'Jerrylyn', 'erive', 'Modeo', 'n/a', 20, 'Male', '2003-03-13', 'Kagingkingan, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1764610669895_5.png', '2025-12-01 17:37:49', '4', '2025-12-01 18:04:38'),
(34, 44, 'sample.sample', '$2b$10$Sf3p3eP6qHUIee3pQHlN2eAQR0a5Jgaj4vui10JUxchRU/kYl4Naq', 'sample', 'sample', 'sample', NULL, 23, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1765064621143_IMG_20190613_173017.png', '2025-12-06 23:43:41', '5', '2025-12-06 23:51:26'),
(35, 45, 'sample.sample', '$2b$10$x3.OQseUPMPNIv1AMI3KpOk4QKUgrH04L2taL6lRyyZ1Mf5C3MXOa', 'sample', 'sample', 'sample', NULL, 23, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1765065135615_IMG_20190613_173017.png', '2025-12-06 23:52:15', '5', '2025-12-06 23:53:31'),
(36, 46, 'sample.sample', '$2b$10$/qE.iS7AQ4ChWJgIS7NRbeEejoH.7OS2gTzQk0Sm7mCldw8JUwy22', 'sample', 'sample', 'sample', 'Jr', 23, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1765065227718_IMG_20190613_173017.png', '2025-12-06 23:53:47', '5', '2025-12-07 23:52:44'),
(37, 47, 'olive.edera', '$2b$10$pjd02HnRkzBt6GqOo3Lo1.eK30S2ITPAN/8ccMlpF9ixQ2.FNFdYK', 'Olive', 'Amora', 'Edera', NULL, 40, 'Female', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1765150436301_melll.png', '2025-12-07 23:33:56', '5', '2025-12-09 16:21:05'),
(38, 9, '2025-4940', '$2b$10$PPpF2AlB6/3BgPnVLzBWP.yXuDmIJh80.65Fb7EBiB5H1YlTeH9Ve', 'Mark lloyd', 'ambot', 'Villoria', 'Jr', 22, 'Male', '2003-03-02', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', 'placeholder-url', '2025-11-02 12:55:06', '5', '2025-12-10 21:24:25'),
(39, 41, 'kenn.palco', '$2b$10$9vXPdMW.X.3RB2p6fOVkCuQSu/XLlBHjApIM8YXYDsz9Ew1FBJtbW', 'Kenn', 'toy', 'Palco', 'Jr', 23, 'Male', '2002-01-10', 'Amagusan, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1764589810710_Screenshot 2024-10-20 123107.png', '2025-12-01 00:00:00', '5', '2025-12-17 14:10:59'),
(40, 36, 'nikko lass.riveral', '$2b$10$/xgIZmK1/PplChUhoQ/0nOOKqYCgMlFawZqD7LEa8mIDA/A189ahu', 'Nikko Lass', 'nikolas', 'Riveral', 'Sr.', 23, 'Male', '2002-01-03', 'Manigawng, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1764275563035_Screenshot 2024-09-25 000412.png', '2025-11-27 00:00:00', '5', '2025-12-17 14:11:34'),
(41, 53, 'asdasdasd.asdasdasd', '$2b$10$DaAQ2o435E92QQ9CaqzuV.nYAe8g3UvfyJTAGtC5TxevkjDLeaWYC', 'asdasdasd', 'asdasdasd', 'asdasdasd', '', 45, 'Female', '1999-12-03', 'Canlabian, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1766235525142_0-2.png', '2025-12-20 00:00:00', '5', '2025-12-23 23:53:26'),
(42, 52, 'sample.edera', '$2b$10$8FWjbOI53PiTLNBOKm9rwufxGMGBKN5GM2A3ogK/DO1x6q9WZ0KKC', 'sample', 'Amoraasqwe', 'Edera', 'Jr', 23, 'Male', '2003-03-13', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-12-20 00:00:00', '5', '2025-12-23 23:53:30'),
(43, 51, 'tawing.muca', '$2b$10$YP.O5IZaERGYZuvrKhSCn.HldPr7zzhPdFaoqdcSkODaxNSxysX9q', 'tawing', 'tawing', 'muca', 'tawing', 30, 'Male', '2000-01-01', 'Cogon, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', NULL, '2025-12-17 00:00:00', '5', '2025-12-23 23:53:33'),
(44, 49, 'juan.amolo', '$2b$10$LNZnh1/Fjah1oky9nEbyTekGVSvkLmtnR9uiHKIqPmaJs4E02Bmpm', 'Juan', 'Marvin', 'Amolo', 'Sr.', 22, 'Male', '2003-03-13', 'Canlabian, Anahawan, Southern Leyte, 6610', 'Single', 'Regular', '/applicant_photos/1765644816654_Screenshot_2025-07-04_071903.png', '2025-12-13 00:00:00', '5', '2025-12-23 23:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `fishing_gears`
--

CREATE TABLE `fishing_gears` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `gear_no` varchar(50) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `owner_address` varchar(255) NOT NULL,
  `hand_instruments` varchar(255) DEFAULT NULL,
  `bobo_small_qty` int(11) DEFAULT 0,
  `bobo_large_qty` int(11) DEFAULT 0,
  `tambuan_qty` int(11) DEFAULT 0,
  `line_type` varchar(255) DEFAULT NULL,
  `nets` varchar(255) DEFAULT NULL,
  `palubog_nets` varchar(255) DEFAULT NULL,
  `accessories` varchar(255) DEFAULT NULL,
  `total_fee` decimal(10,2) NOT NULL DEFAULT 0.00,
  `application_date` date NOT NULL DEFAULT current_timestamp(),
  `status` enum('PENDING','APPROVED','REJECTED') NOT NULL DEFAULT 'PENDING',
  `registered_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` date DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `apprehension_status` enum('Clear','Apprehended','Released') DEFAULT 'Clear'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fishing_gears`
--

INSERT INTO `fishing_gears` (`id`, `applicant_id`, `gear_no`, `owner_name`, `owner_address`, `hand_instruments`, `bobo_small_qty`, `bobo_large_qty`, `tambuan_qty`, `line_type`, `nets`, `palubog_nets`, `accessories`, `total_fee`, `application_date`, `status`, `registered_at`, `expires_at`, `updated_at`, `apprehension_status`) VALUES
(23, 43, 'GEAR-AA-2025-43-01', 'Jerrylyn modeo Modeo', 'Kagingkingan, Anahawan, Southern Leyte, 6610', 'Speargun (1), Scoop/Dip Net (1), Gaff Hook (1), Spears (1)', 14, 1, 1, 'Long line 500 hooks (1), Long line 500+ hooks (1)', 'Bungsod (1), Palutaw Nets (1), Palaran (1), Pamawo (1)', 'Pang-ilak (1), Panglonggot (1), Pang-mangodolong (1), Panghawol-hawol (1), Pangmangsi (1)', 'pressure_light', 3615.00, '2025-12-31', 'APPROVED', '2025-12-31 00:00:00', '2025-12-31', '2026-01-04 16:05:51', 'Apprehended'),
(24, 8, 'GEAR-AA-2025-8-01', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Speargun (1)', 0, 0, 0, NULL, NULL, NULL, NULL, 100.00, '2025-12-31', 'APPROVED', '2026-01-03 00:00:00', '2026-01-03', '2026-01-04 16:16:52', 'Clear');

-- --------------------------------------------------------

--
-- Table structure for table `fishing_gear_fees`
--

CREATE TABLE `fishing_gear_fees` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `gear_name` varchar(100) NOT NULL,
  `gear_code` varchar(50) NOT NULL,
  `min_units` int(11) NOT NULL DEFAULT 1,
  `max_units` int(11) DEFAULT NULL,
  `fee` decimal(10,2) NOT NULL DEFAULT 0.00,
  `fee_type` enum('per_unit','flat','free') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fishing_gear_fees`
--

INSERT INTO `fishing_gear_fees` (`id`, `category`, `gear_name`, `gear_code`, `min_units`, `max_units`, `fee`, `fee_type`, `created_at`, `updated_at`) VALUES
(1, 'Hand Instruments', 'Spear gun (with/without light)', 'spear_gun', 1, 0, 100.00, 'flat', '2025-12-20 17:55:56', '2025-12-24 02:17:03'),
(2, 'Hand Instruments', 'Scoop/dip nets (bolinaw/anchovies)', 'scoop_dip_net', 1, 1, 10.00, 'free', '2025-12-20 17:55:56', '2026-01-02 22:52:12'),
(3, 'Hand Instruments', 'Gaff hook (ganso)', 'gaff_hook', 1, 1, 0.00, 'free', '2025-12-20 17:55:56', '2025-12-20 17:55:56'),
(4, 'Hand Instruments', 'Spears (sapang)', 'spears', 1, 1, 0.00, 'free', '2025-12-20 17:55:56', '2025-12-20 17:55:56'),
(5, 'Traps / Bobo', 'Bobo small (3 ft) first 10 units', 'bobo_small', 1, 10, 50.00, 'flat', '2025-12-20 17:56:20', '2025-12-20 17:56:20'),
(6, 'Traps / Bobo', 'Bobo small excess', 'bobo_small', 11, NULL, 10.00, 'per_unit', '2025-12-20 17:56:20', '2025-12-20 17:56:20'),
(7, 'Traps / Bobo', 'Bobo (>3 ft)', 'bobo_large', 1, NULL, 50.00, 'per_unit', '2025-12-20 17:56:20', '2025-12-20 17:56:20'),
(8, 'Traps / Bobo', 'Bantak', 'bantak', 1, 1, 0.00, 'free', '2025-12-20 17:56:20', '2025-12-20 17:56:20'),
(9, 'Traps / Bobo', 'Tambuan', 'tambuan', 1, NULL, 25.00, 'per_unit', '2025-12-20 17:56:20', '2025-12-20 17:56:20'),
(10, 'Lines', 'Long line (palangre) up to 500 hooks', 'longline_small', 1, NULL, 50.00, 'per_unit', '2025-12-20 17:56:30', '2025-12-20 22:42:12'),
(11, 'Lines', 'Long line (palangre) 501 hooks+', 'longline_plus', 1, NULL, 100.00, 'per_unit', '2025-12-20 17:56:30', '2025-12-20 22:40:14'),
(12, 'Lines', 'Jigger (sarangat)', 'jigger', 1, 1, 0.00, 'free', '2025-12-20 17:56:30', '2025-12-20 17:56:30'),
(13, 'Nets', 'Bungsod', 'bungsod', 1, NULL, 500.00, 'per_unit', '2025-12-20 17:56:36', '2025-12-20 17:56:36'),
(14, 'Nets', 'Palutaw nets', 'palutaw', 1, NULL, 500.00, 'per_unit', '2025-12-20 17:56:36', '2025-12-20 17:56:36'),
(15, 'Nets', 'Palaran', 'palaran', 1, NULL, 500.00, 'per_unit', '2025-12-20 17:56:36', '2025-12-20 17:56:36'),
(16, 'Nets', 'Pamawo (no scaring device)', 'pamawo', 1, NULL, 500.00, 'per_unit', '2025-12-20 17:56:36', '2025-12-20 17:56:36'),
(17, 'Palubog Nets', 'Pang-ilak', 'pang_ilak', 1, NULL, 100.00, 'per_unit', '2025-12-20 17:56:41', '2025-12-20 17:56:41'),
(18, 'Palubog Nets', 'Panglonggot (mabgas/bolinao)', 'pang_longgot', 1, NULL, 100.00, 'per_unit', '2025-12-20 17:56:41', '2025-12-20 17:56:41'),
(19, 'Palubog Nets', 'Pang-mangodolong', 'pang_mangodolong', 1, NULL, 500.00, 'per_unit', '2025-12-20 17:56:41', '2025-12-20 17:56:41'),
(20, 'Palubog Nets', 'Panghaiwol-hawol', 'pang_hawol', 1, NULL, 200.00, 'per_unit', '2025-12-20 17:56:41', '2025-12-20 17:56:41'),
(21, 'Palubog Nets', 'Pangmangsi', 'pang_mangsi', 1, NULL, 200.00, 'per_unit', '2025-12-20 17:56:41', '2025-12-20 17:56:41'),
(22, 'Accessories', 'Pressure light (Petromax)', 'pressure_light', 1, 1, 100.00, 'flat', '2025-12-20 17:56:48', '2025-12-20 17:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `fishing_vessels`
--

CREATE TABLE `fishing_vessels` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `vessel_no` varchar(50) NOT NULL,
  `registration_date` date NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `owner_address` varchar(255) NOT NULL,
  `home_port` varchar(255) NOT NULL,
  `vessel_name` varchar(255) NOT NULL,
  `vessel_color` varchar(50) DEFAULT NULL,
  `vessel_photo` varchar(255) DEFAULT NULL,
  `vessel_type` enum('Motorized','Non-Motorized') NOT NULL,
  `length` decimal(5,2) DEFAULT NULL,
  `breadth` decimal(5,2) DEFAULT NULL,
  `depth` decimal(5,2) DEFAULT NULL,
  `gross_tonnage` decimal(6,2) DEFAULT NULL,
  `net_tonnage` decimal(6,2) DEFAULT NULL,
  `engine_make` varchar(100) DEFAULT NULL,
  `engine_serial_number` varchar(100) DEFAULT NULL,
  `engine_horse_power` double DEFAULT NULL,
  `engine_cylinders` int(11) DEFAULT NULL,
  `inspection_place` varchar(255) DEFAULT NULL,
  `inspection_date` date DEFAULT NULL,
  `admeasurement_officer` varchar(255) DEFAULT NULL,
  `engine_photo` varchar(255) DEFAULT NULL,
  `registration_fee` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('PENDING','APPROVED','REJECTED','EXPIRED') NOT NULL DEFAULT 'PENDING',
  `registered_at` date DEFAULT NULL,
  `expires_at` date NOT NULL,
  `apprehension_status` enum('Clear','Apprehended','Released') DEFAULT 'Clear'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fishing_vessels`
--

INSERT INTO `fishing_vessels` (`id`, `applicant_id`, `vessel_no`, `registration_date`, `owner_name`, `owner_address`, `home_port`, `vessel_name`, `vessel_color`, `vessel_photo`, `vessel_type`, `length`, `breadth`, `depth`, `gross_tonnage`, `net_tonnage`, `engine_make`, `engine_serial_number`, `engine_horse_power`, `engine_cylinders`, `inspection_place`, `inspection_date`, `admeasurement_officer`, `engine_photo`, `registration_fee`, `created_at`, `updated_at`, `status`, `registered_at`, `expires_at`, `apprehension_status`) VALUES
(5, 8, 'SOL-AA-2025-8-01', '2025-12-16', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'fishing in a mall', 'red', '/vessel_photo/1766071148320_automobile.png', 'Non-Motorized', 1.20, 1.20, 1.30, 0.37, 0.34, '', '', 0, 0, 'canlabian', '2025-12-17', 'Mellyville John A. Edera', NULL, 51.00, '2025-12-18 15:19:08', '2026-01-01 16:30:09', 'APPROVED', '2025-12-18', '2027-01-18', 'Apprehended'),
(6, 8, 'SOL-AA-2025-8-02', '2025-12-16', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'fishing in a mall 1', 'red', '/vessel_photo/1766098820599_automobile_predict.png', 'Non-Motorized', 1.30, 1.30, 1.30, 0.44, 0.40, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-17', 'Mellyville John A. Edera', NULL, 51.00, '2025-12-18 23:00:20', '2026-01-01 16:15:40', 'APPROVED', '2025-12-18', '2026-09-18', 'Apprehended'),
(11, 8, 'SOL-AA-2025-8-03', '2025-12-16', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'fishing in a mall 2', 'red', '/vessel_photo/1766099334569_0-2.png', 'Non-Motorized', 1.30, 1.30, 1.30, 0.44, 0.40, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-17', 'Mellyville John A. Edera', NULL, 51.00, '2025-12-18 23:08:54', '2026-01-01 16:23:46', 'APPROVED', '2025-12-18', '2026-01-18', 'Apprehended'),
(13, 8, 'SOL-AA-2025-8-04', '2025-12-16', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'fishing in a mall 3', 'red', NULL, 'Non-Motorized', 1.30, 1.30, 1.30, 0.44, 0.40, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-17', 'Mellyville John A. Edera', NULL, 51.00, '2025-12-18 23:11:10', '2025-12-27 18:21:40', 'REJECTED', '2025-12-18', '2026-12-18', 'Clear'),
(17, 8, 'SOL-AA-2025-8-05', '2025-12-16', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'fishing in a mall 4', 'red', '/vessel_photo/1766099702784_laplap_api.png', 'Motorized', 2.00, 2.00, 3.00, 2.40, 2.16, 'kawasaki', 'hwk123', 7, 1, 'canlabian', '2025-12-17', 'Mellyville John A. Edera', '/engine_photo/1766099702792_Screenshot_2024-05-18_180638.png', 51.00, '2025-12-18 23:15:02', '2026-01-04 12:46:44', 'APPROVED', '2025-12-18', '2026-12-18', 'Apprehended'),
(18, 8, 'SOL-AA-2025-8-06', '2025-12-16', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'BoatR', 'red', '/vessel_photo/1766113683680_Screenshot_2024-12-17_124602.png', 'Non-Motorized', 1.30, 1.30, 1.30, 0.44, 0.40, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-17', 'Mellyville John A. Edera', NULL, 51.00, '2025-12-19 03:08:03', '2026-01-04 16:01:00', 'APPROVED', '2025-12-19', '2025-12-19', 'Released'),
(19, 8, 'SOL-AA-2025-8-07', '2025-12-18', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Sakayan ni Nicole', 'red', '/vessel_photo/1766250985948_Screenshot_2025-07-04_072603.png', 'Non-Motorized', 1.30, 1.30, 1.30, 0.44, 0.40, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-19', 'Mellyville John A. Edera', NULL, 60.00, '2025-12-20 17:16:25', '2026-01-03 02:23:59', 'APPROVED', '2025-12-20', '2026-12-20', 'Apprehended'),
(20, 8, 'SOL-AA-2025-8-08', '2025-12-21', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Sakayan ni Nicole 1', 'red', '/vessel_photo/1766277412273_samani_uyy.png', 'Non-Motorized', 1.30, 1.30, 1.30, 0.44, 0.40, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-19', 'Mellyville John A. Edera', NULL, 60.00, '2025-12-21 00:36:52', '2025-12-27 18:21:40', 'APPROVED', '2025-12-21', '2026-12-21', 'Clear'),
(22, 8, 'SOL-AA-2025-8-09', '2025-12-15', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Sakayan ni Nicole 2', 'red', NULL, 'Non-Motorized', 1.30, 1.30, 1.30, 0.44, 0.40, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-19', 'Mellyville John A. Edera', NULL, 60.00, '2025-12-21 00:37:31', '2025-12-27 18:21:40', 'APPROVED', '2025-12-21', '2026-12-21', 'Clear'),
(23, 8, 'SOL-AA-2025-8-10', '2025-12-15', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Sakayan ni Nicole 3', 'red', NULL, 'Non-Motorized', 1.30, 1.80, 1.30, 0.61, 0.55, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-19', 'Mellyville John A. Edera', NULL, 60.00, '2025-12-21 02:15:50', '2026-01-04 15:51:45', 'APPROVED', '2025-12-21', '2026-12-21', 'Clear'),
(24, 37, 'SOL-AA-2025-37-01', '2025-12-15', 'Barry Neil Mags Magcosta Sr.', 'Amagusan, Anahawan, Southern Leyte, 6610', 'canlabian', 'Barry 1 ', 'red', '/vessel_photo/1766532802417_IMG_20190613_173017.png', 'Motorized', 2.00, 2.00, 2.00, 1.60, 1.44, 'honda', 'k123h', 7, 1, 'canlabian', '2025-12-19', 'Mellyville John A. Edera', '/engine_photo/1766532802432_IMG_20190613_173017.png', 60.00, '2025-12-23 23:33:22', '2026-01-04 15:52:03', 'APPROVED', '2025-12-24', '2025-12-24', 'Clear'),
(25, 48, 'SOL-AA-2025-48-01', '0000-00-00', 'Olive Amora Edera', 'Poblacion, Anahawan, Southern Leyte, 6610', 'canlabian', 'Barry 1 ', 'red', '/vessel_photo/1766534848032_IMG_20190613_173017.png', 'Non-Motorized', 1.30, 1.40, 1.60, 0.58, 0.52, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-15', 'Mellyville John A. Edera', NULL, 60.00, '2025-12-24 00:07:28', '2025-12-24 00:08:40', 'APPROVED', '2025-12-24', '2026-12-24', 'Clear'),
(26, 43, 'SOL-AA-2025-43-01', '0000-00-00', 'Jerrylyn modeo Modeo', 'Kagingkingan, Anahawan, Southern Leyte, 6610', 'canlabian', 'lyn 1 ', 'red', '/vessel_photo/1766534900206_IMG_20190613_173017.png', 'Motorized', 1.60, 1.80, 1.80, 1.04, 0.93, 'honda', 'yg123', 7, 1, 'canlabian', '2025-12-09', 'Mellyville John A. Edera', '/engine_photo/1766534900211_IMG_20190613_173017.png', 75.00, '2025-12-24 00:08:20', '2026-01-01 14:04:44', 'APPROVED', '2025-12-24', '2026-12-24', 'Apprehended'),
(27, 8, 'SOL-AA-2025-8-11', '0000-00-00', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'canlabian', 'lyn 2', 'red', NULL, 'Non-Motorized', 1.90, 1.50, 1.80, 1.03, 0.92, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-12', 'Mellyville John A. Edera', NULL, 75.00, '2025-12-24 02:09:37', '2025-12-27 18:21:40', 'APPROVED', '2025-12-24', '2026-12-24', 'Clear'),
(28, 8, 'SOL-AA-2025-8-12', '0000-00-00', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'canlabian', 'ambot 1 ', 'red', NULL, 'Non-Motorized', 2.00, 2.00, 2.00, 1.60, 1.44, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-17', 'Mellyville John A. Edera', NULL, 75.00, '2025-12-24 02:53:06', '2025-12-28 18:45:26', 'APPROVED', '2025-12-26', '2026-12-26', 'Clear'),
(29, 8, 'SOL-AA-2025-8-13', '2025-12-17', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'canlabian', 'sakayan', 'red', NULL, 'Non-Motorized', 1.90, 1.90, 1.90, 1.37, 1.23, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-22', 'Mellyville John A. Edera', NULL, 75.00, '2025-12-27 18:55:33', '2025-12-27 18:55:38', 'APPROVED', '2025-12-27', '2026-12-27', 'Clear'),
(30, 38, 'SOL-AA-2025-38-01', '2025-12-01', 'Amelyn budlat Gatab', 'Calintaan, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Sakayan ni Nicole 3', 'red', NULL, 'Non-Motorized', 1.30, 1.80, 1.30, 0.61, 0.55, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-19', 'Mellyville John A. Edera', NULL, 60.00, '2025-12-29 00:17:36', '2025-12-29 00:17:36', 'PENDING', '2025-12-29', '2026-12-29', 'Clear'),
(36, 8, 'SOL-AA-2026-8-14', '2025-12-01', 'Mellyvillleeeee John Amora Edera Jr', 'Poblacion, Anahawan, Southern Leyte, 6610', 'Poblacion, Anahawan, Southern Leyte, 6610', 'fishing in a mall 3', 'red', NULL, 'Non-Motorized', 1.30, 1.80, 1.30, 0.61, 0.55, NULL, NULL, NULL, NULL, 'canlabian', '2025-12-19', 'Mellyville John A. Edera', NULL, 50.00, '2026-01-03 21:09:09', '2026-01-03 21:09:09', 'PENDING', '2026-01-03', '2027-01-03', 'Clear');

-- --------------------------------------------------------

--
-- Table structure for table `gear_renewals`
--

CREATE TABLE `gear_renewals` (
  `id` int(11) NOT NULL,
  `gear_id` int(11) NOT NULL,
  `gear_no` varchar(50) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `hand_instruments` varchar(255) DEFAULT NULL,
  `line_type` varchar(255) DEFAULT NULL,
  `nets` varchar(255) DEFAULT NULL,
  `palubog_nets` varchar(255) DEFAULT NULL,
  `bobo_small_qty` int(11) DEFAULT 0,
  `bobo_large_qty` int(11) DEFAULT 0,
  `tambuan_qty` int(11) DEFAULT 0,
  `accessories` varchar(255) DEFAULT NULL,
  `old_total_fee` decimal(10,2) DEFAULT NULL,
  `base_fee` decimal(10,2) DEFAULT NULL,
  `penalty_fee` decimal(10,2) DEFAULT NULL,
  `new_total_fee` decimal(10,2) DEFAULT NULL,
  `old_expires_at` date DEFAULT NULL,
  `new_expires_at` date DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED') DEFAULT 'PENDING',
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `approved_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gear_renewals`
--

INSERT INTO `gear_renewals` (`id`, `gear_id`, `gear_no`, `owner_name`, `hand_instruments`, `line_type`, `nets`, `palubog_nets`, `bobo_small_qty`, `bobo_large_qty`, `tambuan_qty`, `accessories`, `old_total_fee`, `base_fee`, `penalty_fee`, `new_total_fee`, `old_expires_at`, `new_expires_at`, `status`, `requested_at`, `approved_at`, `approved_by`, `updated_at`) VALUES
(13, 24, 'GEAR-AA-2025-8-01', '', 'Speargun (1)', '', '', '', 0, 0, 0, NULL, 100.00, 100.00, 30.00, 130.00, '2026-01-03', '2027-01-03', 'PENDING', '2026-01-05 16:58:14', NULL, NULL, '2026-01-05 16:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `key_name` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `key_name`, `value`) VALUES
(23, 'site_logo', '/logos/1767535265557_boat.png');

-- --------------------------------------------------------

--
-- Table structure for table `municipal_ordinances`
--

CREATE TABLE `municipal_ordinances` (
  `id` int(11) NOT NULL,
  `section_no` varchar(50) NOT NULL,
  `ordinance_title` varchar(255) NOT NULL,
  `ordinance_description` text NOT NULL,
  `penalty_fee` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `municipal_ordinances`
--

INSERT INTO `municipal_ordinances` (`id`, `section_no`, `ordinance_title`, `ordinance_description`, `penalty_fee`, `created_at`) VALUES
(1, 'Section 66 ', 'Violations of the Terms and Conditions of a License', 'Any licensed fisherfolk who violates the conditions of their fishing license shall be fined ₱2,500.00 or required to render community service, with possible impoundment of fishing paraphernalia until the penalty is fulfilled.', 2500.00, '2025-12-15 15:20:47'),
(2, 'Section 67 ', 'Fishing by a Person Not Registered', 'Fishing by individuals not registered in the Municipal Fisherfolk Registry is prohibited.Violators shall be fined ₱500.00 plus compulsory registration or community service.', 550.00, '2025-12-15 15:32:39'),
(3, 'section 1', 'Fishing by kuan', 'kuan', 5000.00, '2026-01-02 11:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `transaction_type` enum('VESSEL_RENEWAL','VESSEL_MODIFICATION','BOAT_REGISTRATION','GEAR_REGISTRATION','GEAR_RENEWAL','APPREHENSION_RELEASE') NOT NULL,
  `related_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `cashier_id` int(11) NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `reference_no`, `transaction_type`, `related_id`, `amount`, `cashier_id`, `applicant_id`, `created_at`) VALUES
(1, 'VM-1766947485313', 'VESSEL_MODIFICATION', 12, 100.00, 4, 8, '2025-12-28 18:44:45'),
(2, 'VM-1766947503991', 'VESSEL_MODIFICATION', 11, 75.00, 4, 37, '2025-12-28 18:45:03'),
(3, 'VM-1766947526264', 'VESSEL_MODIFICATION', 9, 75.00, 4, 8, '2025-12-28 18:45:26'),
(4, 'VR-1766948461671', 'VESSEL_RENEWAL', 6, 171.00, 4, 8, '2025-12-28 19:01:01'),
(5, 'VR-1767020190840', 'VESSEL_RENEWAL', 7, 51.00, 4, 8, '2025-12-29 14:56:30'),
(6, 'GR-1767398218378', 'GEAR_RENEWAL', 7, 3595.00, 4, 43, '2026-01-02 23:56:58'),
(7, 'GR-1767398543663', 'GEAR_RENEWAL', 8, 3605.00, 4, 43, '2026-01-03 00:02:23'),
(8, 'GR-1767399664601', 'GEAR_REGISTRATION', 24, 100.00, 4, 8, '2026-01-03 00:21:04'),
(11, 'AR-1767406931624', 'APPREHENSION_RELEASE', 51, 0.00, 4, 8, '2026-01-03 02:22:11'),
(12, 'AR-1767407224357', 'APPREHENSION_RELEASE', 52, 0.00, 4, NULL, '2026-01-03 02:27:04'),
(13, 'GR-1767540134611', 'GEAR_RENEWAL', 9, 3615.00, 4, 43, '2026-01-04 15:22:14'),
(14, 'VR-1767540306017', 'VESSEL_RENEWAL', 9, 51.00, 4, 8, '2026-01-04 15:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `registration_fees`
--

CREATE TABLE `registration_fees` (
  `id` int(11) NOT NULL,
  `min_tonnage` decimal(5,2) NOT NULL,
  `max_tonnage` decimal(5,2) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_fees`
--

INSERT INTO `registration_fees` (`id`, `min_tonnage`, `max_tonnage`, `fee`, `created_at`, `updated_at`) VALUES
(1, 0.00, 0.99, 50.00, '2025-12-08 15:53:27', '2026-01-02 22:52:00'),
(2, 1.00, 1.90, 75.00, '2025-12-08 15:53:27', '2025-12-08 15:53:27'),
(3, 2.00, 3.00, 100.00, '2025-12-08 15:53:27', '2025-12-08 15:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `extra_name` varchar(255) DEFAULT NULL,
  `role` enum('admin','cashier','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `middle_name`, `extra_name`, `role`) VALUES
(4, 'amelynmylab', '$2b$10$0RTFTR34vh4Ca44Ic4Hsp.o21MLAswY3fbYg2Dbtk3vS2H1Dxswxu', 'amelyn', 'gatab', 'budlat', NULL, 'cashier'),
(5, 'Paparazzi', '$2b$10$ToH2kbiJ0vPPvY3IjDlak.fnqnu5Lij7GDhpteRWrzCMGmcO6gFsm', 'mellyville john', 'edera', 'amora', NULL, 'admin'),
(6, 'nicoleVero', '$2b$10$v0SS9Nr3Nq/vS/D7r93u6urafFUtQyr0dZpsjEDKgEONtc5XwpD72', 'nicole', 'vero', 'v', NULL, 'admin'),
(15, 'mellyville13', '$2b$10$p4.5IZ.fQ2j4Scm/YGxOQel/ftNG90NCOcFx8KM0WeKr3IdKGQWXa', 'mellyjohn', 'edera', 'amora', NULL, 'cashier'),
(16, 'mellyvillejohn13', '$2b$10$SFigvMKHnMF6IV0LR45gxu.ulixr0UyeeG2RYV.6arqJogp1C2Oyy', '', '', NULL, NULL, 'admin'),
(17, 'mellyvillejohn', '$2b$10$gCYuR1SlNFV0rRGy44gV0.SjIfNsthXimw25RA9debhtvwVZzpC6G', 'Mellyville John', 'Edera', 'Amora', '', 'cashier');

-- --------------------------------------------------------

--
-- Table structure for table `vessel_modifications`
--

CREATE TABLE `vessel_modifications` (
  `id` int(11) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `new_length` decimal(5,2) DEFAULT NULL,
  `new_breadth` decimal(5,2) DEFAULT NULL,
  `new_depth` decimal(5,2) DEFAULT NULL,
  `new_gross_tonnage` decimal(6,2) DEFAULT NULL,
  `new_net_tonnage` decimal(6,2) DEFAULT NULL,
  `new_vessel_type` enum('Motorized','Non-Motorized') DEFAULT NULL,
  `new_engine_make` varchar(100) DEFAULT NULL,
  `new_engine_serial_number` varchar(100) DEFAULT NULL,
  `new_engine_horse_power` double DEFAULT NULL,
  `new_engine_cylinders` int(11) DEFAULT NULL,
  `new_engine_photo` varchar(255) DEFAULT NULL,
  `new_vessel_photo` varchar(255) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED') DEFAULT 'PENDING',
  `modification_fee` decimal(10,2) NOT NULL,
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `approved_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vessel_modifications`
--

INSERT INTO `vessel_modifications` (`id`, `vessel_id`, `new_length`, `new_breadth`, `new_depth`, `new_gross_tonnage`, `new_net_tonnage`, `new_vessel_type`, `new_engine_make`, `new_engine_serial_number`, `new_engine_horse_power`, `new_engine_cylinders`, `new_engine_photo`, `new_vessel_photo`, `reason`, `status`, `modification_fee`, `requested_at`, `approved_at`, `approved_by`) VALUES
(17, 29, 1.00, 1.00, 1.00, 0.20, 0.18, 'Motorized', 'honda', 'kwj1', 6, 1, NULL, NULL, 'need bigger engine', 'PENDING', 60.00, '2026-01-02 20:04:43', NULL, NULL),
(18, 17, 2.00, 2.00, 2.00, 1.60, 1.44, NULL, 'kawasaki', 'hwk123', 7, 1, NULL, NULL, 'need new vessel', 'REJECTED', 75.00, '2026-01-02 20:15:04', '2026-01-05 17:01:16', 4),
(19, 24, 2.00, 3.00, 2.00, 2.40, 2.16, 'Motorized', 'kawasaki', 'kh1g6', 5, 1, NULL, NULL, 'need bigger engine', 'REJECTED', 100.00, '2026-01-02 20:22:15', '2026-01-03 00:13:30', 4);

-- --------------------------------------------------------

--
-- Table structure for table `vessel_renewals`
--

CREATE TABLE `vessel_renewals` (
  `id` int(11) NOT NULL,
  `vessel_id` int(11) NOT NULL,
  `old_expiry` date DEFAULT NULL,
  `new_expiry` date DEFAULT NULL,
  `renewal_fee` decimal(10,2) DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED') DEFAULT 'PENDING',
  `approved_by` int(11) NOT NULL,
  `approved_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `base_fee` decimal(10,2) DEFAULT NULL,
  `penalty_fee` decimal(10,2) DEFAULT NULL,
  `total_fee` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vessel_renewals`
--

INSERT INTO `vessel_renewals` (`id`, `vessel_id`, `old_expiry`, `new_expiry`, `renewal_fee`, `status`, `approved_by`, `approved_at`, `requested_at`, `base_fee`, `penalty_fee`, `total_fee`) VALUES
(9, 18, '2026-01-19', '2027-01-19', NULL, 'APPROVED', 4, '2026-01-04 15:25:06', '2026-01-04 15:23:56', 51.00, 0.00, 51.00),
(10, 24, '2025-12-24', '2026-12-24', NULL, 'REJECTED', 4, '2026-01-05 16:39:52', '2026-01-05 16:36:13', 60.00, 30.00, 90.00),
(11, 24, '2025-12-24', '2026-12-24', NULL, 'PENDING', 0, '2026-01-05 16:43:02', '2026-01-05 16:43:02', 60.00, 30.00, 90.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `apprehension_reports`
--
ALTER TABLE `apprehension_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apprehension_reports_gears`
--
ALTER TABLE `apprehension_reports_gears`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_apprep_gear_app` (`apprehension_id`),
  ADD KEY `idx_app_gear_id` (`gear_id`);

--
-- Indexes for table `apprehension_reports_mflet`
--
ALTER TABLE `apprehension_reports_mflet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_apprehension_reports_mflet` (`apprehension_id`);

--
-- Indexes for table `apprehension_reports_vessels`
--
ALTER TABLE `apprehension_reports_vessels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_apprep_vessel_app` (`apprehension_id`),
  ADD KEY `idx_app_vessel_id` (`vessel_id`);

--
-- Indexes for table `bantay_dagat`
--
ALTER TABLE `bantay_dagat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bantay_dagat_reports`
--
ALTER TABLE `bantay_dagat_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bantay_dagat_id` (`bantay_dagat_id`);

--
-- Indexes for table `deleted_applicants_history`
--
ALTER TABLE `deleted_applicants_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `fishing_gears`
--
ALTER TABLE `fishing_gears`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gear_no` (`gear_no`),
  ADD KEY `idx_fishing_gears_applicant` (`applicant_id`);

--
-- Indexes for table `fishing_gear_fees`
--
ALTER TABLE `fishing_gear_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fishing_vessels`
--
ALTER TABLE `fishing_vessels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vessel_no` (`vessel_no`),
  ADD KEY `fk_vessel_applicant` (`applicant_id`);

--
-- Indexes for table `gear_renewals`
--
ALTER TABLE `gear_renewals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_gear_renewals_gear_id` (`gear_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key_name` (`key_name`);

--
-- Indexes for table `municipal_ordinances`
--
ALTER TABLE `municipal_ordinances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference_no` (`reference_no`),
  ADD KEY `cashier_id` (`cashier_id`),
  ADD KEY `applicant_id` (`applicant_id`);

--
-- Indexes for table `registration_fees`
--
ALTER TABLE `registration_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `vessel_modifications`
--
ALTER TABLE `vessel_modifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vessel_id` (`vessel_id`);

--
-- Indexes for table `vessel_renewals`
--
ALTER TABLE `vessel_renewals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `apprehension_reports`
--
ALTER TABLE `apprehension_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `apprehension_reports_gears`
--
ALTER TABLE `apprehension_reports_gears`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `apprehension_reports_mflet`
--
ALTER TABLE `apprehension_reports_mflet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `apprehension_reports_vessels`
--
ALTER TABLE `apprehension_reports_vessels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `bantay_dagat`
--
ALTER TABLE `bantay_dagat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bantay_dagat_reports`
--
ALTER TABLE `bantay_dagat_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deleted_applicants_history`
--
ALTER TABLE `deleted_applicants_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `fishing_gears`
--
ALTER TABLE `fishing_gears`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fishing_gear_fees`
--
ALTER TABLE `fishing_gear_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fishing_vessels`
--
ALTER TABLE `fishing_vessels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `gear_renewals`
--
ALTER TABLE `gear_renewals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `municipal_ordinances`
--
ALTER TABLE `municipal_ordinances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `registration_fees`
--
ALTER TABLE `registration_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `vessel_modifications`
--
ALTER TABLE `vessel_modifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vessel_renewals`
--
ALTER TABLE `vessel_renewals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apprehension_reports_gears`
--
ALTER TABLE `apprehension_reports_gears`
  ADD CONSTRAINT `fk_app_gear` FOREIGN KEY (`gear_id`) REFERENCES `fishing_gears` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_apprehension_gears` FOREIGN KEY (`apprehension_id`) REFERENCES `apprehension_reports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_apprep_gear_app` FOREIGN KEY (`apprehension_id`) REFERENCES `apprehension_reports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `apprehension_reports_mflet`
--
ALTER TABLE `apprehension_reports_mflet`
  ADD CONSTRAINT `fk_apprehension_reports_mflet` FOREIGN KEY (`apprehension_id`) REFERENCES `apprehension_reports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `apprehension_reports_vessels`
--
ALTER TABLE `apprehension_reports_vessels`
  ADD CONSTRAINT `fk_app_vessel` FOREIGN KEY (`vessel_id`) REFERENCES `fishing_vessels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_apprehension_vessel` FOREIGN KEY (`apprehension_id`) REFERENCES `apprehension_reports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_apprep_vessel_app` FOREIGN KEY (`apprehension_id`) REFERENCES `apprehension_reports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bantay_dagat_reports`
--
ALTER TABLE `bantay_dagat_reports`
  ADD CONSTRAINT `bantay_dagat_reports_ibfk_1` FOREIGN KEY (`bantay_dagat_id`) REFERENCES `bantay_dagat` (`id`);

--
-- Constraints for table `fishing_vessels`
--
ALTER TABLE `fishing_vessels`
  ADD CONSTRAINT `fk_vessel_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gear_renewals`
--
ALTER TABLE `gear_renewals`
  ADD CONSTRAINT `fk_gear_renewals_gear` FOREIGN KEY (`gear_id`) REFERENCES `fishing_gears` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_ibfk_1` FOREIGN KEY (`cashier_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `receipts_ibfk_2` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `vessel_modifications`
--
ALTER TABLE `vessel_modifications`
  ADD CONSTRAINT `vessel_modifications_ibfk_1` FOREIGN KEY (`vessel_id`) REFERENCES `fishing_vessels` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
