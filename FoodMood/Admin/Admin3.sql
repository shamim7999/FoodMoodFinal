-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2021 at 03:41 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '2222');

-- --------------------------------------------------------

--
-- Table structure for table `barisal`
--

CREATE TABLE `barisal` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `name` varchar(40) NOT NULL,
  `place` varchar(40) NOT NULL,
  `source` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dhaka`
--

CREATE TABLE `dhaka` (
  `id` int(11) NOT NULL,
  `firstname` varchar(111) DEFAULT NULL,
  `lastname` varchar(111) DEFAULT NULL,
  `email` varchar(111) DEFAULT NULL,
  `Gender` varchar(8) DEFAULT NULL,
  `ArrivingDate` date DEFAULT NULL,
  `LeavingDate` date DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dhaka`
--

INSERT INTO `dhaka` (`id`, `firstname`, `lastname`, `email`, `Gender`, `ArrivingDate`, `LeavingDate`, `district`, `place`) VALUES
(5, 'Arun', 'Roy', 'asg@gmail.com', 'Male', '2020-10-07', '2020-10-15', 'Dhaka', 'Basundhara'),
(6, 'Ilham', 'Aliyev', '10ali@gmail.com', 'Female', '2020-10-07', '2020-10-17', 'Dhaka', 'Hatirjheel');

-- --------------------------------------------------------

--
-- Table structure for table `gallery1`
--

