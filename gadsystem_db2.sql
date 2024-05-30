-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 04:50 AM
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
(26, 34, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-34-1.html', '2024-05-30 01:40:07', '2024-05-30 01:40:07', 'Completed', 'Certification Issued', 'Register@gmail.com', 'collegeOffice'),
(27, 28, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"}]\"', '../uploads/gad.pdf', '2024-05-30 01:57:43', '2024-05-30 01:57:43', 'Completed', 'Certification Issued', 's hsucks', 'collegeOffice'),
(28, 27, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"}]\"', '../uploads/useplogo.png', '2024-05-30 02:02:10', '2024-05-30 02:02:10', 'Completed', 'Certification Issued', '12312312 312 3', 'collegeOffice'),
(29, 35, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-35-1.html', '2024-05-30 02:05:05', '2024-05-30 02:05:05', 'Completed', 'Certification Issued', '123', 'collegeOffice'),
(30, 36, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-36-1.sql', '2024-05-30 02:06:45', '2024-05-30 02:06:45', 'Completed', 'Certification Issued', 'REVIEW FORM', 'collegeOffice'),
(31, 37, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":null,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-37-1.sql', '2024-05-30 02:17:28', '2024-05-30 02:17:28', 'Completed', 'Certification Issued', 'GENDER @GENDER .com', 'collegeOffice'),
(32, 38, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-38-1.sql', '2024-05-30 02:30:28', '2024-05-30 02:30:28', 'Completed', 'Certification Issued', 'NT/S', 'collegeOffice'),
(33, 39, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":1,\\\"comment\\\":\\\"as das d\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\" sad\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"sad asd sad sa\\\"}]\"', '../resources/resources-39-1.sql', '2024-05-30 02:42:08', '2024-05-30 02:42:08', 'Completed', 'Certification Issued', 'a', 'collegeOffice'),
(34, 39, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-39-1.sql', '2024-05-30 02:42:59', '2024-05-30 02:42:59', 'Completed', 'Certification Issued', 'a', 'collegeOffice'),
(35, 40, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-40-1.html', '2024-05-30 02:44:07', '2024-05-30 02:44:07', 'Completed', 'Certification Issued', '1', 'collegeOffice');

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
(1, '1222', 'abcdabcdabcd@gmail.com', '$2y$10$CJYRZ./AM0M1cojdaroAheiFMp4kY8cI8Fpx52YamB6PAHzw670jy', '2024-05-25 13:00:26'),
(2, '1111', '1111@gmail.com', '$2y$10$YxOYO7zA1fmXV01mEFbk9.Ps2ZEerv58Kswc12gaxRGMuc8TJQTMC', '2024-05-25 13:05:38'),
(3, 'ggggvvvv', 'asdasda@gmail.com', '$2y$10$Pqkwgh8548Fg38qkNsSG8.pYw8npGfi.bboJBOowfDZo/MtqjU.Ku', '2024-05-25 13:06:31'),
(4, '123123123', '23123@gmail.com', '$2y$10$NS5KM0M/EWNe/ITM38EQFe5CkS3Za6Nsi/4hEBjozNeJLVHMNh6qy', '2024-05-25 13:07:01'),
(5, 'test', 'test@gmail.com', '$2y$10$a6k3pt3WwQBpySJ4OGOUIuO2bibG3OmlQ.l0EFGB8haZdt3aMY.Ui', '2024-05-25 13:07:28'),
(6, 'shire ', 'shire@gmail.com', '$2y$10$nAv3eA.BtUbCSLH7gssNVuXMMNHECliz8ZrhkFEQfAGMXjT94GWom', '2024-05-25 13:12:10'),
(7, 'dely pena', 'dely@gmail.com', '$2y$10$YDpUto6QWG77UqUhSv///edaDu97mTdr.ftKpcMvu9rlxa3MUfAeK', '2024-05-25 13:29:03'),
(8, 'gv pena', 'gv@gmail.com', '$2y$10$lvf1tst/px4Pc9hw1CRIsex4RWzr5HqJRkyNU3dceR/gtH5GdwwEa', '2024-05-28 06:05:57'),
(9, '123123123@gmail.com', '123123123@gmail.com', '$2y$10$el58jdr1msHN5vNQLyxMEO4vb.TLSAWBh1hE7RMGO.IumqfLUkt22', '2024-05-29 00:04:41'),
(10, 'fmbpena@usep.edu.ph', 'fmbpena@usep.edu.ph', '$2y$10$ZcJeyc8oSe1/Iew03lOz1eJIDFejb2mZGdXHrd4RHfIGJn8gguWlO', '2024-05-29 13:03:25'),
(11, 'gvbpena@gmail.com', 'gvbpena@gmail.com', '$2y$10$ywNPZGL3NvgD/3odz7U1l.WvvKYDV/C3qQ/1BB9tEFXzjNor91xfi', '2024-05-30 00:17:04');

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
(1, '3213123', '12312312312', '12312@gmail.com', '$2y$10$U4GFjEzOuA.aTHh3wxqHxezuers5gWzwipibNlDTPFo7p/w5q2eym'),
(2, '3213123', '12312312312', '12312@gmail.com', '$2y$10$zaP.QaqBKSrBnnVULOp.auiY2PoZEKRqS3b/0CTYde76QigPZj0j.'),
(3, '123123', 'qweqw eqw e', '123123@gmail.com', '$2y$10$GkK7EhWWiplcvuVU1C/zgOBdGUaYJStKv2bweZy3pGCWFqfoDQTA6'),
(4, '123123', 'qweqw eqw e', '123123@gmail.com', '$2y$10$CL2YpjdD9Ej8sulvKtuvueZjJ0ltHtk/kvlc.0RR4vJDHi4lt6T7O'),
(5, '123123', 'qweqw eqw e', '123123@gmail.com', '$2y$10$10zT.WqZTll16zH8X2uUmurJ.WDj2qQG8nH/BbVTJXqUSIDn/igL2'),
(6, '12312312', '123123123', '123123123@gmail.com', '$2y$10$I5GNpKZNqPmNDiUmZTryKO9tdOuMxE7CIjMscPHGxhkNc1Bu7yZcK'),
(7, '123123123', '12312312', '123123@gmail.com', '$2y$10$FwjkELI/bk/rT1k8V2w0wOHCCc8BboY21KXXdgwdiTZjQQrRf5MwO'),
(8, 'abcdabcdabcd', 'abcdabcdabcd', 'abcdabcdabcd@gmail.com', '$2y$10$qCBpoOq1P4akkXNNtunL4uzSP3YzGdgtc3.cV61LpDfMmAxoMWzAO'),
(9, 'ambot', 'ambot', 'ambot@gmail.com', '$2y$10$BK/DdsaoeLNOg2Ld0haMH.5s1Yz3WegiRdAR8kGKLNu1GH85sESE6'),
(10, '3213123', 'asdasd', '123@gmail.com', '$2y$10$uwf1687ezKVhbgb4EqKu/eA/eQ.HhIgMl87wZz0h1vs7dV.oeDR7G'),
(11, 'fmbpena@usep.edu.ph', 'fmbpena@usep.edu.ph', 'fmbpena@usep.edu.ph', '$2y$10$luN/XooErxFsLjQBAZEQZuyB6GyTI9twzsp0v5jX8TNpzQTMpoU8C'),
(12, 'Register@gmail.com', 'Register@gmail.com', 'Register@gmail.com', '$2y$10$AM6iXveaJk4kvcxNZYltxOW0RiaEsVlPglzD3XHyc1F4OMTnqdF0m');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `proposer_id` int(11) NOT NULL,
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

INSERT INTO `submissions` (`id`, `proposer_id`, `title`, `proponent_name`, `office`, `description`, `document`, `submitted_at`, `status`, `college_office`) VALUES
(27, 8, '123', '12312', '123123', '12312312 312 3', '../uploads/useplogo.png', '2024-05-21 06:08:08', 'Completed', NULL),
(28, 8, 's hsucks', 's hsucks', 's hsucks', 's hsucks', '../uploads/gad.pdf', '2024-05-21 06:09:48', 'Completed', NULL),
(29, 8, 'yan yan house', 'yan yan house', 'yan yan house', 'yan yan house', '../uploads/Paragon.pdf', '2024-05-21 07:40:59', 'Completed', NULL),
(30, 8, '123', '123', '123', '123', '%PDF-1.7\r\n%????\r\n1 0 obj\r\n<</Type/Catalog/Pages 2 0 R/Lang(en) /StructTreeRoot 57 0 R/MarkInfo<</Marked true>>/Metadata 1454 0 R/ViewerPreferences 1455 0 R>>\r\nendobj\r\n2 0 obj\r\n<</Type/Pages/Count 14/Kids[ 3 0 R 25 0 R 27 0 R 29 0 R 31 0 R 33 0 R 35 0 R 37', '2024-05-21 08:27:29', 'Completed', NULL),
(31, 11, 'Memorandum of Agreement with Interfacing Development Intervention for Sustainability for OffCampus Internship of BSEE Students', 'ENGR. RICARDO FORBES L. ABEAR, BSEE OJT Faculty Supervisor ', 'College of Engineering (CoE)', 'This OJT program serves as a venue to experience industry standards whereby students should be able to bridge the gap between lecture/laboratory activities and\r\nindustry practices. During the internship program, the student interns are assigned to different areas and venues, while the Host Training Establishments (HTEs),\r\nthe student interns are given actual work experience in various departments that may be determined and mutually agreed upon by the school, THE or the student\r\nintern. An internship contract is signed by the student intern, the Higher Education Institution (HEI) and the Host Training Establishment (HTE). This agreement\r\nidentifies the student intern’s tasks and some policies regarding the program. This is a requirement for graduation as part of the curriculum design. Hence, this\r\nMOA is proposed to formalize the academe-industry collaboration. ', '../resources/resources-31-1.pdf', '2024-05-29 13:26:42', 'Completed', NULL),
(32, 12, 'Register@gmail.com', 'Register@gmail.com', 'Register@gmail.com', 'Register@gmail.com', '../resources/resources-32-1.html', '2024-05-30 00:26:53', 'Completed', NULL),
(33, 12, 'MAINSTREAM', 'MAINSTREAM', 'MAINSTREAM', 'MAINSTREAM', '../resources/resources-33-1.html', '2024-05-30 00:27:58', 'Completed', NULL),
(34, 12, 'Register@gmail.com', 'Register@gmail.com', 'Register@gmail.com', 'Register@gmail.com', '../resources/resources-34-1.html', '2024-05-30 01:39:34', 'Completed', NULL),
(35, 12, 'Register@gmail.comRegister@gmail.comRegister@gmail.com', '123', 'Register@gmail.comRegister@gmail.comRegister@gmail.com', '123', '../resources/resources-35-1.html', '2024-05-30 02:04:05', 'Completed', NULL),
(36, 12, 'REVIEW FORM', 'REVIEW FORM', 'REVIEW FORM', 'REVIEW FORM', '../resources/resources-36-1.sql', '2024-05-30 02:06:06', 'Completed', NULL),
(37, 12, 'GENDER @GENDER .com', 'GENDER @GENDER .com', 'GENDER @GENDER .com', 'GENDER @GENDER .com', '../resources/resources-37-1.sql', '2024-05-30 02:16:50', 'Completed', NULL),
(38, 12, 'NT/S', 'NT/S', 'NT/S', 'NT/S', '../resources/resources-38-1.sql', '2024-05-30 02:29:40', 'Completed', NULL),
(39, 12, 'a', 'a', 'a', 'a', '../resources/resources-39-1.sql', '2024-05-30 02:38:37', 'Completed', NULL),
(40, 12, '1', '1', '1', '1', '../resources/resources-40-1.html', '2024-05-30 02:43:47', 'Completed', NULL);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `evaluators`
--
ALTER TABLE `evaluators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `proponents`
--
ALTER TABLE `proponents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
