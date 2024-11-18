-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 18, 2024 at 08:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DrugDispensingTool`
--

-- --------------------------------------------------------

--
-- Table structure for table `Drugs`
--

CREATE TABLE `Drugs` (
  `drugid` int(11) NOT NULL,
  `drugname` varchar(100) NOT NULL,
  `drugdesc` varchar(250) NOT NULL,
  `drugmanufact` varchar(100) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Drugs`
--

INSERT INTO `Drugs` (`drugid`, `drugname`, `drugdesc`, `drugmanufact`, `reg_date`, `id`) VALUES
(9900, 'Panadol', 'Painkiller', 'Glaxophyline', '2023-07-19 11:15:46', 4),
(7609, 'Ibrupofen', 'Painkiller', 'Glaxophyline', '2023-07-19 12:23:50', 5),
(34567, 'Mara Moja', 'Painkiller', 'Glaxophyline', '2023-07-19 13:05:57', 6),
(89172, 'SeeBetter', 'Eye Drops', 'Glaxophyline', '2023-07-20 11:56:27', 7),
(7609, 'Paracetamol One', 'Antibiotics', 'Glaxophyline', '2023-07-21 18:17:19', 8),
(637282, 'Cetrizine', 'Antihitsamine', 'Glaxophyline', '2023-07-28 16:13:46', 13);

-- --------------------------------------------------------

--
-- Table structure for table `drug_categories`
--

CREATE TABLE `drug_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drug_categories`
--

INSERT INTO `drug_categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Painkillers', '2023-11-29 09:45:15', '2023-11-29 09:45:15'),
(2, 'Antibiotics', '2023-11-30 21:19:27', '2023-11-30 21:19:27'),
(3, 'Antibiotics', '2023-11-30 21:19:29', '2023-11-30 21:19:29'),
(4, 'Antibiotics', '2023-11-30 21:19:30', '2023-11-30 21:19:30'),
(5, 'Antibiotics', '2023-11-30 21:19:40', '2023-11-30 21:19:40'),
(6, 'Vitamins', '2023-11-30 21:33:54', '2023-11-30 21:33:54'),
(7, 'Ointment', '2023-11-30 21:39:16', '2023-11-30 21:39:16'),
(8, 'Syrup', '2023-11-30 21:40:09', '2023-11-30 21:40:09'),
(9, 'Antihistamine', '2023-12-01 00:04:02', '2023-12-01 00:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `drug_dispensing_history`
--

CREATE TABLE `drug_dispensing_history` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `dispensing_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drug_dispensing_history`
--

INSERT INTO `drug_dispensing_history` (`id`, `prescription_id`, `drug_name`, `patient_name`, `dispensing_date`) VALUES
(1, 4, 'Panadol', 'Jokic Doe', '2023-07-21 16:48:30'),
(2, 3, 'SeeBetter', 'Scully Hitchcock', '2023-07-21 17:13:35'),
(3, 2, 'Ibrupofen', 'Steve Njino', '2023-07-21 17:18:55'),
(4, 5, 'Paracetamol One', 'Raymond Holt', '2023-07-21 20:24:22'),
(7, 8, 'Mara Moja', 'patient1 patient1', '2023-07-24 15:31:38'),
(8, 9, 'Mara Moja', 'Stacey Stacey', '2023-07-28 19:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `Patients`
--

CREATE TABLE `Patients` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Patients`
--

