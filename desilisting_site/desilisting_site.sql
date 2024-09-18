-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 06:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desilisting_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(2, ''),
(13, '# Bellevue Temples'),
(16, '# Bothell Temples'),
(17, '# Everett Temple'),
(14, '# Kent Temples'),
(10, '# Redmond Temples'),
(12, '# Sammamish Temples'),
(15, '# Seattle Temples'),
(25, 'Bellevue Restaurants'),
(6, 'Caters'),
(19, 'Clothing'),
(5, 'Dance Schools'),
(22, 'Devotional'),
(8, 'Drama'),
(4, 'Drawing Schools'),
(24, 'Groceries'),
(1, 'Indian Communities'),
(26, 'Issaquah Restaurants'),
(18, 'Jewelleries'),
(29, 'Kent Renton Restaurants'),
(3, 'Language Schools'),
(9, 'Literature'),
(7, 'Music'),
(20, 'Non profit'),
(23, 'Other'),
(27, 'Redmond Restaurants'),
(30, 'Restaurants'),
(28, 'Seattle Restaurants'),
(11, 'Temples'),
(21, 'Yoga');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `zomato` varchar(255) DEFAULT NULL,
  `x` varchar(255) DEFAULT NULL,
  `bing` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `category`, `locations`, `title`, `web`, `facebook`, `instagram`, `youtube`, `zomato`, `x`, `bing`) VALUES
