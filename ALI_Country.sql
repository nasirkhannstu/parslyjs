-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2020 at 04:45 PM
-- Server version: 5.7.29
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craveone_DEV_STT`
--

-- --------------------------------------------------------

--
-- Table structure for table `ALI_Country`
--

CREATE TABLE `ALI_Country` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extcode` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ALI_Country`
--

INSERT INTO `ALI_Country` (`id`, `name`, `extcode`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Aland Islands', 'ALA'),
(3, 'Albania', 'AL'),
(4, 'Alderney', 'GBA'),
(5, 'Algeria', 'DZ'),
(6, 'American Samoa', 'AS'),
(7, 'Andorra', 'AD'),
(8, 'Angola', 'AO'),
(9, 'Anguilla', 'AI'),
(10, 'Antigua and Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Ascension Island', 'ASC'),
(15, 'Australia', 'AU'),
(16, 'Austria', 'AT'),
(17, 'Azerbaijan', 'AZ'),
(18, 'Bahamas', 'BS'),
(19, 'Bahrain', 'BH'),
(20, 'Bangladesh', 'BD'),
(21, 'Barbados', 'BB'),
(22, 'Belarus', 'BY'),
(23, 'Belgium', 'BE'),
(24, 'Belize', 'BZ'),
(25, 'Benin', 'BJ'),
(26, 'Bermuda', 'BM'),
(27, 'Bhutan', 'BT'),
(28, 'Bolivia', 'BO'),
(29, 'Bosnia and Herzegovina', 'BA'),
(30, 'Botswana', 'BW'),
(31, 'Brazil', 'BR'),
(32, 'Bulgaria', 'BG'),
(33, 'Burkina Faso', 'BF'),
(34, 'Burundi', 'BI'),
(35, 'Cambodia', 'KH'),
(36, 'Cameroon', 'CM'),
(37, 'Canada', 'CA'),
(38, 'Cape Verde', 'CV'),
(39, 'Caribbean Netherlands', 'BQ'),
(40, 'Cayman Islands', 'KY'),
(41, 'Central African Republic', 'CF'),
(42, 'Chad', 'TD'),
(43, 'Chile', 'CL'),
(44, 'Christmas Island', 'CX'),
(45, 'Cocos (Keeling) Islands', 'CC'),
(46, 'Colombia', 'CO'),
(47, 'Comoros', 'KM'),
(48, 'Congo, The Democratic Republic Of The', 'ZR'),
(49, 'Congo, The Republic of Congo', 'CG'),
(50, 'Cook Islands', 'CK'),
(51, 'Costa Rica', 'CR'),
(52, 'Cote D\'Ivoire', 'CI'),
(53, 'Croatia (local name: Hrvatska)', 'HR'),
(54, 'Curacao', 'CW'),
(55, 'Cyprus', 'CY'),
(56, 'Czech Republic', 'CZ'),
(57, 'Denmark', 'DK'),
(58, 'Djibouti', 'DJ'),
(59, 'Dominica', 'DM'),
(60, 'Dominican Republic', 'DO'),
(61, 'Ecuador', 'EC'),
(62, 'Egypt', 'EG'),
(63, 'El Salvador', 'SV'),
(64, 'Equatorial Guinea', 'GQ'),
(65, 'Eritrea', 'ER'),
(66, 'Estonia', 'EE'),
(67, 'Ethiopia', 'ET'),
(68, 'Falkland Islands (Malvinas)', 'FK'),
(69, 'Faroe Islands', 'FO'),
(70, 'Fiji', 'FJ'),
(71, 'Finland', 'FI'),
(72, 'France', 'FR'),
(73, 'French Guiana', 'GF'),
(74, 'French Polynesia', 'PF'),
(75, 'Gabon', 'GA'),
(76, 'Gambia', 'GM'),
(77, 'Georgia', 'GE'),
(78, 'Germany', 'DE'),
(79, 'Ghana', 'GH'),
(80, 'Gibraltar', 'GI'),
(81, 'Greece', 'GR'),
(82, 'Greenland', 'GL'),
(83, 'Grenada', 'GD'),
(84, 'Guadeloupe', 'GP'),
(85, 'Guam', 'GU'),
(86, 'Guatemala', 'GT'),
(87, 'Guernsey', 'GGY'),
(88, 'Guinea', 'GN'),
(89, 'Guinea-Bissau', 'GW'),
(90, 'Guyana', 'GY'),
(91, 'Haiti', 'HT'),
(92, 'Honduras', 'HN'),
(93, 'Hong Kong,China', 'HK'),
(94, 'Hungary', 'HU'),
(95, 'Iceland', 'IS'),
(96, 'India', 'IN'),
(97, 'Indonesia', 'ID'),
(98, 'Iraq', 'IQ'),
(99, 'Ireland', 'IE'),
(100, 'Israel', 'IL'),
(101, 'Italy', 'IT'),
(102, 'Jamaica', 'JM'),
(103, 'Japan', 'JP'),
(104, 'Jersey', 'JEY'),
(105, 'Jordan', 'JO'),
(106, 'Kazakhstan', 'KZ'),
(107, 'Kenya', 'KE'),
(108, 'Kiribati', 'KI'),
(109, 'Korea', 'KR'),
(110, 'Kosovo', 'KS'),
(111, 'Kuwait', 'KW'),
(112, 'Kyrgyzstan', 'KG'),
(113, 'Lao People\'s Democratic Republic', 'LA'),
(114, 'Latvia', 'LV'),
(115, 'Lebanon', 'LB'),
(116, 'Lesotho', 'LS'),
(117, 'Liberia', 'LR'),
(118, 'Libya', 'LY'),
(119, 'Liechtenstein', 'LI'),
(120, 'Lithuania', 'LT'),
(121, 'Luxembourg', 'LU'),
(122, 'Macau,China', 'MO'),
(123, 'Macedonia', 'MK'),
(124, 'Madagascar', 'MG'),
(125, 'Malawi', 'MW'),
(126, 'Malaysia', 'MY'),
(127, 'Maldives', 'MV'),
(128, 'Mali', 'ML'),
(129, 'Malta', 'MT'),
(130, 'Marshall Islands', 'MH'),
(131, 'Martinique', 'MQ'),
(132, 'Mauritania', 'MR'),
(133, 'Mauritius', 'MU'),
(134, 'Mayotte', 'YT'),
(135, 'Mexico', 'MX'),
(136, 'Micronesia', 'FM'),
(137, 'Moldova', 'MD'),
(138, 'Monaco', 'MC'),
(139, 'Mongolia', 'MN'),
(140, 'Montenegro', 'MNE'),
(141, 'Montserrat', 'MS'),
(142, 'Morocco', 'MA'),
(143, 'Mozambique', 'MZ'),
(144, 'Myanmar', 'MM'),
(145, 'Namibia', 'NA'),
(146, 'Nauru', 'NR'),
(147, 'Negara Brunei Darussalam', 'BN'),
(148, 'Nepal', 'NP'),
(149, 'Netherlands', 'NL'),
(150, 'Netherlands Antilles', 'AN'),
(151, 'New Caledonia', 'NC'),
(152, 'New Zealand', 'NZ'),
(153, 'Nicaragua', 'NI'),
(154, 'Niger', 'NE'),
(155, 'Nigeria', 'NG'),
(156, 'Niue', 'NU'),
(157, 'Norfolk Island', 'NF'),
(158, 'Northern Mariana Islands', 'MP'),
(159, 'Norway', 'NO'),
(160, 'Oman', 'OM'),
(161, 'Pakistan', 'PK'),
(162, 'Palau', 'PW'),
(163, 'Palestine', 'PS'),
(164, 'Panama', 'PA'),
(165, 'Papua New Guinea', 'PG'),
(166, 'Paraguay', 'PY'),
(167, 'Peru', 'PE'),
(168, 'Philippines', 'PH'),
(169, 'Poland', 'PL'),
(170, 'Portugal', 'PT'),
(171, 'Puerto Rico', 'PR'),
(172, 'Qatar', 'QA'),
(173, 'Reunion', 'RE'),
(174, 'Romania', 'RO'),
(175, 'Russian Federation', 'RU'),
(176, 'Rwanda', 'RW'),
(177, 'Saint Barthelemy', 'BLM'),
(178, 'Saint Kitts and Nevis', 'KN'),
(179, 'Saint Lucia', 'LC'),
(180, 'Saint Martin', 'MAF'),
(181, 'Saint Vincent and the Grenadines', 'VC'),
(182, 'Samoa', 'WS'),
(183, 'San Marino', 'SM'),
(184, 'Sao Tome and Principe', 'ST'),
(185, 'Saudi Arabia', 'SA'),
(186, 'Senegal', 'SN'),
(187, 'Serbia', 'SRB'),
(188, 'Seychelles', 'SC'),
(189, 'Sierra Leone', 'SL'),
(190, 'Singapore', 'SG'),
(191, 'Sint Maarten (Netherlands)', 'SX'),
(192, 'Slovakia (Slovak Republic)', 'SK'),
(193, 'Slovenia', 'SI'),
(194, 'Solomon Islands', 'SB'),
(195, 'Somalia', 'SO'),
(196, 'South Africa', 'ZA'),
(197, 'South Georgia and the South Sandwich Islands', 'SGS'),
(198, 'South Sudan', 'SS'),
(199, 'Spain', 'ES'),
(200, 'Sri Lanka', 'LK'),
(201, 'St. Pierre and Miquelon', 'PM'),
(202, 'Suriname', 'SR'),
(203, 'Swaziland', 'SZ'),
(204, 'Sweden', 'SE'),
(205, 'Switzerland', 'CH'),
(206, 'Taiwan,China', 'TW'),
(207, 'Tajikistan', 'TJ'),
(208, 'Tanzania', 'TZ'),
(209, 'Thailand', 'TH'),
(210, 'Timor-Leste', 'TLS'),
(211, 'Togo', 'TG'),
(212, 'Tonga', 'TO'),
(213, 'Trinidad and Tobago', 'TT'),
(214, 'Tunisia', 'TN'),
(215, 'Turkey', 'TR'),
(216, 'Turkmenistan', 'TM'),
(217, 'Turks and Caicos Islands', 'TC'),
(218, 'Tuvalu', 'TV'),
(219, 'Uganda', 'UG'),
(220, 'Ukraine', 'UA'),
(221, 'United Arab Emirates', 'AE'),
(222, 'United Kingdom', 'UK'),
(223, 'United States', 'US'),
(224, 'Uruguay', 'UY'),
(225, 'Uzbekistan', 'UZ'),
(226, 'Vanuatu', 'VU'),
(227, 'Vatican City State (Holy See)', 'VA'),
(228, 'Venezuela', 'VE'),
(229, 'Vietnam', 'VN'),
(230, 'Virgin Islands (British)', 'VG'),
(231, 'Virgin Islands (U.S.)', 'VI'),
(232, 'Wallis And Futuna Islands', 'WF'),
(233, 'Yemen', 'YE'),
(234, 'Zambia', 'ZM'),
(235, 'Zanzibar', 'EAZ'),
(236, 'Zimbabwe', 'ZW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ALI_Country`
--
ALTER TABLE `ALI_Country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ALI_Country`
--
ALTER TABLE `ALI_Country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
