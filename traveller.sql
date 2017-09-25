-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 20, 2017 at 04:38 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveller`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `imageInsert` (IN `getImageID` INT(11), IN `getPath` VARCHAR(255))  BEGIN
INSERT INTO travelimages(ImageID, Path) VALUES(getImageID, getPath);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `imagesInsert` (IN `getPath` VARCHAR(255))  BEGIN
INSERT INTO image (Path) VALUES (getPath);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `photoInsert` (IN `getPath` VARCHAR(255))  BEGIN
INSERT INTO image (Path) VALUES (getPath);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `photosInsert` (IN `getPath` VARCHAR(255))  BEGIN
INSERT INTO travelimage (Path) VALUES (getPath);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `picInsert` (IN `getPath` VARCHAR(255))  BEGIN
INSERT INTO travelimages (Path) VALUES (getPath);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Countries`
--

CREATE TABLE `Countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `capital` varchar(255) NOT NULL,
  `population` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Countries`
--

INSERT INTO `Countries` (`id`, `name`, `capital`, `population`) VALUES
(1, 'Canada', 'Ottawa', 934243),
(2, 'Russia', 'Moscow', 16170000),
(3, 'United Kingdom', 'London', 8673713),
(4, 'United States of America', 'Washington DC', 672228);

-- --------------------------------------------------------

--
-- Table structure for table `geocities`
--

