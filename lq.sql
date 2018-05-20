-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2018 at 09:26 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lq`
--

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `queNo` int(10) NOT NULL,
  `TestNo` int(10) NOT NULL,
  `correct` text NOT NULL,
  `aAnswer` text NOT NULL,
  `bAnswer` text NOT NULL,
  `cAnswer` text NOT NULL,
  `dAnswer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`queNo`, `TestNo`, `correct`, `aAnswer`, `bAnswer`, `cAnswer`, `dAnswer`) VALUES
(1, 1, 'CCCC', 'A', 'BB', 'CCCC', 'DDDDD'),
(2, 1, 'Learn Quest', 'Learn', 'Quest', 'Learn Quest', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `Id` int(11) NOT NULL,
  `Heading` varchar(1000) NOT NULL,
  `Data` mediumtext NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Date` datetime NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Category` varchar(1000) NOT NULL,
  `Sub-Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`Id`, `Heading`, `Data`, `Image`, `Date`, `Author`, `Category`, `Sub-Category`) VALUES
(2, 'CAT 2017 Results', '<p>Euismod atras vulputate iltricies etri elit.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. <strong><em>Nulla nunc dui</em></strong>, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit.</p>\r\n<p>Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae.</p>', 'blog-image-1', '2018-02-14 04:09:48', 'damanrudar@gmail.com', 'Articles', 'Quants'),
(5, 'rgdtgmj dfng hv ', '<p>sfdbgffbdgf nre&nbsp; &nbsp;gdv f d&nbsp; d</p>', '20180313_161218', '2018-03-13 16:12:18', 'damanrudar@gmail.com', 'Articles', 'DI-LR'),
(9, 'egrevrevrv ef  ', '<p>&nbsp;er be g g gre fte e&nbsp; tertg e&nbsp;</p>', '20180326_110349', '2018-03-26 11:03:49', 'damanrudar@gmail.com', 'Interview Experience', 'IIM-Ahm');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `Name` varchar(1000) NOT NULL,
  `SubId` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `Name`, `SubId`) VALUES
(1, 'Articles', 0),
(2, 'Interview Experience', 0),
(3, 'IIM-Ahm', 2),
(4, 'Quants', 1),
(5, 'DI-LR', 1),
(6, 'VA-RC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `SNo` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Mobile` varchar(100) NOT NULL,
  `Type` varchar(10) NOT NULL DEFAULT 'u',
  `Mail_Verify` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `OTP` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`SNo`, `Name`, `Email`, `Password`, `Mobile`, `Type`, `Mail_Verify`, `status`, `OTP`) VALUES
(1, 'Rudar Daman Singla', 'damanrudar@gmail.com', 'be6cafd71e3a254c879c81383ecbbadc', '9805049277', 'a', 1, 0, 1),
(2, 'Anuj Sinha', 'Anuj', 'c482e3014f9b268c6d953a0fb0df6cc6', '', 'a', 1, 0, 1),
(3, 'Nikhil', 'Nikhil', '350d89c1cd6592bbbd1ed2e8a4f3ddba', '', 'a', 1, 0, 1),
(4, 'Abhishek Soni', 'Abhishek', 'f589a6959f3e04037eb2b3eb0ff726ac', '', 'a', 1, 0, 1),
(6, 'Nayan Chourasia', 'nayanchourasia7@gmail.com', 'f03f748ff584392de6584b0b84224b68', '8408984862', 'u', 1, 0, 1),
(7, 'Ankan Bawali', 'bawaliankan@gmail.com', '5d161d145dd12f43fa6da5b9c88db442', '7000690156', 'u', 1, 0, 1),
(8, 'ASMITA GUPTA', 'asmita.gupta1911@gmail.com', 'cfde0c7f033e8edea66028d575c359e0', '7839222715', 'u', 1, 1, 1),
(9, 'Suneet Choudhary', 'suneetchoudhary.07@gmail.com', '5e67a9890ee61692f840bf28b1854f77', '7977231793', 'u', 1, 0, 1),
(10, 'Shivam Dubey', 'shivamdvn98@gmail.com', '789c6f95ac4f59874b6bbe9504c99e9e', '9924079639', 'u', 1, 0, 1),
(11, 'SUSHANT DEV MISHRA', 'aash741@gmail.com', 'e79b5fecac5ff4730185e07eb5bfc7f4', '9740598279', 'u', 0, 0, 786006),
(12, 'Aashay Dubey', 'd.aashay@gmail.com', '0c765f893175460631df172a28816a9b', '9870898804', 'u', 0, 0, 140066),
(13, 'AMAL MOHAN', 'amalmohan105022@gmail.com', 'e7d2e25d49d1a5436fe645bed973c8cd', '9446657657', 'u', 1, 0, 1),
(14, 'Saikat Santra', 'saikat.s.28@gmail.com', 'cf6e683b9c979c6261f0aeff20a36831', '9123389527', 'u', 1, 0, 1),
(15, 'Paridhi', 'aparidhi8@gmail.com', 'bc60be150694c4968d1e8476f839f34b', '9833542414', 'u', 1, 0, 1),
(16, 'asif rahman', 'mdasif12ecs11@gmail.com', '4774c0281159b8d398775584cb414099', '9871983274', 'u', 1, 0, 1),
(17, 'Khagendra Tiwari', 'tiwarikhagendra@rocketmail.com', '33ac1ed5488008948f94c004b0e1ea55', '9535782042', 'u', 1, 0, 1),
(18, 'Harish C', 'harish1193@yahoo.co.in', '7cb6bbb8de205df7a14365c5346f6bf6', '8884293244', 'u', 0, 0, 143721),
(19, 'NOBIN THOMAS', 'nobin994@gmail.com', 'eb4b473aa038648235a43a7c2be01eb3', '8300610699', 'u', 1, 0, 1),
(20, 'AYUSH SAHA', 'ayush_sha@rediffmail.com', '82865a650c43e8fdb6e81be84a01a0ae', '8981307930', 'u', 1, 0, 1),
(21, 'VISHAL SHARMA', 'vishalsharma4773@gmail.com', '3b17f704d790fbdcfe95b395a69c7575', '9555477395', 'u', 1, 0, 1),
(22, 'Venkata Teja Vaibhav Marichetty', 'marichettty.vaibhav@gmail.com', '9ad00337d02c9ca1121ccf3943026f46', '9043220083', 'u', 1, 0, 1),
(23, 'ITSRDS', 'itsrds@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9805049277', 'u', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `otp` int(8) NOT NULL,
  `validate` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`otp`, `validate`) VALUES