(1, 1, 'Indian Communities', 'https://www.indiainseattle.gov.in', 'Consulate General Of India, Seattle', 'https://www.facebook.com/profile.php?id=61553606104542', 'https://x.com/IndiainSeattle', '', '', '', '', ''),
(2, 1, 'Indian Communities', 'http://www.iaww.org/', 'Indian: India Association of Western Washington', 'https://www.facebook.com/India-Association-of-Western-Washington-IAWW-101407689921467', '', '', '', '', '', ''),
(3, 1, 'Indian Communities', 'http://www.wataweb.org', 'Telugu: Washington Telangana Association (WATA)', 'https://www.facebook.com/WashingtonTelanganaAssociation', '', '', '', '', '', ''),
(4, 1, 'Indian Communities', 'http://www.watsweb.org', 'Telugu: Washington Telgu Samithi (WATS)', 'https://www.facebook.com/WATeluguSamithi/', '', '', '', '', '', ''),
(5, 1, 'Indian Communities', 'http://seattletamilsangam.org', 'Tamil: Seattle Tamil Sangam', 'https://www.facebook.com/seattletamilsangampage', '', '', '', '', '', ''),
(6, 1, 'Indian Communities', 'http://sahyadrikannadasangha.org/', 'Kannada: Sahyadri Sangha', 'https://www.facebook.com/sahyadri.sangha', '', '', '', '', '', ''),
(7, 1, 'Indian Communities', 'http://kaow.org/', 'Kerala: Kerala Association of Washington (KAW)', 'https://www.facebook.com/kaw.seattle', '', '', '', '', '', ''),
(8, 1, 'Indian Communities', 'http://www.uttoron.org/', 'Bengali: Uttoron - Bengali Community of Greater Seattle', 'https://www.facebook.com/Uttoron-Bengali-Community-of-Greater-Seattle-228825810515835', '', '', '', '', '', ''),
(9, 1, 'Indian Communities', 'http://www.seattlegujaratis.org/', 'Gujarati: Seattle Gujarati Cultural Society (ગુજરાતી)', 'https://www.facebook.com/Seattle-Gujarati-Cultural-Society-299484436841422', '', '', '', '', '', ''),
(10, 1, 'Indian Communities', 'https://www.facebook.com/OriyasofGreaterSeattle', 'Oriyas: Oriyas of Greater Seattle (ଓଡିଆ)', '', '', '', '', '', '', ''),
(11, 1, 'Indian Communities', 'https://cgnacha.com', 'North America Chhattisgarh Association (NACHA)', 'https://www.facebook.com/CGNACHA', '', '', '', '', '', ''),
(12, 1, 'Indian Communities', 'https://www.facebook.com/groups/9816235049', 'Facebook Group: Indians in Seattle', '', '', '', '', '', '', ''),
(13, 2, '', '', '', '', '', '', '', '', '', ''),
(14, 3, 'Language Schools', 'http://web.gurukul-wa.org', 'Gujarati ગુજરાતી: Gurukul', '', '', '', '', '', '', ''),
(15, 3, 'Language Schools', 'http://web.gurukul-wa.org', 'Hindi हिन्दी: Gurukul', '', '', '', '', '', '', ''),
(16, 3, 'Language Schools', 'http://web.gurukul-wa.org', 'Kannada ಕನ್ನಡ: Gurukul', '', '', '', '', '', '', ''),
(17, 3, 'Language Schools', 'https://kbharati.org', 'Kannada ಕನ್ನಡ: Kannada Bharati', '', '', '', '', '', '', ''),
(18, 3, 'Language Schools', 'http://web.gurukul-wa.org', 'Marathi मराठी: Gurukul', '', '', '', '', '', '', ''),
(19, 3, 'Language Schools', 'http://www.redmondtamilschool.org', 'Tamil தமிழ்: Redmond Tamil School, Bellevue', 'https://www.facebook.com/RedmondTamilSchool', '', '', '', '', '', ''),
(20, 3, 'Language Schools', 'http://www.seattletamilacademy.org', 'Tamil தமிழ்: Seattle Tamil Academy, Bothell', 'https://www.facebook.com/profile.php?id=100004352474710', '', '', '', '', '', ''),
(21, 3, 'Language Schools', 'https://www.btaredmond.org', 'Tamil தமிழ்: Bharathi Tamil School, Redmond', 'https://www.facebook.com/bharathitamilacademy', '', '', '', '', '', ''),
(22, 3, 'Language Schools', 'https://valluvantamilkoodam.org', 'Tamil தமிழ்: Valluvan Tamil Koodam, Maple Valley', 'https://www.facebook.com/groups/916320342783352', '', '', '', '', '', ''),
(23, 3, 'Language Schools', 'http://manabadi.siliconandhra.org', 'Telugu తెలుగు: Manabadi', '', '', '', '', '', '', ''),
(24, 3, 'Language Schools', 'https://manasamskriti.org', 'Telugu తెలుగు: Manasamskriti', 'https://www.facebook.com/Mana-Samskriti-598682426931141', '', '', '', '', '', ''),
(25, 3, 'Language Schools', 'https://www.telugubharati.org', 'Telugu తెలుగు: Telugu Bharathi', 'https://www.facebook.com/telugubharati', '', '', '', '', '', ''),
(26, 2, '', '', '', '', '', '', '', '', '', ''),
(27, 4, 'Drawing Schools', 'https://www.facebook.com/groups/deeptidesignsschool', 'Deepti Designs Art School', '', '', '', '', '', '', ''),
(28, 2, '', '', '', '', '', '', '', '', '', ''),
(29, 5, 'Dance Schools', ' https://www.alapadma.net', 'Bharatanatyam and Mohiniyattam: Alapadma', 'https://www.facebook.com/AlapadmaDanceSchool', '', '', '', '', '', ''),
(30, 5, 'Dance Schools', 'https://www.facebook.com/kalaalaya', 'Bharatanatyam: KalaAlaya School of Dance', '', '', '', '', '', '', ''),
(31, 5, 'Dance Schools', 'https://www.bhargavibharatanatyalaya.com', 'Bharatanatyam: Bhargavi Bharata Natyalaya', 'https://www.facebook.com/bhargavibharatanatyalaya', 'https://www.instagram.com/bhargavibharatanatyalaya', '', '', '', '', ''),
(32, 5, 'Dance Schools', 'https://manaswini.com', 'Bharatanatyam: Manaswini', 'https://www.facebook.com/ManaswiniSridhar', '', '', '', '', '', ''),
(33, 5, 'Dance Schools', 'https://nrityalayadance.net/', 'Bharatanatyam: Nrityalaya dance', 'https://www.facebook.com/NrityalayaDanceSeattle', '', '', '', '', '', ''),
(34, 5, 'Dance Schools', 'https://www.antaradatta.com', 'Kathak: Anga Kala Kathak Academy', 'https://www.facebook.com/Angakalakathakacademy', '', '', '', '', '', ''),
(35, 5, 'Dance Schools', 'https://www.kkdssammamish.com', 'Kuchipudi: Kalamandapam Kuchipudi school of dance', 'https://www.facebook.com/sammamishkuchipudi', '', '', '', '', '', ''),
(36, 5, 'Dance Schools', 'https://houseofkala.org', 'House of Kala', 'https://www.facebook.com/HouseOfKalaWA', '', '', '', '', '', ''),
(37, 5, 'Dance Schools', 'https://www.facebook.com/cipa.home', 'Chamber of Indian Performing Arts - CIPA', '', '', '', '', '', '', ''),
(38, 5, 'Dance Schools', 'https://www.facebook.com/agnidanceacademy4u', 'Agni Dance Academy,Bothell', 'https://www.instagram.com/agnidanceacademy', '', '', '', '', '', ''),
(39, 5, 'Dance Schools', 'https://www.facebook.com/KetakiNaadanam', 'Naadanam - Academy of performing arts, Redmond', 'https://naadanamdanceacademy.com', '', '', '', '', '', ''),
(40, 5, 'Dance Schools', ' https://www.facebook.com/sriabhihitanrithyalaya', 'Sri Abhihita Nrithyalaya, Bellevue', '', '', '', '', '', '', ''),
(41, 2, '', '', '', '', '', '', '', '', '', ''),
(42, 6, 'Caters', 'https://www.facebook.com/profile.php?id=100088154949196', 'Kitchen Smart', '', '', '', '', '', '', ''),
(43, 6, 'Caters', 'https://www.facebook.com/bothell.foods', 'Bothell Foods', '', '', '', '', '', '', ''),
(44, 6, 'Caters', 'https://www.revive-eats.com', 'Revive Eats', '', '', '', '', '', '', ''),
(45, 6, 'Caters', 'https://www.facebook.com/SoulKitchen21/', 'Soul Kitchen,Redmond', '', '', '', '', '', '', ''),
(46, 2, '', '', '', '', '', '', '', '', '', ''),
(47, 7, 'Music', 'https://poetryondrums.com', 'Tabla: Poetry on Drums', 'https://www.facebook.com/poetryondrums', '', '', '', '', '', ''),
(48, 7, 'Music', 'https://seattletabla.school', 'Tabla: Seattle Tabla School', '', '', '', '', '', '', ''),
(49, 7, 'Music', 'https://www.seattletablainstitute.org', 'Tabla: Seattle Tabla Institude', 'https://www.facebook.com/TablaSeattle', '', '', '', '', '', ''),
(50, 7, 'Music', 'https://www.facebook.com/geetanjali.seattle', 'Tamil Band: Geethanjali', '', '', '', '', '', '', ''),
(51, 7, 'Music', 'https://www.facebook.com/rhythmsstudioinc', 'Tamil Band: Rhythms Studio', '', '', '', '', '', '', ''),
(52, 7, 'Music', 'https://www.facebook.com/BeatsOfRedmond', 'Beats of Washington', 'https://www.instagram.com/beatsofwa', '', '', '', '', '', ''),
(53, 7, 'Music', 'https://www.facebook.com/Ponmaalai', 'Tamil Band: Ponmaalai Pozhudhu', '', '', '', '', '', '', ''),
(54, 7, 'Music', 'https://www.facebook.com/DishaBand', 'Tamil Band: Disha Band', '', '', '', '', '', '', ''),
(55, 7, 'Music', 'http://starkalaikuzhuu.wixsite.com/star', 'Tamil Folk Music: Seattle Tamil Arts of Rhythm', 'https://www.facebook.com/STARKalaiKuzhu', '', '', '', '', '', ''),
(56, 7, 'Music', 'ninaadseattle.org', 'Carnatic Music: Ninaad', 'https://www.facebook.com/people/Ninaad/61551587324619/', '', '', '', '', '', ''),
(57, 7, 'Music', 'https://www.facebook.com/pranamskk', 'Carnatic Music:Samskriti Kala Kendra', '', '', '', '', '', '', ''),
(58, 7, 'Music', 'https://www.thejoyofmusic.info', 'Carnatic Music:The Joy of Music', '', '', '', '', '', '', ''),
(59, 7, 'Music', 'https://abhinayfinearts.org', 'Carnatic Music:Abhinay finearts', 'https://www.facebook.com/profile.php?id=100064589388154', '', '', '', '', '', ''),
(60, 2, '', '', '', '', '', '', '', '', '', ''),
(61, 8, 'Drama', 'http://induscreations.org/', 'Tamil Drama: Indus Creations', 'https://www.facebook.com/induscreations', '', '', '', '', '', ''),
(62, 8, 'Drama', 'https://www.facebook.com/SigaramFineArts', 'Tamil Drama: Sigaram Fine Arts', '', '', '', '', '', '', ''),
(63, 8, 'Drama', 'https://www.facebook.com/malavikaproductions', 'Malavika Productions', '', '', '', '', '', '', ''),
(64, 8, 'Drama', ' suryatejaarts.org', 'Surya Teja Arts', 'http://www.facebook.com/suryatejaarts', 'www.youtube.com/@suryatejaartsseattle', 'www.instagram.com/suryatejaartsseattle', '', '', '', ''),
(65, 2, '', '', '', '', '', '', '', '', '', ''),
(66, 9, 'Literature', 'http://www.toastmasters.org/Find-a-Club/03066357-senthamil-toastmasters', 'Tamil Speech: Senthamil Toastmasters', 'https://www.facebook.com/SenthamilToastmasters/', '', '', '', '', '', ''),
(67, 9, 'Literature', 'https://kcls.bibliocommons.com/v2/search?query=om&searchType=keyword&f_PRIMARY_LANGUAGE=tam%7Chin%7Ctel%7Cmar%7Cguj', 'Books in Indian languages', '', '', '', '', '', '', ''),
(68, 9, 'Literature', 'https://gurukpm.home.blog/2023/04/02/சியாட்டில்-இலக்கிய-மாலை/', 'Tamil Literature club: இலக்கிய மாலை', 'https://www.youtube.com/@user-yj7im4ty4u', '', '', '', '', '', ''),
(69, 2, '', '', '', '', '', '', '', '', '', ''),
(70, 10, '# Redmond Temples', '', '', '', '', '', '', '', '', ''),
(71, 11, 'Temples', 'http://www.vedatemple.org', 'Sri Venkateswara Temple (VEDA), Redmond', 'https://www.facebook.com/vedatemple', '', '', '', '', '', ''),
(72, 11, 'Temples', 'https://www.lvtemple.org', 'Sri Lakshmi Venkateswara Temple (SVETA), Redmond', 'https://www.facebook.com/Svetalvtemple', '', '', '', '', '', ''),
(73, 11, 'Temples', 'http://www.baps.org/seattle', 'BAPS Swaminarayan Hindu Mandir, Redmond', 'https://www.facebook.com/BAPSSeattle', '', '', '', '', '', ''),
(74, 11, 'Temples', 'http://www.saibabaseattle.com', 'Saibaba, Redmond', 'https://www.facebook.com/SaibabaSeattle', '', '', '', '', '', ''),
(75, 11, 'Temples', 'https://www.facebook.com/svkseattle', 'Sri Venkata Krishna Vrundavana Temple (Udupi Mutt), Redmond', '', '', '', '', '', '', ''),
(76, 2, '', '', '', '', '', '', '', '', '', ''),
(77, 12, '# Sammamish Temples', '', '', '', '', '', '', '', '', ''),
(78, 11, 'Temples', 'https://www.vedicculturalcenter.org', 'Iskcon Vedic Cultural Center, Sammamish', 'https://www.facebook.com/VedicCulturalCenter', '', '', '', '', '', ''),
(79, 2, '', '', '', '', '', '', '', '', '', ''),
(80, 13, '# Bellevue Temples', '', '', '', '', '', '', '', '', ''),
(81, 11, 'Temples', 'http://www.jayahanumantemple.org', 'Jaya Hanuman Temple and Culture Center, Bellevue', 'https://www.facebook.com/jhtcc', '', '', '', '', '', ''),
(82, 11, 'Temples', 'http://sribalajitemple.com', 'Sri Balaji Temple and Cultural Center (Iskcon), Bellevue', '', '', '', '', '', '', ''),
(83, 11, 'Temples', 'http://www.saiparivarfoundation.org', 'Shirdi Sai Baba Temple, Bellevue', 'https://www.facebook.com/ShirdiSaiDhamBellevue', '', '', '', '', '', ''),
(84, 11, 'Temples', 'http://www.bellevuehindutemple.org', 'Bellevue Hindu Temple, Bellevue', 'https://www.facebook.com/bellevue.temple', '', '', '', '', '', ''),
(85, 2, '', '', '', '', '', '', '', '', '', ''),
(86, 14, '# Kent Temples', '', '', '', '', '', '', '', '', ''),
(87, 11, 'Temples', 'http://www.sdmandirwa.org', 'Sanatan Dharm Mandir, Kent', 'https://www.facebook.com/pages/Sanatan-Dharma-Temple-Cultural-Center/124945727646', '', '', '', '', '', ''),
(88, 11, 'Temples', 'http://www.sdtccwa.org', 'Kent Hindu Temple, Kent', 'https://www.facebook.com/hindutemplekentwa', '', '', '', '', '', ''),
(89, 11, 'Temples', 'https://kailasaseattle.org', 'Kailasa, Nithyanandeshwara, Kent', 'https://www.facebook.com/nhtsea', '', '', '', '', '', ''),
(90, 2, '', '', '', '', '', '', '', '', '', ''),
(91, 15, '# Seattle Temples', '', '', '', '', '', '', '', '', ''),
(92, 11, 'Temples', 'http://www.hanumannagri.org', 'Hanuman Nagri, Seattle', 'https://www.facebook.com/hanuman.nagri', '', '', '', '', '', ''),
(93, 2, '', '', '', '', '', '', '', '', '', ''),
(94, 16, '# Bothell Temples', '', '', '', '', '', '', '', '', ''),
(95, 11, 'Temples', 'https://www.htccwa.org', 'Hindu Temple and Cultural Center, Bothell', 'https://www.facebook.com/htccwa', '', '', '', '', '', ''),
(96, 2, '', '', '', '', '', '', '', '', '', ''),
(97, 17, '# Everett Temple', '', '', '', '', '', '', '', '', ''),
(98, 11, 'Temples', 'https://wajayahanumantemple.org', 'Jaya Hanuman Temple, Everett', 'https://www.facebook.com/profile.php?id=61554238700413', '', '', '', '', '', ''),
(99, 2, '', '', '', '', '', '', '', '', '', ''),
(100, 18, 'Jewelleries', 'https://www.facebook.com/TajJewelers', 'TAJ Jewelers', '', '', '', '', '', '', ''),
(101, 18, 'Jewelleries', 'https://www.facebook.com/touchedbydesigns', 'Touched by designs', '', '', '', '', '', '', ''),
(102, 18, 'Jewelleries', 'https://www.bobelljewels.com/', 'Bobell Jewels', 'https://www.facebook.com/bobelljewels', '', '', '', '', '', ''),
(103, 18, 'Jewelleries', 'https://www.facebook.com/TheSimpliful', 'The Simpliful', '', '', '', '', '', '', ''),
(104, 2, '', '', '', '', '', '', '', '', '', ''),
(105, 19, 'Clothing', 'https://www.etsy.com/', 'Ishq by Isha', 'https://www.facebook.com/profile.php?id=61556198890427', '', '', '', '', '', ''),
(106, 19, 'Clothing', 'https://www.facebook.com/profile.php?id=100076253001134', 'Indowestern Shop', '', '', '', '', '', '', ''),
(107, 19, 'Clothing', 'https://www.facebook.com/trivarnaa', 'Trivarna', '', '', '', '', '', '', ''),
(108, 19, 'Clothing', 'https://www.facebook.com/sahanafashion', 'Sahana fashion', '', '', '', '', '', '', ''),
(109, 19, 'Clothing', 'https://www.facebook.com/ContactNamasteIndia', 'Namaste India', '', '', '', '', '', '', ''),
(110, 19, 'Clothing', 'https://rysacreations.com/', 'Rysa Creations', ' ', '', '', '', '', '', ''),
(111, 19, 'Clothing', 'https://sakkhistyle.com/', 'Sakkhi Style', 'https://www.facebook.com/sakkhistyle', '', '', '', '', '', ''),
(112, 2, '', '', '', '', '', '', '', '', '', ''),
(113, 20, 'Non profit', 'http://seattle.ashanet.org', 'Asha', 'https://www.facebook.com/ashaseattle', '', '', '', '', '', ''),
(114, 20, 'Non profit', 'https://www.facebook.com/groups/hope3org', 'Hope3', '', '', '', '', '', '', ''),
(115, 20, 'Non profit', 'https://www.facebook.com/agaramfoundation', 'Agaram', '', '', '', '', '', '', ''),
(116, 20, 'Non profit', 'https://www.facebook.com/CRYSeattle', 'CRY, Seattle', '', '', '', '', '', '', ''),
(117, 20, 'Non profit', 'https://aidindia.org', 'AID India: Association for India', '', '', '', '', '', '', ''),
(118, 20, 'Non profit', 'https://utsavusa.org', 'Utsav', 'https://www.facebook.com/UtsavUSA', 'https://www.instagram.com/utsavusa', '', '', '', '', ''),
(119, 2, '', '', '', '', '', '', '', '', '', ''),
(120, 21, 'Yoga', 'https://www.facebook.com/groups/seattleskysociety/', 'Vethathiri Maharishi', '', '', '', '', '', '', ''),
(121, 21, 'Yoga', 'https://www.meetup.com/inner-engineering-seattle-isha-yoga-meditation-classes/', 'Isha Yoga', '', '', '', '', '', '', ''),
(122, 21, 'Yoga', 'https://archive.arunachala.org/satsangs/seattle-wa/', 'Ramana Maharish Sathsangh', '', '', '', '', '', '', ''),
(123, 21, 'Yoga', 'https://www.chinmayaseattle.org/mygurumyguide/', 'Chinmaya Mission', '', '', '', '', '', '', ''),
(124, 21, 'Yoga', 'https://www.youtube.com/@AnandaWorldwide', 'Baba Yoganand', '', '', '', '', '', '', ''),
(125, 21, 'Yoga', 'http://www.ahamyoga.com', 'Aham Yoga', 'https://www.facebook.com/AhamYoga', '', '', '', '', '', ''),
(126, 21, 'Yoga', 'http://www.artofliving.org/us-en/seattle', 'Art of Living', '', '', '', '', '', '', ''),
(127, 2, '', '', '', '', '', '', '', '', '', ''),
(128, 22, 'Devotional', 'http://nanaksarseattle.com', 'GurSikh Temple (Gurdwara Nanaksar), Kent', ' ', '', '', '', '', '', ''),
(129, 22, 'Devotional', 'http://www.sikhcentreofseattle.org/', 'Gurudwara Sikh Centre of Seattle, Bothell', 'https://www.facebook.com/sikhcentreofseattle', '', '', '', '', '', ''),
(130, 22, 'Devotional', 'http://www.singhsabhaseattle.com/', 'Gurudwara Singh Sabha of Washington, Renton', ' ', '', '', '', '', '', ''),
(131, 22, 'Devotional', 'http://www.vedanta-seattle.org/', 'Vedanta Society of Western Washington, Seattle', 'https://www.facebook.com/pages/The-Vedanta-Society-of-Western-Washington-Seattle/517513418307842', '', '', '', '', '', ''),
(132, 22, 'Devotional', 'https://www.facebook.com/GKSeattle', 'Gopa Kuteeram Seattle', '', '', '', '', '', '', ''),
(133, 22, 'Devotional', 'https://www.facebook.com/prajnaseattle', 'Jeeyar Educational Trust (JET) Prajna in Redmond, Bellevue, Bothell, Sammamish', 'https://www.prajna4me.org/locate', '', '', '', '', '', ''),
(134, 22, 'Devotional', 'https://www.facebook.com/hsswashington', 'Hindu Swayamsevak Sangh', '', '', '', '', '', '', ''),
(135, 22, 'Devotional', 'https://www.facebook.com/HssSammamishBalagokulam', 'HSS Balagokulam, Sammamish', '', '', '', '', '', '', ''),
(136, 22, 'Devotional', 'http://www.redmondmosque.org/', 'Mosque: Redmond Mosque', ' ', '', '', '', '', '', ''),
(137, 22, 'Devotional', 'http://www.sammamishmosque.com/', 'Mosque: Sammamish Mosque', ' ', '', '', '', '', '', ''),
(138, 22, 'Devotional', 'https://www.mapsredmond.org/', 'Muslim: Muslim Association of Puget Sound', ' ', '', '', '', '', '', ''),
(139, 2, '', '', '', '', '', '', '', '', '', ''),
(140, 23, 'Other', 'https://layaspottery.com/', 'Handicraft and Decors: Layas Pottery', 'https://www.facebook.com/LayasPottery', '', '', '', '', '', ''),
(141, 23, 'Other', 'https://www.facebook.com/profile.php?id=100087462900600', 'Handicraft and Decors: The Easter-n-roots', 'https://www.instagram.com/theeasternroots', '', '', '', '', '', ''),
(142, 23, 'Other', 'https://www.facebook.com/profile.php?id=100064293811640', 'Sri Arts', '', '', '', '', '', '', ''),
(143, 23, 'Other', 'https://vedaforthepeople.com/', 'Ayurvedic wellness and treatment', 'https://www.instagram.com/vedaforthepeople', '', '', '', '', '', ''),
(144, 23, 'Other', 'https://foodforthesoul.net/', 'Ayurvedic Food product- Food for the soul', 'https://www.facebook.com/foodforthesoul24', 'https://www.instagram.com/ayurvedicapothecaryffs/', 'https://www.youtube.com/@FoodForTheSoul', '', '', '', ''),
(145, 23, 'Other', 'https://www.sandhyadeepak.com/', 'Kolam based products', 'https://www.facebook.com/sandhyadeepakcreates/', 'https://www.instagram.com/sandhyadeepakcreates/', 'https://www.youtube.com/channel/UCJki1wNHxNYYNYkUEbGgsZQ', '', '', '', ''),
(146, 23, 'Other', 'www.tentkotta.com', 'Tentkotta, South Indian Movie streaming service', '', '', '', '', '', '', ''),
(147, 23, 'Other', 'https://www.bhumidesigns.com/', 'Bhumi Garden Designs', 'https://www.facebook.com/BhumiDesigns', 'https://www.instagram.com/bhumidesigns/', 'https://www.youtube.com/channel/UCT9Nh60zI3LuUzabG-uVTCg/featured', '', '', '', ''),
(148, 23, 'Other', 'https://nafcclinics.org/find-clinic', 'In case of no insurance (National Association of Free and Charitable Clinics)', 'https://www.facebook.com/NAFCClinics', '', '', '', '', '', ''),
(149, 23, 'Other', 'https://teamaid.org', 'Coping With Critical Situations', 'https://www.facebook.com/teamaidorg', '', '', '', '', '', ''),
(150, 23, 'Other', 'https://www.facebook.com/profile.php?id=61555257850576', 'One Stop Rental', 'https://www.instagram.com/onestoppartydecor', '', '', '', '', '', ''),
(151, 23, 'Other', 'https://www.facebook.com/Robosparkofficial', 'Robatics for Kids: Robo Spark', '', '', '', '', '', '', ''),
(152, 2, '', '', '', '', '', '', '', '', '', ''),
(153, 24, 'Groceries', 'https://www.facebook.com/annapurnaindiangroceries', 'Annapurna Indian Groceries, Krikland', 'https://www.bing.com/search?q=Annapurna+Indian+Groceries+Krikland', '', '', '', '', '', ''),
(154, 24, 'Groceries', 'http://apnabazarnw.com', 'Apna Bazar, Bellevue', 'https://www.facebook.com/apnabazarstore/', 'https://www.bing.com/search?q=Apna+Bazar+Bellevue', '', '', '', '', ''),
(155, 24, 'Groceries', 'http://apnabazarnw.com', 'Apna Bazar, Bothell', 'https://www.facebook.com/apnabazarstore/', 'https://www.bing.com/search?q=Apna+Bazar+Bothell', '', '', '', '', ''),
(156, 24, 'Groceries', 'http://apnabazarnw.com', 'Apna Bazar, Sammamish', 'https://www.facebook.com/apnabazarstore/', 'https://www.bing.com/search?q=Apna+Bazar+Sammamish', '', '', '', '', ''),
(157, 24, 'Groceries', 'https://www.facebook.com/Big-Bazaar-Bellevue-452243438178754', 'Big Bazaar, Bellevue', 'https://www.bing.com/search?q=Big+Bazaar+Bellevue', '', '', '', '', '', ''),
(158, 24, 'Groceries', 'https://www.facebook.com/India-Supermarket-229705497200238/', 'India Supermarket, Bellevue', 'https://www.bing.com/search?q=India+Supermarket+Bellevue', '', '', '', '', '', ''),
(159, 24, 'Groceries', 'http://indiasweetsandspices.us/', 'Indian Sweets & Spices, Seattle', 'https://www.bing.com/search?q=Indian+Sweets+and+Spices+Seattle', '', '', '', '', '', ''),
(160, 24, 'Groceries', 'http://mayuriseattle.com', 'Mayuri Foods & Video, Bellevue', 'https://www.facebook.com/mayurifoodsandvideo', 'https://www.bing.com/search?q=Mayuri+Foods+and+Video+Bellevue', '', '', '', '', ''),
(161, 24, 'Groceries', 'http://mayuriseattle.com', 'Mayuri Foods and Video, Bothell', 'https://www.facebook.com/mayurifoodsandvideo', 'https://www.bing.com/search?q=Mayuri+Foods+and+Video+Bothell', '', '', '', '', ''),
(162, 24, 'Groceries', 'https://www.shoperies.com', 'Shoperies, Online', 'https://www.facebook.com/shoperies', 'https://www.bing.com/search?q=Shoperies+Online', '', '', '', '', ''),
(163, 24, 'Groceries', 'https://www.facebook.com/pages/Swagath-Food-Groceries/434662593223663', 'Swagath Indian Grocery and Restaurant, Bellevue', 'https://www.bing.com/search?q=Swagath+Indian+Grocery+and+Restaurant+Bellevue', '', '', '', '', '', ''),
(164, 2, '', '', '', '', '', '', '', '', '', ''),
(165, 25, 'Bellevue Restaurants', 'http://anjapparseattle.com', 'Anjappar Chettinad Indian Restaurant', 'https://www.facebook.com/anjapparseattle', 'https://www.zomato.com/bellevue-wa/anjappar-chettinad-bellevue', 'https://www.bing.com/search?q=Anjappar+Chettinad+Indian+Restaurant+Bellevue', '', '', '', ''),
(166, 25, 'Bellevue Restaurants', 'http://bawarchibellevue.com/', 'Bawarchi Indian Restaurant', 'https://www.facebook.com/BawarchiBellevue', 'https://www.zomato.com/bellevue-wa/bawarchi-bellevue', 'https://www.bing.com/search?q=Bawarchi+Indian+Restaurant+Bellevue', '', '', '', ''),
(167, 25, 'Bellevue Restaurants', 'https://www.zomato.com/bellevue-wa/bombay-house-bellevue', 'Bombay House', 'https://www.bing.com/search?q=Bombay+House+Bellevue', '', '', '', '', '', ''),
(168, 25, 'Bellevue Restaurants', 'http://canampizza.com', 'Canam Pizza', 'https://www.facebook.com/pages/Can-Am-Pizza/115405271814735', 'https://www.zomato.com/bellevue-wa/can-am-pizza-bellevue', 'https://www.bing.com/search?q=Canam+Pizza+Bellevue', '', '', '', ''),
(169, 25, 'Bellevue Restaurants', 'http://bellevuechaathouse.com', 'Chaat House', 'https://www.facebook.com/bellevuechaathouse', 'https://www.zomato.com/bellevue-wa/chaat-house-bellevue', 'https://www.bing.com/search?q=Chaat+House+Bellevue', '', '', '', ''),
(170, 25, 'Bellevue Restaurants', 'http://www.chaatnroll.com/', 'Chaat N Roll', 'https://www.facebook.com/Chaat-N-Roll-173500936134343/', 'https://www.zomato.com/bellevue-wa/chaat-n-roll-bellevue', 'https://www.bing.com/search?q=Chaat+N+Roll+Bellevue', '', '', '', ''),
(171, 25, 'Bellevue Restaurants', 'http://www.chutneys.com/', 'Chutneys', 'https://www.facebook.com/chutneysdining', 'https://www.zomato.com/bellevue-wa/chutneys-bellevue', 'https://www.bing.com/search?q=Chutneys+Bellevue', '', '', '', ''),
(172, 25, 'Bellevue Restaurants', 'http://currypointonline.com/', 'Curry Point', 'https://www.facebook.com/Big-Bazaar-Bellevue-452243438178754/', 'https://www.zomato.com/bellevue-wa/curry-point-bellevue', 'https://www.bing.com/search?q=Curry+Point+Bellevue', '', '', '', ''),
(173, 25, 'Bellevue Restaurants', 'http://indiagatebellevue.com/', 'India Gate Restaurant', 'https://www.facebook.com/IndiaGateBellevue', 'https://www.zomato.com/bellevue-wa/india-gate-restaurant-bellevue', 'https://www.bing.com/search?q=India+Gate+Restaurant+Bellevue', '', '', '', ''),
(174, 25, 'Bellevue Restaurants', 'http://www.kababpalacerestaurant.com/', 'Kabab Palace', 'https://www.bing.com/search?q=Kabab+Palace+Bellevue', '', '', '', '', '', ''),
(175, 25, 'Bellevue Restaurants', 'https://www.facebook.com/Mayuri-Bakery-185335964871877/?fref=ts', 'Mayuri Bakery', 'https://www.bing.com/search?q=Mayuri+Bakery+Bellevue', '', '', '', '', '', ''),
(176, 25, 'Bellevue Restaurants', 'http://mayuriseattle.com/cuisine/', 'Mayuri Indian Cuisine', 'https://www.facebook.com/mayuricuisine', 'https://www.zomato.com/redmond-wa/mayuri-indian-cuisine-redmond', 'https://www.bing.com/search?q=Mayuri+Indian+Cuisine+Bellevue', '', '', '', ''),
(177, 25, 'Bellevue Restaurants', 'http://www.moghulpalace.org', 'Moghul Palace India Cuisine', 'https://www.facebook.com/pages/Moghul-Palace-Inc/178918372163165', 'https://www.zomato.com/bellevue-wa/moghul-palace-1-bellevue', 'https://www.bing.com/search?q=Moghul+Palace+India+Cuisine+Bellevue', '', '', '', ''),
(178, 25, 'Bellevue Restaurants', 'https://farzicafeusa.com', 'Farzi café', '', '', '', '', '', '', ''),
(179, 25, 'Bellevue Restaurants', 'http://www.newdelhipalace.net/', 'New Delhi Palace', 'https://www.facebook.com/New-Delhi-Palace-226533990799699/', 'https://www.zomato.com/bellevue-wa/new-delhi-palace-bellevue', 'https://www.bing.com/search?q=New+Delhi+Palace+Bellevue', '', '', '', ''),
(180, 25, 'Bellevue Restaurants', 'http://www.ohindiaeatstreet.com/', 'Oh India Eat Street', 'https://www.bing.com/search?q=Oh+India+Eat+Street+Bellevue', '', '', '', '', '', ''),
(181, 25, 'Bellevue Restaurants', 'http://www.ohindiarestaurant.com', 'Oh! India Restaurant', 'https://www.facebook.com/ohindia', 'https://www.zomato.com/bellevue-wa/oh-india-bellevue', 'https://www.bing.com/search?q=Oh!+India+Restaurant+Bellevue', '', '', '', ''),
(182, 25, 'Bellevue Restaurants', 'http://www.ruchiindianrestaurant.com/home.php', 'Ruchi Indian Restaurant', 'https://www.facebook.com/Ruchi-Indian-Restaurant-381623278571205/?fref=ts', 'https://www.zomato.com/bellevue-wa/ruchi-indian-restaurant-bellevue', 'https://www.bing.com/search?q=Ruchi+Indian+Restaurant+Bellevue', '', '', '', ''),
(183, 25, 'Bellevue Restaurants', 'https://www.zomato.com/bellevue-wa/spice-route-indian-cuisine-bellevue', 'Spice Route', 'https://www.bing.com/search?q=Spice+Route+Bellevue', '', '', '', '', '', ''),
(184, 25, 'Bellevue Restaurants', 'https://www.facebook.com/pages/Swagath-Food-Groceries/434662593223663', 'Swagath Indian Grocery and Restaurant', 'https://www.bing.com/search?q=Swagath+Indian+Grocery+and+Restaurant+Bellevue', '', '', '', '', '', ''),
(185, 25, 'Bellevue Restaurants', 'http://tajpalaceofindia.com/', 'Taj Palace', 'https://www.zomato.com/bellevue-wa/ruchi-indian-restaurant-bellevue', 'https://www.bing.com/search?q=Taj+Palace+Bellevue', '', '', '', '', ''),
(186, 25, 'Bellevue Restaurants', 'http://www.udupicafebellevue.com/', 'Udupi Cafe', 'https://www.facebook.com/udupi.bellevue', 'https://www.zomato.com/bellevue-wa/ruchi-indian-restaurant-bellevue', 'https://www.bing.com/search?q=Udupi+Cafe+Bellevue', '', '', '', ''),
(187, 2, '', '', '', '', '', '', '', '', '', ''),
(188, 26, 'Issaquah Restaurants', 'https://www.zomato.com/issaquah-wa/chaat-n-roll-issaquah', 'Chaat-N-roll', 'https://www.bing.com/search?q=Chaat-N-roll+Issaqua', '', '', '', '', '', ''),
(189, 26, 'Issaquah Restaurants', 'http://madrasdosacorner.com/', 'Madras Dosa Corner', 'https://www.facebook.com/madrasdosacorner', 'https://www.bing.com/search?q=Madras+Dosa+Corner+Issaqua', '', '', '', '', ''),
(190, 26, 'Issaquah Restaurants', 'http://www.tikkamasala.net/', 'Tikka Masala', 'https://www.zomato.com/bellevue-wa/ruchi-indian-restaurant-bellevue', 'https://www.bing.com/search?q=Tikka+Masala+Issaqua', '', '', '', '', ''),
(191, 2, '', '', '', '', '', '', '', '', '', ''),
(192, 27, 'Redmond Restaurants', 'http://www.chaatnroll.com/', 'Chaat N Roll', 'https://www.facebook.com/Chaat-N-Roll-173500936134343/', 'https://www.bing.com/search?q=Chaat+N+Roll+Redmond', '', '', '', '', ''),
(193, 27, 'Redmond Restaurants', 'http://www.bamboo-gardens.com/', 'Inchin\'s Bamboo Garden', 'https://www.facebook.com/Inchins-Bamboo-Garden-Redmond-WA-37073222187', 'https://www.zomato.com/bellevue-wa/ruchi-indian-restaurant-bellevue', 'https://www.bing.com/search?q=Inchin\'s+Bamboo+Garden+Redmond', '', '', '', ''),
(194, 27, 'Redmond Restaurants', 'https://www.facebook.com/Jot-sweets-chaat-1527792240844908/', 'Jot Sweets & Chaat', 'https://www.bing.com/search?q=Jot+Sweets+and+Chaat+Redmond', '', '', '', '', '', ''),
(195, 27, 'Redmond Restaurants', 'http://kanishkaofredmond.com/', 'Kanishka', 'https://www.facebook.com/Kanishka-Cuisine-of-India-192529270759629/?fref=ts&ref=br_tf', 'https://www.zomato.com/redmond-wa/kanishka-redmond', 'https://www.bing.com/search?q=Kanishka+Redmond', '', '', '', ''),
(196, 27, 'Redmond Restaurants', 'https://www.facebook.com/NHHBP', 'Nawabi Hyderabad House Biryani Place', 'https://www.bing.com/search?q=Nawabi+Hyderabad+House+Biryani+Place+Redmond', '', '', '', '', '', ''),
(197, 27, 'Redmond Restaurants', 'http://theguilttriprestaurant.com/', 'The Guilt Trip', 'https://www.facebook.com/TheGuiltTripRestaurant', 'https://www.zomato.com/redmond-wa/the-guilt-trip-redmond', 'https://www.bing.com/search?q=The+Guilt+Trip+Redmond', '', '', '', ''),
(198, 2, '', '', '', '', '', '', '', '', '', ''),
(199, 28, 'Seattle Restaurants', 'https://www.zomato.com/seattle/bengal-tiger-seattle', 'Bengal Tiger', 'https://www.bing.com/search?q=Bengal+Tiger+Seattle', '', '', '', '', '', ''),
(200, 28, 'Seattle Restaurants', 'https://www.zomato.com/seatac-wa/best-of-india-seatac', 'Best of India', 'https://www.bing.com/search?q=Best+of+India+Seattle', '', '', '', '', '', ''),
(201, 28, 'Seattle Restaurants', 'http://cedarsseattle.com', 'Cedars of Brooklyn', 'https://www.bing.com/search?q=Cedars+of+Brooklyn+Seattle', '', '', '', '', '', ''),
(202, 28, 'Seattle Restaurants', 'https://www.zomato.com/seattle/chutneys-bistro-wallingford', 'Chutneys', 'https://www.bing.com/search?q=Chutneys+Seattle', '', '', '', '', '', ''),
(203, 28, 'Seattle Restaurants', 'https://www.zomato.com/seattle/daawat-indian-grill-bar-downtown', 'Daawat Indian Grill Bar', 'https://www.bing.com/search?q=Daawat+Indian+Grill+Bar+Seattle', '', '', '', '', '', ''),
(204, 28, 'Seattle Restaurants', 'https://www.zomato.com/seattle/far-eats-belltown', 'Far Eats', 'https://www.bing.com/search?q=Far+Eats+Seattle', '', '', '', '', '', ''),
(205, 28, 'Seattle Restaurants', 'https://www.zomato.com/seattle/garam-masala-university-district', 'Garam Masala', 'https://www.bing.com/search?q=Garam+Masala+Seattle', '', '', '', '', '', ''),
(206, 28, 'Seattle Restaurants', 'http://seattleindiabistro.com/', 'India Bistro', 'https://www.bing.com/search?q=India+Bistro+Seattle', '', '', '', '', '', ''),
(207, 28, 'Seattle Restaurants', 'https://www.zomato.com/seattle/india-express-capitol-hill', 'Indian Express', 'https://www.bing.com/search?q=Indian+Express+Seattle', '', '', '', '', '', ''),
(208, 28, 'Seattle Restaurants', 'http://www.jewelofindiacuisine.com', 'Jewel of India', 'https://www.zomato.com/seattle/jewel-of-india-university-district', 'https://www.bing.com/search?q=Jewel+of+India+Seattle', '', '', '', '', ''),
(209, 28, 'Seattle Restaurants', 'http://kanakindianseattle.com', 'Kanak Cuisine of India', 'https://www.bing.com/search?q=Kanak+Cuisine+of+India+Seattle', '', '', '', '', '', ''),
(210, 28, 'Seattle Restaurants', 'https://www.bing.com/search?q=Kastoori+Grill+Seattle', 'Kastoori Grill', '', '', '', '', '', '', ''),
(211, 28, 'Seattle Restaurants', 'https://www.bing.com/search?q=Maharaja+Seattle', 'Maharaja', '', '', '', '', '', '', ''),
(212, 28, 'Seattle Restaurants', 'https://www.bing.com/search?q=Masala+of+India+Seattle', 'Masala of India', '', '', '', '', '', '', ''),
(213, 28, 'Seattle Restaurants', 'http://mirchmasalarestaurant.com/', 'Mirch Masala', 'https://www.zomato.com/seattle/mirch-masala-seattle', 'https://www.bing.com/search?q=Mirch+Masala+Seattle', '', '', '', '', ''),
(214, 28, 'Seattle Restaurants', 'https://www.bing.com/search?q=Moti+Mahal+Seattle', 'Moti Mahal', '', '', '', '', '', '', ''),
(215, 28, 'Seattle Restaurants', 'https://www.bing.com/search?q=Naansense+Seattle', 'Naansense', '', '', '', '', '', '', ''),
(216, 28, 'Seattle Restaurants', 'https://www.bing.com/search?q=Naanz+Seattle', 'Naanz', '', '', '', '', '', '', ''),
(217, 28, 'Seattle Restaurants', 'https://www.bing.com/search?q=Nirmals+Seattle', 'Nirmals', '', '', '', '', '', '', ''),
(218, 28, 'Seattle Restaurants', 'http://rotirestaurantseattle.com/', 'Roti Restaurant', 'https://www.bing.com/search?q=Roti+Restaurant+Seattle', '', '', '', '', '', ''),
(219, 28, 'Seattle Restaurants', 'http://eatatshalimar.com', 'Shalimar Grocery', 'https://www.zomato.com/seattle/shalimar-restaurant-university-district', 'https://www.bing.com/search?q=Shalimar+Grocery+Seattle', '', '', '', '', ''),
(220, 28, 'Seattle Restaurants', 'https://www.zomato.com/seattle/tandoori-hut-belltown', 'Tandoori', 'https://www.bing.com/search?q=Tandoori+Seattle', '', '', '', '', '', ''),
(221, 28, 'Seattle Restaurants', 'https://www.zomato.com/seattle/travelers-thali-house-restaurant-beacon-hill', 'Travelers Thali', 'https://www.bing.com/search?q=Travelers+Thali+Seattle', '', '', '', '', '', ''),
(222, 2, '', '', '', '', '', '', '', '', '', ''),
(223, 29, 'Kent Renton Restaurants', 'http://canampizza.com', 'Canam Pizza', 'https://www.zomato.com/bellevue-wa/ruchi-indian-restaurant-bellevue', 'https://www.bing.com/search?q=Canam+Pizza+Kent', '', '', '', '', ''),
(224, 29, 'Kent Renton Restaurants', 'https://www.zomato.com/kent-wa/curry-and-kabab-kent', 'Curry and Kabab', 'https://www.bing.com/search?q=Curry+and+Kabab+Kent', '', '', '', '', '', ''),
(225, 29, 'Kent Renton Restaurants', 'https://www.zomato.com/kent-wa/golden-indian-curry-house-kent', 'Golden Indian Curry House', 'https://www.bing.com/search?q=Golden+Indian+Curry+House+Kent', '', '', '', '', '', ''),
(226, 29, 'Kent Renton Restaurants', 'http://jotsweetskent.com/7049', 'Jot Sweets & Indian Restaurant', 'https://www.bing.com/search?q=Jot+Sweets+and+Indian+Restaurant+Kent', '', '', '', '', '', ''),
(227, 29, 'Kent Renton Restaurants', 'https://www.zomato.com/renton-wa/naan-n-curry-renton', 'Naan-N-Curry', 'https://www.bing.com/search?q=Naan-N-Curry+Renton', '', '', '', '', '', ''),
(228, 29, 'Kent Renton Restaurants', 'http://pablacuisine.com', 'Pabla Cuisine', 'https://www.facebook.com/pages/Pabla-Indian-Cuisine/121784347870924', 'https://www.zomato.com/issaquah-wa/pabla-veggie-cuisine-issaquah', 'https://www.bing.com/search?q=Pabla+Cuisine+Renton', '', '', '', ''),
(229, 29, 'Kent Renton Restaurants', 'http://punjabsweetsonline.com', 'Punjab Sweets', 'https://www.zomato.com/kent-wa/punjab-sweets-kent', 'https://www.bing.com/search?q=Punjab+Sweets+Kent', '', '', '', '', ''),
(230, 29, 'Kent Renton Restaurants', 'https://www.zomato.com/renton-wa/spice-king-renton', 'Spice King', 'https://www.bing.com/search?q=Spice+King+Renton', '', '', '', '', '', ''),
(231, 29, 'Kent Renton Restaurants', 'https://www.jotindiansweetsrestaurant.com/', 'Jot Indian Sweets n Restaurant', 'https://www.bing.com/search?q=jot+sweets+kent', '', '', '', '', '', ''),
(232, 2, '', '', '', '', '', '', '', '', '', ''),
(233, 30, 'Restaurants', 'http://www.aahaaronline.com/', 'Aahaar', 'https://www.zomato.com/snoqualmie-wa/aahaar-an-indian-eatery-snoqualmie', 'https://www.bing.com/search?q=Aahaar+Snoqualmie', '', '', '', '', ''),
(234, 30, 'Restaurants', 'http://canampizza.com', 'Canam Pizza', 'https://www.bing.com/search?q=Canam+Pizza+Mill+Creek', '', '', '', '', '', ''),
(235, 30, 'Restaurants', 'http://www.clayovenirvine.com/', 'Clay Oven', 'https://www.zomato.com/woodinville-wa/clay-oven-woodinville', 'https://www.bing.com/search?q=Clay+Oven+Woodinville', '', '', '', '', ''),
(236, 30, 'Restaurants', 'http://www.dakshinbistro.com/', 'Dakshin South Indian Bistro', 'https://www.facebook.com/DakshinBistro', 'https://www.zomato.com/bellevue-wa/ruchi-indian-restaurant-bellevue', 'https://www.bing.com/search?q=Dakshin+South+Indian+Bistro+Krikland', '', '', '', ''),
(237, 30, 'Restaurants', 'https://www.zomato.com/federal-way-wa/east-india-grill-federal-way', 'East India Grill', 'https://www.bing.com/search?q=East+India+Grill+Federal+Way', '', '', '', '', '', ''),
(238, 30, 'Restaurants', 'https://www.zomato.com/kirkland-wa/royal-india-kirkland', 'Royal India', 'https://www.bing.com/search?q=Royal+India+Krikland', '', '', '', '', '', ''),
(239, 30, 'Restaurants', 'http://www.ruchiindianrestaurant.com/bothellrestaurant.php', 'Ruchi Indian Restaurant', 'https://www.facebook.com/ruchibothell', 'https://www.zomato.com/bellevue-wa/ruchi-indian-restaurant-bellevue', 'https://www.bing.com/search?q=Ruchi+Indian+Restaurant+Bothell', '', '', '', ''),
(240, 30, 'Restaurants', 'https://www.zomato.com/kirkland-wa/shamiana-kirkland', 'Shamiana', 'https://www.bing.com/search?q=Shamiana+Krikland', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