CREATE TABLE `geocities` (
  `GeoNameID` varchar(255) NOT NULL,
  `Cities` varchar(255) NOT NULL,
  `CountryCodeISO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geocities`
--

INSERT INTO `geocities` (`GeoNameID`, `Cities`, `CountryCodeISO`) VALUES
('AAC', 'Al Arish', 'EG'),
('ABV', 'Abuja', 'NI'),
('ACC', 'Accra', 'GH'),
('ADD', 'Addis Ababa', 'ET'),
('AMS', 'Amsterdam', 'NL'),
('ATH', 'Athens', 'GR'),
('AZI', 'Abu Dhabi', 'AE'),
('BER', 'Berlin', 'GM'),
('BOG', 'Bogota', 'CO'),
('BOM', 'Mumbai', 'IN'),
('BRN', 'Bern', 'SZ'),
('BRU', 'Brussels', 'BE'),
('BSB', 'Brasilia', 'BR'),
('BUE', 'Buenos Aires', 'AR'),
('CAI', 'Cairo', 'EG'),
('CCS', 'Caracas', 'VE'),
('CDG', 'Paris', 'FR'),
('CIA', 'Rome', 'IT'),
('CPH', 'Copenhagen', 'DA'),
('DCA', 'Washington DC', 'US'),
('DEL', 'New Delhi', 'IN'),
('DIR', 'Dire Dawa', 'ET'),
('GOH', 'Nuuk', 'GL'),
('HAV', 'Havana', 'CU'),
('JNB', 'Johannesburg', 'SF'),
('KMS', 'Kumasi', 'GH'),
('LIM', 'Lima', 'PE'),
('LON', 'London', 'UK'),
('LOS', 'Lagos', 'NI'),
('LXR', 'Luxor', 'EG'),
('MAD', 'Madrid', 'SP'),
('MEX', 'Mexico City', 'MX'),
('PEK', 'Beijing', 'CH'),
('PTY', 'Panama City', 'PM'),
('RAW', 'Arawa', 'ET'),
('RUH', 'Riyadh', 'SA'),
('SCL', 'Santiago de Chile', 'CI'),
('SHA', 'Shanghai', 'CH'),
('SIN', 'Singapore', 'SN'),
('SYD', 'Sydney', 'AS'),
('THR', 'Teheran', 'IR'),
('TIP', 'Tripoli', 'LY'),
('TML', 'Tamale', 'GH'),
('UIO', 'Quito', 'EC'),
('VIE', 'Vienna', 'AU'),
('WLG', 'Wellington', 'NZ'),
('YND', 'Ottawa', 'CA');

-- --------------------------------------------------------

--
-- Table structure for table `geocontinents`
--

CREATE TABLE `geocontinents` (
  `ContinentCode` varchar(255) NOT NULL,
  `ContinentName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geocontinents`
--

INSERT INTO `geocontinents` (`ContinentCode`, `ContinentName`) VALUES
('AF', 'Africa'),
('AN', 'Antarctica'),
('AS', 'Asia'),
('EU', 'Europe'),
('NA', 'North America'),
('OC', 'Oceania'),
('SA', 'South America');

-- --------------------------------------------------------

--
-- Table structure for table `geocountries`
--

CREATE TABLE `geocountries` (
  `ISO` varchar(11) NOT NULL,
  `Countries` varchar(255) NOT NULL,
  `Continent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geocountries`
--

INSERT INTO `geocountries` (`ISO`, `Countries`, `Continent`) VALUES
('AO', 'Angola', 'AF'),
('IV', 'Ivory Coast', 'AF'),
('CM', 'Cameroon', 'AF'),
('CV', 'Cape Verde', 'AF'),
('AG', 'Algeria', 'AF'),
('EG', 'Egypt', 'AF'),
('ET', 'Ethiopia', 'AF'),
('GH', 'Ghana', 'AF'),
('KE', 'Kenya', 'AF'),
('LY', 'Libya', 'AF'),
('MO', 'Morocco', 'AF'),
('MA', 'Madagascar', 'AF'),
('NI', 'Nigeria', 'AF'),
('SU', 'Sudan', 'AF'),
('TO', 'Togo', 'AF'),
('UG', 'Uganda', 'AF'),
('SF', 'South Africa', 'AF'),
('ZI', 'Zimbabwe', 'AF'),
('AE', 'United Arab Emirates', 'AS'),
('AF', 'Afghanistan', 'AS'),
('BG', 'Bangladesh', 'AS'),
('BA', 'Bahrain', 'AS'),
('BT', 'Bhutan', 'AS'),
('CH', 'China', 'AS'),
('HK', 'Hong Kong', 'AS'),
('ID', 'Indonesia', 'AS'),
('IS', 'Israel', 'AS'),
('IN', 'India', 'AS'),
('IZ', 'Iraq', 'AS'),
('IR', 'Iran', 'AS'),
('JO', 'Jordan', 'AS'),
('JA', 'Japan', 'AS'),
('KN', 'North Korea', 'AS'),
('KS', 'South Korea', 'AS'),
('KU', 'Kuwait', 'AS'),
('KZ', 'Kazakhstan', 'AS'),
('CE', 'Sri Lanka', 'AS'),
('MY', 'Malaysia', 'AS'),
('NP', 'Nepal', 'AS'),
('RP', 'Philippines', 'AS'),
('PK', 'Pakistan', 'AS'),
('QA', 'Qatar', 'AS'),
('SA', 'Saudi Arabia', 'AS'),
('SN', 'Sinagpore', 'AS'),
('SY', 'Syria', 'AS'),
('TH', 'Thailand', 'AS'),
('TW', 'Taiwan', 'AS'),
('UZ', 'Uzbekistan', 'AS'),
('AL', 'Albania', 'EU'),
('AU', 'Austria', 'EU'),
('BE', 'Belgium', 'EU'),
('BU', 'Bulgaria', 'EU'),
('SZ', 'Switzerland', 'EU'),
('GM', 'Germany', 'EU'),
('DA', 'Denmark', 'EU'),
('SP', 'Spain', 'EU'),
('FI', 'Finland', 'EU'),
('FR', 'France', 'EU'),
('UK', 'United Kingdom', 'EU'),
('GR', 'Greece', 'EU'),
('HR', 'Croatia', 'EU'),
('HU', 'Hungary', 'EU'),
('EI', 'Ireland', 'EU'),
('IC', 'Iceland', 'EU'),
('IT', 'Italy', 'EU'),
('LH', 'Lithuania', 'EU'),
('LU', 'Luxembourg', 'EU'),
('MN', 'Monaco', 'EU'),
('NL', 'Netherlands', 'EU'),
('NO', 'Norway', 'EU'),
('PO', 'Portugal', 'EU'),
('RO', 'Romania', 'EU'),
('RI', 'Serbia', 'EU'),
('RS', 'Russia', 'EU'),
('SW', 'Sweden', 'EU'),
('UK', 'Ukraine', 'EU'),
('BD', 'Bermuda', 'NA'),
('BF', 'Bahamas', 'NA'),
('CA', 'Canada', 'NA'),
('CS', 'Costa Rica', 'NA'),
('CU', 'Cuba', 'NA'),
('DO', 'Dominica', 'NA'),
('DR', 'Dominican Republic', 'NA'),
('GL', 'Greenland', 'NA'),
('GT', 'Guatemala', 'NA'),
('HA', 'Haiti', 'NA'),
('JM', 'Jamaica', 'NA'),
('CJ', 'Cayman Island', 'NA'),
('MX', 'Mexico', 'NA'),
('PM', 'Panama', 'NA'),
('RQ', 'Puerto Rico', 'NA'),
('ES', 'El Salvador', 'NA'),
('US', 'United States', 'NA'),
('VI', 'British Virgin Islands', 'NA'),
('VQ', 'US Virgin Islands', 'NA'),
('AQ', 'American Samoa', 'OC'),
('AS', 'Australia', 'OC'),
('CW', 'Crook Islands', 'OC'),
('KT', 'Christmas Island', 'OC'),
('FJ', 'Fiji', 'OC'),
('GQ', 'Guam', 'OC'),
('KR', 'Kiribati', 'OC'),
('RM', 'Marshall Islands', 'OC'),
('CQ', 'Northern Mariana Islands', 'OC'),
('NC', 'New Caledonia', 'OC'),
('NF', 'Northfolk Island', 'OC'),
('NR', 'Nauru', 'OC'),
('NZ', 'New Zealand', 'OC'),
('PP', 'Papua New Guinea', 'OC'),
('PC', 'Pitcairn Islands', 'OC'),
('PS', 'Palau', 'OC'),
('BP', 'Solomun Islands', 'OC'),
('WF', 'Wallis and Futuna', 'OC'),
('WS', 'Samoa', 'OC'),
('AR', 'Argentina', 'SA'),
('BL', 'Bolivia', 'SA'),
('BR', 'Brazil', 'SA'),
('CI', 'Chile', 'SA'),
('CO', 'Colombia', 'SA'),
('EC', 'Ecuador', 'SA'),
('FK', 'Falkland Islands', 'SA'),
('FG', 'Frech Guiana', 'SA'),
('GY', 'Guyana', 'SA'),
('PE', 'Peru', 'SA'),
('PA', 'Paraguay', 'SA'),
('NA', 'Suriname', 'SA'),
('UY', 'Uruguay', 'SA'),
('VE', 'Venezuela', 'SA');

-- --------------------------------------------------------

--
-- Table structure for table `travelimage`
--

CREATE TABLE `travelimage` (
  `ImageID` int(11) NOT NULL,
  `Path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travelimage`
--

INSERT INTO `travelimage` (`ImageID`, `Path`) VALUES
(1, '/Project/images/222222.jpg'),
(2, '/Project/images/222223.jpg'),
(3, '/Project/images/5855174537.jpg'),
(4, '/Project/images/5855191275.jpg'),
(5, '/Project/images/5855209453.jpg'),
(6, '/Project/images/5855213165.jpg'),
(7, '/Project/images/5855221959.jpg'),
(8, '/Project/images/5855729828.jpg'),
(9, '/Project/images/5855735700.jpg'),
(10, '/Project/images/5855752464.jpg'),
(11, '/Project/images/5855774224.jpg'),
(12, '/Project/images/5856616479.jpg'),
(13, '/Project/images/5856654945.jpg'),
(14, '/Project/images/5856658791.jpg'),
(15, '/Project/images/5856697109.jpg'),
(16, '/Project/images/5857298322.jpg'),
(17, '/Project/images/5857398054.jpg'),
(18, '/Project/images/6114850721.jpg'),
(19, '/Project/images/6114859969.jpg'),
(20, '/Project/images/6114867983.jpg'),
(21, '/Project/images/6114881215.jpg'),
(22, '/Project/images/6114904363.jpg'),
(23, '/Project/images/6114907897.jpg'),
(24, '/Project/images/6114960821.jpg'),
(25, '/Project/images/6115548152.jpg'),
(26, '/Project/images/6115603234.jpg'),
(27, '/Project/images/6119127716.jpg'),
(28, '/Project/images/6119130918.jpg'),
(29, '/Project/images/6119143988.jpg'),
(34, '/Project/images/6592294487.jpg'),
(35, '/Project/images/6592317633.jpg'),
(36, '/Project/images/6592902825.jpg'),
(37, '/Project/images/6592914823.jpg'),
(38, '/Project/images/6596046267.jpg'),
(39, '/Project/images/6596048341.jpg'),
(40, '/Project/images/8152016381.jpg'),
(41, '/Project/images/8152020963.jpg'),
(42, '/Project/images/8152043422.jpg'),
(43, '/Project/images/8152045688.jpg'),
(44, '/Project/images/8152045872.jpg'),
(45, '/Project/images/8152048712.jpg'),
(46, '/Project/images/8645912379.jpg'),
(47, '/Project/images/8646991554.jpg'),
(48, '/Project/images/8710247776.jpg'),
(49, '/Project/images/8710289254.jpg'),
(50, '/Project/images/8710320515.jpg'),
(51, '/Project/images/8710513053.jpg'),
(52, '/Project/images/8711623884.jpg'),
(53, '/Project/images/8711645510.jpg'),
(54, '/Project/images/8730408907.jpg'),
(55, '/Project/images/8731523536.jpg'),
(56, '/Project/images/8731526170.jpg'),
(57, '/Project/images/9493997865.jpg'),
(58, '/Project/images/9494282329.jpg'),
(59, '/Project/images/9494464567.jpg'),
(60, '/Project/images/9494470337.jpg'),
(61, '/Project/images/9494472443.jpg'),
(62, '/Project/images/9494475161.jpg'),
(63, '/Project/images/9495571869.jpg'),
(64, '/Project/images/9495574327.jpg'),
(65, '/Project/images/9496560520.jpg'),
(66, '/Project/images/9496787858.jpg'),
(67, '/Project/images/9496792166.jpg'),
(68, '/Project/images/9496799098.jpg'),
(69, '/Project/images/9498358806.jpg'),
(70, '/Project/images/9498368556.jpg'),
(71, '/Project/images/9498381010.jpg'),
(72, '/Project/images/9498386718.jpg'),
(73, '/Project/images/9498388516.jpg'),
(74, '/Project/images/9502740177.jpg'),
(75, '/Project/images/9502741759.jpg'),
(76, '/Project/images/9504445110.jpg'),
(77, '/Project/images/9504448540.jpg'),
(78, '/Project/images/9504449928.jpg'),
(79, '/Project/images/9504449928.jpg'),
(80, '/Project/images/9504451722.jpg'),
(81, '/Project/images/9504606628.jpg'),
(82, '/Project/images/9504609042.jpg'),
(83, '/Project/images/9504613978.jpg'),
(84, '/Project/images/9505536014.jpg'),
(85, '/Project/images/9505893300.jpg'),
(86, '/Project/images/9505897492.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `travelimagedetails`
--

CREATE TABLE `travelimagedetails` (
  `ImageID` int(11) NOT NULL,
  `CityCode` varchar(255) NOT NULL,
  `CountryCodeISO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travelimagedetails`
--

INSERT INTO `travelimagedetails` (`ImageID`, `CityCode`, `CountryCodeISO`) VALUES
(1, 'BRU', 'BE'),
(2, 'BRN', 'SZ'),
(3, 'BRU', 'BE'),
(4, 'BRN', 'SZ'),
(5, 'AMS', 'NL'),
(6, 'AMS', 'NL'),
(7, 'AMS', 'NL'),
(8, 'BOM', 'IN'),
(9, 'BOG', 'CO'),
(10, 'BOM', 'IN'),
(11, 'AZI', 'AE'),
(12, 'BOG', 'CO'),
(13, 'BOG', 'CO'),
(14, 'BOM', 'IN'),
(15, 'BOM', 'IN'),
(16, 'BER', 'GM'),
(17, 'BOM', 'IN'),
(18, 'BER', 'GM'),
(19, 'BER', 'GM'),
(20, 'BER', 'GM'),
(21, 'BER', 'GM'),
(22, 'BER', 'GM'),
(23, 'BER', 'GM'),
(24, 'BER', 'GM'),
(25, 'AZI', 'AE'),
(26, 'ABV', 'NI'),
(27, 'ABV', 'NI'),
(28, 'ABV', 'NI'),
(29, 'ABV', 'NI'),
(30, 'ATH', 'GR'),
(31, 'ATH', 'GR'),
(32, 'ATH', 'GR'),
(33, 'AAC', 'EG'),
(34, 'AZI', 'AE'),
(35, 'AMS', 'NL'),
(36, 'YND', 'CA'),
(37, 'YND', 'CA'),
(38, 'YND', 'CA'),
(39, 'YND', 'CA'),
(40, 'YND', 'CA'),
(41, 'ABV', 'NI'),
(42, 'AMS', 'NL'),
(43, 'AAC', 'EG'),
(44, 'AZI', 'AE'),
(45, 'BOG', 'CO'),
(46, 'ACC', 'GH'),
(47, 'ACC', 'GH'),
(48, 'ACC', 'GH'),
(49, 'ACC', 'GH'),
(50, 'BOG', 'CO'),
(51, 'AZI', 'AE'),
(52, 'BOG', 'CO'),
(53, 'BUE', 'AR'),
(54, 'DCA', 'US'),
(55, 'ATH', 'GR'),
(56, 'ATH', 'GR'),
(57, 'ATH', 'GR'),
(58, 'BRU', 'BE'),
(59, 'BRN', 'SZ'),
(60, 'BRN', 'SZ'),
(61, 'BSB', 'BR'),
(62, 'ADD', 'ET'),
(63, 'ADD', 'ET'),
(64, 'ADD', 'ET'),
(65, 'ADD', 'ET'),
(66, 'DCA', 'US'),
(67, 'BRU', 'BE'),
(68, 'CDG', 'FR'),
(69, 'DCA', 'US'),
(70, 'ADD', 'ET'),
(71, 'ADD', 'ET'),
(72, 'CIA', 'IT'),
(73, 'BSB', 'BR'),
(74, 'CIA', 'IT'),
(75, 'CIA', 'IT'),
(76, 'CIA', 'IT'),
(77, 'BRU', 'BE'),
(78, 'LON', 'UK'),
(79, 'CDG', 'FR'),
(80, 'LON', 'UK'),
(81, 'CDG', 'FR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `geocities`
--
ALTER TABLE `geocities`
  ADD UNIQUE KEY `city_id` (`GeoNameID`);

--
-- Indexes for table `geocontinents`
--
ALTER TABLE `geocontinents`
  ADD UNIQUE KEY `continent_id` (`ContinentCode`);

--
-- Indexes for table `travelimage`
--
ALTER TABLE `travelimage`
  ADD PRIMARY KEY (`ImageID`);

--
-- Indexes for table `travelimagedetails`
--
ALTER TABLE `travelimagedetails`
  ADD UNIQUE KEY `ImageID` (`ImageID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `travelimage`
--
ALTER TABLE `travelimage`
  MODIFY `ImageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
