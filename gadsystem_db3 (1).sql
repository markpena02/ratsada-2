-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 07:07 PM
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
-- Database: `gadsystem_db3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `university_email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `university_email`, `password`, `created_at`) VALUES
(2, 'mark pena wala', 'genzo5401@gmail.com', '$2y$10$Sl9jL8AJ504i8o/381PClesTJdbUnsUEdE3RYYFfPQkjiSpU5pdqS', '2024-06-02 17:06:35');

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
(1, 1, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":2,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-1-1.zip', '2024-06-02 14:34:10', '2024-06-02 14:34:10', 'Completed', NULL, 'This OJT program serves as a venue to experience industry standards whereby students should be able to bridge the gap between lecture/laboratory activities and\nindustry practices. During the internship program, the student interns are assigned to different areas and venues, while the Host Training Establishments (HTEs),\nthe student interns are given actual work experience in various departments that may be determined and mutually agreed upon by the school, THE or the student\nintern. An internship contract is signed by the student intern, the Higher Education Institution (HEI) and the Host Training Establishment (HTE). This agreement\nidentifies the student intern’s tasks and some policies regarding the program. This is a requirement for graduation as part of the curriculum design. Hence, this\nMOA is proposed to formalize the academe-industry collaboration. \n', NULL),
(2, 2, 2, '\"[{\\\"item\\\":\\\"item2\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item3\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item4\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item6\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item7\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item8\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item9\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item11\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item12\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item13\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item14\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item15\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item17\\\",\\\"score\\\":1,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item18\\\",\\\"score\\\":0.5,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item20\\\",\\\"score\\\":0,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item21\\\",\\\"score\\\":0.33,\\\"comment\\\":\\\"\\\"},{\\\"item\\\":\\\"item22\\\",\\\"score\\\":0.67,\\\"comment\\\":\\\"\\\"}]\"', '../resources/resources-2-1.zip', '2024-06-02 14:53:13', '2024-06-02 14:53:13', 'Completed', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL);

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
(1, 'Jennifer Montesclaros', 'jmontesclaros@usep.edu.ph', '$2y$10$fucKbzF35Sn/9G61GhXIeueKwu9Ilx5iLRQTy2EVs4sRD11gEFtDq', '2024-06-02 14:01:28'),
(2, 'Remah Joy Gador', 'rjgador@gmail.com', '$2y$10$VecJJqynzQkfBzWhOcoJg.bho01Wefw2mvt9MoiJX1S1.6Bm9faK6', '2024-06-02 16:22:41');

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
(1, 'Clifton John Rojo', 'CIC', 'cjrojo@usep.edu.ph', '$2y$10$OT8icmQjSk/FXA697IeykOYxMRMPLi3PUbHT94/vVp080Ihddh6Yy'),
(2, 'Ferdinand Mark B. Peña', 'CIC', 'fmbpena@usep.edu.ph', '$2y$10$v0tGD6sDZDED81OGAucMUeFGGTfXVsVSPsiVxG.oZGuXdbbadpapa'),
(3, 'Jeff Andrew', 'CIC', 'jabangkas@gmail.com', '$2y$10$HmVHUcqINoEEHE5FiKzMReAMwR7cXfyb31Wo1Ifpg5ZtLPo03h0xC'),
(4, 'Marlo Tisoy', 'CAS', 'mbarua@usep.edu.ph', '$2y$10$XdruVpJMnOClk8vHnjCMZu2zGF1eshU5XCYKNKc9hhcBdr.vpPOzm'),
(5, 'Mariam Daud', 'CIC', 'mdaud@usep.edu.ph', '$2y$10$/xSp8ZMhwfcVLTGvnfk6iuc9/s7N58/lkSX/uH0Yb/qhWsh4wRR0G');

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
(1, 1, 1, 'Memorandum of Agreement with Interfacing Development Intervention for Sustainability for OffCampus Internship of BSEE Students', 'ENGR. RICARDO FORBES L. ABEAR, BSEE OJT Faculty Supervisor', 'College of Engineering (CoE)', 'This OJT program serves as a venue to experience industry standards whereby students should be able to bridge the gap between lecture/laboratory activities and\nindustry practices. During the internship program, the student interns are assigned to different areas and venues, while the Host Training Establishments (HTEs),\nthe student interns are given actual work experience in various departments that may be determined and mutually agreed upon by the school, THE or the student\nintern. An internship contract is signed by the student intern, the Higher Education Institution (HEI) and the Host Training Establishment (HTE). This agreement\nidentifies the student intern’s tasks and some policies regarding the program. This is a requirement for graduation as part of the curriculum design. Hence, this\nMOA is proposed to formalize the academe-industry collaboration. \n', '../resources/resources-1-1.zip', '2024-06-02 13:50:19', 'Completed', NULL),
(2, 2, 1, 'Moa sa taga CIC', 'Vera Kim Tequin', 'CIC', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '../resources/resources-2-1.zip', '2024-06-02 14:16:11', 'Completed', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `evaluators`
--
ALTER TABLE `evaluators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `proponents`
--
ALTER TABLE `proponents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
