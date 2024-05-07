-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 20, 2023 at 07:36 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u493715205_havitnigeria`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `_id` int(11) NOT NULL,
  `cat_id` varchar(100) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`_id`, `cat_id`, `category_name`, `category_image`, `date_created`) VALUES
(22, 'gDuYy9bIjd0vF', 'gaming', 'gDuYy9bIjd0vF.jpg', '2023-08-31 07:58:43'),
(26, 'KVHPQc23IzYq5', 'watch', 'KVHPQc23IzYq5.jpg', '2023-08-31 09:40:53'),
(28, 'PVSFIsaL6Yhcq', 'headphones', 'PVSFIsaL6Yhcq.jpg', '2023-08-31 01:10:26'),
(29, '6fygQncL4PaF7', 'earbuds', '6fygQncL4PaF7.png', '2023-08-31 10:33:12'),
(30, 'V4CyDzNBv2rRE', 'projectors ', 'V4CyDzNBv2rRE.jpg', '2023-09-01 10:55:47'),
(31, 'YXombK7rAUfC6', 'power banks', 'YXombK7rAUfC6.jpeg', '2023-09-01 12:29:14'),
(32, '3hXyuQdfiotYL', 'speakers', '3hXyuQdfiotYL.png', '2023-09-01 12:40:30'),
(33, 'EL0Oc7MGUjhK6', 'massager', 'EL0Oc7MGUjhK6.jpg', '2023-09-01 01:03:24'),
(34, '8hZk0oHPlOsAd', 'chargers', '8hZk0oHPlOsAd.png', '2023-09-01 01:57:06'),
(36, 'OpN0SwkP7mJXG', 'mice', 'OpN0SwkP7mJXG.jpg', '2023-09-01 04:12:07'),
(37, 'XBWQhG1vDIRSw', 'Gaming', 'XBWQhG1vDIRSw.jpeg', '2023-09-03 11:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(37, 'luULRBZ5K7pMx', 'oD45UA1fKyOJv', 2, '36000.00', '2023-08-31 08:16:53', '2023-08-31 08:16:53'),
(38, 'vnSR8r32dJCD5', '8zq1iCRBJvMfH', 1, '12000.00', '2023-09-03 14:55:08', '2023-09-03 14:55:08'),
(39, 'plU9O23CdJfb5', 'im9WV8Sx76JsB', 1, '16500.00', '2023-09-03 16:40:52', '2023-09-03 16:40:52'),
(40, 'wzjnTchgeYBuH', 'kv73IL5U1wpZQ', 1, '20000.00', '2023-09-04 06:21:06', '2023-09-04 06:21:06'),
(41, 'AJWjXa6e2QzmH', 'seftVkdACYMWq', 1, '15000.00', '2023-09-06 21:46:13', '2023-09-06 21:46:13'),
(42, 'poJSTFiBKH7GL', 'RoYfKQX4lcGmr', 1, '37000.00', '2023-09-14 15:05:22', '2023-09-14 15:05:22'),
(43, '2zsXakyY9HQ8G', 'ySC3HJvFeg7OT', 2, '10000.00', '2023-09-19 10:20:24', '2023-09-19 10:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `_id` int(11) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`_id`, `product_id`, `product_image`, `date_created`) VALUES
(44, 'yTBJiufmODzRC', '5gdPjTkfLKYuE-E9ImbrsJl1H7GDVax26N.jpg', '2023-06-07 20:09:47'),
(52, '7TOpCzZx86ERh', 'ojvg5FypZGheV-VXzcmSK0EiLOfda7DTku.jpg', '2023-08-07 08:32:34'),
(53, '7TOpCzZx86ERh', 'mvySd0Kj5ipGQ-QDF6RA8u1xBT2CbsM7zn.jpg', '2023-08-07 08:32:52'),
(59, 'GiaujDzdAS6T4', 'ze7yV8DHptKkT-TOB1mvnA04oWXSU5qGuM.jpg', '2023-08-11 18:06:27'),
(61, 'GiaujDzdAS6T4', 'Gjcy937k4ViZr-rueFBbdDsWILzN8Ovpt5.jpg', '2023-08-22 09:36:48'),
(65, '3HJDLnXrPv6Bw', 'CGkpl2cxdfRMF-FTbW59nQDmeX3PVK6rHJ.jpeg', '2023-08-31 08:26:18'),
(66, 'anV5LGSc2rk7d', 'xCpLFHc5n4BZf-fRPuhel0WjJXATbgYMK7.jpeg', '2023-08-31 09:00:05'),
(67, 'oD45UA1fKyOJv', 'mBP8aIdEip2nK-K5yFVrXH0RzwtkWJ3Ae4.jpg', '2023-08-31 09:40:19'),
(68, 'oD45UA1fKyOJv', 'RMDIy3SYJAi9T-T1750rlmUXcZPGtnzVfQ.jpg', '2023-08-31 09:40:38'),
(69, 'oD45UA1fKyOJv', 'MyZrSjaeUV8FP-PJTE31Ick0ntzHbq9xOo.jpg', '2023-08-31 09:40:51'),
(70, 'oD45UA1fKyOJv', 'dwiFRyh8zcLJV-Vf1loZPKC6kYbq9G3jp4.jpg', '2023-08-31 09:41:01'),
(71, 'RoYfKQX4lcGmr', 'F1N8I6tZYyzMb-bCUf5hAGSr3uBQdTOa0e.jpg', '2023-08-31 10:03:40'),
(72, 'RoYfKQX4lcGmr', '5YN1QKLuspHMq-qtV3Xbh8ETD09FJkgam6.jpg', '2023-08-31 10:03:49'),
(73, 'RoYfKQX4lcGmr', 'Lb5v7NPm1T4Vd-dFERC9lSZ2eOzXgWfjsk.jpg', '2023-08-31 10:03:57'),
(74, 'RoYfKQX4lcGmr', 'Z3XaEz8opRxn7-7tbuIisWm9FHGJAqg4dY.jpg', '2023-08-31 10:04:40'),
(75, 'lDzd3W8EF6YaT', 'ehu0dZoRUmkt1-1vJHTIXFD5jpLPy7fSOx.jpg', '2023-08-31 11:08:21'),
(76, 'lDzd3W8EF6YaT', 'VDfs4F5hg8xU7-7b936dPockOSmuvlQB2z.jpg', '2023-08-31 11:08:55'),
(77, 'lDzd3W8EF6YaT', 'shzar7DuSfXbi-ix3Zc1Wg9F52wTpQjCkE.jpg', '2023-08-31 11:09:14'),
(78, 'lDzd3W8EF6YaT', 'xrBcK9YZsSkUa-aH2uADpJNh5nevy1RdiI.jpg', '2023-08-31 11:09:23'),
(79, 'DRXQJ0M21bakI', 'SdWL584fzAGsR-RHZxeIrFkp3O2ohXbKqg.jpeg', '2023-08-31 11:22:53'),
(80, '6ig3C0sPqlbex', 'ja756yCx1nOrl-lYLpN9tHWRQ3Pzhb8cVw.jpg', '2023-08-31 19:28:17'),
(81, 'OA2IBKnZRijsr', '4iFuTSDMRqkao-o6b8fKWgcU1hNxP037sC.jpeg', '2023-08-31 19:43:22'),
(82, 'zAQCiD4SMqxLl', 'bGsFxAYpjRDlL-LcaBz72rqKZCih1E45o3.jpg', '2023-08-31 19:49:08'),
(83, 'zAQCiD4SMqxLl', 'bvw2EcrF6Z9zn-nNdCK5kUWlgpSaXHoQt8.jpg', '2023-08-31 19:49:51'),
(84, 'zAQCiD4SMqxLl', 'FLA51efXB0NkG-Gzjy8ShC3mbDP2arwOn6.jpg', '2023-08-31 19:50:02'),
(85, 'zAQCiD4SMqxLl', 'yODnfMIlJoXhY-YK5BzPkLV3cbNAZrFdS8.jpg', '2023-08-31 19:50:14'),
(86, 'seftVkdACYMWq', 'xCyQYgceK4obX-XkOm9DaL0nF8HhG5sWJU.jpg', '2023-08-31 20:07:16'),
(87, 'seftVkdACYMWq', 'epaOzQcxs5dEm-m62bYtrky9GR01n4DNXT.jpg', '2023-08-31 20:07:28'),
(88, 'OuG2loeTJgasf', 'S8OJ0e4IH1g5f-fDxy9NoUVqQBXs73Ki6j.jpg', '2023-08-31 20:50:08'),
(89, '3ZBwGhxPLrnA9', 'ncEYRdso2NiBJ-JC9b6I1pKjMwAFGTWPOt.jpg', '2023-08-31 21:37:26'),
(90, '3ZBwGhxPLrnA9', '7hWvgU52wqZMf-fnypOG89rS6RaHIL0P1o.jpg', '2023-08-31 21:38:47'),
(91, 'im9WV8Sx76JsB', 'Q6fvcW8ZmGeTy-yXO7N45n93HCDgKdpJ1u.jpg', '2023-08-31 21:52:06'),
(92, '5q1NcfQR6H7JK', 'PvekzF49DwIKC-CAJdm20sLUnW3SxNyajq.jpg', '2023-08-31 22:06:13'),
(93, '5q1NcfQR6H7JK', 'MExyZsgNWLlaD-D1cX28z0ReUqiphHmIKB.jpg', '2023-08-31 22:06:38'),
(94, '5q1NcfQR6H7JK', 'mnGN71C9ET2sh-hbXqvSA6pWKiVdHkx4y5.jpg', '2023-08-31 22:07:04'),
(95, '5q1NcfQR6H7JK', 'C3EOZFmltpIVY-Yj7KoHqW1NDecuXx9vrP.jpg', '2023-08-31 22:07:33'),
(96, 'saUckeARjVB8Z', 'kbm7wieqTQChp-pPFt1oWJ4v8DsnrOM025.jpg', '2023-09-01 10:02:44'),
(97, 'saUckeARjVB8Z', 'EJhk2TvWrupRb-bXFiUwZS9mgBsNfYOPC0.jpg', '2023-09-01 10:03:03'),
(98, 'saUckeARjVB8Z', 'bRQYwZ5MtS1kX-XNjWL9qvn2VdxD7P46AU.jpg', '2023-09-01 10:03:17'),
(99, 'saUckeARjVB8Z', 'YGVoMQt3DU1eE-EP5SxkgmF9RcATWOHaK2.jpg', '2023-09-01 10:03:24'),
(100, 'BusHJn9GAChfy', 'dlvEDCm6QVT4j-jubeXZJhg5sLAxUp8t2O.jpeg', '2023-09-01 10:21:56'),
(101, 'BusHJn9GAChfy', 'pSZfn0E89xkwN-N2lraXGdsJ47OHiIT6te.jpeg', '2023-09-01 10:22:07'),
(102, 'BusHJn9GAChfy', 'nQI60roSAF9Ok-kBq5d4Z8cfLa12WjtDxU.jpeg', '2023-09-01 10:22:17'),
(103, 'NKlrAfuTtUkX1', 'kEU5DaIRlGrP2-2vX97VYiAnuSLNBhW4F3.jpg', '2023-09-01 10:32:09'),
(104, 'NKlrAfuTtUkX1', 'Ao43xtjYXBgnI-IhNu7HSmeTfb0pQZizUr.jpg', '2023-09-01 10:32:18'),
(105, 'NKlrAfuTtUkX1', 'FJT0lmd8q7P6y-yLVcx3fjBktevzKwYI2O.jpg', '2023-09-01 10:32:26'),
(106, 'NKlrAfuTtUkX1', 'ZW8GNpQ63uDk0-0xbA9IT5vywVHqERSPKg.jpg', '2023-09-01 10:32:40'),
(107, '1QoqwVd9LmOyt', 'sLoqHj78b2u4C-CtvM5akygT9XPcK0Urie.jpg', '2023-09-01 10:47:32'),
(108, '1QoqwVd9LmOyt', 'uZnpSDq5KbeyF-FAkVtBxMPmdov9s2j6fN.jpg', '2023-09-01 10:47:43'),
(109, '1QoqwVd9LmOyt', 'N50zBVph1IkAn-nZ2WjxlwuL4EH6bXKig9.jpg', '2023-09-01 10:47:51'),
(110, '1QoqwVd9LmOyt', 'M6Axm81tIBbdc-cS0f54YjVQoEzr7DeFln.jpg', '2023-09-01 10:47:59'),
(112, 'KUN1yFSap3g9j', 'sbt8hwm6Bd2gj-jikIGPnZ0vefAa3FrcD4.jpg', '2023-09-01 10:53:13'),
(113, 'KUN1yFSap3g9j', 'hMuFc3I7JzxHs-sKB6Tlygfap2mRZYbqwO.jpg', '2023-09-01 10:53:27'),
(114, 'KUN1yFSap3g9j', 'G5XL2vtW6rh3p-pBP8HesImVUxgbd1O7ET.jpg', '2023-09-01 10:53:34'),
(115, 'L891gTJ5NRbHe', '9GMrIEkwNvJKd-dW2yHfcm5AxXTuze4QFp.jpg', '2023-09-01 11:35:37'),
(116, 'L891gTJ5NRbHe', 'E3FVipsLdRwu1-1mYAac9tQjKPoWhO8Uev.jpg', '2023-09-01 11:35:47'),
(117, 'K2a7Y0HTwxj95', 'kOF0bj7DwRTz2-2sthar4Lm1i6o5nBlPXg.png', '2023-09-01 11:45:54'),
(118, 'K2a7Y0HTwxj95', 'bJxoYtMXpOrzd-du9ZR560IQhDmBVlv2eq.jpg', '2023-09-01 11:46:11'),
(119, 'K2a7Y0HTwxj95', 'Sopr3Fz5aATDu-u64q1Ex8vUIBR2fbsJgL.jpg', '2023-09-01 11:46:24'),
(120, 'axzhEmMgt49Vo', '4mbGWZje3Xs2Y-YRyxNJQt61EPMOKlcqDL.png', '2023-09-01 11:57:55'),
(122, 'kv73IL5U1wpZQ', 'hJZDfUt6wpIvb-bgojaBLcHCTyQlk0RXKW.jpg', '2023-09-01 12:07:17'),
(123, 'kv73IL5U1wpZQ', 'wXioAB58tkLjn-nqCsSgJxzNDH01lKpdre.jpg', '2023-09-01 12:08:11'),
(125, 'axzhEmMgt49Vo', 'iVxLIs7e0KfEa-avNyl2owSdPrT9RmkJDH.png', '2023-09-01 12:11:48'),
(126, 'TphPD83vyaBUm', '4g5qWEc0vAYDF-FoONLmirBXUIzlJfMGRV.jpg', '2023-09-01 12:49:07'),
(127, 'TphPD83vyaBUm', 'mdj5XgJ8uLlPN-NBZbxaOQCTzKw7ciFfqt.jpg', '2023-09-01 12:49:40'),
(128, 'pYda8HwrzOK1Q', 'OzmNWpGX0SrAc-cYVa4EQog8T1Rsj3ZF7J.jpeg', '2023-09-01 13:20:57'),
(129, '8zq1iCRBJvMfH', 'Uxg2XiyJhWnTZ-ZRVNlvKAH7Q8uLB6bp49.jpg', '2023-09-01 14:39:37'),
(132, '8zq1iCRBJvMfH', 'avnsiEPzG19B5-5HIwxkCAM6ZtqdDSTrl3.png', '2023-09-01 14:41:32'),
(133, 'wPWYu32BIiplC', 'UDtpseQIMJy2W-WRbFd1uzXfrxVNm47noK.jpg', '2023-09-01 14:55:10'),
(134, 'wPWYu32BIiplC', 'PH5usVNhLovjS-SZTY0KQCR1pXGJqg7BmE.jpg', '2023-09-01 14:55:30'),
(135, 'TAofhWGJSyEnM', 'Yw03PzUA4DTkB-BjNWIcp6gVFXLHqCmSKs.jpg', '2023-09-01 15:01:31'),
(137, '5IABke6nxXWsa', '7nvNkprgPU1Eh-hJCHRfFKGbSs2iAoDtz4.jpg', '2023-09-01 15:17:22'),
(138, 'yOeqlDIY5RAob', 'gBG7Wx9UE6u1J-JqaeYQtpnNMmjvCRAwLS.jpg', '2023-09-01 15:23:38'),
(139, 'yOeqlDIY5RAob', 'lOqxINMBkSU9c-cPVDdopE37fbQtCHG6gZ.jpg', '2023-09-01 15:23:58'),
(140, 'BcFg1yAaHlnmt', 'B7uzma3SyoMHj-jJ2pOvYswxRclkth0XUi.jpg', '2023-09-01 15:49:16'),
(141, 'BcFg1yAaHlnmt', 'H5FaDz4sfXepu-uNJP8jk2IbOTiBoC0vYK.jpg', '2023-09-01 15:49:26'),
(142, 'j8lyA9oG52Qpa', 'JsSL3xEnKNa7u-uiQ8vFj9G5oAmXVrZTfh.jpeg', '2023-09-01 16:04:53'),
(143, 'elVvBLIFD7PZY', '8KInJQZOA4oHW-Wp3TBj0V9lsxd2Yw5yPk.jpg', '2023-09-01 16:44:12'),
(144, 'elVvBLIFD7PZY', 'Qb0Seiz5opLW4-48YPXv2hsGq9K6DZuyJa.jpg', '2023-09-01 16:44:35'),
(145, 'CY4HrQoc7SOXE', 'tc98SYiJ7jnFl-lPhp50doa6B1MXZqDxTU.jpg', '2023-09-01 16:51:03'),
(146, 'CY4HrQoc7SOXE', 'DcEfHxVsXoROQ-Qqw6AKdhrl3ZYzFy5ugC.jpg', '2023-09-01 16:51:17'),
(147, 'QjJLVZN5HlvgU', 'D7SYCoN8Za9Vm-mxrvspAOz5Qt2uMjqkFg.jpg', '2023-09-02 09:50:54'),
(148, 'p14Uf2EPQKxen', 'HPJB8dvboFx0a-awKh5nIXfAtgGCz9krTL.jpg', '2023-09-03 11:13:00'),
(149, 'p14Uf2EPQKxen', 'QyARPTGSmZnzh-h6dCLVoi5DcjMws7lKW3.jpg', '2023-09-03 11:13:32'),
(150, 'p14Uf2EPQKxen', 'n3zp2Q5aRSjFX-XTGMlvZbyUskxEheOfgo.jpg', '2023-09-03 11:13:56'),
(151, 'p14Uf2EPQKxen', 'VHWmLAQM8aK5s-sTEr3NeR1igfBuqZjodn.jpg', '2023-09-03 11:14:05'),
(153, 'ySC3HJvFeg7OT', 'yHkZQVG7hFpdi-iO9r6gqJSWUeA3ClbL8j.jpeg', '2023-09-03 11:30:14'),
(154, 'ySC3HJvFeg7OT', 'sMlWk9HDX1Jd3-3CUzIFTgbAEvuSf5tQOB.jpg', '2023-09-03 11:30:32'),
(155, 'ySC3HJvFeg7OT', 'gJQTy76a1pOsA-A9xD2kWuKUqI05LBlMoP.jpg', '2023-09-03 11:30:41'),
(156, 'ySC3HJvFeg7OT', 'jtOFIQ7moTLq8-8WHizGkSDyAbRBN4hagP.jpg', '2023-09-03 11:30:50'),
(157, 'dO2vKakJpoGPw', 'feW30KgYCZ7yx-xvnDshrmHpiRwkbJENAc.jpg', '2023-09-03 11:45:12'),
(158, 'dO2vKakJpoGPw', 'upiINE06JzQkR-RnMe4oVyf8xmPtOZhBcY.jpg', '2023-09-03 11:45:31'),
(159, 'dO2vKakJpoGPw', 'cgnbpi6OCekKt-tPzvNTA1VUMxWjJRBuwm.jpg', '2023-09-03 11:45:40'),
(160, 'dO2vKakJpoGPw', 'HiN37K2TowS8g-gVBqFx40aQfP9DvuzMbj.jpg', '2023-09-03 11:45:46'),
(161, 'NRFpmCvk5lIyK', 'oJ1uLSA9OHhKY-YdtpFcBkwxvRgEe6M3Tn.jpg', '2023-09-03 12:00:25'),
(162, 'NRFpmCvk5lIyK', 'Ufeap248BlEZN-N36n1PWDtxoYHjFGwgMI.jpg', '2023-09-03 12:00:35'),
(163, 'NRFpmCvk5lIyK', 'iK94IYX7O5QNv-vFpwmsRhgu8dWGrlVATn.jpg', '2023-09-03 12:00:50'),
(164, 'NRFpmCvk5lIyK', 'F2sVBCPntQ438-8ad5DYiKGvMR7WAkUNbX.jpg', '2023-09-03 12:01:00'),
(165, 'zpWt0TAc3G8R2', 'DOaKGTUJh0VCP-PlryuIw95tBdoSzHigmZ.jpg', '2023-09-04 20:12:47'),
(166, 'zpWt0TAc3G8R2', '8FoSiqjCxzPTs-s0OumrlXtR3cbZghDkA2.jpg', '2023-09-04 20:13:00'),
(167, 'zpWt0TAc3G8R2', 'ec4HqNVSp89i6-6FJLyfBsMQKzutOnCXdo.jpg', '2023-09-04 20:13:19'),
(168, 'zpWt0TAc3G8R2', 'FGlkEBDo7Mm10-0PXcCzT9RqhjZUASVvIw.jpg', '2023-09-04 20:13:30'),
(169, 'elVvBLIFD7PZY', 'j9psLfMAJ2h3b-bZD1eBqKPQazRnuoSHCY.jpeg', '2023-09-04 20:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwdResetId` int(11) NOT NULL,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `_id` int(11) NOT NULL,
  `sub_id` varchar(50) NOT NULL,
  `cat_id` varchar(100) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`_id`, `sub_id`, `cat_id`, `sub_name`, `date_created`) VALUES
