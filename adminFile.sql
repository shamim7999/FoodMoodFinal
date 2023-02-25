-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 09:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

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
-- Table structure for table `bengali`
--

CREATE TABLE `bengali` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bengali`
--

INSERT INTO `bengali` (`id`, `images`, `price`, `place`, `details`, `myfile`) VALUES
(1, 'std/4.jpg', 3, 'Bengali', 'Fried rice is a dish of cooked rice that has been stir-fried in a wok or a frying pan and is usually mixed with other ingredients such as eggs, vegetables, seafood, or meat. It is often eaten by itself or as an accompaniment to another dish.', 'Fried_rice'),
(4, 'std/7.jpg', 2, 'Bengali', 'Malabar matthi curry, also known as fish curry, is an Indian also Goan dish. It consists of sardines semi-stewed in a Kerala-style curry with assorted vegetables, such as okra or onions. It is usually served with rice, naan, bread, or tapioca.', 'Bengali_Fish_Curry');

-- --------------------------------------------------------

--
-- Table structure for table `bengali_fish_curry`
--

CREATE TABLE `bengali_fish_curry` (
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
-- Table structure for table `cheese_dosa`
--

CREATE TABLE `cheese_dosa` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chiken_fry`
--

CREATE TABLE `chiken_fry` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chinese`
--

CREATE TABLE `chinese` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chinese`
--

INSERT INTO `chinese` (`id`, `images`, `price`, `place`, `details`, `myfile`) VALUES
(1, 'std/FriedRice.jpg', 3, 'Chinese', '\r\n          Fried rice is a dish of cooked rice that has been stir-fried in a wok or a frying pan and is usually mixed with other ingredients such as eggs, vegetables, seafood, or meat. It is often eaten by itself or as an accompaniment to another dish  ', 'Fried_rice'),
(2, 'std/fry.jpg', 7, 'Chinese', 'Fried chicken, also known as Southern fried chicken is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried. The breading adds a crisp coating or crust to the exterior of the chicken while retaining juices in the meat.', 'Chiken_fry'),
(3, 'std/Momo.jpg', 4, 'Chinese', '\r\n            Momo are a type of Tibetan and Nepalese dumpling dish popular in these regions. Momo is found in the cuisines of Nepal and Tibet. It is similar to baozi, jiaozi and mantou in Chinese cuisine, buuz in Mongolian cuisine, gyoza in Japanese cuisine, mandu in Korean cuisine and manti in Afghan cuisines. ', 'Momo');

-- --------------------------------------------------------

--
-- Table structure for table `chocolate_mousse`
--