(100512, 0),
(100896, 0),
(102508, 0),
(102585, 0),
(104373, 0),
(104918, 0),
(105050, 0),
(106090, 0),
(106446, 0),
(106515, 0),
(107223, 0),
(107546, 0),
(108685, 0),
(108744, 0),
(108828, 0),
(108963, 0),
(109051, 0),
(109679, 0),
(110054, 0),
(110769, 0),
(111840, 0),
(111923, 0),
(111967, 0),
(112896, 0),
(113013, 0),
(113864, 0),
(114174, 0),
(114229, 0),
(115286, 0),
(116278, 0),
(116691, 0),
(116861, 0),
(117663, 0),
(117881, 0),
(117885, 0),
(118337, 0),
(119070, 0),
(120609, 0),
(121446, 0),
(121944, 0),
(122243, 0),
(122658, 0),
(122661, 0),
(122694, 0),
(123814, 0),
(123991, 0),
(124455, 0),
(124703, 0),
(125587, 0),
(126217, 0),
(126606, 0),
(127383, 0),
(127765, 0),
(128043, 0),
(130231, 0),
(130791, 0),
(131012, 0),
(131481, 0),
(131709, 0),
(132058, 0),
(132078, 0),
(133614, 0),
(135015, 0),
(137484, 0),
(138666, 0),
(139635, 0),
(139897, 0),
(140026, 0),
(141412, 0),
(141464, 0),
(141845, 0),
(142187, 0),
(142436, 0),
(142514, 0),
(142806, 0),
(143591, 0),
(143594, 0),
(143758, 0),
(143929, 0),
(144858, 0),
(147727, 0),
(148466, 0),
(148648, 0),
(148964, 0),
(149185, 0),
(149412, 0),
(149674, 0),
(149825, 0),
(150355, 0),
(150504, 0),
(151228, 0),
(151335, 0),
(152029, 0),
(152695, 0),
(153488, 0),
(154609, 0),
(154736, 0),
(155178, 0),
(156179, 0),
(156663, 0),
(156773, 0),
(156912, 0),
(157193, 0),
(157412, 0),
(158760, 0),
(159857, 0),
(160249, 0),
(160609, 0),
(160651, 0),
(161417, 0),
(162872, 0),
(163859, 0),
(163908, 0),
(164397, 0),
(164474, 0),
(165120, 0),
(165425, 0),
(165662, 0),
(165872, 0),
(165890, 0),
(166164, 0),
(166334, 0),
(166858, 0),
(167342, 0),
(167404, 0),
(167456, 0),
(167740, 0),
(168995, 0),
(171063, 0),
(171090, 0),
(171611, 0),
(171654, 0),
(173017, 0),
(173098, 0),
(173343, 0),
(173507, 0),
(173847, 0),
(173985, 0),
(174379, 0),
(174483, 0),
(175941, 0),
(176302, 0),
(176416, 0),
(177446, 0),
(178124, 0),
(178674, 0),
(178675, 0),
(178860, 0),
(180851, 0),
(180937, 0),
(181210, 0),
(181445, 0),
(181684, 0),
(181746, 0),
(182764, 0),
(183030, 0),
(183717, 0),
(184255, 0),
(184840, 0),
(186157, 0),
(186500, 0),
(187878, 0),
(188127, 0),
(188326, 0),
(188397, 0),
(189104, 0),
(189445, 0),
(189703, 0),
(190354, 0),
(190452, 0),
(190571, 0),
(191088, 0),
(191263, 0),
(191400, 0),
(191691, 0),
(192171, 0),
(192207, 0),
(194294, 0),
(194527, 0),
(194589, 0),
(194727, 0),
(194965, 0),
(196211, 0),
(197827, 0),
(198058, 0),
(198623, 0),
(199665, 0),
(199827, 0),
(199965, 0),
(200639, 0),
(200652, 0),
(201268, 0),
(201846, 0),
(202694, 0),
(202861, 0),
(203488, 0),
(203551, 0),
(203640, 0),
(203660, 0),
(203684, 0),
(203975, 0),
(204837, 0),
(204928, 0),
(205078, 0),
(206036, 0),
(206686, 0),
(208501, 0),
(208873, 0),
(209321, 0),
(209431, 0),
(209625, 0),
(210899, 0),
(211130, 0),
(211596, 0),
(211818, 0),
(212368, 0),
(212819, 0),
(213527, 0),
(213664, 0),
(213707, 0),
(214004, 0),
(214943, 0),
(215887, 0),
(216299, 0),
(216706, 0),
(218047, 0),
(218481, 0),
(219459, 0),
(219475, 0),
(220696, 0),
(220883, 0),
(223920, 0),
(224349, 0),
(224657, 0),
(225077, 0),
(225190, 0),
(225773, 0),
(225800, 0),
(226226, 0),
(227164, 0),
(227183, 0),
(227267, 0),
(228766, 0),
(229007, 0),
(229089, 0),
(229153, 0),
(229993, 0),
(230485, 0),
(230541, 0),
(230815, 0),
(230972, 0),
(231589, 0),
(232253, 0),
(232745, 0),
(232907, 0),
(233621, 0),
(233661, 0),
(234513, 0),
(234653, 0),
(234666, 0),
(235133, 0),
(235788, 0),
(236530, 0),
(238858, 0),
(239042, 0),
(241081, 0),
(241238, 0),
(241721, 0),
(242533, 0),
(242609, 0),
(243184, 0),
(243366, 0),
(244387, 0),
(244769, 0),
(245758, 0),
(246179, 0),
(246211, 0),
(246929, 0),
(247155, 0),
(247462, 0),
(247714, 0),
(247785, 0),
(247997, 0),
(248312, 0),
(248506, 0),
(249295, 0),
(249487, 0),
(250530, 0),
(251379, 0),
(251398, 0),
(251425, 0),
(251622, 0),
(251699, 0),
(251757, 0),
(251804, 0),
(252758, 0),
(253136, 0),
(254429, 0),
(254651, 0),
(255052, 0),
(256461, 0),
(256927, 0),
(258581, 0),
(258725, 0),
(259029, 0),
(259038, 0),
(260541, 0),
(260716, 0),
(261045, 0),
(261177, 0),
(261537, 0),
(261970, 0),
(264283, 0),
(264427, 0),
(264574, 0),
(264914, 0),
(265630, 0),
(265799, 0),
(266082, 0),
(266184, 0),
(266256, 0),
(267583, 0),
(267788, 0),
(268063, 0),
(268429, 0),
(269026, 0),
(269271, 0),
(269540, 0),
(270316, 0),
(271125, 0),
(271191, 0),
(271892, 0),
(272145, 0),
(272187, 0),
(273421, 0),
(274183, 0),
(274306, 0),
(274313, 0),
(274942, 0),
(275319, 0),
(275320, 0),
(275852, 0),
(276348, 0),
(277311, 0),
(278408, 0),
(279098, 0),
(279751, 0),
(280009, 0),
(280501, 0),
(282370, 0),
(282909, 0),
(282938, 0),
(284217, 0),
(284478, 0),
(284949, 0),
(285260, 0),
(286732, 0),
(287284, 0),
(287507, 0),
(288927, 0),
(289119, 0),
(289855, 0),
(289879, 0),
(290009, 0),
(290240, 0),
(290976, 0),
(291633, 0),
(292315, 0),
(292693, 0),
(294061, 0),
(294309, 0),
(294595, 0),
(295023, 0),
(295719, 0),
(295981, 0),
(296204, 0),
(296404, 0),
(296728, 0),
(297533, 0),
(297809, 0),
(297815, 0),
(298105, 0),
(298185, 0),
(298770, 0),
(299456, 0),
(299520, 0),
(299757, 0),
(300423, 0),
(300592, 0),
(301036, 0),
(301369, 0),
(303305, 0),
(303640, 0),
(303872, 0),
(303942, 0),
(303999, 0),
(304097, 0),
(304156, 0),
(308438, 0),
(308656, 0),
(309171, 0),
(310341, 0),
(312108, 0),
(313352, 0),
(313954, 0),
(314364, 0),
(314410, 0),
(315815, 0),
(315895, 0),
(316103, 0),
(316599, 0),
(316897, 0),
(317888, 0),
(318214, 0),
(318573, 0),
(319032, 0),
(319309, 0),
(320963, 0),
(321474, 0),
(322230, 0),
(322409, 0),
(322708, 0),
(322937, 0),
(323393, 0),
(323577, 0),
(324266, 0),
(324434, 0),
(324492, 0),
(324832, 0),
(325829, 0),
(326011, 0),
(327392, 0),
(328704, 0),
(328901, 0),
(329477, 0),
(330343, 0),
(331321, 0),
(331785, 0),
(332323, 0),
(333291, 0),
(333782, 0),
(333865, 0),
(334055, 0),
(335007, 0),
(335874, 0),
(336831, 0),
(336862, 0),
(336976, 0),
(337355, 0),
(340134, 0),
(340608, 0),
(340811, 0),
(341294, 0),
(342480, 0),
(342506, 0),
(342770, 0),
(343498, 0),
(344171, 0),
(345995, 0),
(346431, 0),
(346478, 0),
(349964, 0),
(351325, 0),
(351999, 0),
(353074, 0),
(353503, 0),
(353601, 0),
(354387, 0),
(355144, 0),
(357328, 0),
(359049, 0),
(361049, 0),
(361067, 0),
(361339, 0),
(361481, 0),
(362318, 0),
(362491, 0),
(363157, 0),
(363529, 0),
(363710, 0),
(363960, 0),
(365320, 0),
(365480, 0),
(367014, 0),
(367149, 0),
(367988, 0),
(368935, 0),
(369725, 0),
(369867, 0),
(370232, 0),
(370303, 0),
(370731, 0),
(371319, 0),
(372314, 0),
(372760, 0),
(372829, 0),
(372877, 0),
(372902, 0),
(373555, 0),
(373591, 0),
(374362, 0),
(374366, 0),
(374561, 0),
(375016, 0),
(375929, 0),
(376145, 0),
(376877, 0),
(377466, 0),
(378280, 0),
(379695, 0),
(380598, 0),
(380856, 0),
(381477, 0),
(382050, 0),
(382407, 0),
(383261, 0),
(383641, 0),
(384848, 0),
(386680, 0),
(387129, 0),
(387314, 0),
(387335, 0),
(387622, 0),
(388302, 0),
(388347, 0),
(388419, 0),
(389119, 0),
(389156, 0),
(389456, 0),
(389632, 0),
(390439, 0),
(390972, 0),
(391129, 0),
(391242, 0),
(391290, 0),
(392352, 0),
(393139, 0),
(393588, 0),
(394104, 0),
(394827, 0),
(396714, 0),
(397692, 0),
(397812, 0),
(398059, 0),
(398289, 0),
(398587, 0),
(399221, 0),
(399448, 0),
(399762, 0),
(400940, 0),
(400944, 0),
(401620, 0),
(401698, 0),
(401792, 0),
(401988, 0),
(402194, 0),
(402589, 0),
(402952, 0),
(403189, 0),
(404052, 0),
(404306, 0),
(404321, 0),
(405466, 0),
(407879, 0),
(408194, 0),
(408573, 0),
(409159, 0),
(409788, 0),
(410129, 0),
(410979, 0),
(411062, 0),
(411167, 0),
(411252, 0),
(412467, 0),
(412565, 0),
(413750, 0),
(414236, 0),
(414878, 0),
(415591, 0),
(415694, 0),
(415760, 0),
(415900, 0),
(416157, 0),
(416189, 0),
(417030, 0),
(417758, 0),
(417888, 0),
(417912, 0),
(418067, 0),
(419075, 0),
(419165, 0),
(419619, 0),
(420431, 0),
(420597, 0),
(421012, 0),
(423175, 0),
(423331, 0),
(423695, 0),
(424025, 0),
(424367, 0),
(424503, 0),
(425548, 0),
(426346, 0),
(426581, 0),
(426700, 0),
(426966, 0),
(428360, 0),
(429307, 0),
(429721, 0),
(430235, 0),
(430763, 0),
(430842, 0),
(432324, 0),
(434073, 0),
(434346, 0),
(435188, 0),
(436416, 0),
(437413, 0),
(437496, 0),
(438160, 0),
(438289, 0),
(438602, 0),
(439072, 0),
(439609, 0),
(440697, 0),
(441537, 0),
(442014, 0),
(442319, 0),
(444367, 0),
(446227, 0),
(446501, 0),
(448078, 0),
(448586, 0),
(448621, 0),
(449168, 0),
(449426, 0),
(449549, 0),
(449749, 0),
(451902, 0),
(451959, 0),
(452994, 0),
(453465, 0),
(455367, 0),
(455398, 0),
(456501, 0),
(456797, 0),
(457572, 0),
(457588, 0),
(458043, 0),
(458131, 0),
(458906, 0),
(458915, 0),
(461431, 0),
(462345, 0),
(462649, 0),
(464329, 0),
(464390, 0),
(465233, 0),
(465383, 0),
(466707, 0),
(467829, 0),
(467937, 0),
(469164, 0),
(470138, 0),
(470673, 0),
(471041, 0),
(471168, 0),
(472600, 0),
(473497, 0),
(474785, 0),
(474995, 0),
(475717, 0),
(475788, 0),
(476589, 0),
(477140, 0),
(478462, 0),
(478750, 0),
(481266, 0),
(482013, 0),
(482187, 0),
(482507, 0),
(482899, 0),
(483562, 0),
(483903, 0),
(484799, 0),
(485005, 0),
(485362, 0),
(485854, 0),
(486279, 0),
(486365, 0),
(488051, 0),
(490162, 0),
(490396, 0),
(490497, 0),
(490711, 0),
(491251, 0),
(491601, 0),
(491723, 0),
(492435, 0),
(492751, 0),
(492759, 0),
(493186, 0),
(493493, 0),
(494134, 0),
(494615, 0),
(495022, 0),
(495708, 0),
(496140, 0),
(497175, 0),
(497381, 0),
(497545, 0),
(497992, 0),
(498156, 0),
(498214, 0),
(498642, 0),
(498801, 0),
(499030, 0),
(499086, 0),
(500142, 0),
(500668, 0),
(500791, 0),
(501838, 0),
(502158, 0),
(503021, 0),
(503429, 0),
(505239, 0),
(505546, 0),
(505942, 0),
(507593, 0),
(508288, 0),
(509920, 0),
(511332, 0),
(511728, 0),
(512117, 0),
(512634, 0),
(513101, 0),
(513290, 0),
(513891, 0),
(515203, 0),
(516100, 0),
(516116, 0),
(516695, 0),
(516988, 0),
(517462, 0),
(517931, 0),
(519093, 0),
(520231, 0),
(520680, 0),
(520821, 0),
(520978, 0),
(521626, 0),
(521836, 0),
(522631, 0),
(522834, 0),
(522891, 0),
(523182, 0),
(523395, 0),
(523433, 0),
(523601, 0),
(524149, 0),
(524447, 0),
(524665, 0),
(525568, 0),
(525690, 0),
(525773, 0),
(526251, 0),
(526526, 0),
(526691, 0),
(527321, 0),
(527591, 0),
(527611, 0),
(528001, 0),
(530031, 0),
(530091, 0),
(530592, 0),
(531936, 0),
(531959, 0),
(532133, 0),
(532173, 0),
(533449, 0),
(534864, 0),
(536057, 0),
(536225, 0),
(536729, 0),
(536926, 0),
(537870, 0),
(538045, 0),
(538143, 0),
(539116, 0),
(539400, 0),
(539638, 0),
(539643, 0),
(539747, 0),
(541740, 0),
(541817, 0),
(542133, 0),
(542563, 0),
(543677, 0),
(543720, 0),
(545944, 0),
(546121, 0),
(546966, 0),
(548764, 0),
(549847, 0),
(550153, 0),
(550358, 0),
(550607, 0),
(551729, 0),
(552626, 0),
(552828, 0),
(552993, 0),
(553082, 0),
(553468, 0),
(553887, 0),
(553901, 0),
(553966, 0),
(554275, 0),
(555728, 0),
(555854, 0),
(556276, 0),
(557026, 0),
(557290, 0),
(557838, 0),
(558385, 0),
(558428, 0),
(558804, 0),
(560898, 0),
(560971, 0),
(561271, 0),
(561366, 0),
(561887, 0),
(562843, 0),
(563226, 0),
(563264, 0),
(563332, 0),
(563364, 0),
(563679, 0),
(565802, 0),
(565859, 0),
(567205, 0),
(567490, 0),
(567715, 0),
(567808, 0),
(568146, 0),
(568346, 0),
(568666, 0),
(569272, 0),
(569860, 0),
(570906, 0),
(571138, 0),
(571927, 0),
(572433, 0),
(572787, 0),
(573351, 0),
(574774, 0),
(575021, 0),
(575392, 0),
(575433, 0),
(575701, 0),
(577122, 0),
(577256, 0),
(577644, 0),
(577989, 0),
(578355, 0),
(578857, 0),
(580183, 0),
(580290, 0),
(580429, 0),
(580534, 0),
(581060, 0),
(581562, 0),
(582408, 0),
(582494, 0),
(582810, 0),
(583945, 0),
(584725, 0),
(584828, 0),
(585846, 0),
(587129, 0),
(587789, 0),
(588093, 0),
(588300, 0),
(588386, 0),
(588514, 0),
(588809, 0),
(589674, 0),
(589710, 0),
(589755, 0),
(589935, 0),
(590216, 0),
(590946, 0),
(591398, 0),
(592394, 0),
(592999, 0),
(593746, 0),
(594051, 0),
(594560, 0),
(594952, 0),
(595104, 0),
(595745, 0),
(595999, 0),
(596108, 0),
(596208, 0),
(597176, 0),
(597276, 0),
(597638, 0),
(597903, 0),
(601740, 0),
(602332, 0),
(602615, 0),
(603934, 0),
(604369, 0),
(604392, 0),
(605498, 0),
(605595, 0),
(606109, 0),
(606866, 0),
(607080, 0),
(607157, 0),
(607185, 0),
(608353, 0),
(608892, 0),
(610332, 0),
(611313, 0),
(612012, 0),
(612755, 0),
(613617, 0),
(614128, 0),
(616335, 0),
(616889, 0),
(617299, 0),
(617441, 0),
(617454, 0),
(617713, 0),
(617731, 0),
(618183, 0),
(618195, 0),
(618561, 0),
(618567, 0),
(619408, 0),
(620528, 0),
(620909, 0),
(621223, 0),
(621369, 0),
(621562, 0),
(621735, 0),
(622034, 0),
(622249, 0),
(622362, 0),
(622573, 0),
(623090, 0),
(627922, 0),
(627979, 0),
(628231, 0),
(628708, 0),
(629016, 0),
(629283, 0),
(629877, 0),
(630052, 0),
(630275, 0),
(630766, 0),
(631038, 0),
(631689, 0),
(631905, 0),
(632072, 0),
(632306, 0),
(632838, 0),
(632930, 0),
(633816, 0),
(634286, 0),
(634333, 0),
(634516, 0),
(634538, 0),
(634845, 0),
(635360, 0),
(636689, 0),
(637059, 0),
(637119, 0),
(638213, 0),
(638428, 0),
(638619, 0),
(638668, 0),
(639008, 0),
(640387, 0),
(640863, 0),
(640893, 0),
(641044, 0),
(641088, 0),
(641459, 0),
(642133, 0),
(642319, 0),
(642661, 0),
(643687, 0),
(644166, 0),
(644840, 0),
(644899, 0),
(645347, 0),
(646244, 0),
(646331, 0),
(648534, 0),
(648638, 0),
(650093, 0),
(650513, 0),
(650525, 0),
(651296, 0),
(651606, 0),
(652106, 0),
(652284, 0),
(652366, 0),
(652500, 0),
(652505, 0),
(652651, 0),
(652777, 0),
(652841, 0),
(653202, 0),
(653714, 0),
(653947, 0),
(655435, 0),
(655466, 0),
(655975, 0),
(656211, 0),
(656486, 0),
(656847, 0),
(657106, 0),
(657691, 0),
(658439, 0),
(658456, 0),
(658664, 0),
(658849, 0),
(658856, 0),
(659251, 0),
(659265, 0),
(660084, 0),
(660372, 0),
(660462, 0),
(660638, 0),
(660837, 0),
(663030, 0),
(663405, 0),
(663418, 0),
(663432, 0),
(665031, 0),
(665108, 0),
(665187, 0),
(665636, 0),
(665638, 0),
(666495, 0),
(666935, 0),
(667312, 0),
(668306, 0),
(668469, 0),
(668563, 0),
(668723, 0),
(669414, 0),
(669654, 0),
(670050, 0),
(670670, 0),
(670834, 0),
(671440, 0),
(671650, 0),
(672253, 0),
(672279, 0),
(672850, 0),
(673207, 0),
(673245, 0),
(674336, 0),
(675350, 0),
(675695, 0),
(676215, 0),
(676350, 0),
(676797, 0),
(677182, 0),
(677420, 0),
(678047, 0),
(678127, 0),
(678343, 0),
(678607, 0),
(678903, 0),
(679118, 0),
(679346, 0),
(679657, 0),
(679658, 0),
(680205, 0),
(680643, 0),
(682075, 0),
(682402, 0),
(682424, 0),
(682749, 0),
(683760, 0),
(683816, 0),
(684160, 0),
(685020, 0),
(685293, 0),
(685588, 0),
(686472, 0),
(686597, 0),
(687022, 0),
(687779, 0),
(688421, 0),
(688453, 0),
(688565, 0),
(689618, 0),
(690001, 0),
(690158, 0),
(690198, 0),
(690513, 0),
(691010, 0),
(691752, 0),
(691934, 0),
(692308, 0),
(693532, 0),
(693544, 0),
(694207, 0),
(694227, 0),
(694796, 0),
(694988, 0),
(695324, 0),
(695487, 0),
(695725, 0),
(696582, 0),
(696657, 0),
(696836, 0),
(698693, 0),
(699059, 0),
(699321, 0),
(699654, 0),
(700342, 0),
(700592, 0),
(700879, 0),
(700981, 0),
(701729, 0),
(702125, 0),
(703410, 0),
(703462, 0),
(704893, 0),
(705438, 0),
(705909, 0),
(706950, 0),
(708105, 0),
(708895, 0),
(709236, 0),
(709560, 0),
(710164, 0),
(710356, 0),
(710513, 0),
(710718, 0),
(710721, 0),
(711039, 0),
(711593, 0),
(712582, 0),
(713614, 0),
(714085, 0),
(714465, 0),
(715929, 0),
(716828, 0),
(717105, 0),
(718785, 0),
(719693, 0),
(720101, 0),
(721931, 0),
(722036, 0),
(722566, 0),
(723881, 0),
(724232, 0),
(724531, 0),
(725288, 0),
(725741, 0),
(725900, 0),
(727020, 0),
(727663, 0),
(728367, 0),
(728473, 0),
(728837, 0),
(729020, 0),
(729109, 0),
(729750, 0),
(730619, 0),
(731594, 0),
(731859, 0),
(732331, 0),
(732501, 0),
(733052, 0),
(733327, 0),
(733397, 0),
(733399, 0),
(733652, 0),
(733674, 0),
(733945, 0),
(735000, 0),
(735371, 0),
(736202, 0),
(736278, 0),
(736770, 0),
(737509, 0),
(737584, 0),
(738150, 0),
(738437, 0),
(739153, 0),
(739436, 0),
(739440, 0),
(739747, 0),
(741266, 0),
(741482, 0),
(742666, 0),
(742888, 0),
(742892, 0),
(743014, 0),
(743443, 0),
(743570, 0),
(743585, 0),
(744086, 0),
(744088, 0),
(744218, 0),
(744256, 0),
(744544, 0),
(744914, 0),
(747040, 0),
(747300, 0),
(748069, 0),
(749768, 0),
(749904, 0),
(750779, 0),
(750863, 0),
(751830, 0),
(752143, 0),
(754270, 0),
(755178, 0),
(755796, 0),
(755914, 0),
(756235, 0),
(756415, 0),
(756982, 0),
(757227, 0),
(757608, 0),
(757841, 0),
(758342, 0),
(758968, 0),
(759575, 0),
(759890, 0),
(760313, 0),
(760324, 0),
(760347, 0),
(760727, 0),
(760816, 0),
(762181, 0),
(762379, 0),
(763638, 0),
(763707, 0),
(763807, 0),
(763943, 0),
(765419, 0),
(765552, 0),
(766355, 0),
(766456, 0),
(766634, 0),
(766790, 0),
(766935, 0),
(767075, 0),
(767943, 0),
(768057, 0),
(769813, 0),
(770941, 0),
(771161, 0),
(772304, 0),
(773486, 0),
(773891, 0),
(774113, 0),
(775037, 0),
(775062, 0),
(775302, 0),
(775339, 0),
(775917, 0),
(776618, 0),
(776741, 0),
(776917, 0),
(777106, 0),
(777328, 0),
(778471, 0),
(779123, 0),
(779149, 0),
(779174, 0),
(779836, 0),
(780116, 0),
(780862, 0),
(781446, 0),
(781650, 0),
(782678, 0),
(783016, 0),
(783613, 0),
(784658, 0),
(785034, 0),
(785693, 0),
(785721, 0),
(786277, 0),
(786708, 0),
(787188, 0),
(788029, 0),
(788074, 0),
(788295, 0),
(788990, 0),
(789272, 0),
(790112, 0),
(790154, 0),
(790922, 0),
(791407, 0),
(791433, 0),
(791836, 0),
(791860, 0),
(792502, 0),
(793389, 0),
(793737, 0),
(793768, 0),
(793898, 0),
(794053, 0),
(794091, 0),
(794144, 0),
(794661, 0),
(796300, 0),
(796369, 0),
(796761, 0),
(797022, 0),
(797836, 0),
(797846, 0),
(799011, 0),
(799481, 0),
(799676, 0),
(799953, 0),
(800218, 0),
(800770, 0),
(801496, 0),
(802208, 0),
(802850, 0),
(803941, 0),
(804446, 0),
(804509, 0),
(805052, 0),
(805917, 0),
(807110, 0),
(807231, 0),
(807831, 0),
(807875, 0),
(808407, 0),
(808996, 0),
(809028, 0),
(809234, 0),
(810516, 0),
(812263, 0),
(812576, 0),
(814329, 0),
(814723, 0),
(814851, 0),
(815120, 0),
(815947, 0),
(817145, 0),
(817221, 0),
(817501, 0),
(818340, 0),
(818762, 0),
(819236, 0),
(819510, 0),
(820187, 0),
(821668, 0),
(821809, 0),
(821898, 0),
(822078, 0),
(822936, 0),
(823298, 0),
(823876, 0),
(824496, 0),
(825007, 0),
(825009, 0),
(825874, 0),
(826108, 0),
(826283, 0),
(827956, 0),
(828056, 0),
(828967, 0),
(829098, 0),
(829925, 0),
(830506, 0),
(831022, 0),
(831376, 0),
(831915, 0),
(832819, 0),
(834385, 0),
(834551, 0),
(834741, 0),
(834795, 0),
(835178, 0),
(837387, 0),
(837550, 0),
(837645, 0),
(838857, 0),
(838870, 0),
(839131, 0),
(840039, 0),
(840478, 0),
(841233, 0),
(841848, 0),
(842514, 0),
(842754, 0),
(843398, 0),
(843660, 0),
(843948, 0),
(844122, 0),
(844464, 0),
(844766, 0),
(845061, 0),
(845292, 0),
(846307, 0),
(846585, 0),
(848140, 0),
(848526, 0),
(848638, 0),
(848641, 0),
(849502, 0),
(849933, 0),
(851682, 0),
(852704, 0),
(853092, 0),
(853696, 0),
(854436, 0),
(854445, 0),
(854571, 0),
(854913, 0),
(854976, 0),
(855835, 0),
(856771, 0),
(858440, 0),
(858464, 0),
(859129, 0),
(859556, 0),
(859962, 0),
(860012, 0),
(860664, 0),
(861400, 0),
(861602, 0),
(861763, 0),
(861897, 0),
(862396, 0),
(862504, 0),
(864120, 0),
(864515, 0),
(865627, 0),
(866851, 0),
(867149, 0),
(870280, 0),
(870481, 0),
(871718, 0),
(872342, 0),
(872358, 0),
(872390, 0),
(872391, 0),
(873276, 0),
(873867, 0),
(874106, 0),
(874886, 0),
(875840, 0),
(875993, 0),
(876458, 0),
(876795, 0),
(878222, 0),
(878513, 0),
(879901, 0),
(882893, 0),
(882959, 0),
(883037, 0),
(883605, 0),
(883725, 0),
(883919, 0),
(884046, 0),
(884509, 0),
(884815, 0),
(884984, 0),
(885213, 0),
(885225, 0),
(885323, 0),
(885386, 0),
(886534, 0),
(886568, 0),
(887220, 0),
(890043, 0),
(892815, 0),
(894395, 0),
(894600, 0),
(894721, 0),
(896299, 0),
(897024, 0),
(897475, 0),
(898096, 0),
(898651, 0),
(898768, 0),
(899196, 0),
(899358, 0),
(900207, 0),
(900567, 0),
(900738, 0),
(900860, 0),
(901431, 0),
(901637, 0),
(901768, 0),
(901891, 0),
(902286, 0),
(902453, 0),
(903843, 0),
(903900, 0),
(904341, 0),
(905046, 0),
(905362, 0),
(905583, 0),
(905746, 0),
(905760, 0),
(906085, 0),
(906177, 0),
(906518, 0),
(906757, 0),
(907078, 0),
(907338, 0),
(907548, 0),
(907900, 0),
(908081, 0),
(908142, 0),
(908329, 0),
(908996, 0),
(909553, 0),
(910414, 0),
(910702, 0),
(911132, 0),
(911607, 0),
(911773, 0),
(912488, 0),
(913935, 0),
(914350, 0),
(914799, 0),
(915794, 0),
(916135, 0),
(916214, 0),
(916699, 0),
(917362, 0),
(917681, 0),
(918306, 0),
(918824, 0),
(919248, 0),
(919366, 0),
(919506, 0),
(920411, 0),
(920654, 0),
(921780, 0),
(921860, 0),
(923460, 0),
(923784, 0),
(924046, 0),
(924278, 0),
(924395, 0),
(925007, 0),
(926528, 0),
(926606, 0),
(926623, 0),
(926812, 0),
(926924, 0),
(926960, 0),
(927331, 0),
(927662, 0),
(928089, 0),
(928293, 0),
(928635, 0),
(929792, 0),
(930530, 0),
(931722, 0),
(932160, 0),
(932304, 0),
(932374, 0),
(932630, 0),
(933492, 0),
(934484, 0),
(934697, 0),
(935609, 0),
(936231, 0),
(937257, 0),
(937514, 0),
(937681, 0),
(937803, 0),
(937929, 0),
(938268, 0),
(938276, 0),
(938467, 0),
(939000, 0),
(939133, 0),
(939226, 0),
(939241, 0),
(939274, 0),
(939643, 0),
(939828, 0),
(940249, 0),
(941106, 0),
(941290, 0),
(942381, 0),
(942560, 0),
(943321, 0),
(943610, 0),
(943870, 0),
(944759, 0),
(945111, 0),
(945831, 0),
(946656, 0),
(946657, 0),
(947516, 0),
(948664, 0),
(950495, 0),
(952118, 0),
(952609, 0),
(953317, 0),
(954100, 0),
(954507, 0),
(954743, 0),
(956276, 0),
(956309, 0),
(956618, 0),
(956648, 0),
(957157, 0),
(957390, 0),
(959075, 0),
(959101, 0),
(959999, 0),
(961338, 0),
(961528, 0),
(961769, 0),
(962419, 0),
(964275, 0),
(965608, 0),
(966404, 0),
(966589, 0),
(966603, 0),
(966711, 0),
(968723, 0),
(969601, 0),
(970008, 0),
(970542, 0),
(971269, 0),
(971320, 0),
(971331, 0),
(971710, 0),
(972848, 0),
(973418, 0),
(973754, 0),
(973799, 0),
(974379, 0),
(974564, 0),
(974638, 0),
(974717, 0),
(975361, 0),
(975460, 0),
(975881, 0),
(977586, 0),
(977751, 0),
(978287, 0),
(979026, 0),
(979443, 0),
(979472, 0),
(980091, 0),
(980178, 0),
(981115, 0),
(981973, 0),
(982225, 0),
(982484, 0),
(983852, 0),
(984653, 0),
(985867, 0),
(986192, 0),
(986695, 0),
(986943, 0),
(988095, 0),
(988912, 0),
(989941, 0),
(990107, 0),
(990651, 0),
(990899, 0),
(991124, 0),
(992749, 0),
(992965, 0),
(993607, 0),
(993788, 0),
(994848, 0),
(994987, 0),
(996572, 0),
(996632, 0),
(996811, 0),
(997083, 0),
(997516, 0),
(997816, 0),
(998321, 0),
(998925, 0),
(999064, 0),
(999447, 0),
(999969, 0);