(26, 'xunci8YJL5pmM', 'gDuYy9bIjd0vF', 'Gaming Head Phones', '2023-08-31 08:31:34'),
(27, 'D1ZSeK38WLhmd', 'KVHPQc23IzYq5', 'Smartwatch', '2023-08-31 09:41:02'),
(28, 'UPkCtVb9K4R3F', 'KVHPQc23IzYq5', 'Smartwatch', '2023-08-31 10:51:17'),
(29, '9AtQVCe6z01YK', 'fYDv2opTE3Ac0', 'Wireless Headphones', '2023-08-31 12:01:57'),
(30, 'u6QC1dFhxN8qO', 'fYDv2opTE3Ac0', 'Wired Headphones', '2023-08-31 12:02:11'),
(31, 'TSyrjHL93t70d', 'PVSFIsaL6Yhcq', 'Wireless Headphones', '2023-08-31 01:10:42'),
(32, '9vBZembnOwGL6', 'PVSFIsaL6Yhcq', 'Wired Headphones', '2023-08-31 01:10:56'),
(33, 'Xfln9FvoTk6P7', 'KVHPQc23IzYq5', 'Kids', '2023-08-31 10:59:02'),
(34, 'ofTzMh7q5ZuKs', 'V4CyDzNBv2rRE', 'Projectors With Battery', '2023-09-01 11:36:47'),
(35, 'zRVnl0Nkx9TvH', 'V4CyDzNBv2rRE', 'Projectors Without Battery', '2023-09-01 11:37:10'),
(36, 'uQKypAfNmswbM', '3hXyuQdfiotYL', 'USB Speakers', '2023-09-01 12:41:04'),
(37, '1RjW4uY53ceKz', '3hXyuQdfiotYL', 'Bluetooth speakers', '2023-09-01 12:41:27'),
(38, 'pOyDTb8GvHZFX', 'OpN0SwkP7mJXG', 'wired ', '2023-09-01 04:13:04'),
(39, '2juZt51s8PQSX', 'OpN0SwkP7mJXG', 'wireless', '2023-09-01 04:13:16'),
(40, 'Bm4CXOZGozukq', 'OpN0SwkP7mJXG', 'GAMING', '2023-09-03 11:54:35'),
(41, '8ps9bScR4LWJy', 'XBWQhG1vDIRSw', 'MICE', '2023-09-03 11:57:28'),
(42, 'HVb4RcMY1Edn2', 'XBWQhG1vDIRSw', 'Headphones', '2023-09-03 11:57:44'),
(43, 'mKBU23vNwqAo5', 'XBWQhG1vDIRSw', 'KEYBOARDS ', '2023-09-03 11:58:17'),
(44, 'c1DwjI0zVPYnG', 'XBWQhG1vDIRSw', 'Mouse Pad/Mat', '2023-09-03 11:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ads`
--

CREATE TABLE `tbl_ads` (
  `_id` int(11) NOT NULL,
  `cat_id` varchar(50) NOT NULL,
  `ad_image` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `total` varchar(100) NOT NULL,
  `order_status` varchar(5) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`_id`, `user`, `product_id`, `quantity`, `total`, `order_status`, `date_created`) VALUES
(83, '20', 'oD45UA1fKyOJv', '2', '36000', '1', '2023-08-31 08:16:53'),
(86, '21', '8zq1iCRBJvMfH', '1', '12000', '1', '2023-09-03 14:55:08'),
(88, '22', 'im9WV8Sx76JsB', '1', '16500', '1', '2023-09-03 16:40:52'),
(90, '23', 'kv73IL5U1wpZQ', '1', '20000', '1', '2023-09-04 06:21:06'),
(91, '25', 'seftVkdACYMWq', '1', '15000', '1', '2023-09-06 21:46:13'),
(93, '26', 'K2a7Y0HTwxj95', '2', '17000', '0', '2023-09-09 17:19:52'),
(94, '27', 'RoYfKQX4lcGmr', '1', '37000', '1', '2023-09-14 15:05:22'),
(95, '28', 'OA2IBKnZRijsr', '1', '22000', '0', '2023-09-16 06:45:12'),
(96, '23', 'ySC3HJvFeg7OT', '2', '10000', '1', '2023-09-19 10:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `total_amount` int(100) NOT NULL,
  `user_address_id` int(10) NOT NULL,
  `order_status` enum('placed','shipped','delivered','cancelled','accepted','pending') NOT NULL DEFAULT 'pending',
  `deliveryfee` int(100) NOT NULL DEFAULT 0,
  `date_updated` varchar(30) NOT NULL DEFAULT current_timestamp(),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`_id`, `user_id`, `order_id`, `total_amount`, `user_address_id`, `order_status`, `deliveryfee`, `date_updated`, `date_created`) VALUES
(83, 20, 'luULRBZ5K7pMx', 36000, 32, 'delivered', 0, '2023-09-04', '2023-09-04 05:55:48'),
(84, 21, 'vnSR8r32dJCD5', 12000, 33, 'delivered', 0, '2023-09-03', '2023-09-03 15:07:52'),
(85, 22, 'plU9O23CdJfb5', 16500, 34, 'placed', 0, '2023-09-04', '2023-09-04 05:54:12'),
(86, 23, 'wzjnTchgeYBuH', 20000, 35, '', 0, '2023-09-04 06:21:06', '2023-09-04 06:21:06'),
(87, 25, 'AJWjXa6e2QzmH', 15000, 36, '', 0, '2023-09-06 21:46:13', '2023-09-06 21:46:13'),
(88, 27, 'poJSTFiBKH7GL', 37000, 37, 'placed', 0, '2023-09-14', '2023-09-14 15:14:13'),
(89, 23, '2zsXakyY9HQ8G', 10000, 35, 'delivered', 0, '2023-09-19', '2023-09-19 10:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `_id` int(11) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `cat_id` varchar(30) NOT NULL,
  `sub_id` varchar(30) NOT NULL,
  `price` varchar(100) NOT NULL,
  `stock` varchar(100) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`_id`, `product_id`, `product_name`, `cat_id`, `sub_id`, `price`, `stock`, `details`, `date_created`, `weight`) VALUES
(32, 'oD45UA1fKyOJv', 'havit h2019u gaming headset', 'gduyy9bijd0vf', 'xunci8yjl5pmm', '15000', '50', '1. High-quality 50mm speaker unit for exceptional audio, creating a 3D surround sound experience.\r\n\r\n2. Designed to be lightweight and comfortable, featuring an adjustable headband, along with stylish RGB streaming lights.\r\n\r\n3. Complete ear coverage with soft earmuffs for noise isolation, complemented by passive noise reduction and a microphone with excellent sensitivity for all-around sound pickup.\r\n\r\n\r\n\r\n\r\n', '2023-08-31 09:37:31', 8),
(34, 'anV5LGSc2rk7d', 'havit m9037 bluetooth call smartwartch', 'kvhpqc23izyq5', 'd1zsek38wlhmd', '22000', '', 'Introducing the Havit M9037 Smartwatch with Bluetooth Calling:\r\n\r\nFeaturing a 151 TET screen\r\n\r\nCustomizable watch face (CIAL)\r\n\r\nEmpower yourself with a smart and convenient experience, controlling everything effortlessly\r\n\r\nEnjoy Bluetooth calling, voice assistant, and health monitoring functionalities\r\n\r\nCrafted with a housing made from durable aluminum alloy', '2023-08-31 08:59:32', 0),
(35, 'RoYfKQX4lcGmr', 'havit m9030 pro 1.43\" amoled hd display  24 hour life assistant smart watch', 'kvhpqc23izyq5', 'd1zsek38wlhmd', '37000', '', 'HAVIT M9030 Intelligent Wristwatch\r\n\r\nEnables mobile phone tracking, music manipulation, weather updates, message and call preview.\r\n\r\nBacks 8 workout modes like walking, swimming, soccer, and more.\r\n\r\nSwift and simple connection to any smartphone.\r\nUser-friendly touch screen interface.\r\n\r\nEquipped with health features like heart rate monitoring, blood pressure tracking, and sleep analysis.\r\n\r\nWaterproof, adhering to IP67 standards.', '2023-08-31 10:03:21', 0),
(36, 'lDzd3W8EF6YaT', 'h633bt wireless foldable headphones', 'fydv2opte3ac0', '9atqvce6z01yk', '14000', '', 'Innovative folding structure\r\n\r\nRemarkably lightweight and comfortable, weighing only 185g\r\n\r\nSuperior 40MM high-quality audio experience\r\n\r\nEnjoy music for up to 22 hours nonstop\r\n\r\n\r\n\r\n\r\n\r\n', '2023-08-31 11:06:13', 0),
(37, 'DRXQJ0M21bakI', 'havit h631bt wireless headphones with active noise cancellation, elevate sound isolation, effortlessly block external noise.', 'fydv2opte3ac0', '9atqvce6z01yk', '25000', '', 'Introducing the Havit H631BT Wireless Headphones - A Product by Havit\r\n\r\nModel: Havit H631BT | Type: Regular | Connectivity: Wireless\r\n\r\nGet ready to elevate your audio experience with the Havit H631BT Wireless Headphones. With a sleek and comfortable design, these headphones offer an array of features that bring your music to life.\r\n\r\nBluetooth Connectivity:\r\nStay wire-free with seamless wireless connection. The Bluetooth 5.0 technology ensures a stable connection within a range of 10 meters, giving you the freedom to move while enjoying your favorite tunes.\r\n\r\nImmersive Audio:\r\nThe H631BT boasts a 40mm driver unit that delivers premium high-fidelity sound. With a frequency response ranging from 20Hz to 20kHz, you\'ll experience the full spectrum of your music. The headphones\' sensitivity of 110dB and 32-ohm impedance enhance the audio quality, ensuring clear and dynamic sound.\r\n\r\nActive Noise Cancellation:\r\nEscape the noise with built-in noise cancellation technology. This feature enh', '2023-08-31 11:20:09', 0),
(39, '6ig3C0sPqlbex', 'havit quality h651bt headphone with noise canceling-', 'pvsfisal6yhcq', 'tsyrjhl93t70d', '18000', '', 'Havit H651Bt Wireless ANC Headphones – Elevate your audio experience with Wholesale Type C Port Stereo Hifi Sound Portable Headsets featuring Active Noise Cancellation and a built-in microphone.\r\n\r\n\r\nProduct Details:\r\nModel: H651Bt\r\n\r\nKey Features:\r\n\r\nIncorporates Active Noise Reduction chip for exceptional sound isolation\r\nConnectivity Version: V5.0\r\nBattery Capacity: 350mAh\r\nPlayback Duration: 16 hours (Bluetooth mode), 8 hours (ANC + Bluetooth mode)\r\nRapid Charging: 2 hours\r\nConnector: TYPE C\r\nWireless Range: 10 meters (unobstructed)\r\nSpeaker Sensitivity: 110±3db\r\nSpeaker Frequency Range: 20Hz to 20kHz\r\nPower Input: DC5V/1A\r\nImpedance: 32Ω\r\n\r\nExperience unmatched audio fidelity with the Havit H651Bt Wireless ANC Headphones – Where quality meets innovation.\r\n\r\n\r\n\"Your pursuit of excellence ends here, with HAVIT.\"\r\nProduct Name: H651Bt\r\nHighlighted Features:\r\n\r\nEnhanced by an Active Noise Reduction chip for unparalleled ambient sound control.\r\nVersion: V5.0 for seamless connectivity.\r', '2023-08-31 19:54:27', 0),
(40, 'OA2IBKnZRijsr', 'havit h631bt active noise cancellation wireless bluetooth headset', 'pvsfisal6yhcq', 'tsyrjhl93t70d', '22000', '', 'Smart Active Noise Cancellation exceeding -25dB\r\nInnovative Foldable and Rotatable Design\r\nUtilizes Bluetooth 5.0 and Touch Controls\r\nIncorporates a Type-C Port\r\nNotable for its Lightweight Build and Exceptional Comfort\r\n\r\nDimensions of the product: 19015075mm\r\nWeight without packaging: 200g\r\nWireless operational range: Up to 10 meters (unobstructed)\r\nSpeaker dimensions: Φ40mm\r\nImpedance of the speaker: 32Ω\r\nSensitivity of the speaker: 108±3dB\r\nFrequency range of the speaker: 20Hz to 20kHz\r\nSupported profiles: HFP/A2DP/AVRCP\r\nAudio codecs employed: AAC/SBC\r\nVoltage required for input: 5V / 1A', '2023-08-31 19:42:28', 0),
(41, 'zAQCiD4SMqxLl', 'havit h633bt wireless foldable headphone', 'pvsfisal6yhcq', 'tsyrjhl93t70d', '14000', '', 'Experience the epitome of comfort and convenience with the HAVIT H633BT Foldable Headphones. Crafted to provide a sensation of weightlessness, these headphones weigh in at a mere 185 grams, making every listening session a breeze.\r\n\r\nDesigned with your lifestyle in mind, the foldable design ensures easy portability and storage, allowing you to take your music wherever you go. The adjustable headband guarantees a personalized fit, ensuring optimal comfort for extended periods of use.\r\n\r\nImmerse yourself in a world of sound that\'s nothing short of exceptional. Boasting 40mm premium drivers, these headphones deliver a high-fidelity audio experience that\'s rich, crisp, and captivating. Feel the music like never before as every note comes to life with remarkable clarity and depth.\r\n\r\nEnjoy your favorite tunes without interruption, as the H633BT headphones offer an impressive playtime of up to 22 hours. Whether you\'re on a long journey or simply lost in the music, these headphones are your p', '2023-08-31 19:48:50', 0),
(42, 'seftVkdACYMWq', 'havit h630bt wireless bluetooth v5.3 over-ear foldable headset -black', 'pvsfisal6yhcq', 'tsyrjhl93t70d', '15000', '', 'HAVIT H630BT Headphones – Your Gateway to Effortless Comfort and Remarkable Sound.\r\n\r\nDesigned with simplicity in mind, the H630BT headphones provide a snug fit by effortlessly enveloping your ears. Tailor the fit to your exact preferences with its adjustable sizing, ensuring a personalized experience that molds perfectly to each individual\'s head shape. This remarkable adaptability makes the H630BT suitable for a diverse range of users, transcending generations.\r\n\r\nImmerse yourself in tranquility with the H630BT\'s exceptional sound isolation and whisper-quiet audio output. Equipped with a built-in 40mm driver, these headphones produce a symphony of beautiful, mellifluous, and incredibly serene sounds that captivate the senses.\r\n\r\nUnleash the potential of your music with the H630BT\'s long-lasting battery prowess. With an impressive 36 hours of music playback time, these headphones empower you to journey through days of musical bliss without the fear of being left in silence mid-stride.', '2023-08-31 20:07:02', 225),
(43, 'OuG2loeTJgasf', 'havit m9024 smart watch-heart rate detection', 'kvhpqc23izyq5', 'd1zsek38wlhmd', '19000', '', 'Elevate your connectivity and wellness with the HAVIT M9024 Bluetooth Call Smart Watch – A Fusion of Communication and Health in One Elegant Device.\r\n\r\nStay seamlessly connected with the power of Bluetooth calls, synchronized call logs, and an integrated phone book. Experience enhanced multitasking with the intelligent split-screen feature that empowers you to manage tasks effortlessly.\r\n\r\nPrioritize your well-being with the 24-hour heart rate monitoring feature, keeping you informed about your cardiovascular health around the clock. Immerse yourself in clarity with the expansive 1.69\" HD screen, rendering every detail with precision.', '2023-08-31 20:57:03', 0),
(44, '3ZBwGhxPLrnA9', 'havit tw929 pro wireless gaming earbuds', '6fygqncl4paf7', '', '20000', '', 'Havit Tw929 pro in Nigeria\r\nGaming mode Low Latency to 65ms\r\n·In-ear Detection Auto Play/Pause\r\n·Dual Channel non-M/S connection\r\n·Bluetooth 5.0 & Touch Control\r\n·Type-C & Hall Smart Charging Case', '2023-08-31 21:35:16', 0),
(45, 'im9WV8Sx76JsB', 'havit m9035 50+ sports modes smartwatch', 'kvhpqc23izyq5', 'd1zsek38wlhmd', '16500', '', 'Smart watch designed for athletes with HD full touch screen\r\n\r\nStep counter.\r\nHeart rate monitor.\r\nVersatile and easy to use.\r\nNotifications for calls, messages and other applications.\r\nIPx waterproof.\r\nDust and sweat resistant.\r\nErgonomic design.\r\nBluetooth connection.\r\nCompatible with Android and IOS.\r\n ', '2023-08-31 21:54:07', 0),
(46, '5q1NcfQR6H7JK', 'havit kw11 4g talking kids smartwatch', 'kvhpqc23izyq5', 'xfln9fvotk6p7', '30000', '', 'ONE-TOUCH SOS\r\nOne click to ask for help by pressing the SOS buton for more than 5 seconds, watch will circulary call family numbers which were presented in the APP and send message to the Guardians\r\n', '2023-08-31 22:05:51', 0),
(47, 'saUckeARjVB8Z', 'havit pj202 pro 4k projector android tv', 'v4cydznbv2rre', '', '130000', '', '🌟 Crystal Clear 1080P Resolution, Supports 4K\r\n🎮 Smart Projector with Android TV 9.0\r\n🌈 High Contrast for Exceptional Clarity\r\n💡 220 ANSI Lumens\r\n📽️ 200\" Big Display Image Size\r\nTransform your living room into a home theater with an impressive 200\" display image size. Immerse yourself in the action, and invite your friends and family for epic movie nights or gaming sessions on a larger-than-life screen.\r\n\r\nUpgrade your home entertainment setup with the Havit Pj202pro Projector and enjoy the best of movies, TV shows, gaming, and more in incredible detail and quality. Elevate your entertainment experience today!\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2023-09-01 10:11:57', 0),
(48, 'BusHJn9GAChfy', 'havit pj210 pro smart 4k hd projector ', 'v4cydznbv2rre', '', '105000', '', 'Product Overview:\r\n\r\nBoasting an impressive 230 ANSI lumens, the Havit Pj202pro Projector delivers stunning brightness for your viewing pleasure.\r\nExperience cinematic grandeur on a colossal 220-inch large screen display, making every detail come to life. Projection distance range from 0.6 to 5 meters, this projector adapts effortlessly to various room sizes.\r\nMeticulously fine-tuned by a professional acoustic team, it features stereo speakers with an expansive sound range, creating an enveloping surround sound experience akin to a trip to the movie theater.\r\nSeamlessly connect and stream content with support for 2.4/5G dual-band WiFi.\r\nbuilt-in smart Android TV 9.0 system and access a plethora of content from the Google Play Store.\r\nEffortlessly synchronize your mobile phone, computer, iPad, and other devices for wireless projection.\r\nThe projector offers ample storage with 1GB of RAM and 8GB of ROM.\r\nVersatile connectivity include AV, USB, HDMI, and a 3.5mm audio jack output\r\n\r\n\r\n\r\n\r', '2023-09-01 10:21:33', 0),
(49, 'NKlrAfuTtUkX1', 'pj205 pro 1080p hd projector', 'v4cydznbv2rre', 'zrvnl0nkx9tvh', '105000', '', 'Descriptions:\r\n\r\nExperience vibrant visuals with 200 ANSI lumens of brightness.\r\nEnjoy an expansive 150-foot large display image size.\r\nImmerse yourself in high-fidelity stereo sound.\r\nEasily carry it with the included hand rope for added convenience.\r\nNative resolution set at 1920x1080P for unparalleled clarity.\r\nFeatures a tailored Android 9.0 version for a personalized experience.\r\n\r\n\r\n\r\n\r\n', '2023-09-01 10:42:34', 0),
(50, '1QoqwVd9LmOyt', ' havit tw935 true wireless stereo earbuds', '6fygqncl4paf7', '', '8000', '', 'Descriptions:\r\n\r\nIntuitive touch-based controls\r\nExceptional audio excellence\r\nMaster-slave switching functionality\r\nConvenient hands-free calling feature\r\nResponsive voice-activated assistant\r\n\r\n\r\n\r\n\r\n', '2023-09-01 10:47:21', 0),
(51, 'KUN1yFSap3g9j', 'havit tw925 true wireless stereo earbuds', '6fygqncl4paf7', '', '10000', '', 'Compact charging case equipped with a Type-C charging port for portability.\r\nEnjoy premium audio quality and clear stereo calls.\r\nEffortlessly convenient operation thanks to advanced smart touch controls.\r\nSeamlessly toggle between master and slave modes with ease.', '2023-09-01 10:52:07', 0),
(52, 'L891gTJ5NRbHe', 'havit pb81 20000mah power bank pd20w+qc3.0, 20000mah', 'yxombk7raufc6', '', '17000', '', 'Adapted curvature for enhanced usability in accordance with your habits\r\nBalanced combination of lightweight build and substantial capacity, suitable for diverse applications\r\nCapable of delivering up to 20W when charging both ports simultaneously.', '2023-09-01 11:38:12', 0),
(53, 'K2a7Y0HTwxj95', 'havit sk800bt wireless portable speaker', '3hxyuqdfiotyl', '1rjw4uy53cekz', '8500', '', 'Compact size with ample storage capacity\r\nDesigned for easy portability and on-the-go use\r\nOffers up to 6 hours of continuous playtime\r\nFeatures four versatile playback modes: Bluetooth, AUX, Micro SD Card, and USB\r\nProduces robust and impressive audio output\r\nIncorporates voice assistant functionality for added convenience', '2023-09-01 12:44:17', 0),
(54, 'axzhEmMgt49Vo', 'havit m3 multi-function digital alarm clock wireless speaker', '3hxyuqdfiotyl', '1rjw4uy53cekz', '10000', '', 'Dual 3W output speakers\r\nIntegrated alarm clock function\r\nIncludes FM radio capability\r\nOffers an impressive 20 hours of playback time\r\nEquipped with a built-in microphone, supporting phone calls\r\n\r\n\r\n\r\n\r\n', '2023-09-01 12:46:20', 0),
(55, 'kv73IL5U1wpZQ', 'havit   mg1501 mini massage gun', 'el0oc7mgujhk6', '', '20000', '', 'Compact in size and featuring a minimalist design\r\nEasy to carry due to its lightweight and portability\r\nExtended battery life for prolonged use\r\nIntelligent auto-shutoff feature\r\nOperates quietly with minimal noise\r\nEquipped with four massage heads and three speed settings\r\nUtilizes an efficient brushless motor for versatile performance \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2023-09-01 12:41:21', 0),
(56, 'TphPD83vyaBUm', 'havit  pj209 pro portable projector', 'v4cydznbv2rre', 'zrvnl0nkx9tvh', '105000', '', 'Compact and easy to carry\r\n\r\nCapable of projecting in 1080P HD quality\r\n\r\nDelivers an immersive cinematic experience on screens up to 220 inches in size\r\n\r\n\r\n\r\n\r\n', '2023-09-01 12:38:15', 0),
(57, 'pYda8HwrzOK1Q', 'havit cc2022 car charger pd 20w + usb qc 3.0', '8hzk0ohplosad', '', '2800', '', 'Fast car charger with 2 output ports (USB-A1 and USB-C1).\r\nLED monitor. PD20W – QC3.0.', '2023-09-01 13:20:29', 0),
(58, '8zq1iCRBJvMfH', 'havit tw915e true wireless stereo earbuds with enc', '6fygqncl4paf7', '', '12000', '', 'Enhanced Noise Cancellation with Two Microphones\r\nHall Sensor for Easy Switching\r\nConnects to Multiple Devices Simultaneously\r\nWater-Resistant with IPX5 Rating\r\nRapid Charging Capability\r\n\r\n\r\n\r\n', '2023-09-01 14:38:50', 0),
(59, 'wPWYu32BIiplC', 'havit h2575bt wireless bass headphone - bluetooth stereo headset', 'pvsfisal6yhcq', 'tsyrjhl93t70d', '15000', '', 'This high-quality headset offers Bluetooth compatibility and works seamlessly with any Bluetooth-enabled device.\r\n\r\nThe headset boasts a foldable design and features a soft, adjustable headband that accommodates various head shapes comfortably.\r\n\r\nIts dual connection capability allows you to pair it simultaneously with two Bluetooth-enabled phones.\r\n\r\n\r\n\r\n\r\n\r\n', '2023-09-01 14:54:52', 0),
(60, 'TAofhWGJSyEnM', 'havit havit double plug 3.5mm stereo headphone with mic h206d', 'pvsfisal6yhcq', '9vbzembnowgl6', '8000', '', 'The Havit H206d represents a wired PC headset, featuring an omnidirectional microphone. These headphones are versatile, suitable for both gaming and other activities. The ear cups provide effective noise isolation, ensuring your voice remains clear without external distractions. They connect conventionally via a 3.5mm microphone and audio jack. The headset boasts a simple yet appealing design, combining efficiency and aesthetics. With the Havit H206d, you can enjoy stereo music with high-fidelity audio transmission quality.\r\n\r\n\r\n\r\n\r\n\r\n', '2023-09-01 15:01:09', 0),
(61, '5IABke6nxXWsa', 'havit small and exquisite appearance wireless mouse ms78gt', 'opn0swkp7mjxg', '2juzt51s8pqsx', '4000', '', 'Guarantee your comfort during computer work with the MS78GT. This wireless mouse delivers exceptional freedom and maintains a stable connection within a 10-meter range. It features a 3-stage resolution adjustment and offers a hassle-free plug-and-play setup with any compatible device. The ergonomic design ensures prolonged comfort, while its compact form factor simplifies storage.\r\n\r\n\r\n\r\n\r\n', '2023-09-01 15:16:49', 0),
(62, 'yOeqlDIY5RAob', 'havit hv-ms951gt wireless mouse', 'opn0swkp7mjxg', '2juzt51s8pqsx', '4000', '', 'Experience fatigue-free comfort with symmetrical ergonomic design, ensuring a comfortable grip.\r\n\r\nAchieve precise control with multi-level DPI adjustment, while the multi-function side keys enable faster actions like page turning.\r\n\r\nEnjoy a plating roller and apron for enhanced grip, non-slip, and wear resistance.\r\n\r\nBenefit from the built-in auto-sleep function, allowing the mouse to quickly enter sleep mode when the receiver is unplugged or the computer is turned off, conserving energy efficiently.', '2023-09-01 15:23:23', 0),
(63, 'BcFg1yAaHlnmt', 'havit   ms61wb wireless mouse', 'opn0swkp7mjxg', 'poydtb8gvhzfx', '6000', '', 'Facilitates dual-mode connectivity, allowing for easy switching and simultaneous dual connections.\r\n\r\nOffers an effective wireless range of 10 meters, providing fast and stable connectivity without the need for a receiver or cables.\r\n\r\nUtilizes 2.4GHz wireless technology, ensuring a reliable connection in all directions within a 10-meter radius, free from interference.\r\n\r\nFeatures three adjustable speed levels (DPI 1200-2000-3200) for handling unexpected situations with precision.\r\n\r\nProvides a comfortable and ergonomic design. Crafted from environmentally friendly ABS plastic, it offers a pleasant tactile experience. The overall shape is designed for comfort, with a raised rear section to reduce hand fatigue effectively.\r\n\r\nThe mouse includes a discreet mini receiver that can be conveniently stored within the mouse itself, making it highly portable and user-friendly.\r\n\r\n\r\n\r\n\r\n\r\n', '2023-09-01 23:33:14', 0),
(64, 'j8lyA9oG52Qpa', 'havit tw969 true wireless earbuds 969', '6fygqncl4paf7', '', '14000', '', 'Lightweight Construction\r\nWearable with Great Comfort\r\nDual Microphone with ENC\r\nSwift Response in GAME Mode\r\nUtilizes an 8mm Dynamic Unit\r\nEmploys Bluetooth 5.3 Technology\r\nImpressive 23-Hour Battery Endurance\r\nIntuitive Smart Touch Controls\r\n\r\n\r\n\r\n\r\n\r\n', '2023-09-04 20:48:57', 0),
(65, 'elVvBLIFD7PZY', 'havit e536bt freego 1 neck sport headphone', 'pvsfisal6yhcq', 'tsyrjhl93t70d', '14000', '', 'Product Dimensions: 130 x 99 x 47mm\r\n\r\nWireless Operating Range: 15 meters (unobstructed)\r\n\r\nSpeaker Diameter: 16.2mm\r\n\r\nSpeaker Frequency Range: 20Hz to 20kHz\r\n\r\nImpedance: 16 ohms\r\n\r\nSupported Profiles: A2DP/AVRCP/HFP/HID/AVCTP/AVDTP/SPP\r\n\r\nAudio Codecs: AAC/SBC\r\n\r\nInput Voltage / Current: 5V / 78mA\r\n', '2023-09-04 20:19:29', 0),
(66, 'CY4HrQoc7SOXE', 'havit pj208 dlp hd projector', 'v4cydznbv2rre', 'oftzmh7q5zuks', '180000', '', 'Utilizes DLP Display Technology for Crisp Image Quality\r\n\r\nCompact and Easily Portable\r\n\r\nEquipped with a Built-in Battery\r\n\r\nComes Pre-installed with Android TV 9.0\r\n\r\nSupports 3D Movie Playback\r\n\r\nOffers Dual-Band 2.4G/5G WiFi Connectivity\r\n\r\n\r\n\r\n\r\n\r\n', '2023-09-04 20:16:33', 0),
(68, 'p14Uf2EPQKxen', 'havit mp901 rgb gaming mousepad with 12 stunning lighting modes', 'xbwqhg1vdirsw', 'c1dwji0zvpyng', '6500', '', '\r\nUltimate Gaming Experience with the MP901 RGB Gaming Mousepad: Effortless Plug-and-Play, 12 Dynamic RGB Lighting Modes, and Precision on Premium Fine-Mesh Cloth Surface\"\r\nProduct size: 360 x 260 x 3mm\r\n\r\n', '2023-09-03 11:12:44', 0),
(69, 'ySC3HJvFeg7OT', 'hv-mp860 gaming mousepad', 'xbwqhg1vdirsw', 'c1dwji0zvpyng', '5000', '2', '\"Enjoy Seamless Mouse Movement and Precision Control Thanks to the High-Quality Fine-Mesh Cloth Surface, Prevent Slips with an Effective Anti-Slip Rubber Base, Prolonged Durability with Edge-Covering Design, and a Spacious 700x300mm 3mm-Thick Design to Accommodate Your Keyboard, Mouse, and Desktop Accessories During Gaming Sessions.\"', '2023-09-19 10:16:48', 0),
(70, 'dO2vKakJpoGPw', 'havit sk889bt multi-color ambient light bluetooth speaker', '3hxyuqdfiotyl', '1rjw4uy53cekz', '12500', '', 'Multi Coloured Speaker Havit Sk889bt Distributed in Nigeria by Havit Nigeria www.justhavit.com.ng\r\n\r\nProduct Specifications:\r\n\r\nBluetooth Version: V5.3\r\nSpeaker Size: 57mm\r\nRated Power Output: 7W\r\nBattery Capacity: 3.7V/1500mAh\r\nWireless Range: Up to 10 meters\r\nDimensions: 100mm x 138mm\r\nPlayback Time: 8 hours (at medium volume)\r\nCharging Time: 4 hours\r\nCharging Port: Type-C\r\n\r\n\r\n\r\n\r\n', '2023-09-03 11:51:17', 0),
(72, 'NRFpmCvk5lIyK', 'sk885bt colorful rgb light wireless waterproof speaker', '3hxyuqdfiotyl', '1rjw4uy53cekz', '12500', '', 'Exceptional Sound Quality with a Mighty Bass\r\nAchieve Surround Stereo Sound Through TWS Interconnectivity\r\nExperience a Vibrant Dynamic Light Display\r\nExtensive 11-Hour Battery Life with a High-Capacity Battery\r\n\r\n\r\n\r\n', '2023-09-03 11:59:50', 0),
(73, 'zpWt0TAc3G8R2', 'havit i98 true wireless stereo earbuds', '6fygqncl4paf7', '', '14000', '', '· Master-slave switch\r\n· Ergonomic and never-drop design\r\n· IPX5 waterproof\r\n· portable charging case\r\n· HD sound quality and rich deep bass\r\n· Touch-sensitive Control\r\n· type-C charging port\r\n· hands-free calling & voice assistant', '2023-09-04 20:11:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `_id` int(11) NOT NULL,
  `full_name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `user_password` varchar(300) NOT NULL,
  `user_role` varchar(30) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`_id`, `full_name`, `email`, `phone`, `user_password`, `user_role`, `date_created`) VALUES
(14, 'Havit Admin', 'justhavit27@gmail.com', '0903 582 1779', '$2y$10$.IvvIdAIsgQEbl0ADpqPr..ZmfhoVDsEap6wfawwgCNE0Zbf/DXkG', 'admin', '2023-08-06 05:03:21'),
(18, 'clinton maduakor', 'codeboat26@gmail.com', '08100936162', '$2y$10$as1iKHltYbq8ZePN24BYHO5Wk5wpn8lNiC9HTaWtQt6L.hHZwQO.2', 'user', '2023-08-19 05:11:58'),
(20, 'clinton maduakor', 'clintonmaduakor7@gmail.com', '08100936162', '$2y$10$SO/.HK6oC6e4wbYDkPz21OhyJdJFHPpKfRctq3SnXIX9/WHsNnJ2u', 'user', '2023-08-19 10:34:14'),
(21, 'ifeanyi', 'maduclint@gmail.com', '08032467550', '$2y$10$VK0kvxj8ZWMzAhMfdJwMK.xzlwiy0pmev/y8Ry3igAl2rfmv7xYdW', 'user', '2023-09-03 03:52:26'),
(22, 'Samuel', 'omisbright@gmail.com', '08142815376', '$2y$10$M25kxyl02mqIio9aAWrQau3T4OBL/ADfJQ4RJwrv/iaK9Gntufioq', 'user', '2023-09-03 05:38:23'),
(23, 'Ifeanyi', 'maduclint2012@gmail.com', '08032467550', '$2y$10$/fOmHAm1Ie/sn2R3znkx6.LyF0w8pB1Gp1ah26NZWF7nLLyv6p2GS', 'user', '2023-09-04 07:17:50'),
(24, 'Olanrewaju bankole ', 'olanrewaju.a.bankole@gmail.com', '08088042885', '$2y$10$tkKFg.xR.NyC7w6sZB6X6eRsSq61AZk/THrh5dJBy9rozSKbrTp/y', 'user', '2023-09-05 05:17:18'),
(25, 'Mifta Quadri', 'quadrimifta9980@gmail.com', '+2348186213289', '$2y$10$LGcuYa6EkvPiKr5pTcY49esqQ2uEOEyxeD0Nmbw47rd4VfxHwua4y', 'user', '2023-09-06 10:42:50'),
(26, 'Tempest', 'tempestosagie@gmail.com', '08065992696', '$2y$10$0fovjXsu.xODv7o93.zL0erwIz.qprSPcgbTqX3WcpwntjWAQFwfe', 'user', '2023-09-09 06:14:52'),
(27, 'Ayo Ajala', 'ayokunmiajala@gmail.com', '08033539496', '$2y$10$WKgbPmUugO.vDO5JYijsbe29S/HFMnDBC/khnIAOfFdOyrACC8fgC', 'user', '2023-09-14 04:00:34'),
(28, 'Adeyemi Daniel ', 'danielcrown143@gmail.com', '07026685661', '$2y$10$ck.QA5uyavmXU9Irn/m.ZOi9HeJw/HcJTupo7cJP7Tf6MggAbPDYa', 'user', '2023-09-16 07:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `_id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `user_address` varchar(400) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` int(10) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`_id`, `userid`, `user_address`, `country`, `state`, `city`, `zip_code`, `date_created`) VALUES
(29, '14', 'no.4, abana drive, behind phase 4 mosque, kubwa, abuja', 'Nigeria', 'fct', 'abuja', 901101, '2023-08-10 06:54:23'),
(30, '18', 'no.4, abana drive, behind phase 4 mosque, kubwa, abuja', 'Nigeria', 'fct', 'abuja', 901101, '2023-08-21 08:20:27'),
(32, '20', 'BK4 FL4 ABANA DRIVE BEHIND PHASE 4 MOSQUE KUBWA ABUJA', 'Nigeria', 'Fct', 'Abuja', 901101, '2023-08-31 09:16:31'),
(33, '21', '8b oremeji street ikeja', 'Nigeria', 'Lagos ', 'ikeja', 100001, '2023-09-03 03:54:32'),
(34, '22', '44, Bola Matanmi Street, Maroko, Ajah, Lagos', 'Nigeria', 'Lagos State', 'Ajah', 101245, '2023-09-03 05:39:45'),
(35, '23', '8b otigba street okeja', 'Nigeria', 'Lagos', 'Ikeja', 100001, '2023-09-04 07:20:39'),
(37, '27', '53 Rasaq Balogun Street, off Adebola Street. Adeniran Ogunsanya. Surulere Lagos.', 'Nigeria', 'Lagos', 'Surulere', 0, '2023-09-14 04:05:04'),
(38, '28', 'Gold and Base Primary School, plot 5, opposite JIB Dam, 930103, Plateau', 'Nigeria', 'Plateau state', 'Jos', 930103, '2023-09-16 08:09:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwdResetId`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `tbl_ads`
--
ALTER TABLE `tbl_ads`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwdResetId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_ads`
--
ALTER TABLE `tbl_ads`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