CREATE TABLE `chocolate_mousse` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
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
(1, 'Fish Curry valo chilo na\r\n                ', 'Shamim Sarker', 'FishCurry', 'std/me.jpg'),
(2, 'Pasta ta well cooked and onek yummy.', 'Mahi', 'Pasta', 'std/271383533_726812582041376_8956141461328008886_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cupcake`
--

CREATE TABLE `cupcake` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fullname` varchar(111) DEFAULT NULL,
  `address` varchar(111) DEFAULT NULL,
  `email` varchar(111) DEFAULT NULL,
  `Gender` varchar(8) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `total` int(12) DEFAULT NULL,
  `catagory` varchar(30) DEFAULT NULL,
  `items` varchar(30) DEFAULT NULL,
  `pay` varchar(20) NOT NULL,
  `bkash_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullname`, `address`, `email`, `Gender`, `orderDate`, `total`, `catagory`, `items`, `pay`, `bkash_number`) VALUES
(8, 'Shamim', '729/C Khilgaon, Dhaka, 1219                              ', 'sa@gmail.com', 'Male', '2022-01-04', 12, 'Bengali', 'FishCurry', '36.00 Dollars', '01611404246'),
(9, 'Shamim Sarker', '729/C, Khilgaon, Dhaka=1219                                ', 'sa@gmail.com', 'Male', '2022-01-01', 2, 'Indian', 'Cheese_Dosa', '6.00 Dollars', '01611404246'),
(10, 'Mahinur ', '234/A, Khilgaon                                ', 'm@gmail.com', 'Female', '2022-01-19', 5, 'Turkish', 'Chocolate_mousse', '10.00 Dollars', '01611404246'),
(11, 'Mahi', '234/A,Khilgaon          ', 'm@gmail.com', 'Female', '2022-01-19', 3, 'Spanish', 'Paella', '12.00 Dollars', '01611404246'),
(12, 'Abida Sultana', 'Puran Dhaka', 'ab@gmail.com', 'Male', '2022-01-20', 4, 'Indian', 'Pav_bhaji', '12.00 Dollars', '01681389988'),
(13, 'Abdullah Al Masood', 'Khilgaon, Tilpapara                                ', 'mdshamimmansoori7999@gmail.com', 'Male', '2022-01-20', 3, 'Indian', 'Dosa', '9.00 Dollars', '01715944350'),
(14, 'Arun Roy', 'Puran Dhaka                                ', 'mdshamimmansoori7999@gmail.com', 'Male', '2022-01-20', 4, 'Indian', 'Pav_bhaji', '12.00 Dollars', '01535707889'),
(15, 'Mahinur Afroza', 'Sipahibagh                                ', 'mahinurafrozamahi@gmail.com', 'Female', '2022-01-20', 4, 'Italian', 'Spaghetti', '8.00 Dollars', '01535889707');

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
(11, 'Sundarban', 'Sundarbans is a mangrove area in the delta formed by the confluence of the Ganges, Brahmaputra and Meghna Rivers in the Bay of Bengal. It spans from the Hooghly River in India\'s state of West Bengal to the Baleswar River in Bangladesh\'s division of Khulna. It comprises closed and open mangrove forests, land used for agricultural purpose, mudflats and barren land, and is intersected by multiple tidal streams and channels. Four protected areas in the Sundarbans are enlisted as UNESCO World Heritage Sites, viz. Sundarbans National Park, Sundarbans West, Sundarbans South and Sundarbans East Wildlife Sanctuaries.[3]\r\n\r\nDespite these protections, the Indian Sundarbans were considered endangered in a 2020 assessment under the IUCN Red List of Ecosystems framework.[4] The Sundarbans mangrove forest covers an area of about 10,000 km2 (3,900 sq mi), of which forests in Bangladesh\'s Khulna Division extend over 6,017 km2 (2,323 sq mi) and in West Bengal, they extend over 4,260 km2 (1,640 sq mi) across the South 24 Parganas and North 24 Parganas districts.[5] The most abundant tree species are sundri (Heritiera fomes) and gewa (Excoecaria agallocha). The forests provide habitat to 453 fauna wildlife, including 290 bird, 120 fish, 42 mammal, 35 reptile and eight amphibian species.[6] Despite a total ban on all killing or capture of wildlife other than fish and some invertebrates, it appears that there is a consistent pattern of depleted biodiversity or loss of species in the 20th century, and that the ecological quality of the forest is declining.[7]\r\n\r\nDespite preservation commitments from both governments, the Sundarbans are under threat from both natural and human-made causes. In 2007, the landfall of Cyclone Sidr damaged around 40% of the Sundarbans. The forest is also suffering from increased salinity due to rising sea levels due to climate change and reduced freshwater supply. In May 2009 Cyclone Aila devastated the Sundarbans with massive casualties. At least 100,000 people were affected by this cyclone.[8][9] The proposed coal-fired Rampal power station situated 14 km (8.7 mi) north of the Sundarbans at Rampal Upazila of Bagerhat District in Khulna, Bangladesh, is anticipated to further damage this unique mangrove forest according to a 2016 report by UNESCO.[10] Climate change is expected to both continue to negatively effect both natural systems and human populations in the region, resulting in further ecosystem degradation and climate migration. Experts examining the region recommend further focus on mangrove restoration and management and advocating for adaptation of human populations, through processes like managed retreat and investments in resilient infrastructure'),
(12, 'FishCurry', 'Malabar matthi curry, also known as fish curry, is an Indian also Goan dish. It consists of sardines semi-stewed in a Kerala-style curry with assorted vegetables, such as okra or onions. It is usually served with rice, naan, bread, or tapioca. The dish is most popular in Kerala, Goa, andSri Lanka, where rice and fish are staple foods. Other variations may include adding tamarind juice or coconut milk. \r\n            '),
(13, 'Cheese_Dosa', 'A dosa is a thin pancake or crepe originating from South India, made from a fermented batter predominantly consisting of lentils and rice. It is somewhat similar to a crepe in appearance, although savoury flavours are generally emphasized (sweet variants also exist). Its main ingredients are rice and black gram, ground together in a fine, smooth batter with a dash of salt, then fermented. Dosas are a common dish in South Indian cuisine, but now have become popular all over the Indian subcontinent. Dosas are served hot along with chutney by tradition and sambar in recent times. Other accompaniments include chutney powder (a fine groundnut and lentil powder). '),
(14, 'Dosa', 'A dosa is a thin pancake or crepe originating from South India, made from a fermented batter predominantly consisting of lentils and rice. It is somewhat similar to a crepe in appearance, although savoury flavours are generally emphasized (sweet variants also exist). Its main ingredients are rice and black gram, ground together in a fine, smooth batter with a dash of salt, then fermented. Dosas are a common dish in South Indian cuisine, but now have become popular all over the Indian subcontinent. Dosas are served hot along with chutney by tradition and sambar in recent times. Other accompaniments include chutney powder (a fine groundnut and lentil powder). '),
(15, 'Malai_Dosa', 'A dosa is a thin pancake or crepe originating from South India, made from a fermented batter predominantly consisting of lentils and rice. It is somewhat similar to a crepe in appearance, although savoury flavours are generally emphasized (sweet variants also exist). Its main ingredients are rice and black gram, ground together in a fine, smooth batter with a dash of salt, then fermented. Dosas are a common dish in South Indian cuisine, but now have become popular all over the Indian subcontinent. Dosas are served hot along with chutney by tradition and sambar in recent times. Other accompaniments include chutney powder (a fine groundnut and lentil powder)'),
(16, 'Spaghetti', 'Spaghetti (Italian: [spaˈɡetti]) is a long, thin, solid, cylindrical pasta.[1] It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water and sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum wheat semolina.[2] Usually the pasta is white because refined flour is used, but whole wheat flour may be added. Spaghettoni is a thicker form of spaghetti, while capellini is a very thin spaghetti.\r\n\r\nOriginally, spaghetti was notably long, but shorter lengths gained in popularity during the latter half of the 20th century and now it is most commonly available in 25–30 cm (10–12 in) lengths. A variety of pasta dishes are based on it and it is frequently served with tomato sauce or meat or vegetables. \r\n            '),
(17, 'Pasta', 'Pasta (US: /ˈpɑːstə/, UK: /ˈpæstə/; Italian pronunciation: [ˈpasta]) is a type of food typically made from an unleavened dough of wheat flour mixed with water or eggs, and formed into sheets or other shapes, then cooked by boiling or baking. Rice flour, or legumes such as beans or lentils, are sometimes used in place of wheat flour to yield a different taste and texture, or as a gluten-free alternative. Pasta is a staple food of Italian cuisine.[1][2]\r\n\r\nPastas are divided into two broad categories: dried (pasta secca) and fresh (pasta fresca). Most dried pasta is produced commercially via an extrusion process, although it can be produced at home. Fresh pasta is traditionally produced by hand, sometimes with the aid of simple machines.[3] Fresh pastas available in grocery stores are produced commercially by large-scale machines. \r\n            '),
(18, 'Pizza', '\r\n          Pizza (Italian: [ˈpittsa], Neapolitan: [ˈpittsə]) is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, pineapple, meat, etc.), which is then baked at a high temperature, traditionally in a wood-fired oven.[1] A small pizza is sometimes called a pizzetta. A person who makes pizza is known as a pizzaiolo.\r\n\r\nIn Italy, pizza served in formal settings, such as at a restaurant, is presented unsliced, and is eaten with the use of a knife and fork.[2][3] In casual settings, however, it is cut into wedges to be eaten while held in the hand.\r\n\r\nThe term pizza was first recorded in the 10th century in a Latin manuscript from the Southern Italian town of Gaeta in Lazio, on the border with Campania.[4] Modern pizza was invented in Naples, and the dish and its variants have since become popular in many countries.[  '),
(19, 'Momo', '\r\n       Momo (Nepali: म:म:,Tibetan: མོག་མོག་, Wylie: mog mog) are a type of Tibetan and Nepalese dumpling dish popular in these regions. [1] Momo is found in the cuisines of Nepal and Tibet. It is similar to baozi, jiaozi and mantou in Chinese cuisine, buuz in Mongolian cuisine, gyoza in Japanese cuisine, mandu in Korean cuisine and manti in Afghan cuisines. Momo is a type of steamed dumpling with some form of filling. Momo has become a traditional delicacy in Nepal, Tibet, as well as among Nepalese and Tibetan communities in Bhutan, as well as people of the Indian regions of Darjeeling, Ladakh, Sikkim, Assam, Uttarakhand, Himachal Pradesh and Arunachal Pradesh. In Pakistan, Gilgit-Baltistan region it is known as mamtoo.      '),
(20, 'Fried_rice', '\r\n  Fried rice is a dish of cooked rice that has been stir-fried in a wok or a frying pan and is usually mixed with other ingredients such as eggs, vegetables, seafood, or meat. It is often eaten by itself or as an accompaniment to another dish. Fried rice is a popular component of East Asian, Southeast Asian and certain South Asian cuisines, as well as a staple national dish of Indonesia. As a homemade dish, fried rice is typically made with ingredients left over from other dishes, leading to countless variations. Fried rice first developed during the Sui Dynasty in China and as such all fried rice dishes can trace their origins to Chinese fried rice.[1]\r\n\r\nMany varieties of fried rice have their own specific list of ingredients. In Greater China, common varieties include Yangzhou fried rice and Hokkien fried rice. Japanese chāhan is considered a Japanese Chinese dish, having derived from Chinese fried rice dishes. Korean bokkeum-bap in general is not of Korean Chinese origin, although there is a Korean Chinese variety of bokkeum-bap. In Southeast Asia, similarly constructed Indonesian, Malaysian, and Singaporean nasi goreng and Thai khao phat are popular dishes. In the West, most restaurants catering to vegetarians have invented their own varieties of fried rice, including egg fried rice. Fried rice is also seen on the menus of American restaurants offering cuisines with no native tradition of the dish. Additionally, the cuisine of some Latin American countries includes variations on fried rice, including Ecuadorian chaulafan, Peruvian arroz chaufa, Cuban arroz frito, and Puerto Rican arroz mamposteao.           '),
(21, 'Chiken_fry', '\r\n            Fried chicken, also known as Southern fried chicken is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried. The breading adds a crisp coating or crust to the exterior of the chicken while retaining juices in the meat. Broiler chickens are most commonly used.\r\n\r\nThe first dish known to have been deep fried was fritters, which were popular in the European Middle Ages. However, it was the Scottish who were the first Europeans to deep fry their chicken in fat (though without seasoning). Meanwhile, many West African peoples had traditions of seasoned fried chicken (though battering and cooking the chicken in palm oil). Scottish frying techniques and West African seasoning techniques were combined by enslaved Africans and African-Americans in the American South. '),
(22, 'Chocolate_mousse', 'his is a classic chocolate mousse made the proper French way, as served in fine dining restaurants. Less cream, more chocolate, a more intense chocolate flavour and a beautiful creamy mouth feel.\r\n            '),
(23, 'Pastry', 'Pastry is differentiated from bread by having a higher fat content, which contributes to a flaky or crumbly texture. A good pastry is light and airy and fatty, but firm enough to support the weight of the filling. When making a shortcrust pastry, care must be taken to blend the fat and flour thoroughly before adding any liquid. This ensures that the flour granules are adequately coated with fat and less likely to develop gluten.\r\n            '),
(24, 'Cupcake', '\r\n       A cupcake (also British English: fairy cake; Hiberno-English: bun) is a small cake designed to serve one person, which may be baked in a small thin paper or aluminum cup. As with larger cakes, frosting and other cake decorations such as fruit and candy may be applied. A standard cupcake uses the same basic ingredients as standard-sized cakes: butter, sugar, eggs, and flour. Nearly any recipe that is suitable for a layer cake can be used to bake cupcakes. The cake batter used for cupcakes may be flavored or have other ingredients stirred in, such as raisins, berries, nuts, or chocolate chips.      '),
(25, 'Paella', '\r\n            aella valenciana is the traditional paella of the Valencia region, believed to be the original recipe,[6] and consists of round grain rice,[7] bajoqueta and tavella (varieties of green beans), peas, rabbit, chicken, sometimes duck and garrofó (a variety of lima or butter bean) cooked in olive oil and chicken broth.[8][9] The dish is (sometimes) seasoned with whole rosemary branches. Traditionally, the yellow color comes from saffron, but turmeric and calendula can be used as substitutes. Artichoke hearts and stems may be used as seasonal ingredients. Most paella cooks use bomba rice, but Valencians tend to use a cultivar known as senia'),
(26, 'Tortillas', '\r\n     ortillas made from nixtamalized maize meal—masa de maíz— are the oldest variety of tortilla. They originated in Mexico, and remain popular throughout the Americas. Peoples of the Oaxaca region in Mexico first made tortillas at the end of the Villa Stage (1500 to 500 BC).[2][page needed] Towards the end of the 19th century, the first mechanical utensils for making tortillas, called tortilla presses, tortilleras, or tortilladoras, were invented and manufactured in Mexico.The Aztecs and other Nahuatl speakers called tortillas tlaxcalli ([t͡ɬaʃˈkalli]).[1] First made by the indigenous peoples of Mesoamerica before colonization, tortillas are a cornerstone of Mesoamerican cuisine. Corn tortillas in Mesoamerica are evidenced from as early as 500 BCE.        '),
(27, 'Platter_1', 'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy.\r\n            ');

-- --------------------------------------------------------

--
-- Table structure for table `dosa`
--

CREATE TABLE `dosa` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fried_rice`
--

CREATE TABLE `fried_rice` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'std/Hyderabadi_Chicken_Biryani.jpg', 'Bengali'),
(2, 'std/chiken chili.jpg', 'Chinese'),
(3, 'std/desert.jpg', 'Turkish'),
(4, 'std/sale Pepe.jpg', 'Italian');

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
(1, 'std/2.jpg', 'FishCurry'),
(2, 'std/Dosa.webp', 'Dosa'),
(3, 'std/Dosaaa22.jpg', 'Cheese_Dosa'),
(4, 'std/1280px-Dosa_at_Sri_Ganesha_Restauran,_Bangkok_(44570742744).jpg', 'Malai_Dosa'),
(5, 'std/spaghetti+with+meat+sauce11.jpg', 'Spaghetti'),
(6, 'std/pasta.jpg', 'Pasta'),
(7, 'std/Pizza.jpg', 'Pizza'),
(8, 'std/chikenFry.jpg', 'Chiken_fry'),
(9, 'std/FriedRice.jpg', 'Fried_rice'),
(10, 'std/Momo.jpg', 'Momo'),
(11, 'std/Momo.jpg', 'Momo'),
(12, 'std/chocolate desert.jpg', 'Chocolate_mousse'),
(13, 'std/pestry.jpg', 'Pastry'),
(14, 'std/cupcake.jpg', 'Cupcake'),
(15, 'std/1200px-Paella_de_marisco_01_(cropped)_4.3.jpg', 'Paella'),
(16, 'std/Tortillas.jpg', 'Tortillas'),
(17, 'std/index.jpg', 'Platter_1'),
(18, 'std/Dosaaa22.jpg', 'Dosa'),
(19, 'std/1280px-Dosa_at_Sri_Ganesha_Restauran,_Bangkok_(44570742744).jpg', 'Dosa');