CREATE TABLE `gallery1` (
  `id` int(11) NOT NULL,
  `source` varchar(400) NOT NULL,
  `place` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery1`
--

INSERT INTO `gallery1` (`id`, `source`, `place`) VALUES
(1, 'std/gal4.jpeg', 'Dhaka'),
(6, 'std/gal2.jpg', 'Sylhet'),
(7, 'std/gal3.jpeg', 'Khulna'),
(8, 'std/gal4.jpeg', 'Rangamati'),
(9, 'std/gal7.jpeg', 'Khagrachori'),
(10, 'std/gal6.jpeg', 'Barisal'),
(12, 'std/gal8.jpeg', 'Coxs Bazar'),
(13, 'std/travel4.jpg', 'Narayanganj'),
(14, 'std/travel5.jpeg', 'Sunamganj'),
(15, 'std/jaf8.jpeg', 'Jamalpur'),
(16, 'std/sajek.jpg', 'Sajek Valley'),
(17, 'std/pic-3.png', 'Jamalpur'),
(18, 'std/jaf5.jpeg', 'Brahmanbaria'),
(20, 'std/gal8.jpeg', 'Rangpur'),
(21, 'std/gal5.jpeg', 'Jessore'),
(22, 'std/travel1.jpg', 'Dhaka'),
(25, 'std/travel5.jpeg', 'Turkey'),
(27, 'std/travel2.jpg', 'Comilla');

-- --------------------------------------------------------

--
-- Table structure for table `gallery2`
--

CREATE TABLE `gallery2` (
  `id` int(11) NOT NULL,
  `source` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery2`
--

INSERT INTO `gallery2` (`id`, `source`) VALUES
(1, 'std/gal2.jpg'),
(2, 'std/travel8.jpg'),
(3, 'std/gal1.jpg'),
(5, 'std/gal4.jpeg'),
(7, 'std/gal6.jpeg'),
(8, 'std/gal7.jpeg'),
(9, 'std/jaf3.jpeg'),
(10, 'std/jaf6.jpeg'),
(11, 'std/jaf5.jpeg'),
(12, 'std/travel4.jpg'),
(13, 'std/travel5.jpeg'),
(14, 'std/jaf10.jpg'),
(15, 'std/jaf11.jpg'),
(16, 'std/jaf12.jpg'),
(17, 'std/jaf13.jpg'),
(18, 'std/jaf14.jpg'),
(19, 'std/pexels-belle-co-847393.jpg'),
(21, 'std/pexels-francesco-ungaro-3390587.jpg'),
(22, 'std/pexels-jeremy-bishop-2922672.jpg'),
(23, 'std/pexels-luis-del-río-15286.jpg'),
(24, 'std/pexels-matheus-bertelli-1144687.jpg'),
(25, 'std/pexels-peng-lim-910368.jpg'),
(27, 'std/pexels-pixabay-247600.jpg'),
(28, 'std/pexels-pixabay-257360.jpg'),
(29, 'std/pexels-pixabay-358457.jpg'),
(30, 'std/pexels-pixabay-358532.jpg'),
(33, 'std/pexels-sam-kolder-2387866.jpg'),
(34, 'std/pexels-sam-kolder-2387873.jpg'),
(35, 'std/pexels-sebastian-palomino-1904769.jpg'),
(37, 'std/pexels-snapwire-618608.jpg'),
(40, 'std/pexels-snapwire-34950.jpg'),
(43, 'std/gg2.jpg'),
(44, 'std/gg3.jpg'),
(45, 'std/gal7.jpeg'),
(46, 'std/gg1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `khulna`
--

CREATE TABLE `khulna` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pending`
--

CREATE TABLE `pending` (
  `id` int(11) NOT NULL,
  `firstname` varchar(111) NOT NULL,
  `lastname` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `ArrivingDate` date NOT NULL,
  `LeavingDate` date NOT NULL,
  `district` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `pay` varchar(20) NOT NULL,
  `bkash_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending`
--

INSERT INTO `pending` (`id`, `firstname`, `lastname`, `email`, `Gender`, `ArrivingDate`, `LeavingDate`, `district`, `place`, `pay`, `bkash_number`) VALUES
(49, 'Sadia', 'Jannat Mitu', 'sadiajannat335@gmail.com', 'Male', '2021-09-01', '2021-09-09', 'Dhaka', 'Hatirjheel', '186.00 Dollars', '0124478787');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `images`, `price`, `place`, `details`) VALUES
(1, 'std/gal4.jpeg', '23$', 'Bagerhat', 'jhdfjsdhfksdgjfsdsfgsddffffffffffffffffff\r\nffffffffff\r\nffffffffffffffffffffffff\r\nffffffffffffffffffffffffffffffffffffff\r\nffffffffffffffffffffffffffffffffffffff\r\n            '),
(2, 'std/gal2.jpg', '67$', 'Everest', 'hjsahjkhfsjhsjdkfhskdj\r\nsdfjksfjskldfsjfksdl\r\nsdfjklsdfjsdfjslfsdjf\r\nsdjflsjfklsdjflsjdlf\r\nsdfjsjkfsdhfksdjfhskdfh\r\n\r\n            '),
(3, 'std/gal7.jpeg', '100$', 'Bichnakandi', 'dhajskdhaksjhd\r\nsdajksdahsjdhaskda\r\nsahjhdaksjhdkasjdhasj\r\n\r\n            '),
(6, 'std/banner4.jpg', '12$', 'Khulna', 'jsahfskjdhfksdj\r\nsdjfklsjflksdjfl\r\njlksdjflsdkjf\r\n            '),
(7, 'std/banner2.jpg', '12$', 'Barisal', 'hdsjhdakj\r\nasdjalksdjalsk\r\nasdjaksjdl\r\n            '),
(8, 'std/background.png', '12$', 'sa', 'asas\r\n            ');

-- --------------------------------------------------------

--
-- Table structure for table `sa`
--

CREATE TABLE `sa` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sylhet`
--

CREATE TABLE `sylhet` (
  `id` int(11) NOT NULL,
  `firstname` varchar(111) DEFAULT NULL,
  `lastname` varchar(111) DEFAULT NULL,
  `email` varchar(111) NOT NULL,
  `Gender` varchar(8) DEFAULT NULL,
  `ArrivingDate` date DEFAULT NULL,
  `LeavingDate` date DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sylhet`
--

INSERT INTO `sylhet` (`id`, `firstname`, `lastname`, `email`, `Gender`, `ArrivingDate`, `LeavingDate`, `district`, `place`) VALUES
(1, 'Abdullah', 'Khan', 'abd@gmail.com', 'Male', '2020-10-14', '2020-10-23', 'Sylhet', 'Jaflong'),
(2, 'Morshed', 'Islam', 'morshed@gmail.com', 'Male', '2020-10-01', '2020-10-15', 'Sylhet', 'Jaflong'),
(2, 'Sadia', 'Jannat', 'ss@gmail.com', 'Male', '2020-10-08', '2020-10-16', 'Sylhet', 'Jaflong'),
(3, 'Shamim', 'Sarker', '10shamimsarker01@gmail.com', 'Male', '2020-10-16', '2020-10-17', 'Sylhet', 'Jaflong'),
(4, 'Ahsanullah', 'Khan', 'ahs@gmail.com', 'Male', '2020-10-07', '2020-10-09', 'Sylhet', 'Sree Mongol');

-- --------------------------------------------------------

--
-- Table structure for table `tourists`
--

CREATE TABLE `tourists` (
  `id` int(11) NOT NULL,
  `firstname` varchar(111) DEFAULT NULL,
  `lastname` varchar(111) DEFAULT NULL,
  `email` varchar(111) DEFAULT NULL,
  `Gender` varchar(8) DEFAULT NULL,
  `ArrivingDate` date DEFAULT NULL,
  `LeavingDate` date DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `pay` varchar(20) NOT NULL,
  `bkash_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tourists`
--

INSERT INTO `tourists` (`id`, `firstname`, `lastname`, `email`, `Gender`, `ArrivingDate`, `LeavingDate`, `district`, `place`, `pay`, `bkash_number`) VALUES
(34, 'qwqw', 'qwqw', 'aaaa1@gmail.com', 'Male', '2020-10-07', '2020-10-14', 'Dhaka', 'Basundhara', '112.00 Dollars', '312312'),
(36, 'Hamid', 'Ali', '10ali@gmail.com', 'Male', '2020-10-07', '2020-10-20', 'Sylhet', 'Sree Mongol', '312.67 Dollars', '01797568243'),
(37, 'Sadia', 'Mitu', 'sas@gmail.com', 'Female', '2020-10-06', '2020-10-14', 'Sylhet', 'Bichnakandi', '120.00 Dollars', '01787878787'),
(39, 'Sajib', 'Saha', 'sajeebcsedu@gmail.com', 'Male', '2020-10-15', '2020-10-22', 'Sylhet', 'Jaflong', '133.33 Dollars', '0115944350'),
(44, 'ss', 'sas', 'sa@gmail.com', 'Male', '2021-09-03', '2021-09-09', 'Dhaka', 'Basundhara', '144.67 Dollars', '45645412'),
(45, 'Shamim', 'Sarker', 'mdshamimmansoori7999@gmailcom', 'Male', '2021-09-02', '2021-09-28', 'Dhaka', 'Hatirjheel', '558.00 Dollars', '01611404246'),
(46, 'Shamim', 'Sa', 'mdshamimmansoori7999@gmail.com', 'Male', '2021-09-03', '2021-09-10', 'Sylhet', 'Jaflong', '133.33 Dollars', ''),
(47, 'Asma', 'Akhter', 'mdshamimmansoori7999@gmail.com', 'Female', '2021-09-02', '2021-09-17', 'Dhaka', 'Hatirjheel', '330.67 Dollars', '01548787878'),
(48, 'Shami', 'Sarker', 'mdshamimmansoori7999@gmail.com', 'Male', '2021-09-01', '2021-09-08', 'Dhaka', 'Hatirjheel', '165.33 Dollars', '015454587'),
(49, 'Sadia', 'Jannat Mitu', 'sadiajannat335@gmail.com', 'Male', '2021-09-01', '2021-09-09', 'Dhaka', 'Hatirjheel', '186.00 Dollars', '0124478787');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barisal`
--
ALTER TABLE `barisal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dhaka`
--
ALTER TABLE `dhaka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery1`
--
ALTER TABLE `gallery1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery2`
--
ALTER TABLE `gallery2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khulna`
--
ALTER TABLE `khulna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending`
--
ALTER TABLE `pending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sa`
--
ALTER TABLE `sa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sylhet`
--
ALTER TABLE `sylhet`
  ADD PRIMARY KEY (`id`,`email`);

--
-- Indexes for table `tourists`
--
ALTER TABLE `tourists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barisal`
--
ALTER TABLE `barisal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `dhaka`
--
ALTER TABLE `dhaka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery1`
--
ALTER TABLE `gallery1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `gallery2`
--
ALTER TABLE `gallery2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `khulna`
--
ALTER TABLE `khulna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending`
--
ALTER TABLE `pending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sa`
--
ALTER TABLE `sa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourists`
--
ALTER TABLE `tourists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
