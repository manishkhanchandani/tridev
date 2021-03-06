-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2009 at 10:00 PM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tridev`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`album_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--


-- --------------------------------------------------------

--
-- Table structure for table `albums_pics`
--

CREATE TABLE IF NOT EXISTS `albums_pics` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `album_id` int(11) NOT NULL DEFAULT '0',
  `picture` varchar(255) DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums_pics`
--


-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(11) NOT NULL,
  `city` varchar(200) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--


-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(200) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country`) VALUES
(1, 'United States'),
(2, 'Afghanistan'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Ascension Island'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Brazil'),
(30, 'British Indian Ocean Territory'),
(31, 'Brunei Darussalam'),
(32, 'Bulgaria'),
(33, 'Burkina Faso'),
(34, 'Burundi'),
(35, 'Cambodia'),
(36, 'Cameroon'),
(37, 'Canada'),
(38, 'Cape Verde'),
(39, 'Cayman Islands'),
(40, 'Central African Republic'),
(41, 'Chad'),
(42, 'Chile'),
(43, 'China'),
(44, 'Colombia'),
(45, 'Comoros'),
(46, 'Congo'),
(47, 'Cook Islands'),
(48, 'Costa Rica'),
(49, 'Cote D Ivoire'),
(50, 'Croatia'),
(51, 'Cuba'),
(52, 'Cyprus'),
(53, 'Czech Republic'),
(54, 'Democratic Republic of Congo'),
(55, 'Denmark'),
(56, 'Djibouti'),
(57, 'Dominica'),
(58, 'Dominican Republic'),
(59, 'Ecuador'),
(60, 'Egypt'),
(61, 'El Salvador'),
(62, 'Equatorial Guinea'),
(63, 'Eritrea'),
(64, 'Estonia'),
(65, 'Ethiopia'),
(66, 'Falkland Islands'),
(67, 'Faroe Islands'),
(68, 'Federated States of Micronesia'),
(69, 'Fiji'),
(70, 'Finland'),
(71, 'France'),
(72, 'French Guiana'),
(73, 'French Polynesia'),
(74, 'Gabon'),
(75, 'Georgia'),
(76, 'Germany'),
(77, 'Ghana'),
(78, 'Gibraltar'),
(79, 'Greece'),
(80, 'Greenland'),
(81, 'Grenada'),
(82, 'Guadeloupe'),
(83, 'Guam'),
(84, 'Guatemala'),
(85, 'Guinea'),
(86, 'Guinea Bissau'),
(87, 'Guyana'),
(88, 'Haiti'),
(89, 'Honduras'),
(90, 'Hong Kong'),
(91, 'Hungary'),
(92, 'Iceland'),
(93, 'India'),
(94, 'Indonesia'),
(95, 'Iran'),
(96, 'Iraq'),
(97, 'Ireland'),
(98, 'Isle of Man'),
(99, 'Israel'),
(100, 'Italy'),
(101, 'Jamaica'),
(102, 'Japan'),
(103, 'Jordan'),
(104, 'Kazakhstan'),
(105, 'Kenya'),
(106, 'Kiribati'),
(107, 'Korea (Peoples Republic of)'),
(108, 'Korea (Republic of)'),
(109, 'Kuwait'),
(110, 'Kyrgyzstan'),
(111, 'Laos'),
(112, 'Latvia'),
(113, 'Lebanon'),
(114, 'Lesotho'),
(115, 'Liberia'),
(116, 'Libya'),
(117, 'Liechtenstein'),
(118, 'Lithuania'),
(119, 'Luxembourg'),
(120, 'Macau'),
(121, 'Macedonia'),
(122, 'Madagascar'),
(123, 'Malawi'),
(124, 'Malaysia'),
(125, 'Maldives'),
(126, 'Mali'),
(127, 'Malta'),
(128, 'Marshall Islands'),
(129, 'Martinique'),
(130, 'Mauritius'),
(131, 'Mayotte'),
(132, 'Mexico'),
(133, 'Moldova'),
(134, 'Monaco'),
(135, 'Mongolia'),
(136, 'Montenegro'),
(137, 'Montserrat'),
(138, 'Morocco'),
(139, 'Mozambique'),
(140, 'Myanmar'),
(141, 'Namibia'),
(142, 'Nauru'),
(143, 'Nepal'),
(144, 'Netherlands'),
(145, 'Netherlands Antilles'),
(146, 'New Caledonia'),
(147, 'New Zealand'),
(148, 'Nicaragua'),
(149, 'Niger'),
(150, 'Nigeria'),
(151, 'Niue'),
(152, 'Norfolk Island'),
(153, 'Northern Mariana Islands'),
(154, 'Norway'),
(155, 'Oman'),
(156, 'Pakistan'),
(157, 'Palau'),
(158, 'Panama'),
(159, 'Papua New Guinea'),
(160, 'Paraguay'),
(161, 'Peru'),
(162, 'Philippines'),
(163, 'Pitcairn'),
(164, 'Poland'),
(165, 'Portugal'),
(166, 'Puerto Rico'),
(167, 'Qatar'),
(168, 'Reunion'),
(169, 'Romania'),
(170, 'Russian Federation'),
(171, 'Rwanda'),
(172, 'Saint Vincent and the Grenadines'),
(173, 'San Marino'),
(174, 'Sao Tome and Principe'),
(175, 'Saudi Arabia'),
(176, 'Senegal'),
(177, 'Serbia'),
(178, 'Seychelles'),
(179, 'Sierra Leone'),
(180, 'Singapore'),
(181, 'Slovakia'),
(182, 'Slovenia'),
(183, 'Solomon Islands'),
(184, 'Somalia'),
(185, 'South Africa'),
(186, 'South Georgia'),
(187, 'Spain'),
(188, 'Sri Lanka'),
(189, 'St. Kitts and Nevis'),
(190, 'St. Lucia'),
(191, 'St. Pierre and Miquelon'),
(192, 'Sudan'),
(193, 'Suriname'),
(194, 'Swaziland'),
(195, 'Sweden'),
(196, 'Switzerland'),
(197, 'Syrian Arab Republic'),
(198, 'Taiwan'),
(199, 'Tajikistan'),
(200, 'Tanzania'),
(201, 'Thailand'),
(202, 'The Gambia'),
(203, 'Togo'),
(204, 'Tokelau'),
(205, 'Tonga'),
(206, 'Trinidad and Tobago'),
(207, 'Tunisia'),
(208, 'Turkey'),
(209, 'Turkmenistan'),
(210, 'Turks and Caicos Islands'),
(211, 'Tuvalu'),
(212, 'Uganda'),
(213, 'Ukraine'),
(214, 'United Arab Emirates'),
(215, 'United Kingdom'),
(216, 'Uruguay'),
(217, 'Uzbekistan'),
(218, 'Vanuatu'),
(219, 'Venezuela'),
(220, 'Viet Nam'),
(221, 'Virgin Islands (U.K.)'),
(222, 'Virgin Islands (U.S.)'),
(223, 'Wallis and Futuna Islands'),
(224, 'Western Samoa'),
(225, 'Yemen'),
(226, 'Yugoslavia'),
(227, 'Zambia'),
(228, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `friend_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--


-- --------------------------------------------------------

--
-- Table structure for table `friends_tmp`
--

CREATE TABLE IF NOT EXISTS `friends_tmp` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `friend_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE IF NOT EXISTS `hobbies` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `hobby` int(11) NOT NULL DEFAULT '0',
  KEY `hobby` (`hobby`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hobbies`
--


-- --------------------------------------------------------

--
-- Table structure for table `hobby_data`
--

CREATE TABLE IF NOT EXISTS `hobby_data` (
  `hobby` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`hobby`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hobby_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `ignorelist`
--

CREATE TABLE IF NOT EXISTS `ignorelist` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ignore_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ignorelist`
--


-- --------------------------------------------------------

--
-- Table structure for table `profile1`
--

CREATE TABLE IF NOT EXISTS `profile1` (
  `user_id` int(11) NOT NULL,
  `gender` enum('Male','Female','Couple') DEFAULT NULL,
  `bDay` int(2) DEFAULT NULL,
  `bMonth` int(2) DEFAULT NULL,
  `bYear` int(4) DEFAULT NULL,
  `marital_status` int(2) DEFAULT NULL,
  `religion` int(4) DEFAULT NULL,
  `caste` int(4) DEFAULT NULL,
  `height` int(4) DEFAULT NULL,
  `weight` int(4) DEFAULT NULL,
  `build` int(4) DEFAULT NULL,
  `looks` int(4) DEFAULT NULL,
  `eyecolor` int(4) DEFAULT NULL,
  `haircolor` int(4) DEFAULT NULL,
  `bestfeature` int(4) DEFAULT NULL,
  `income` int(2) DEFAULT NULL,
  `educationLevel` int(4) DEFAULT NULL,
  `profession` int(4) DEFAULT NULL,
  `country_id` int(4) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `zipcode_id` int(11) NOT NULL,
  `smoking` int(1) DEFAULT NULL,
  `drinking` int(1) DEFAULT NULL,
  `food` int(1) DEFAULT NULL,
  `friends` int(1) DEFAULT NULL,
  `activity_partners` int(1) DEFAULT NULL,
  `business_networking` int(1) DEFAULT NULL,
  `dating` int(1) DEFAULT NULL,
  `dating_type` int(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile1`
--


-- --------------------------------------------------------

--
-- Table structure for table `profile2`
--

CREATE TABLE IF NOT EXISTS `profile2` (
  `user_id` int(11) NOT NULL,
  `aboutme` text,
  `myfamily` text,
  `image` varchar(255) DEFAULT NULL,
  `highschool` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `im_yahoo` varchar(255) DEFAULT NULL,
  `im_msn` varchar(255) DEFAULT NULL,
  `im_gmail` varchar(255) DEFAULT NULL,
  `im_jabber` varchar(255) DEFAULT NULL,
  `im_other` varchar(255) DEFAULT NULL,
  `homephone` varchar(50) DEFAULT NULL,
  `cellphone` varchar(50) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `headline` varchar(200) DEFAULT NULL,
  `firstthing` varchar(255) DEFAULT NULL,
  `firstdate` text,
  `pastrelation` text,
  `fivethings` text,
  `bedroomthings` text,
  `idealmatch` text,
  `education_degree` int(4) DEFAULT NULL,
  `education_year` int(4) DEFAULT NULL,
  `occupation` varchar(200) DEFAULT NULL,
  `industry` int(4) DEFAULT NULL,
  `company_webpage` varchar(255) DEFAULT NULL,
  `company_title` varchar(200) DEFAULT NULL,
  `job_description` text,
  `workphone` varchar(50) DEFAULT NULL,
  `work_email` varchar(150) DEFAULT NULL,
  `career_skills` text,
  `career_interests` text,
  `hometown` varchar(100) DEFAULT NULL,
  `webpage` varchar(255) DEFAULT NULL,
  `sports` text,
  `activities` text,
  `books` text,
  `music` text,
  `tvshows` text,
  `movies` text,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile2`
--


-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(200) NOT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `province`
--


-- --------------------------------------------------------

--
-- Table structure for table `scrapbook`
--

CREATE TABLE IF NOT EXISTS `scrapbook` (
  `scrap_id` int(11) NOT NULL AUTO_INCREMENT,
  `to_user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `scrap_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`scrap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scrapbook`
--


-- --------------------------------------------------------

--
-- Table structure for table `site_polls`
--

CREATE TABLE IF NOT EXISTS `site_polls` (
  `poll_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `option5` text,
  `option6` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_polls`
--


-- --------------------------------------------------------

--
-- Table structure for table `site_polls_result`
--

CREATE TABLE IF NOT EXISTS `site_polls_result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `option_num` int(2) DEFAULT NULL,
  `poll_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_polls_result`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `verify_code` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` enum('Admin','Moderator','User') NOT NULL DEFAULT 'User',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_ratings`
--

CREATE TABLE IF NOT EXISTS `user_ratings` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `rating` int(2) NOT NULL DEFAULT '0',
  `from_user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rating_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_ratings`
--


-- --------------------------------------------------------

--
-- Table structure for table `zipcode`
--

CREATE TABLE IF NOT EXISTS `zipcode` (
  `zipcode_id` int(11) NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(10) NOT NULL,
  PRIMARY KEY (`zipcode_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zipcode`
--

