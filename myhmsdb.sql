-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb`(`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`) VALUES
(4, 1, 'Hasan', 'Khan', 'Male', 'hasankhan@gmail.com', '01712345678', 'Dr. Rahman', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'Hasan', 'Khan', 'Male', 'hasankhan@gmail.com', '01712345678', 'Dr. Alam', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'Hasan', 'Khan', 'Male', 'hasankhan@gmail.com', '01712345678', 'Dr. Hossain', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Nusrat', 'Jahan', 'Female', 'nusratjahan@gmail.com', '01876543210', 'Dr. Kabir', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'Hasan', 'Khan', 'Male', 'hasankhan@gmail.com', '01712345678', 'Dr. Alam', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'Hasan', 'Khan', 'Male', 'hasankhan@gmail.com', '01712345678', 'Dr. Rahman', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Mim', 'Chowdhury', 'Female', 'mimc@gmail.com', '01689876543', 'Dr. Rahman', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Sajib', 'Haque', 'Male', 'sajibhaque@gmail.com', '01987654321', 'Dr. Rahman', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'Hasan', 'Khan', 'Male', 'hasankhan@gmail.com', '01712345678', 'Dr. Rahman', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Hasan', 'Khan', 'Male', 'hasankhan@gmail.com', '01712345678', 'Dr. Alam', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'Tanvir', 'Ahmed', 'Male', 'tanvirahmed@gmail.com', '01912348765', 'Dr. Karim', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'Tanvir', 'Ahmed', 'Male', 'tanvirahmed@gmail.com', '01912348765', 'Dr. Tareq', 450, '2020-03-26', '14:00:00', 1, 1);


-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anika', 'anika@gmail.com', '01711223344', 'Hey Admin'),
('Rafi', 'rafi@gmail.com', '01899887766', 'Good Job, Pal'),
('Taslima', 'taslima@gmail.com', '01988776655', 'How can I reach you?'),
('Sajib', 'sajib@gmail.com', '01733445566', 'Love your site'),
('Mitu', 'mitu@gmail.com', '01877665544', 'Want some coffee?'),
('Shuvo', 'shuvo@gmail.com', '01999887744', 'Good service'),
('Nayeem', 'nayeem@gmail.com', '01755667788', 'Love your service'),
('Asif', 'asif@gmail.com', '01812344321', 'Love your service. Thank you!'),
('Jannat', 'jannat@gmail.com', '01933445566', 'I love your service!');


-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('rahman', 'rahman123', 'rahman@gmail.com', 'General', 500),
('alam', 'alam123', 'alam@gmail.com', 'Cardiologist', 600),
('hossain', 'hossain123', 'hossain@gmail.com', 'General', 700),
('karim', 'karim123', 'karim@gmail.com', 'Pediatrician', 550),
('kabir', 'kabir123', 'kabir@gmail.com', 'Pediatrician', 800),
('tareq', 'tareq123', 'tareq@gmail.com', 'Cardiologist', 1000),
('nayeem', 'nayeem123', 'nayeem@gmail.com', 'Neurologist', 1500),
('sadia', 'sadia123', 'sadia@gmail.com', 'Pediatrician', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Hasan', 'Mahmud', 'Male', 'hasanmahmud@gmail.com', '01712345678', 'hasan123', 'hasan123'),
(2, 'Tania', 'Akter', 'Female', 'taniaakter@gmail.com', '01898765432', 'tania123', 'tania123'),
(3, 'Shahriar', 'Kabir', 'Male', 'shahriarkabir@gmail.com', '01987654321', 'shahriar123', 'shahriar123'),
(4, 'Rafiq', 'Islam', 'Male', 'rafiqislam@gmail.com', '01744556677', 'rafiq123', 'rafiq123'),
(5, 'Zahid', 'Hasan', 'Male', 'zahidhasan@gmail.com', '01855667788', 'zahid123', 'zahid123'),
(6, 'Nafis', 'Rahman', 'Male', 'nafisrahman@gmail.com', '01966778899', 'nafis123', 'nafis123'),
(7, 'Rumana', 'Khan', 'Female', 'rumanakhan@gmail.com', '01799887766', 'rumana123', 'rumana123'),
(8, 'Asif', 'Hossain', 'Male', 'asifhossain@gmail.com', '01833445566', 'asif123', 'asif123'),
(9, 'Tanvir', 'Ahmed', 'Male', 'tanvirahmed@gmail.com', '01911223344', 'tanvir123', 'tanvir123'),
(10, 'Farid', 'Miah', 'Male', 'faridmiah@gmail.com', '01766554433', 'farid123', 'farid123'),
(11, 'Nusrat', 'Jahan', 'Female', 'nusratjahan@gmail.com', '01876543210', 'nusrat123', 'nusrat123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Dr. Alam', 4, 11, 'Rafiq', 'Islam', '2020-03-27', '15:00:00', 'Cough', 'None', 'Take a teaspoon of Benadryl every night before sleep'),
('Dr. Rahman', 2, 8, 'Tania', 'Akter', '2020-03-21', '10:00:00', 'Severe Fever', 'None', 'Take bed rest and drink fluids'),
('Dr. Karim', 9, 12, 'Tanvir', 'Ahmed', '2020-03-26', '12:00:00', 'Severe Fever', 'None', 'Paracetamol – 1 every morning and night'),
('Dr. Tareq', 9, 13, 'Tanvir', 'Ahmed', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Eat hydrating fruits and drink plenty of water');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