-- --------------------------------------------------------

--
-- Table structure for table `indian`
--

CREATE TABLE `indian` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `indian`
--

INSERT INTO `indian` (`id`, `images`, `price`, `place`, `details`, `myfile`) VALUES
(1, 'std/Dosaaa22.jpg', 3, 'Indian', 'A dosa is a thin pancake or crepe originating from South India, made from a fermented batter predominantly consisting of lentils and rice. It is somewhat similar to a crepe in appearance, although savoury flavours are generally emphasized', 'Dosa'),
(2, 'std/Dosaaa22.jpg', 3, 'Indian', 'A dosa is a thin pancake or crepe originating from South India, made from a fermented batter predominantly consisting of lentils and rice. It is somewhat similar to a crepe in appearance, although savoury flavours are generally emphasized', 'Cheese_Dosa'),
(3, 'std/1280px-Dosa_at_Sri_Ganesha_Restauran,_Bangkok_(44570742744).jpg', 5, 'Indian', 'A dosa is a thin pancake or crepe originating from South India, made from a fermented batter predominantly consisting of lentils and rice. It is somewhat similar to a crepe in appearance, although savoury flavours are generally emphasized (sweet variants also exist). ', 'Malai_Dosa'),
(4, 'std/luchiplatter.jpg', 3, 'Indian', 'Pav bhaji is a fast food dish from India consisting of a thick vegetable curry served with a soft bread roll. Its origins are in the state of Maharashtra', 'Pav_bhaji');

