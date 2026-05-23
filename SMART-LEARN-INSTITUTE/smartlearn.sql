-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2026 at 02:37 PM
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
-- Database: `smartlearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `instructor` varchar(100) DEFAULT NULL,
  `assignment_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `instructor`, `assignment_name`) VALUES
(1, 'Introduction to AI', 'Dr. Smith', 'AI Assignment 1'),
(2, 'Advanced Mathematics', 'Mr. John', 'Calculus Assignment'),
(3, 'Web Development', 'Mrs. Clara', 'Build a Website'),
(4, 'Operating System', 'Mr. Nasser', 'Explain Process Creation'),
(5, 'Java Theory', 'Mr. Nasser', 'Outline different types of constructors'),
(6, 'Data Structures', 'Mr. Chitra', 'Explain various Linear Data Structures'),
(7, 'Graphics', 'Mr. Talic', 'Explain Interactive Media'),
(8, 'Linux Administration', 'Dr. Preedp', 'Linux Assignment 2'),
(9, 'C programming', 'Mr. John', 'C Assignment'),
(10, 'Python Programming', 'Mrs. Clara', 'Python Assignment'),
(11, 'CyberSecurity', 'Mrs. Jonathan', 'Virus Total Assignment'),
(12, 'Fundamentals of Digital Systems', 'Prof. Paul', 'Binary Number Conversion'),
(13, 'C# Programming', 'Mr. Nasser', 'C# Assignment');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','instructor','admin') DEFAULT 'student',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Reagan Clever', 'reagan', 'reagan@gmail.com', '$2a$12$4H3BywEByNEOCNlVpWLi0.D2k1LrMyGrQDVFeDCpYoU8LsC1Ca3lu', 'admin', '2026-05-22 09:07:54'),
(2, 'John Smith', 'john', 'john@gmail.com', '$2a$12$m8zNgTnOmapIF1bXGNyCu.cZnkYt60n5mw3yYzQu.pfVCi5B/5Dpu', 'student', '2026-05-22 09:07:54'),
(3, 'Clara Brown', 'clara', 'clara@gmail.com', '$2y$10$8WqZQx7n7mXx0w6Y7f7vEuG9YkD9J1wY0w6wLz4v0J5v8M5mG6b6S', 'instructor', '2026-05-22 09:07:54'),
(10, 'Nakawooya Jane Lynet', 'lynetbright', 'lynet@gmail.com', '$2y$10$DeU/qZOBQUdj1rZoLIByKemeByypOlcG3OZIJyZKp.9ztVxWd72sS', 'student', '2026-05-22 16:10:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