-- --------------------------------------------------------

--
-- Table structure for table `que`
--

CREATE TABLE `que` (
  `queNo` int(10) NOT NULL,
  `TestNo` int(100) NOT NULL,
  `que` text NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `que`
--

INSERT INTO `que` (`queNo`, `TestNo`, `que`, `Type`) VALUES
(1, 1, 'What is PHP?', 'DI-LR'),
(2, 1, 'What is LQ?', 'VA-RC');

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `id` int(100) NOT NULL,
  `TestNo` int(100) NOT NULL,
  `Score` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `TestNo` int(11) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Duration` int(10) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`TestNo`, `Name`, `Duration`, `Type`, `Created`, `status`) VALUES
(1, 'LQ MOCK-1@CAT 2017-18', 3, '0', '2018-04-23 13:56:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test_category`
--

CREATE TABLE `test_category` (
  `Id` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_category`
--

INSERT INTO `test_category` (`Id`, `Name`, `Timestamp`, `status`) VALUES
(1, 'CAT 2017-18', '2018-04-30 09:46:58', 1),
(2, 'IIFT 2017-18', '2018-04-30 10:23:37', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ans`
--
ALTER TABLE `ans`
  ADD PRIMARY KEY (`queNo`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD UNIQUE KEY `otp` (`otp`),
  ADD UNIQUE KEY `otp_2` (`otp`);

--
-- Indexes for table `que`
--
ALTER TABLE `que`
  ADD PRIMARY KEY (`queNo`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`TestNo`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `test_category`
--
ALTER TABLE `test_category`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ans`
--
ALTER TABLE `ans`
  MODIFY `queNo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `que`
--
ALTER TABLE `que`
  MODIFY `queNo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `TestNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test_category`
--
ALTER TABLE `test_category`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