-- --------------------------------------------------------

--
-- Table structure for table `italian`
--

CREATE TABLE `italian` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `italian`
--

INSERT INTO `italian` (`id`, `images`, `price`, `place`, `details`, `myfile`) VALUES
(1, 'std/pasta.jpg', 2, 'Italian', 'Pasta (US: /ˈpɑːstə/, UK: /ˈpæstə/; Italian pronunciation: [ˈpasta]) is a type of food typically made from an unleavened dough of wheat flour mixed with water or eggs, and formed into sheets or other shapes, then cooked by boiling or baking. Rice flour, or legumes such as beans or lentils, are sometimes used in place of wheat flour to yield a different taste and texture, or as a gluten-free alternative. Pasta is a staple food of Italian cuisine.', 'Pasta'),
(2, 'std/pizza2.jpg', 3, 'Italian', 'Pizza (Italian: [ˈpittsa], Neapolitan: [ˈpittsə]) is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, pineapple, meat, etc.), which is then baked at a high temperature, traditionally in a wood-fired oven.[1] A small pizza is sometimes called a pizzetta. A person who makes pizza is known as a pizzaiolo. ', 'Pizza'),
(3, 'std/spaghetti+with+meat+sauce11.jpg', 2, 'Italian', 'Spaghetti is a long, thin, solid, cylindrical pasta. It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water and sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum wheat semolina. ', 'Spaghetti');

