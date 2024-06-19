-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 02:52 PM
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
  `full_name` varchar(50) NOT NULL,
  `university_email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluators`
--

INSERT INTO `evaluators` (`id`, `full_name`, `university_email`, `password`, `created_at`) VALUES
(2, '1111', '1111@gmail.com', '$2y$10$YxOYO7zA1fmXV01mEFbk9.Ps2ZEerv58Kswc12gaxRGMuc8TJQTMC', '2024-05-25 13:05:38'),
(3, 'ggggvvvv', 'asdasda@gmail.com', '$2y$10$Pqkwgh8548Fg38qkNsSG8.pYw8npGfi.bboJBOowfDZo/MtqjU.Ku', '2024-05-25 13:06:31'),
(4, '123123123', '23123@gmail.com', '$2y$10$NS5KM0M/EWNe/ITM38EQFe5CkS3Za6Nsi/4hEBjozNeJLVHMNh6qy', '2024-05-25 13:07:01'),
(5, 'test', 'test@gmail.com', '$2y$10$a6k3pt3WwQBpySJ4OGOUIuO2bibG3OmlQ.l0EFGB8haZdt3aMY.Ui', '2024-05-25 13:07:28'),
(6, 'shire ', 'shire@gmail.com', '$2y$10$nAv3eA.BtUbCSLH7gssNVuXMMNHECliz8ZrhkFEQfAGMXjT94GWom', '2024-05-25 13:12:10'),
(7, 'dely pena', 'dely@gmail.com', '$2y$10$YDpUto6QWG77UqUhSv///edaDu97mTdr.ftKpcMvu9rlxa3MUfAeK', '2024-05-25 13:29:03'),
(8, 'gv pena', 'gv@gmail.com', '$2y$10$lvf1tst/px4Pc9hw1CRIsex4RWzr5HqJRkyNU3dceR/gtH5GdwwEa', '2024-05-28 06:05:57'),
(9, '123123123@gmail.com', '123123123@gmail.com', '$2y$10$el58jdr1msHN5vNQLyxMEO4vb.TLSAWBh1hE7RMGO.IumqfLUkt22', '2024-05-29 00:04:41'),
(10, 'fmbpena@usep.edu.ph', 'fmbpena@usep.edu.ph', '$2y$10$ZcJeyc8oSe1/Iew03lOz1eJIDFejb2mZGdXHrd4RHfIGJn8gguWlO', '2024-05-29 13:03:25'),
(13, 'AccountAccount@gmail.com', 'AccountAccount@gmail.com', '$2y$10$5LqJqQ/1TwIopdKZODL1COEOc5AGnZ06b0F6tay1Ca7hc8RyDbTCG', '2024-06-01 04:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `proponents`
--

CREATE TABLE `proponents` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `college_office` varchar(100) NOT NULL,
  `university_email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proponents`
--

INSERT INTO `proponents` (`id`, `full_name`, `college_office`, `university_email`, `password`) VALUES
(3, '123123', 'qweqw eqw e', '123123@gmail.com', '$2y$10$GkK7EhWWiplcvuVU1C/zgOBdGUaYJStKv2bweZy3pGCWFqfoDQTA6'),
(4, '123123', 'qweqw eqw e', '123123@gmail.com', '$2y$10$CL2YpjdD9Ej8sulvKtuvueZjJ0ltHtk/kvlc.0RR4vJDHi4lt6T7O'),
(5, '123123', 'qweqw eqw e', '123123@gmail.com', '$2y$10$10zT.WqZTll16zH8X2uUmurJ.WDj2qQG8nH/BbVTJXqUSIDn/igL2'),
(6, '12312312', '123123123', '123123123@gmail.com', '$2y$10$I5GNpKZNqPmNDiUmZTryKO9tdOuMxE7CIjMscPHGxhkNc1Bu7yZcK'),
(7, '123123123', '12312312', '123123@gmail.com', '$2y$10$FwjkELI/bk/rT1k8V2w0wOHCCc8BboY21KXXdgwdiTZjQQrRf5MwO'),
(14, 'asd@gmail.com', 'asd@gmail.com', 'asd@gmail.com', '$2y$10$5xS/u6Yt9fg.ffZ92tffM.SJauQEQLf14rUeiu8UPnbQFN.5ubd9i'),
(15, '1111@gmail.com', '1111@gmail.com', '1111@gmail.com', '$2y$10$0/KNKWVT9zmuWOOOojV4WuJjnOIT4L0WBtVywr3QG2DG0dFkWHPdS');

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
  `status` varchar(255) NOT NULL,
  `college_office` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `proposer_id`, `evaluator_id`, `title`, `proponent_name`, `office`, `description`, `document`, `submitted_at`, `status`, `college_office`) VALUES
(51, 14, 7, 'asd@gmail.com', 'asd@gmail.com', 'asd@gmail.com', 'asd@gmail.com', '../resources/resources-51-1.zip', '2024-06-01 05:53:30', 'pending', NULL),
(52, 14, 13, '23', 'weq', 'asd', 'zxc', '../resources/resources-52-1.zip', '2024-06-01 05:53:40', 'Completed', NULL),
(53, 14, 13, '123123213', '9', '9', '9', '../resources/resources-53-1.zip', '2024-06-01 07:32:17', 'Completed', NULL),
(54, 14, 13, '6', '6', '6', '6', '../resources/resources-54-1.zip', '2024-06-02 06:35:57', 'Completed', NULL),
(55, 14, 13, '0', '0', '123poilili', '0', '../resources/resources-55-1.zip', '2024-06-02 06:36:12', 'Completed', NULL),
(56, 15, 13, '1234566779689678', '1111@gmail.com', '1111@gmail.com', '1111d 21 12@gmail.com', '../resources/resources-56-1.zip', '2024-06-02 07:28:26', 'Completed', NULL),
(57, 14, 13, 'Gad Gender Management bullshit', 'Lucifer Morningstar', 'College of Computing Education', 'this is greate Managemnet since it does the job well done', '../resources/resources-57-1.zip', '2024-06-02 11:39:08', 'Completed', NULL),
(58, 14, 13, '.', '.', '.', '.', '../resources/resources-58-1.zip', '2024-06-02 12:24:29', 'Completed', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `proponents`
--
ALTER TABLE `proponents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
