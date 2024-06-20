-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 03:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadsystem_db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT 'admin',
  `password` varchar(255) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, '[value-2]', '[value-3]');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `proposer_id` int(11) NOT NULL,
  `evaluator_id` int(11) NOT NULL,
  `document_file` text DEFAULT NULL,
  `resources_file` varchar(255) DEFAULT NULL,
  `date_received` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_reviewed` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `college_office` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `proposer_id`, `evaluator_id`, `document_file`, `resources_file`, `date_received`, `date_reviewed`, `status`, `remarks`, `description`, `college_office`) VALUES
(37, 52, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-52-1.zip', '2024-06-01 05:55:50', '2024-06-01 05:55:50', 'Completed', 'Certification Issued', 'zxc', 'collegeOffice'),
(38, 53, 2, '\"[{\\\"item\\\":\\\"item3\\\",\\\"score\\\":1,\\\"comment\\\":\\\" 321 321 321\\\"}]\"', '../resources/resources-53-1.zip', '2024-06-01 07:33:34', '2024-06-01 07:33:34', 'Completed', 'Certification Issued', '9', 'collegeOffice'),
(39, 54, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"21 3 \\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":2,\\\"comment\\\":\\\" dsadasd as\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":1,\\\"comment\\\":\\\"asd as xzc zxc \\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-54-1.zip', '2024-06-02 06:48:41', '2024-06-02 06:48:41', 'Completed', 'Certification Issued', '6', 'collegeOffice'),
(40, 56, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":1,\\\"comment\\\":\\\" 34dfsdsfsdf sdf\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-56-1.zip', '2024-06-02 07:29:59', '2024-06-02 07:29:59', 'Completed', 'Certification Issued', '1111d 21 12@gmail.com', 'collegeOffice'),
(41, 55, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":2,\\\"comment\\\":\\\"21321321\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"12321321\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"321321\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"qw a xc\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":2,\\\"comment\\\":\\\"xz czx czx \\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-55-1.zip', '2024-06-02 08:34:21', '2024-06-02 08:34:21', 'Completed', NULL, '0', NULL),
(42, 57, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":1,\\\"comment\\\":\\\"Greate\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-57-1.zip', '2024-06-02 11:39:57', '2024-06-02 11:39:57', 'Completed', NULL, 'this is greate Managemnet since it does the job well done', NULL),
(43, 58, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-58-1.zip', '2024-06-02 12:25:16', '2024-06-02 12:25:16', 'Completed', NULL, '.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `evaluators`
--

CREATE TABLE `evaluators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `evaluator_id` varchar(10) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `university_email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluators`
--

INSERT INTO `evaluators` (`id`, `evaluator_id`, `full_name`, `university_email`, `password`, `created_at`) VALUES
(8, '0', 'gv pena', 'gv@gmail.com', '$2y$10$lvf1tst/px4Pc9hw1CRIsex4RWzr5HqJRkyNU3dceR/gtH5GdwwEa', '2024-05-28 06:05:57'),
(10, '0', 'fmbpena@usep.edu.ph', 'fmbpena@usep.edu.ph', '$2y$10$ZcJeyc8oSe1/Iew03lOz1eJIDFejb2mZGdXHrd4RHfIGJn8gguWlO', '2024-05-29 13:03:25'),
(13, '0', 'AccountAccount@gmail.com', 'AccountAccount@gmail.com', '$2y$10$5LqJqQ/1TwIopdKZODL1COEOc5AGnZ06b0F6tay1Ca7hc8RyDbTCG', '2024-06-01 04:52:18'),
(14, '893382', 'George Vincent Peña', 'gvbpena123@gmail.com', '$2y$10$4i13/j1CeNo/uaDo/z7x7.GxkzmNvf6EgY5QKjtiFP5IWWSaiAm5G', '2024-06-20 00:56:44'),
(15, 'e-003383', 'George Vincent Peña', 'gvbpena1234@gmail.com', '$2y$10$P.94L.8vs17KVCH4D9PbgO9AUGv0BT9Xe92JIKzH1ymfp7d4c/JWa', '2024-06-20 00:59:23'),
(16, 'e-000016', 'George Vincent Peña', 'gvbpena12345@gmail.com', '$2y$10$yLSt.5ekWZebTOg9SGQNQetfMc98TX1Lx9k0BILOs5Z2v3jmd67z6', '2024-06-20 01:01:32');

--
-- Triggers `evaluators`
--
DELIMITER $$
CREATE TRIGGER `set_evaluator_id` BEFORE INSERT ON `evaluators` FOR EACH ROW BEGIN
    SET NEW.id = LPAD(NEW.id, 4, '0');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `proponents`
--