-- --------------------------------------------------------

--
-- Table structure for table `malai_dosa`
--

CREATE TABLE `malai_dosa` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `momo`
--

CREATE TABLE `momo` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paella`
--

CREATE TABLE `paella` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pasta`
--

CREATE TABLE `pasta` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pastry`
--

CREATE TABLE `pastry` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pav_bhaji`
--

CREATE TABLE `pav_bhaji` (
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
  `fullname` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `orderDate` date NOT NULL,
  `total` int(12) NOT NULL,
  `catagory` varchar(30) NOT NULL,
  `items` varchar(30) NOT NULL,
  `pay` varchar(20) NOT NULL,
  `bkash_number` varchar(20) NOT NULL,
  `approved` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending`
--

INSERT INTO `pending` (`id`, `fullname`, `address`, `email`, `Gender`, `orderDate`, `total`, `catagory`, `items`, `pay`, `bkash_number`, `approved`) VALUES
(8, 'Shamim', '729/C Khilgaon, Dhaka, 1219\r\n                              ', 'sa@gmail.com', 'Male', '2022-01-04', 12, 'Bengali', 'FishCurry', '36.00 Dollars', '01611404246', 1),
(9, 'Shamim Sarker', '729/C, Khilgaon, Dhaka=1219\r\n                                ', 'sa@gmail.com', 'Male', '2022-01-01', 2, 'Indian', 'Cheese_Dosa', '6.00 Dollars', '01611404246', 1),
(10, 'Mahinur ', '234/A, Khilgaon\r\n                                ', 'm@gmail.com', 'Female', '2022-01-19', 5, 'Turkish', 'Chocolate_mousse', '10.00 Dollars', '01611404246', 1),
(11, 'Mahi', '234/A,Khilgaon          ', 'm@gmail.com', 'Female', '2022-01-19', 3, 'Spanish', 'Paella', '12.00 Dollars', '01611404246', 1),
(12, 'Abida Sultana', 'Puran Dhaka', 'ab@gmail.com', 'Male', '2022-01-20', 4, 'Indian', 'Pav_bhaji', '12.00 Dollars', '01681389988', 1),
(13, 'Abdullah Al Masood', 'Khilgaon, Tilpapara\r\n                                ', 'mdshamimmansoori7999@gmail.com', 'Male', '2022-01-20', 3, 'Indian', 'Dosa', '9.00 Dollars', '01715944350', 1),
(14, 'Arun Roy', 'Puran Dhaka\r\n                                ', 'mdshamimmansoori7999@gmail.com', 'Male', '2022-01-20', 4, 'Indian', 'Pav_bhaji', '12.00 Dollars', '01535707889', 1),
(15, 'Mahinur Afroza', 'Sipahibagh\r\n                                ', 'mahinurafrozamahi@gmail.com', 'Female', '2022-01-20', 4, 'Italian', 'Spaghetti', '8.00 Dollars', '01535889707', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(11, 'std/Carolinas.jpg', '3$', 'Italian', 'This is a list of Italian dishes and foods. Italian cuisine has developed through centuries of social and political changes, with roots as far back as the 4th century BC. Italian cuisine has its origins in Etruscan, ancient Greek, and ancient Roman cuisines. Significant changes occurred with the discovery of the New World and the '),
(12, 'std/luchiplatter.jpg', '2$', 'Indian', 'Indian cuisine consists of a variety of regional and traditional cuisines native to the Indian subcontinent. Given the diversity in soil, climate, culture, ethnic groups, and occupations, these cuisines vary substantially and use locally available spices, herbs, vegetables, and fruits.\r\n\r\nIndian food is also heavily influenced by religion, in particular Hinduism and Islam, cultural choices and traditions.'),
(13, 'std/burger.jpg', '4$', 'Chinese', 'Chinese cuisine is an important part of Chinese culture and includes cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide. \r\n            '),
(14, 'std/desert.jpg', '5$', 'Turkish', '\r\n        Turkish cuisine is largely the heritage of Ottoman cuisine, which can be described as a fusion and refinement of Mediterranean, Balkan, Middle Eastern, Central Asian, Eastern European, Armenian, and Georgian cuisines.    '),
(15, 'std/1200px-Paella_de_marisco_01_(cropped)_4.3.jpg', '6$', 'Spanish', '\r\n         Spanish cuisine consists of the cooking traditions and practices from Spain. Olive oil is heavily used in Spanish cuisine. It forms the base of many vegetable sauces. Herbs most commonly used include parsley, oregano, rosemary and thyme.   '),
(16, 'std/index.jpg', '5$', 'Platter_Foods', 'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy.\r\n            '),
(17, 'std/5.jpg', '3$', 'Bengali', 'Bengali cuisine is the culinary style of Bengal, a region in the eastern part of the Indian subcontinent encompassing Bangladesh and Indian states of West Bengal, Tripura and Assam\'s Barak Valley. The cuisine has been shaped by the region\'s diverse history and climate');

-- --------------------------------------------------------

--
-- Table structure for table `platter_1`
--

CREATE TABLE `platter_1` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `platter_foods`
--

CREATE TABLE `platter_foods` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `platter_foods`
--

INSERT INTO `platter_foods` (`id`, `images`, `price`, `place`, `details`, `myfile`) VALUES
(1, 'std/index.jpg', 6, 'Platter_Foods', 'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy.\r\n            ', 'Platter_1');

-- --------------------------------------------------------

--
-- Table structure for table `spaghetti`
--

CREATE TABLE `spaghetti` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spanish`
--

CREATE TABLE `spanish` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spanish`
--

INSERT INTO `spanish` (`id`, `images`, `price`, `place`, `details`, `myfile`) VALUES
(1, 'std/1200px-Paella_de_marisco_01_(cropped)_4.3.jpg', 4, 'Spanish', '\r\n          Paella valenciana is the traditional paella of the Valencia region, believed to be the original recipe,[6] and consists of round grain rice,[7] bajoqueta and tavella (varieties of green beans), peas, rabbit, chicken, sometimes duck and garrofó (a variety of lima or butter bean) cooked in olive oil and chicken broth.[8][9] The dish is (sometimes) seasoned with whole rosemary branches.  ', 'Paella'),
(2, 'std/Tortillas.jpg', 2, 'Spanish', 'A tortilla is a thin, circular unleavened flatbread originally made from maize hominy meal, and now also from wheat flour. The Aztecs and other Nahuatl speakers called tortillas tlaxcalli.\r\n            ', 'Tortillas');

-- --------------------------------------------------------

--
-- Table structure for table `tortillas`
--

CREATE TABLE `tortillas` (
  `id` int(11) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `turkish`
--

CREATE TABLE `turkish` (
  `id` int(11) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `myfile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `turkish`
--

INSERT INTO `turkish` (`id`, `images`, `price`, `place`, `details`, `myfile`) VALUES
(1, 'std/pestry.jpg', 2, 'Turkish', '\r\n         Pastry is a dough of flour, water and shortening (solid fats, including butter or lard) that may be savoury or sweetened. ... Pastry dough is rolled out thinly and used as a base for baked products. Pastry is differentiated from bread by having a higher fat content, which contributes to a flaky or crumbly texture.   ', 'Pastry'),
(2, 'std/chocolate desert.jpg', 6, 'Turkish', '\r\n            This is a classic chocolate mousse made the proper French way, as served in fine dining restaurants. Less cream, more chocolate, a more intense chocolate flavour and a beautiful creamy mouth feel.', 'Chocolate_mousse'),
(3, 'std/cupcake.jpg', 4, 'Turkish', 'A cupcake is a small cake designed to serve one person, which may be baked in a small thin paper or aluminum cup. As with larger cakes, frosting and other cake decorations such as fruit and candy may be applied.\r\n            ', 'Cupcake');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alltables`
--
ALTER TABLE `alltables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bengali`
--
ALTER TABLE `bengali`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bengali_fish_curry`
--
ALTER TABLE `bengali_fish_curry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chattogram`
--
ALTER TABLE `chattogram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheese_dosa`
--
ALTER TABLE `cheese_dosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chiken_fry`
--
ALTER TABLE `chiken_fry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinese`
--
ALTER TABLE `chinese`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chocolate_mousse`
--
ALTER TABLE `chocolate_mousse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cupcake`
--
ALTER TABLE `cupcake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `det`
--
ALTER TABLE `det`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosa`
--
ALTER TABLE `dosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fried_rice`
--
ALTER TABLE `fried_rice`
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
-- Indexes for table `indian`
--
ALTER TABLE `indian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `italian`
--
ALTER TABLE `italian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `malai_dosa`
--
ALTER TABLE `malai_dosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paella`
--
ALTER TABLE `paella`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasta`
--
ALTER TABLE `pasta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pastry`
--
ALTER TABLE `pastry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pav_bhaji`
--
ALTER TABLE `pav_bhaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending`
--
ALTER TABLE `pending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platter_1`
--
ALTER TABLE `platter_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platter_foods`
--
ALTER TABLE `platter_foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spaghetti`
--
ALTER TABLE `spaghetti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spanish`
--
ALTER TABLE `spanish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tortillas`
--
ALTER TABLE `tortillas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turkish`
--
ALTER TABLE `turkish`
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
-- AUTO_INCREMENT for table `bengali`
--
ALTER TABLE `bengali`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bengali_fish_curry`
--
ALTER TABLE `bengali_fish_curry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chattogram`
--
ALTER TABLE `chattogram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cheese_dosa`
--
ALTER TABLE `cheese_dosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chiken_fry`
--
ALTER TABLE `chiken_fry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chinese`
--
ALTER TABLE `chinese`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chocolate_mousse`
--
ALTER TABLE `chocolate_mousse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cupcake`
--
ALTER TABLE `cupcake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `det`
--
ALTER TABLE `det`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `dosa`
--
ALTER TABLE `dosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fried_rice`
--
ALTER TABLE `fried_rice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery1`
--
ALTER TABLE `gallery1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallery2`
--
ALTER TABLE `gallery2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `indian`
--
ALTER TABLE `indian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `italian`
--
ALTER TABLE `italian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `malai_dosa`
--
ALTER TABLE `malai_dosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `momo`
--
ALTER TABLE `momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paella`
--
ALTER TABLE `paella`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasta`
--
ALTER TABLE `pasta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pastry`
--
ALTER TABLE `pastry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pav_bhaji`
--
ALTER TABLE `pav_bhaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending`
--
ALTER TABLE `pending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `platter_1`
--
ALTER TABLE `platter_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `platter_foods`
--
ALTER TABLE `platter_foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spaghetti`
--
ALTER TABLE `spaghetti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spanish`
--
ALTER TABLE `spanish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tortillas`
--
ALTER TABLE `tortillas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `turkish`
--
ALTER TABLE `turkish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
