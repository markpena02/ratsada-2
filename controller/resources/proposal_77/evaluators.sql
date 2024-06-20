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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evaluators`
--
ALTER TABLE `evaluators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `university_email` (`university_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evaluators`
--
ALTER TABLE `evaluators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
