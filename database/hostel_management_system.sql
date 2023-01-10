-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 06:53 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `Application_id` int NOT NULL,
  `Student_id` varchar(255) NOT NULL,
  `Hostel_id` int NOT NULL,
  `Application_status` tinyint(1) DEFAULT NULL,
  `Room_No` int DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `Hostel_id` int NOT NULL,
  `Hostel_name` varchar(255) NOT NULL,
  `current_no_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_students` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`Hostel_id`, `Hostel_name`, `current_no_of_rooms`, `No_of_rooms`, `No_of_students`) VALUES
(1, 'Block 1 - BOYS', NULL, '400', NULL),
(2, 'Block 2 - BOYS', NULL, '400', NULL),
(3, 'Block 3 - BOYS', NULL, '400', NULL),
(4, 'Block 1 - GIRLS', NULL, '400', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostel_manager`
--

CREATE TABLE `hostel_manager` (
  `Hostel_man_id` int NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `hmemail` varchar(256) DEFAULT NULL,
  `Hostel_id` int DEFAULT NULL,
  `Pwd` longtext NOT NULL,
  `Isadmin` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_manager`
--

INSERT INTO `hostel_manager` (`Hostel_man_id`, `Username`, `Fname`, `Lname`, `Mob_no`, `hmemail`, `Hostel_id`, `Pwd`, `Isadmin`) VALUES
(1, 'admin', 'admin', 'admin', '1234567890', NULL, NULL, '$2y$10$FRkDZcUbdLdcTekOcExE1.afNDoBtbmMJWvlnB/AYhTHzejQlf8NC', 1),
(101, 'HM1', 'Hostel Manager', 'Block 1 - BOYS', '9999999999', 'HM1@vitbhopal.ac.in', 1, '$2y$10$FRkDZcUbdLdcTekOcExE1.afNDoBtbmMJWvlnB/AYhTHzejQlf8NC', 0),
(102, 'HM2', 'Hostel Manager', 'Block 2 - BOYS', '9999999999', 'HM2@vitbhopal.ac.in', 2, '$2y$10$FRkDZcUbdLdcTekOcExE1.afNDoBtbmMJWvlnB/AYhTHzejQlf8NC', 0),
(103, 'HM3', 'Hostel Manager', 'Block 3 - BOYS', '9999999999', 'HM3@vitbhopal.ac.in', 3, '$2y$10$FRkDZcUbdLdcTekOcExE1.afNDoBtbmMJWvlnB/AYhTHzejQlf8NC', 0),
(104, 'HMG1', 'Hostel Manager', 'Block 1 - GIRLS', '9999999999', 'HMG1@vitbhopal.ac.in', 4, '$2y$10$FRkDZcUbdLdcTekOcExE1.afNDoBtbmMJWvlnB/AYhTHzejQlf8NC', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int NOT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `hostel_id` int DEFAULT NULL,
  `subject_h` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `msg_date` varchar(255) DEFAULT NULL,
  `msg_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg_id`, `sender_id`, `receiver_id`, `hostel_id`, `subject_h`, `message`, `msg_date`, `msg_time`) VALUES
(7, '20BCE10798', '', 1, 'test', 'hello', '2023-01-10', '05:58 AM'),
(8, '20BCE10798', '', 1, 'test', 'hello', '2023-01-10', '06:45 AM');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_id` int NOT NULL,
  `Hostel_id` int NOT NULL,
  `Room_No` varchar(10) NOT NULL,
  `Allocated` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_id`, `Hostel_id`, `Room_No`, `Allocated`) VALUES
(1, 1, 'A001', 1),
(2, 1, 'A002', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `Year_of_study` varchar(255) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Hostel_id` int DEFAULT NULL,
  `Room_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Fname`, `Lname`, `Mob_no`, `Dept`, `Year_of_study`, `Pwd`, `Hostel_id`, `Room_id`) VALUES
('20BCE10798', 'Khush', 'Bubna', '9322755619', 'CSE', '3', '$2y$10$Bexhm8079BcvoGsPOTCqEeeM.p7xfGj/CRSVTrbENeyQDrBq0q75O', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`Application_id`),
  ADD KEY `Student_id` (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`Hostel_id`);

--
-- Indexes for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD PRIMARY KEY (`Hostel_man_id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `Application_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `Hostel_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  MODIFY `Hostel_man_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `Room_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `Application_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `Application_ibfk_2` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `Room_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`),
  ADD CONSTRAINT `Student_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `room` (`Room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