CREATE TABLE `proponents` (
  `id` int(11) NOT NULL,
  `proposer_id` varchar(10) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `college_office` varchar(100) NOT NULL,
  `university_email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proponents`
--

INSERT INTO `proponents` (`id`, `proposer_id`, `full_name`, `college_office`, `university_email`, `password`) VALUES
(3, '', '123123', 'qweqw eqw e', '123123@gmail.com', '$2y$10$GkK7EhWWiplcvuVU1C/zgOBdGUaYJStKv2bweZy3pGCWFqfoDQTA6'),
(4, '', '123123', 'qweqw eqw e', '123123@gmail.com', '$2y$10$CL2YpjdD9Ej8sulvKtuvueZjJ0ltHtk/kvlc.0RR4vJDHi4lt6T7O'),
(5, '', '123123', 'qweqw eqw e', '123123@gmail.com', '$2y$10$10zT.WqZTll16zH8X2uUmurJ.WDj2qQG8nH/BbVTJXqUSIDn/igL2'),
(6, '', '12312312', '123123123', '123123123@gmail.com', '$2y$10$I5GNpKZNqPmNDiUmZTryKO9tdOuMxE7CIjMscPHGxhkNc1Bu7yZcK'),
(7, '', '123123123', '12312312', '123123@gmail.com', '$2y$10$FwjkELI/bk/rT1k8V2w0wOHCCc8BboY21KXXdgwdiTZjQQrRf5MwO'),
(14, '', 'asd@gmail.com', 'asd@gmail.com', 'asd@gmail.com', '$2y$10$5xS/u6Yt9fg.ffZ92tffM.SJauQEQLf14rUeiu8UPnbQFN.5ubd9i'),
(15, '', '1111@gmail.com', '1111@gmail.com', '1111@gmail.com', '$2y$10$0/KNKWVT9zmuWOOOojV4WuJjnOIT4L0WBtVywr3QG2DG0dFkWHPdS'),
(16, '', 'Mark Peña', 'GAD', 'mpena@usep.edu.ph', '$2y$10$YjQrkv9uXWOCDT1G2.3mku.3vGy/MikV8.kKpmAwtlV249umKikGC'),
(17, '', 'animal animal animl', 'cic', 'animal@usep.edu.ph', '$2y$10$dqEPmnVOvLByefrN72E7bOWq4ThYZT.Qrc4Cns8PI6qVK2LJynCiW'),
(18, 'p-000018', 'animal animal animl', 'anima4444l@usep.edu.ph', 'anima4444l@usep.edu.ph', '$2y$10$69ey.veC0nm8e7Cxm42AWe2dnz9FPPJUj4hNhUTwODJ/iQMoCdD/K'),
(19, 'p-000019', 'George Vincent Peña', 'gvbpena7777@gmail.com', 'gvbpena7777@gmail.com', '$2y$10$KuLw/4IWHMm9nLkPvRHM2./y2uiQsPOSULu4HOP7rd9bv1XCRZXBa'),
(20, 'i-000020', 'George Vincent Peña', 'gvbpena77771@gmail.com', 'gvbpena77771@gmail.com', '$2y$10$L3.AF/fidbMdDy35P8Ny9O2M5yl0M0uYtOrmlh274iGYSQJ4uKrc.'),
(21, 'o-000021', 'George Vincent Peña', 'gvbpena777721@gmail.com', 'gvbpena777721@gmail.com', '$2y$10$UH.d00pHhrb3Vr/6t6J2Ge/mpeNilLlXVa35.b6gj6sDAH5551eOK');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `proposer_id` int(11) NOT NULL,
  `evaluator_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `proponent_name` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `document` varchar(255) DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `proposer_id`, `evaluator_id`, `title`, `proponent_name`, `office`, `description`, `document`, `submitted_at`, `status`) VALUES
(53, 14, 13, '123123213', '9', '9', '9', '../resources/resources-53-1.zip', '2024-06-01 07:32:17', 'Completed'),
(54, 14, 13, '6', '6', '6', '6', '../resources/resources-54-1.zip', '2024-06-02 06:35:57', 'Completed'),
(55, 14, 13, '0', '0', '123poilili', '0', '../resources/resources-55-1.zip', '2024-06-02 06:36:12', 'Completed'),
(56, 15, 13, '1234566779689678', '1111@gmail.com', '1111@gmail.com', '1111d 21 12@gmail.com', '../resources/resources-56-1.zip', '2024-06-02 07:28:26', 'Completed'),
(57, 14, 13, 'Gad Gender Management bullshit', 'Lucifer Morningstar', 'College of Computing Education', 'this is greate Managemnet since it does the job well done', '../resources/resources-57-1.zip', '2024-06-02 11:39:08', 'Completed'),
(74, 14, 0, 'Review ', 'Review ', 'Review ', 'Review ', '../resources/proposal_74', '2024-06-19 07:02:11', 'pending'),
(75, 14, 0, 'Office/Unit :', 'Office/Unit :', 'Office/Unit : 213', 'Office/Unit :12312 31 213213', '../resources/proposal_75', '2024-06-19 07:03:52', 'pending'),
(76, 14, 0, 'Review Form', 'Review Form', 'Review Form 12 3123', 'Review Form', '../resources/proposal_76', '2024-06-19 12:59:54', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluators`
--
ALTER TABLE `evaluators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `university_email` (`university_email`);

--
-- Indexes for table `proponents`
--
ALTER TABLE `proponents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `evaluators`
--
ALTER TABLE `evaluators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `proponents`
--
ALTER TABLE `proponents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
