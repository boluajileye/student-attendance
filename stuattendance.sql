-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2022 at 06:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stuattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` enum('absent','present') NOT NULL DEFAULT 'absent',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `status`, `date`) VALUES
(1, 1, 'absent', '2022-06-20'),
(2, 2, 'present', '2022-06-20'),
(3, 3, 'present', '2022-06-20'),
(4, 4, 'present', '2022-06-20'),
(5, 5, 'present', '2022-06-20'),
(6, 6, 'absent', '2022-06-20'),
(7, 7, 'present', '2022-06-20'),
(8, 8, 'present', '2022-06-20'),
(9, 9, 'present', '2022-06-20'),
(10, 10, 'absent', '2022-06-20'),
(11, 1, 'present', '2022-06-21'),
(12, 2, 'present', '2022-06-21'),
(13, 3, 'absent', '2022-06-21'),
(14, 4, 'present', '2022-06-21'),
(15, 5, 'present', '2022-06-21'),
(16, 6, 'absent', '2022-06-21'),
(17, 7, 'present', '2022-06-21'),
(18, 8, 'present', '2022-06-21'),
(19, 9, 'present', '2022-06-21'),
(20, 10, 'present', '2022-06-21'),
(21, 1, 'present', '2022-06-22'),
(22, 2, 'absent', '2022-06-22'),
(23, 3, 'present', '2022-06-22'),
(24, 4, 'present', '2022-06-22'),
(25, 5, 'present', '2022-06-22'),
(26, 6, 'present', '2022-06-22'),
(27, 7, 'absent', '2022-06-22'),
(28, 8, 'present', '2022-06-22'),
(29, 9, 'present', '2022-06-22'),
(30, 10, 'present', '2022-06-22'),
(31, 1, 'present', '2022-06-24'),
(32, 2, 'present', '2022-06-24'),
(33, 3, 'present', '2022-06-24'),
(34, 4, 'present', '2022-06-24'),
(35, 5, 'present', '2022-06-24'),
(36, 6, 'present', '2022-06-24'),
(37, 7, 'present', '2022-06-24'),
(38, 8, 'present', '2022-06-24'),
(39, 9, 'present', '2022-06-24'),
(40, 10, 'present', '2022-06-24'),
(41, 1, 'absent', '2022-06-25'),
(42, 2, 'present', '2022-06-25'),
(43, 3, 'present', '2022-06-25'),
(44, 4, 'absent', '2022-06-25'),
(45, 5, 'present', '2022-06-25'),
(46, 6, 'present', '2022-06-25'),
(47, 7, 'present', '2022-06-25'),
(48, 8, 'present', '2022-06-25'),
(49, 9, 'absent', '2022-06-25'),
(50, 10, 'present', '2022-06-25'),
(51, 1, 'present', '2022-06-27'),
(52, 2, 'present', '2022-06-27'),
(53, 3, 'present', '2022-06-27'),
(54, 4, 'present', '2022-06-27'),
(55, 5, 'present', '2022-06-27'),
(56, 6, 'present', '2022-06-27'),
(57, 7, 'present', '2022-06-27'),
(58, 8, 'present', '2022-06-27'),
(59, 9, 'present', '2022-06-27'),
(60, 10, 'present', '2022-06-27'),
(61, 1, 'present', '2022-07-26'),
(62, 2, 'absent', '2022-07-26'),
(63, 3, 'present', '2022-07-26'),
(64, 4, 'present', '2022-07-26'),
(65, 5, 'present', '2022-07-26'),
(66, 6, 'present', '2022-07-26'),
(67, 7, 'absent', '2022-07-26'),
(68, 8, 'present', '2022-07-26'),
(69, 9, 'absent', '2022-07-26'),
(70, 10, 'present', '2022-07-26'),
(71, 1, 'absent', '2022-06-28'),
(72, 2, 'absent', '2022-06-28'),
(73, 3, 'present', '2022-06-28'),
(74, 4, 'present', '2022-06-28'),
(75, 5, 'present', '2022-06-28'),
(76, 6, 'absent', '2022-06-28'),
(77, 7, 'absent', '2022-06-28'),
(78, 8, 'present', '2022-06-28'),
(79, 9, 'present', '2022-06-28'),
(80, 10, 'present', '2022-06-28'),
(81, 1, 'present', '2022-06-30'),
(82, 2, 'present', '2022-06-30'),
(83, 3, 'present', '2022-06-30'),
(84, 4, 'absent', '2022-06-30'),
(85, 5, 'absent', '2022-06-30'),
(86, 6, 'present', '2022-06-30'),
(87, 7, 'present', '2022-06-30'),
(88, 8, 'present', '2022-06-30'),
(89, 9, 'present', '2022-06-30'),
(90, 10, 'present', '2022-06-30'),
(91, 11, 'present', '2022-06-30'),
(92, 12, 'absent', '2022-06-30'),
(93, 13, 'present', '2022-06-30'),
(94, 14, 'present', '2022-06-30'),
(95, 15, 'absent', '2022-06-30'),
(96, 16, '', '2022-06-30'),
(97, 1, 'present', '2022-07-01'),
(98, 2, 'present', '2022-07-01'),
(99, 3, 'present', '2022-07-01'),
(100, 4, 'present', '2022-07-01'),
(101, 5, 'present', '2022-07-01'),
(102, 6, 'present', '2022-07-01'),
(103, 7, 'present', '2022-07-01'),
(104, 8, 'present', '2022-07-01'),
(105, 9, 'present', '2022-07-01'),
(106, 10, 'present', '2022-07-01'),
(107, 11, 'present', '2022-07-01'),
(108, 12, 'present', '2022-07-01'),
(109, 13, 'present', '2022-07-01'),
(110, 14, 'present', '2022-07-01'),
(111, 15, 'present', '2022-07-01'),
(112, 16, 'present', '2022-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` enum('male','female','other') NOT NULL DEFAULT 'other',
  `age` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `gender`, `age`) VALUES
(1, 'Evelyn Caldwell', 'male', 19),
(2, 'Jada Leblanc', 'female', 18),
(3, 'Samuel Potts', 'female', 20),
(4, 'Carissa Brown', 'female', 20),
(5, 'Benjamin Klein', 'female', 18),
(6, 'Mallory Bonner', 'male', 18),
(7, 'Emerald Hampton', 'other', 18),
(8, 'Maite Turner', 'male', 18),
(9, 'Regina Dale', 'other', 20),
(10, 'Charles Knowles', 'other', 19),
(11, 'Sybill Lee', 'other', 19),
(12, 'Cain Keith', 'female', 20),
(13, 'Elmo Maxwell', 'male', 18),
(14, 'Savannah Walker', 'other', 19),
(15, 'Beverly Carrillo', 'male', 20),
(16, 'Kimberley Fernandez', 'male', 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
