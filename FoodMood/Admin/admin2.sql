-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 03:59 AM
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
-- Table structure for table `alltables`
--

CREATE TABLE `alltables` (
  `id` int(11) NOT NULL,
  `associateTable` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bichnakandi`
--

CREATE TABLE `bichnakandi` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chattogram`
--

CREATE TABLE `chattogram` (
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

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `name`, `place`, `source`) VALUES
(30, 'The Service from Sundarban was great. Hopefully I will come again here..\r\n                ', 'Ashraful Haque', 'Sundarban', 'std/ash.jpg'),
(31, 'The Service from Saint Martin Island  was not great. Hopefully I will not come again here..\r\n                \r\n                ', 'Neaj Morshad Ashik', 'Saint Martin Island', 'std/ashik.jpg'),
(32, 'আমি তো কোথাও ঘুরতে যাইতেই পারি না। ', 'Sadia Jannat', 'No Where', 'std/sadia.jpg'),
(33, 'Chudba vaiya??\r\n                ', 'RH Hridoy', 'Dhaka', 'std/henry.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `det`
--

CREATE TABLE `det` (
  `id` int(11) NOT NULL,
  `place` varchar(20) DEFAULT NULL,
  `details` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `det`
--

INSERT INTO `det` (`id`, `place`, `details`) VALUES
(6, 'Jaflong', '\r\n     Jaflong (Bengali: জাফলং) is a hill station and tourist destination in the Division of Sylhet, Bangladesh. It is located in Gowainghat Upazila of Sylhet District and situated at the border between Bangladesh and the Indian state of Meghalaya, overshadowed by subtropical mountains and rainforests. It is known for its stone collections and is home of the Khasi tribe.\r\n\r\n\r\n                   '),
(7, 'Ratargul', '\r\n        Ratargul Swamp Forest is a freshwater swamp forest located in Gowain River, Fatehpur Union, Gowainghat, Sylhet, Bangladesh. It is the only swamp forest located in Bangladesh and one of the few freshwater swamp forests in the world. The forest is naturally conserved under the Department of Forestry, Government of Bangladesh.\r\n\r\nIts area is 3, 325.61 acre including 504 acre declared as the animal sanctuary in 2015. It is known as the Sundarbans of Sylhet. '),
(8, 'Panthumai', 'Panthumai, also written as Pang Thu Mai, is another tourist hub in Sylhet which is situated in Gowainghat district. Tourists visiting this village can see the Panthumai waterfall, which is actually situated on the Indian border. Through Panthumai a wonderful scene can be observed of the waterfall as it rushes down in a scintillating force.\r\n\r\nThe atmosphere of the place is thrilling and simulates a sense of awe for those who visit Panthumai. Panthumai is a unique place as it consists of a grandeur scene, the Barahill falls, and with that the distant hills of various range surrounding the area. \r\n            '),
(9, 'SajekValley', 'Sajek is a union located in the north of Chittagong Hill Tracts. It\'s under Baghaichori Upazila in Rangamati hill district, it is situated 67 kilometres (42 mi) north-east from Khagrachhari town and 95 kilometres (59 mi) north from Rangamati city. The border of Bangladesh and Mizoram of India is 8 kilometres (5.0 mi) east from Sajek.\r\n\r\nThe native people of Sajek valley are ethnic minorities. Among them Chakma, Marma, Tripura, Pankua, Kaibarta, Lushai, other indigenous Assamese communities, and Sagma are mentionable. Women seem to be more involved in economic activities here.[citation needed] Tea stalls, food joints and roadside marketplaces are dominated by women.[citation needed] Picking fruits and vegetables early in the morning is a common trade here.[citation needed] They are not fluent in Bengali but the young population speak some English.'),
(10, 'KaptaiLake', 'Kaptai Lake is the largest lake in Bangladesh.[1] It is located in the Kaptai Upazila under Rangamati District of Chittagong Division. The lake was created as a result of building the Kaptai Dam on the Karnaphuli River, as part of the Karnaphuli Hydro-electric project. Kaptai Lake\'s average depth is 100 feet (30 m) and maximum depth is 490 feet (150 m).\r\n\r\nConstruction of the reservoir for the hydro-electric plant began in 1956 by the Government of East Pakistan.[2] As a result, 54,000 acres (220 km2) of farmland in the Rangamati District went underwater and created the lake. The hydro-electric project was funded by the United States. The project was finished in 1962. International Engineering Company and Utah International Inc. received the contract for construction of the dam. The dam is 670.8 meters long, and 54.7 meters high. The dam has a 745 feet (227 m) long spillway containing 16 gates. Through the spillway 5,250,000 cu ft/s (149,000 m3/s) of water can pass.\r\n\r\nThe land that went underwater as a result of the dam construction, was 40% of the total arable land in the area. Along with that, 29 square miles (75 km2) of the Government-owned forest, and 234 square miles (610 km2) of other forest land went underwater. About 18,000 families with a total of almost 100 thousand people were also displaced. The palace of the king of the Chakmas was also flooded and is now underwater. '),
(11, 'Sundarban', 'Sundarbans is a mangrove area in the delta formed by the confluence of the Ganges, Brahmaputra and Meghna Rivers in the Bay of Bengal. It spans from the Hooghly River in India\'s state of West Bengal to the Baleswar River in Bangladesh\'s division of Khulna. It comprises closed and open mangrove forests, land used for agricultural purpose, mudflats and barren land, and is intersected by multiple tidal streams and channels. Four protected areas in the Sundarbans are enlisted as UNESCO World Heritage Sites, viz. Sundarbans National Park, Sundarbans West, Sundarbans South and Sundarbans East Wildlife Sanctuaries.[3]\r\n\r\nDespite these protections, the Indian Sundarbans were considered endangered in a 2020 assessment under the IUCN Red List of Ecosystems framework.[4] The Sundarbans mangrove forest covers an area of about 10,000 km2 (3,900 sq mi), of which forests in Bangladesh\'s Khulna Division extend over 6,017 km2 (2,323 sq mi) and in West Bengal, they extend over 4,260 km2 (1,640 sq mi) across the South 24 Parganas and North 24 Parganas districts.[5] The most abundant tree species are sundri (Heritiera fomes) and gewa (Excoecaria agallocha). The forests provide habitat to 453 fauna wildlife, including 290 bird, 120 fish, 42 mammal, 35 reptile and eight amphibian species.[6] Despite a total ban on all killing or capture of wildlife other than fish and some invertebrates, it appears that there is a consistent pattern of depleted biodiversity or loss of species in the 20th century, and that the ecological quality of the forest is declining.[7]\r\n\r\nDespite preservation commitments from both governments, the Sundarbans are under threat from both natural and human-made causes. In 2007, the landfall of Cyclone Sidr damaged around 40% of the Sundarbans. The forest is also suffering from increased salinity due to rising sea levels due to climate change and reduced freshwater supply. In May 2009 Cyclone Aila devastated the Sundarbans with massive casualties. At least 100,000 people were affected by this cyclone.[8][9] The proposed coal-fired Rampal power station situated 14 km (8.7 mi) north of the Sundarbans at Rampal Upazila of Bagerhat District in Khulna, Bangladesh, is anticipated to further damage this unique mangrove forest according to a 2016 report by UNESCO.[10] Climate change is expected to both continue to negatively effect both natural systems and human populations in the region, resulting in further ecosystem degradation and climate migration. Experts examining the region recommend further focus on mangrove restoration and management and advocating for adaptation of human populations, through processes like managed retreat and investments in resilient infrastructure');

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
(25, 'std/travel5.jpeg', 'Turkey');

-- --------------------------------------------------------

--
-- Table structure for table `gallery2`
--

CREATE TABLE `gallery2` (
  `id` int(11) NOT NULL,
  `source` varchar(400) NOT NULL,
  `place` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery2`
--

INSERT INTO `gallery2` (`id`, `source`, `place`) VALUES
(1, 'std/gal7.jpeg', 'Leora'),
(2, 'std/jaf2.jpeg', 'Leora'),
(3, 'std/gal4.jpeg', 'Leora'),
(4, 'std/travel4.jpg', 'Bashundhara'),
(5, 'std/jaf8.jpeg', 'Bashundhara'),
(7, 'std/gal2.jpg', 'Jaflong'),
(8, 'std/jaf6.jpeg', 'Jaflong'),
(9, 'std/gal1.jpg', 'Hatirjheel'),
(10, 'std/e1.jpg', 'Jaflong'),
(11, 'std/e2.jpg', 'Jaflong'),
(12, 'std/e3.jpg', 'Jaflong'),
(13, 'std/e4.jpg', 'Jaflong'),
(14, 'std/sh1.jpg', 'Jaflong'),
(15, 'std/sh5.jpg', 'j'),
(16, 'std/sh6.jpg', 'Jaflong'),
(17, 'std/q1.jpg', 'Ratargul'),
(18, 'std/q2.jpg', 'r'),
(19, 'std/q3.jpg', 'Ratargul'),
(20, 'std/q5.jpg', 'Ratargul'),
(21, 'std/q6.jpg', 'Ratargul'),
(22, 'std/e3.jpg', 'Ratargul'),
(23, 'std/r5.jpg', 'Ratargul'),
(24, 'std/p1.jpg', 'Panthumai'),
(25, 'std/p2.jpg', 'Panthumai'),
(26, 'std/p3.jpg', 'Panthumai'),
(27, 'std/p4.jpg', 'Panthumai'),
(28, 'std/p5.jpg', 'Panthumai'),
(29, 'std/p6.jpg', 'Panthumai'),
(30, 'std/r8.jpg', 'Panthumai'),
(31, 'std/s2.jpg', 'Panthumai'),
(32, 'std/k1.jpg', 'SajekValley'),
(33, 'std/k2.jpg', 'SajekValley'),
(34, 'std/k3.jpg', 'SajekValley'),
(35, 'std/k5.jpg', 'SajekValley'),
(36, 'std/k4.jpg', 'SajekValley'),
(37, 'std/k6.jpg', 'SajekValley'),
(38, 'std/p4.jpg', 'SajekValley'),
(39, 'std/c6.jpg', 'KaptaiLake'),
(40, 'std/e2.jpg', 'KaptaiLake'),
(41, 'std/e3.jpg', 'KaptaiLake'),
(42, 'std/c1.jpg', 'KaptaiLake'),
(43, 'std/k5.jpg', 'KaptaiLake'),
(44, 'std/k2.jpg', 'KaptaiLake'),
(45, 'std/c7.jpg', 'KaptaiLake'),
(46, 'std/s1.jpg', 'Sundarban'),
(47, 'std/s2.jpg', 'Sundarban'),
(48, 'std/s3.png', 'Sundarban'),
(49, 'std/s4.jpg', 'Sundarban'),
(50, 'std/s5.jpg', 'Sundarban'),
(51, 'std/s6.jpg', 'Sundarban');

-- --------------------------------------------------------

--
-- Table structure for table `jaflong`
--

CREATE TABLE `jaflong` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jamalpur`
--

CREATE TABLE `jamalpur` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kaptailake`
--

CREATE TABLE `kaptailake` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khagrachari`
--

CREATE TABLE `khagrachari` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Dumping data for table `khulna`
--

INSERT INTO `khulna` (`id`, `images`, `price`, `place`, `details`, `myfile`) VALUES
(1, 'std/s1.jpg', 40, 'Khulna', 'Sundarbans is a mangrove area in the delta formed by the confluence of the Ganges, Brahmaputra and Meghna Rivers in the Bay of Bengal. It spans from the Hooghly River in India\'s state of West Bengal to the Baleswar River in Bangladesh\'s division of Khulna.', 'Sundarban');

-- --------------------------------------------------------

--
-- Table structure for table `panthumai`
--

CREATE TABLE `panthumai` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
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
  `bkash_number` varchar(20) NOT NULL,
  `approved` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending`
--

INSERT INTO `pending` (`id`, `firstname`, `lastname`, `email`, `Gender`, `ArrivingDate`, `LeavingDate`, `district`, `place`, `pay`, `bkash_number`, `approved`) VALUES
(1, 'Linta', 'Islam', 'sadiajannat335@gmail.com', 'Female', '2021-11-01', '2021-11-03', 'Khulna', 'Sundarban', '40.00 Dollars', '01795582152', 1),
(2, 'Shamim', 'Sarker', 'mdshamimmansoori7999@gmail.com', 'Male', '2021-11-01', '2021-11-11', 'Sylhet', 'Jaflong', '91.67 Dollars', '01611404246', 1),
(3, 'Sadia', 'Jannat', 'sadiajannat335@gmail.com', 'Female', '2021-11-01', '2021-11-04', 'Khulna', 'Sundarban', '53.33 Dollars', '01535707889', 0),
(4, 'shamim', 'sarkeer', 'abc@gmail.com', 'Male', '2021-11-01', '2021-11-03', 'Sylhet', 'Jaflong', '30.00 Dollars', '01535707889', 0),
(5, 'Rajib', 'Rahi', 'rhhridoy9000@gmail.com', 'Male', '2021-11-01', '2021-11-03', 'Khulna', 'Sundarban', '40.00 Dollars', '01611404246', 1);

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
(1, 'std/sh7.jpg', '30$', 'Sylhet', '\r\nSylhet (Bengali: সিলেট) is a metropolitan city in northeastern Bangladesh. It is the administrative seat of Sylhet Division. Located on the north bank of the Surma River at the eastern tip of Bengal, Sylhet has a subtropical climate and lush highland terrain. The city has a population of more than half a million, and is one of the largest cities in Bangladesh after Khulna, Chittagong and Dhaka.      '),
(3, 'std/r2.jpg', '30$', 'Rangamati', '\r\n   \r\n    Rangamati (Bengali: রাঙ্গামাটি )is the administrative headquarters of Rangamati Hill District in the Chittagong Hill Tracts of Bangladesh. The town is located at .................                  \r\n            '),
(4, 'std/s1.jpg', '45$', 'Khulna', 'Khulna (Bengali: খুলনা [ˈkʰulna]) is the third largest city in Bangladesh after Dhaka and Chittagong.[3] It is the administrative territory of Khulna District and Khulna Division. The economy of Khulna is the third largest in the People\'s Republic of Bangladesh,'),
(5, 'std/c6.jpg', '50$', 'SaintMartin', 'Saint Martin (French: Saint-Martin; Dutch: Sint Maarten) is an island in the northeast Caribbean Sea, approximately 300 km (190 mi) east of Puerto Rico. The 87-square-kilometre (34 sq mi) island is divided roughly 60:40 between the French Republic (53 km2, 20 sq mi'),
(6, 'std/ch1.jpg', '30$', 'Chattogram', 'Chittagong is large port city on the southeastern coast of Bangladesh. The Ethnological Museum has exhibits about the many different ethnic tribes across the country. Zia Memorial Museum, '),
(7, 'std/kh1.jpg', '56$', 'Khagrachari', 'Khagrachari is a district in Chittagong Division, South eastern Bangladesh. It included under Chittagong Hill Tracts region. The Chittagong Hill Tracts was under the reign of the Tripura State, the Arakans & the Sultans in different times before it came under the control of the British East India Company in 1760.'),
(8, 'std/gal4.jpeg', '34$', 'Jamalpur', 'asajshajkhs\r\n            ');

-- --------------------------------------------------------

--
-- Table structure for table `rangamati`
--

CREATE TABLE `rangamati` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rangamati`
--

INSERT INTO `rangamati` (`id`, `images`, `price`, `place`, `details`, `myfile`) VALUES
(1, 'std/k1.jpg', 40, 'Rangamati', '\r\n Sajek Valley is one of the popular tourist spots in Bangladesh situated among the hills of the Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District. The valley is 2,000 feet above sea level.           ', 'SajekValley'),
(2, 'std/p1.jpg', 40, 'Rangamati', 'Kaptai Lake is the largest lake in Bangladesh.[1] It is located in the Kaptai Upazila under Rangamati District of Chittagong Division. The lake was created as a result of building the Kaptai Dam on the Karnaphuli River, as part of the Karnaphuli Hydro-electric project.  ', 'KaptaiLake');

-- --------------------------------------------------------

--
-- Table structure for table `ratargul`
--

CREATE TABLE `ratargul` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `saintmartin`
--

CREATE TABLE `saintmartin` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sajekvalley`
--

CREATE TABLE `sajekvalley` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sundarban`
--

CREATE TABLE `sundarban` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sylhet`
--

CREATE TABLE `sylhet` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sylhet`
--

INSERT INTO `sylhet` (`id`, `images`, `price`, `place`, `details`, `myfile`) VALUES
(1, 'std/sh8.jpg', 25, 'Sylhet', '\r\n    Jaflong is a tourist spot in Sylhet division. It is about 60 km from Sylhet town and takes two hours drive to reach there. Jaflong located amidst tea gardens and hills. It is situated beside the river Sari in the lap of Hill Khashia.         ', 'Jaflong'),
(2, 'std/sh4.jpg', 30, 'Sylhet', 'Ratargul Swamp Forest is a freshwater swamp forest located in Gowain River, Fatehpur Union, Gowainghat, Sylhet, Bangladesh. It is the only swamp forest located in Bangladesh and one of the few freshwater swamp forests in the world\r\n            ', 'Ratargul'),
(3, 'std/r9.jpg', 20, 'Sylhet', '\r\n    Panthumai, also written as Pang Thu Mai, is another tourist hub in Sylhet which is situated in Gowainghat district. Tourists visiting this village can see the Panthumai waterfall, .........       ', 'Panthumai');

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
(1, 'Linta', 'Islam', 'sadiajannat335@gmail.com', 'Female', '2021-11-01', '2021-11-03', 'Khulna', 'Sundarban', '40.00 Dollars', '01795582152'),
(2, 'Shamim', 'Sarker', 'mdshamimmansoori7999@gmail.com', 'Male', '2021-11-01', '2021-11-11', 'Sylhet', 'Jaflong', '91.67 Dollars', '01611404246'),
(5, 'Rajib', 'Rahi', 'rhhridoy9000@gmail.com', 'Male', '2021-11-01', '2021-11-03', 'Khulna', 'Sundarban', '40.00 Dollars', '01611404246');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alltables`
--
ALTER TABLE `alltables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bichnakandi`
--
ALTER TABLE `bichnakandi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chattogram`
--
ALTER TABLE `chattogram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `det`
--
ALTER TABLE `det`
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
-- Indexes for table `jaflong`
--
ALTER TABLE `jaflong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jamalpur`
--
ALTER TABLE `jamalpur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kaptailake`
--
ALTER TABLE `kaptailake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khagrachari`
--
ALTER TABLE `khagrachari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khulna`
--
ALTER TABLE `khulna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panthumai`
--
ALTER TABLE `panthumai`
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
-- Indexes for table `rangamati`
--
ALTER TABLE `rangamati`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratargul`
--
ALTER TABLE `ratargul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saintmartin`
--
ALTER TABLE `saintmartin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sajekvalley`
--
ALTER TABLE `sajekvalley`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sundarban`
--
ALTER TABLE `sundarban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sylhet`
--
ALTER TABLE `sylhet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourists`
--
ALTER TABLE `tourists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alltables`
--
ALTER TABLE `alltables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bichnakandi`
--
ALTER TABLE `bichnakandi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chattogram`
--
ALTER TABLE `chattogram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `det`
--
ALTER TABLE `det`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gallery1`
--
ALTER TABLE `gallery1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `gallery2`
--
ALTER TABLE `gallery2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `jaflong`
--
ALTER TABLE `jaflong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jamalpur`
--
ALTER TABLE `jamalpur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kaptailake`
--
ALTER TABLE `kaptailake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khagrachari`
--
ALTER TABLE `khagrachari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khulna`
--
ALTER TABLE `khulna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `panthumai`
--
ALTER TABLE `panthumai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending`
--
ALTER TABLE `pending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rangamati`
--
ALTER TABLE `rangamati`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ratargul`
--
ALTER TABLE `ratargul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saintmartin`
--
ALTER TABLE `saintmartin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sajekvalley`
--
ALTER TABLE `sajekvalley`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sundarban`
--
ALTER TABLE `sundarban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylhet`
--
ALTER TABLE `sylhet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tourists`
--
ALTER TABLE `tourists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