INSERT INTO `Patients` (`id`, `firstname`, `lastname`, `email`, `phone_number`, `reg_date`) VALUES
(1, 'John', 'Doe', 'john@example.com', '712345678', '2023-05-15 06:39:51'),
(2, 'Jane', 'Doe', 'jane@example.com', '712345678', '2023-05-15 06:43:51'),
(3, 'Jack', 'Doe', 'jack@example.com', '700112233', '2023-05-15 06:46:48'),
(10, 'Steve', 'Njino', 'steve@email.com', '790124925', '2023-06-01 07:03:21'),
(12, 'Jokic', 'Doe', 'jokic@example.com', '700000000', '2023-06-01 07:05:17'),
(14, 'Sergio', 'Aguero', 'kingkun@example.com', '711223344', '2023-06-01 07:15:03'),
(17, 'Michael', 'Scott', 'bestboss@example.com', '700000111', '2023-06-01 07:40:01'),
(18, 'Scully', 'Hitchcock', 'scock@example.com', '778877665', '2023-06-01 07:48:52'),
(19, 'Charles', 'Boyle', 'cboy@example.com', '700998877', '2023-06-01 07:51:19'),
(20, 'Amy', 'Santiago', 'asanti@example.com', '777776655', '2023-06-01 07:53:29'),
(21, 'Tariq', 'St. Patrick', 'tspatrick@example.com', '777668877', '2023-06-01 07:54:46'),
(22, 'Ederson', 'Morales', 'ederson31@gmail.com', '277490212', '2023-06-22 20:28:12'),
(23, 'Bernardo', 'Carvalho', 'bsilva20@email.com', '2020202020', '2023-06-22 20:41:19'),
(26, 'Jamie', 'Edgar', 'edgar5@email.com', '9090909090', '2023-06-22 19:46:29'),
(27, 'Riyad', 'Mahrez', 'mahrez26@email.com', '2626262626', '2023-06-22 19:57:05'),
(28, 'Joao', 'Cancelo', 'cancelo27@email.com', '2727272727', '2023-06-22 20:02:22'),
(29, 'Erling', 'Haaland', 'haaland9@email.com', '9999999939', '2023-07-10 08:48:15'),
(30, 'Jack', 'Grealish', 'grealish10@email.com', '1010101010', '2023-06-22 20:09:33'),
(31, 'Steve', 'Jobs', 'jobssteve@email.com', '1234567895', '2023-06-26 05:54:00'),
(33, 'Phillippe', 'Coutinho', 'coutinho@email.com', '9379128403', '2023-06-26 04:54:16'),
(34, 'Sean', 'Michaels', 'michaels@email.com', '0128920101', '2023-06-26 06:07:48'),
(35, 'Michael', 'Owens', 'owen@email.com', '391837487', '2023-06-26 06:09:55'),
(36, 'Diddy', 'Money', 'diddy@email.com', '3895483059', '2023-06-26 06:18:51'),
(37, 'Kevin', 'De Bruyne', 'kdb@mancity.com', '8291748029', '2023-07-10 07:47:11'),
(38, 'Shawntel', 'Njeri', 'shawntel@email.com', '8301289201', '2023-07-19 11:24:18'),
(39, 'Raymond', 'Holt', 'holt@brooklyn', '5962937465', '2023-07-20 15:49:24'),
(40, 'Wiz', 'Kid', 'wizkid@deep.com', '74763667586', '2023-07-20 15:50:46'),
(43, 'Reinhard', 'Buyabo', 'rehyn@sanders.com', '0715890254', '2023-07-24 12:28:26'),
(44, 'patient1', 'patient1', 'patient1@email.com', '0765544332', '2023-07-24 12:30:42'),
(45, 'Stacey', 'Stacey', 'satcey1@email.com', '9876539209', '2023-07-28 16:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `Prescriptions`
--

CREATE TABLE `Prescriptions` (
  `prescription_id` int(11) NOT NULL,
  `patient_id` int(6) UNSIGNED NOT NULL,
  `drug_name` varchar(100) NOT NULL,
  `dosage` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `prescribing_doctor` varchar(100) NOT NULL,
  `prescription_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Prescriptions`
--

INSERT INTO `Prescriptions` (`prescription_id`, `patient_id`, `drug_name`, `dosage`, `duration`, `prescribing_doctor`, `prescription_date`) VALUES
(1, 1, 'Mara Moja', 'Twice a day', '10 days', 'Steve', '2023-07-20'),
(2, 10, 'Ibrupofen', 'Three times a day', '21 Days', 'Steve', '2023-07-20'),
(3, 18, 'SeeBetter', 'Once after meals', '14', 'Steve', '2023-07-20'),
(4, 12, 'Panadol', 'Once after meals', '18 days', 'Steve', '2023-07-21'),
(5, 39, 'Paracetamol One', 'Once a day', '28 days', 'Steve', '2023-07-21'),
(8, 44, 'Mara Moja', 'Three times a day', '12 days', 'Steve', '2023-07-24'),
(9, 45, 'Mara Moja', 'Once after meals', '14 Days', 'Steve', '2023-07-28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('doctor','patient','pharmacist') NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `profile_picture`) VALUES
(1, 'drsteve', '$2y$10$OpGvTt.iLqosL1xzmf/Mc.4MBv.3hwHiarA9WHw6uOFX9gUx9PX0u', 'doctor', NULL),
(2, 'drlaura', '$2y$10$FtWUx.n2AE9aYHitbYVsreMI1ljS0Ybx2ZPWWKlaIjRQJCaMgiLpy', 'doctor', NULL),
(3, 'drstevie', '$2y$10$YbQhupV7zp9Gn5WINHLjk.usx3NI229asFfmHVQouNLQ0rxQmi4pa', 'patient', NULL),
(4, 'drray', '$2y$10$4IR2yfyCoZxUWVQUHivLWulG0BH8n7TOksu8CxMBJl8iVX560wYmK', 'doctor', NULL),
(5, 'pharmCBD', '$2y$10$5j1dD9f6/UbL5D2da8B.SOvYnLsa82xGLrSkGpnsb75Kltpd1FWMW', 'pharmacist', NULL),
(6, 'drgrande', '$2y$10$ULmstgEQ4EbxZgrNApBnFe/u17DjM/2dBmADWIPLCBJGRsm9hoqHi', 'doctor', NULL),
(7, 'drokello', '$2y$10$xChXUXW.8WQMsMZZVlDvMOC6sLGKyWFJufWucNiQ2kaNZElSkxcEW', 'doctor', NULL),
(8, 'patientBradley', '$2y$10$95CZafgiKGMpNgaeFMwW6ubU9IL.WjC0Ii.atbWZoIBJ/chMoUh82', 'patient', NULL),
(9, 'Mariah', '$2y$10$izWNDgCYq/qD6t8nNmFWFenf9mPcxfM/i5dLQjXpmptErm/Kxek3a', 'doctor', NULL),
(10, 'Chaxy', '$2y$10$ROSszb0/D/vDy3v1QT/ZN.smoLcfmOeWbjDH.P73fi/jD22.w66pS', 'pharmacist', NULL),
(11, 'Wendy', '$2y$10$cISLj.SDDyMGY3OHBCbfVuwvSxjWGv0H6/.8AhoQE9PVojRiZX49O', 'doctor', NULL),
(12, 'John Stones', '$2y$10$fJG6o/INPkcPDw5j24DM8eNYO.XWb2T8c3MmCaYhds.K8yO2N1SLS', 'patient', NULL),
(13, 'Aymeric Laporte', '$2y$10$cznL9nFr3tOB.QATZ8qM2.dSIY88bWLAmOCikX7mH7r2MABj0pU22', 'patient', NULL),
(14, 'Ruben Dias', '$2y$10$BLEkDPiNfRmM4JRgbxoIaOgHYCFmFWn6nqR6G.HUNjPqQ8BiXJqGi', 'patient', NULL),
(15, 'Nathan Ake', '$2y$10$CtdutIC9Xi4fXp.MNHEnGO/yMjoeWXcwa9MI0fYwls8w.oHbeqU5y', 'patient', NULL),
(16, 'Mikel Arteta', '$2y$10$Ph.4Q.Tj4zeyGTrh.uJZUOQSeMx3qwhlrDY6rU0jQ2xPDQVFdDqVe', 'pharmacist', NULL),
(17, 'Philippe Coutinho', '$2y$10$ktEefYDlko.rlTzlbeQo6ubhH9ioJNwzwLjhSKZAKR19xZZ7jNQw.', 'patient', NULL),
(18, 'Esther Mutuku', '$2y$10$PFqm/cZG2p0Q67Mba380BuQAgcSP2AcVXC6HvZ6I7yf9NrvJUyAkW', 'doctor', NULL),
(19, 'Chris Pratt', '$2y$10$TAb2C/CzXL.ZxlaBvEGdzeBvFY33exwPNCPwx/CZyGYFhKrM1Dsgy', 'doctor', NULL),
(20, 'Ilkay Gundogan', '$2y$10$wNl/UAxKfYepzoMbVOitUOtrX2gjUxp14uifJ3WloO52xTdfLpfSu', 'doctor', NULL),
(21, 'Kevin De Bruyne', '$2y$10$GTVlhVj49ZdTzUcoYN1G2.nUG1HLH9vQBUy30OUt/ZgKL8G3BDBmq', 'patient', NULL),
(22, 'Stefan Ortega', '$2y$10$a534CCX6RK8XDEcZoLAU3uExbLNl5bSBur.UHJSpty.Q8OsH/z61.', 'patient', NULL),
(23, 'Jack Grealish', '$2y$10$PHy/Uk8ItEugzAfY2pqU.OVhhTMbK4G7anEIy2e3SQzzvUwgUo5Ea', 'patient', NULL),
(24, 'Jose Mourinho', '$2y$10$O1Jyi44fcrs7YXcrSVhvSem70Y9uLM3aHOC42ftD0LJQDRi1os1ga', 'patient', NULL),
(25, 'Frank Lampard', '$2y$10$wjUE/hAJlgIUg.snI4pEAOomYbvT47PFwjt7AgkkaFcFAnfJds4OW', 'patient', NULL),
(26, 'Julian Alvarez', '$2y$10$DoEGu/QUcvoqGuKIQYID5.p8CAq4l/rqEBPOB6CJLL7mliJNqHbLy', 'patient', NULL),
(27, 'Lionel Messi', '$2y$10$8YEMkMUt5GFeo7o46H66iOrBFtsJ/e3/FKoWV4xUDeS00hZ.ssMLu', 'patient', NULL),
(28, 'Cristiano', '$2y$10$B/kWbXxYJneOSa0hsBCuaOQPRpSWxCwWqdPCudGsgI7RkAthRAPf2', 'patient', NULL),
(29, 'Mason', '$2y$10$jMwKQboWxS9I.XpFXdsMo.kPSkcWIqZoXt9eRhsmcaj0yvRAgsqgS', 'patient', NULL),
(30, 'Ruben', '$2y$10$4.ceswT7fR4vRYOFxzfmueGrlGOBJORTnZZ6JG3S6fKx9xVddBR/a', 'doctor', NULL),
(31, 'Manchester', '$2y$10$jiccTlFVF4dIf8siIeoafuH8EOq3B2F489rv6PJDFDlMbOv5iyHeC', 'pharmacist', NULL),
(32, 'Steve', '$2y$10$6jxe0W2T0sjyuvK3O7pepO3Dxt.zrGEWEfBa4vdgIZDgy9VtvSQUe', 'doctor', NULL),
(33, 'John Doe', '$2y$10$ccL.1DdQtdVo7cAMlXxSyeZ6mID/8nAMVmU8SLgvGa84S9./k7CP2', 'patient', NULL),
(34, 'John', '$2y$10$7IO6.2Vu4FQiMq3OL2ORT.N268hhPf24OPTwzKPuFADIHV1TZiVV.', 'patient', NULL),
(35, 'Raymond', '$2y$10$9lWqzAIdwIOMDdxLVtFQnez/X9IEjo4O5mX4kQKjxQaT28T0TMErW', 'patient', NULL),
(36, 'patient1', '$2y$10$9bgEJhMc3e.6lxfFRrPaVOHtIaZqm7qEd7nzc/NOh2Lb34IFhWHaO', 'patient', NULL),
(37, 'patient2', '$2y$10$9BEOITNL.ww3cKzoRMM75.7SChRAOpqAvunnlU6H680vzXlvnYAQ.', 'doctor', NULL),
(38, 'Pharmacist1', '$2y$10$J2cgYZMYS4Ot6FAWOXhoyuLJGM9O18ytekhQsqjoi1KlLZVDvAC42', 'pharmacist', NULL),
(39, 'doctor1', '$2y$10$QoF/Gm21FsAvRiPpACb4WeEaF2.15k7PT8BA/EWKeclNpWfvLxAu.', 'doctor', NULL),
(40, 'patiente1', '$2y$10$E8S7/zj/4GesZqts4kWuNunEoC.XhTV.XQl3PyvXRhr7jZyfF4D3G', 'patient', NULL),
(41, 'patiente2', '$2y$10$5cEHzDfvWYzaBR5wRlyQUOPVX90WB.HR1qRvbsNv4HJFA3BAgPrqK', 'patient', NULL),
(42, 'Doji', '$2y$10$Mp9m1ZSrGbVfFH1WM4YIiu1MiLa0yNbJdJ22/rq5Ni3I2E7MDLREm', 'patient', NULL),
(43, 'Stacey', '$2y$10$1tZp6b1P7o3lBGxM8DKZE.qiUknACvb7OwrqoLh.DJqNZmEz3J6AW', 'patient', NULL),
(44, 'putin', '$2y$10$Gc2Iser0/DsVl.H0ADt4YuvSaN96NADecF5X9YiCOW1WNRM94Ce7y', 'doctor', NULL),
(45, 'Wendy', '$2y$10$pgr6bL2tt5s8aU.w6nSMierTVGcy3HFwi9ds2U7VgIiY3tSgJPak6', 'patient', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Drugs`
--
ALTER TABLE `Drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_categories`
--
ALTER TABLE `drug_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_dispensing_history`
--
ALTER TABLE `drug_dispensing_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_id` (`prescription_id`);

--
-- Indexes for table `Patients`
--
ALTER TABLE `Patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_id` (`id`);

--
-- Indexes for table `Prescriptions`
--
ALTER TABLE `Prescriptions`
  ADD PRIMARY KEY (`prescription_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Drugs`
--
ALTER TABLE `Drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `drug_categories`
--
ALTER TABLE `drug_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `drug_dispensing_history`
--
ALTER TABLE `drug_dispensing_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Patients`
--
ALTER TABLE `Patients`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `Prescriptions`
--
ALTER TABLE `Prescriptions`
  MODIFY `prescription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drug_dispensing_history`
--
ALTER TABLE `drug_dispensing_history`
  ADD CONSTRAINT `drug_dispensing_history_ibfk_1` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`prescription_id`);

--
-- Constraints for table `Prescriptions`
--
ALTER TABLE `Prescriptions`
  ADD CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `Patients` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
