-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 03:16 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futureworkskilllog`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_Code` int(100) NOT NULL,
  `Course_Process` varchar(255) NOT NULL,
  `Course_Content` varchar(255) NOT NULL,
  `Course_Assesment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `learning_journal`
--

CREATE TABLE `learning_journal` (
  `Jounal_ID` int(100) NOT NULL,
  `Journal_Name` varchar(255) NOT NULL,
  `Journal_Content` varchar(255) NOT NULL,
  `STU_ID` int(100) NOT NULL,
  `Course_Code` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `STU_ID` int(100) NOT NULL,
  `STA_ID` int(100) NOT NULL,
  `Password` text NOT NULL,
  `Username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `process`
--

CREATE TABLE `process` (
  `Process_StartDate` date NOT NULL,
  `Process_EndDate` date NOT NULL,
  `Course_Code` int(100) NOT NULL,
  `Course_Process` varchar(255) NOT NULL,
  `STU_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `Report_ID` int(100) NOT NULL,
  `Report_Name` text NOT NULL,
  `Report_Content` text NOT NULL,
  `Report_Picture` text NOT NULL,
  `Report_Comment` text NOT NULL,
  `STU_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `School_Name` varchar(100) NOT NULL,
  `STU_ID` int(100) NOT NULL,
  `STA_ID` int(100) NOT NULL,
  `Course_Code` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `STA_ID` int(100) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` text NOT NULL,
  `STA_Fname` text NOT NULL,
  `STA_LName` text NOT NULL,
  `STA_Email` varchar(255) NOT NULL,
  `STA_Address` varchar(255) NOT NULL,
  `STA_ContactNo` int(100) NOT NULL,
  `School_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STU_ID` int(100) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` text NOT NULL,
  `STU_FName` text NOT NULL,
  `STU_LName` text NOT NULL,
  `STU_Email` varchar(255) NOT NULL,
  `STU_BirthDate` date NOT NULL,
  `STU_Address` varchar(255) NOT NULL,
  `School_Name` varchar(100) NOT NULL,
  `Report_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_Code`,`Course_Process`);

--
-- Indexes for table `learning_journal`
--
ALTER TABLE `learning_journal`
  ADD PRIMARY KEY (`Jounal_ID`),
  ADD KEY `Course_Code` (`Course_Code`),
  ADD KEY `STU_ID` (`STU_ID`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD KEY `STA_ID` (`STA_ID`),
  ADD KEY `STU_ID` (`STU_ID`);

--
-- Indexes for table `process`
--
ALTER TABLE `process`
  ADD KEY `STU_ID` (`STU_ID`),
  ADD KEY `Course_Code` (`Course_Code`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`Report_ID`),
  ADD KEY `STU_ID` (`STU_ID`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`School_Name`),
  ADD KEY `STA_ID` (`STA_ID`),
  ADD KEY `STU_ID` (`STU_ID`),
  ADD KEY `Course_Code` (`Course_Code`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`STA_ID`),
  ADD KEY `School_Name` (`School_Name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STU_ID`),
  ADD KEY `Report_ID` (`Report_ID`),
  ADD KEY `School_Name` (`School_Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `Course_Code` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_journal`
--
ALTER TABLE `learning_journal`
  MODIFY `Jounal_ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `Report_ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `STA_ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `STU_ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `learning_journal`
--
ALTER TABLE `learning_journal`
  ADD CONSTRAINT `learning_journal_ibfk_1` FOREIGN KEY (`Course_Code`) REFERENCES `course` (`Course_Code`),
  ADD CONSTRAINT `learning_journal_ibfk_2` FOREIGN KEY (`STU_ID`) REFERENCES `student` (`STU_ID`);

--
-- Constraints for table `login_details`
--
ALTER TABLE `login_details`
  ADD CONSTRAINT `login_details_ibfk_1` FOREIGN KEY (`STA_ID`) REFERENCES `staff` (`STA_ID`),
  ADD CONSTRAINT `login_details_ibfk_2` FOREIGN KEY (`STU_ID`) REFERENCES `student` (`STU_ID`);

--
-- Constraints for table `process`
--
ALTER TABLE `process`
  ADD CONSTRAINT `process_ibfk_1` FOREIGN KEY (`STU_ID`) REFERENCES `student` (`STU_ID`),
  ADD CONSTRAINT `process_ibfk_2` FOREIGN KEY (`Course_Code`) REFERENCES `course` (`Course_Code`);

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`STU_ID`) REFERENCES `student` (`STU_ID`);

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`STA_ID`) REFERENCES `staff` (`STA_ID`),
  ADD CONSTRAINT `school_ibfk_2` FOREIGN KEY (`STU_ID`) REFERENCES `student` (`STU_ID`),
  ADD CONSTRAINT `school_ibfk_3` FOREIGN KEY (`Course_Code`) REFERENCES `course` (`Course_Code`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`School_Name`) REFERENCES `school` (`School_Name`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Report_ID`) REFERENCES `report` (`Report_ID`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`School_Name`) REFERENCES `school` (`School_Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
