-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 04:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `victoryride`
--

-- --------------------------------------------------------

--
-- Table structure for table `cargo_vehicle`
--

CREATE TABLE `cargo_vehicle` (
  `VIN` char(17) NOT NULL,
  `Carg_cfeet_capacity` smallint(6) DEFAULT NULL,
  `Carg_tons_capacity` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cargo_vehicle`
--

INSERT INTO `cargo_vehicle` (`VIN`, `Carg_cfeet_capacity`, `Carg_tons_capacity`) VALUES
('AAAABBBBCCCCDDDDA', 150, '1.50'),
('AAAABBBBCCCCDDDDB', 250, '2.50'),
('AAAABBBBCCCCDDDDE', 300, '3.00'),
('AAAABBBBCCCCDDDDF', 200, '2.00'),
('AAAABBBBCCCCDDDDH', 320, '3.20'),
('AAAABBBBCCCCDDDDI', 875, '8.75'),
('AAAABBBBCCCCDDDDJ', 630, '6.30');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryCode` char(2) NOT NULL,
  `CountryName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryCode`, `CountryName`) VALUES
('AU', 'Australia'),
('BR', 'Brazil'),
('CA', 'Canada'),
('ES', 'Spain'),
('FR', 'France'),
('IT', 'Italy'),
('JP', 'Japan'),
('US', 'United States'),
('ZA', 'South Africa');

-- --------------------------------------------------------

--
-- Table structure for table `country_language`
--

CREATE TABLE `country_language` (
  `CountryCode` char(2) NOT NULL,
  `LanguageCode` char(2) NOT NULL,
  `PercentageSpoken` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country_language`
--

INSERT INTO `country_language` (`CountryCode`, `LanguageCode`, `PercentageSpoken`) VALUES
('AU', 'de', '47.00'),
('AU', 'en', '92.00'),
('AU', 'es', '32.00'),
('AU', 'zh', '71.60'),
('BR', 'en', '90.70'),
('BR', 'fr', '64.00'),
('CA', 'en', '89.00'),
('CA', 'fr', '74.10'),
('CA', 'ru', '62.00'),
('ES', 'en', '40.20'),
('ES', 'es', '94.00'),
('FR', 'de', '88.30'),
('FR', 'en', '87.50'),
('FR', 'fr', '99.00'),
('IT', 'en', '87.00'),
('IT', 'es', '67.40'),
('IT', 'fr', '83.50'),
('IT', 'ru', '38.00'),
('JP', 'en', '66.80'),
('JP', 'ja', '98.00'),
('US', 'de', '42.40'),
('US', 'en', '97.00'),
('US', 'es', '50.00'),
('US', 'fr', '81.00'),
('US', 'zh', '75.20'),
('ZA', 'de', '44.00'),
('ZA', 'en', '77.00'),
('ZA', 'fr', '88.00');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `DriverLicenceNum` char(12) NOT NULL,
  `DriverFirstName` varchar(40) DEFAULT NULL,
  `DriverLastName` varchar(40) DEFAULT NULL,
  `ClearanceLevel` char(1) DEFAULT NULL,
  `IsAvailable` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`DriverLicenceNum`, `DriverFirstName`, `DriverLastName`, `ClearanceLevel`, `IsAvailable`) VALUES
('098675532', 'Md', 'Polash', '2', 'Y'),
('158409673', 'Olivia', 'Patel', '4', 'Y'),
('291736845', 'Matias', 'Nguyen', '1', 'Y'),
('345098712', 'Henry', 'Smith', '3', 'N'),
('483957620', 'Amara', 'Santos', '3', 'Y'),
('567293481', 'Sven', 'Garcia', '2', 'N'),
('618890237', 'Jason', 'Park', '1', 'N'),
('623719548', 'Thiago', 'Rossi', '4', 'N'),
('684507216', 'Dmitry', 'Silva', '3', 'Y'),
('736985402', 'Benjamin', 'Garcia', '2', 'N'),
('809273465', 'Elijah', 'Lopez', '4', 'Y'),
('902834105', 'Ava', 'Kim', '1', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `driver_language`
--

CREATE TABLE `driver_language` (
  `LanguageCode` char(2) NOT NULL,
  `DriverLicenceNum` char(12) NOT NULL,
  `DriverLanguageProf` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_language`
--

INSERT INTO `driver_language` (`LanguageCode`, `DriverLicenceNum`, `DriverLanguageProf`) VALUES
('de', '345098712', '5'),
('de', '623719548', '3'),
('de', '809273465', '2'),
('en', '098675532', '4'),
('en', '158409673', '2'),
('en', '291736845', '5'),
('en', '345098712', '4'),
('en', '483957620', '4'),
('en', '567293481', '1'),
('en', '623719548', '2'),
('en', '684507216', '3'),
('en', '736985402', '5'),
('en', '809273465', '1'),
('en', '902834105', '3'),
('es', '158409673', '3'),
('es', '291736845', '5'),
('es', '684507216', '4'),
('fr', '567293481', '4'),
('fr', '736985402', '3'),
('fr', '902834105', '1'),
('ja', '902834105', '5'),
('ru', '483957620', '1'),
('ru', '618890237', '5'),
('zh', '291736845', '4');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `LanguageCode` char(2) NOT NULL,
  `LanguageName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`LanguageCode`, `LanguageName`) VALUES
('de', 'German'),
('en', 'English'),
('es', 'Spanish'),
('fr', 'French'),
('ja', 'Japanese'),
('ru', 'Russian'),
('zh', 'Mandarin Chinese');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationID` int(11) NOT NULL,
  `LocationTypeID` char(2) DEFAULT NULL,
  `StreetNo` varchar(5) DEFAULT NULL,
  `StreetName` varchar(50) DEFAULT NULL,
  `City` varchar(40) DEFAULT NULL,
  `State` char(3) DEFAULT NULL,
  `Postcode` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LocationID`, `LocationTypeID`, `StreetNo`, `StreetName`, `City`, `State`, `Postcode`) VALUES
(1, 'AP', '12', 'Airport Drive', 'Brisbane', 'QLD', '4008'),
(2, 'SB', '144', 'Edward Street', 'Willow Creek', 'QLD', '4000'),
(3, 'FF', '19', 'Elizabeth Street', 'Melbourne', 'VIC', '2145'),
(4, 'GM', '117', 'Castlereagh', 'Lakeview Heights', 'NSW', '5504'),
(5, 'HL', '130', 'William Street', 'Spring Lake Park', 'VIC', '4000'),
(6, 'CB', '501', 'Queen Street', 'Kingsland Park', 'NSW', '5230'),
(7, 'HL', '130', 'William Street', 'Cedar Rapids', 'NSW', '5120'),
(8, 'ST', '9W', 'Moore Park', 'Ocean Park', 'VIC', '2000'),
(9, 'RS', '18', 'Punch Ln', 'Melbourne', 'VIC', '2400'),
(10, 'PK', '11', 'Montague Rd', 'Emerald Bay', 'QLD', '4101'),
(11, 'ZO', '708', 'Jesmond Rd', 'Fig Tree Pocke', 'QLD', '4069'),
(12, 'TP', '48P8', 'H4', 'Coomera', 'QLD', '4209'),
(13, 'SW', '16', 'Brendan Thorne Place', 'Gold Coast', 'QLD', '4135'),
(14, 'HL', '117', 'Rubicon Crescent', 'Surfers Paradise', 'QLD', '4211');

-- --------------------------------------------------------

--
-- Table structure for table `location_type`
--

CREATE TABLE `location_type` (
  `LocTypeID` char(2) NOT NULL,
  `LocTypeDescription` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location_type`
--

INSERT INTO `location_type` (`LocTypeID`, `LocTypeDescription`) VALUES
('AP', 'Airport'),
('CB', 'Club'),
('FF', 'Fast Food'),
('GM', 'GYM'),
('HL', 'Hotel'),
('PK', 'Park'),
('RS', 'Restaurant'),
('SB', 'Sports Bar'),
('ST', 'Stadium'),
('SW', 'Swimming Pool'),
('TP', 'Theme Park'),
('ZO', 'ZOO');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_repair`
--

CREATE TABLE `maintenance_repair` (
  `VIN` char(17) NOT NULL,
  `OdometerReading` int(11) NOT NULL,
  `MR_Type` char(1) DEFAULT NULL,
  `MR_Date` date DEFAULT NULL,
  `MR_Cost` decimal(7,2) DEFAULT NULL,
  `MR_Detail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_repair`
--

INSERT INTO `maintenance_repair` (`VIN`, `OdometerReading`, `MR_Type`, `MR_Date`, `MR_Cost`, `MR_Detail`) VALUES
('AAAABBBBCCCCDDDDA', 2000, 'M', '2022-06-18', '2000.00', 'Oil Change'),
('AAAABBBBCCCCDDDDB', 750, 'R', '2022-04-12', '3500.50', 'Need to repair wiper and replace front glass'),
('AAAABBBBCCCCDDDDC', 800, 'M', '2022-04-15', '40200.50', 'Need to maintenance Brakes and Mirrors'),
('AAAABBBBCCCCDDDDC', 1366, 'M', '2022-02-07', '2500.00', 'Checking Headlight, Brakes and Parking Lights '),
('AAAABBBBCCCCDDDDD', 2560, 'M', '2022-08-03', '40463.12', 'Overall Car Maintenance'),
('AAAABBBBCCCCDDDDE', 2124, 'R', '2022-05-25', '3000.00', 'Engine Repair.'),
('AAAABBBBCCCCDDDDF', 600, 'R', '2022-12-10', '1698.50', 'Tire Repair for Pressure and Treadth Depth.'),
('AAAABBBBCCCCDDDDG', 8951, 'R', '2022-10-02', '5000.00', 'Oil Change'),
('AAAABBBBCCCCDDDDH', 1350, 'M', '2022-11-15', '1500.00', 'Transmission Fluid.'),
('AAAABBBBCCCCDDDDI', 1442, 'M', '2022-05-27', '7500.00', 'Oil Change'),
('AAAABBBBCCCCDDDDJ', 5023, 'R', '2022-08-14', '1000.00', 'Air Filter');

-- --------------------------------------------------------

--
-- Table structure for table `official`
--

CREATE TABLE `official` (
  `OfficialID` char(8) NOT NULL,
  `OfficialRole` char(2) DEFAULT NULL,
  `CountryCode` char(2) DEFAULT NULL,
  `OfficialFirstName` varchar(40) DEFAULT NULL,
  `OfficialLastName` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `official`
--

INSERT INTO `official` (`OfficialID`, `OfficialRole`, `CountryCode`, `OfficialFirstName`, `OfficialLastName`) VALUES
('AUS34567', 'MA', 'AU', 'Liam', 'Patel'),
('AUS56789', 'JU', 'AU', 'Chris', 'Wilson'),
('BRZ45678', 'CP', 'BR', 'Gabriela', 'McKenzie'),
('BRZ78901', 'JU', 'BR', 'Ana', 'Silva'),
('CAN89012', 'PH', 'CA', 'Samantha', 'Campbell'),
('CAN90123', 'NU', 'CA', 'Emily', 'Tremblay'),
('FRA23456', 'CP', 'FR', 'Mathieu', 'Dubois'),
('FRA34567', 'NU', 'FR', 'Alexandre', 'Dupont'),
('ITA56789', 'CP', 'IT', 'Matteo', 'Rogez'),
('ITA90123', 'NU', 'IT', 'Alessandro', 'Luca'),
('JAP67890', 'MA', 'JP', 'Xeko', 'Yama'),
('JAP89012', 'CO', 'JP', 'Yuki', 'Tanaka'),
('SAF45678', 'PH', 'ZA', 'Thabo', 'Ndlovu'),
('SAF78901', 'CO', 'ZA', 'Rafaela', 'Mbeki'),
('SPN12345', 'MA', 'ES', 'Carlos', 'Garcia'),
('SPN23456', 'JU', 'ES', 'Javier', 'Rodriguez'),
('SPN99745', 'JU', 'ES', 'Daniel', 'Ortega'),
('USA23456', 'PH', 'US', 'Olivia', 'Thompson'),
('USA67890', 'CO', 'US', 'Emma', 'Johnson');

-- --------------------------------------------------------

--
-- Table structure for table `official_language`
--

CREATE TABLE `official_language` (
  `OfficialID` char(8) NOT NULL,
  `LanguageCode` char(2) NOT NULL,
  `Off_Lang_Preference` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `official_language`
--

INSERT INTO `official_language` (`OfficialID`, `LanguageCode`, `Off_Lang_Preference`) VALUES
('AUS34567', 'de', '2'),
('AUS34567', 'en', '1'),
('AUS56789', 'es', '2'),
('AUS56789', 'zh', '1'),
('BRZ45678', 'en', '1'),
('BRZ78901', 'fr', '1'),
('CAN89012', 'fr', '1'),
('CAN90123', 'en', '2'),
('CAN90123', 'ru', '1'),
('FRA23456', 'fr', '1'),
('FRA34567', 'de', '1'),
('FRA34567', 'en', '2'),
('ITA56789', 'en', '3'),
('ITA56789', 'fr', '1'),
('ITA56789', 'ru', '2'),
('ITA90123', 'es', '1'),
('JAP67890', 'en', '1'),
('JAP89012', 'ja', '1'),
('SAF45678', 'de', '1'),
('SAF45678', 'fr', '2'),
('SAF78901', 'en', '1'),
('SPN12345', 'es', '1'),
('SPN23456', 'en', '1'),
('SPN99745', 'en', '2'),
('SPN99745', 'es', '1'),
('USA23456', 'es', '2'),
('USA23456', 'fr', '3'),
('USA23456', 'zh', '1'),
('USA67890', 'de', '2'),
('USA67890', 'en', '1');

-- --------------------------------------------------------

--
-- Table structure for table `official_role`
--

CREATE TABLE `official_role` (
  `RoleID` char(2) NOT NULL,
  `RoleDescription` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `official_role`
--

INSERT INTO `official_role` (`RoleID`, `RoleDescription`) VALUES
('CO', 'Coach'),
('CP', 'Captain'),
('JU', 'Judge'),
('MA', 'Manager'),
('NU', 'Nutritionist'),
('PH', 'Physio');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_vehicle`
--

CREATE TABLE `passenger_vehicle` (
  `VIN` char(17) NOT NULL,
  `Pass_seat_capacity` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger_vehicle`
--

INSERT INTO `passenger_vehicle` (`VIN`, `Pass_seat_capacity`) VALUES
('AAAABBBBCCCCDDDDA', 4),
('AAAABBBBCCCCDDDDC', 7),
('AAAABBBBCCCCDDDDE', 6),
('AAAABBBBCCCCDDDDF', 4),
('AAAABBBBCCCCDDDDG', 5),
('AAAABBBBCCCCDDDDH', 6),
('AAAABBBBCCCCDDDDI', 7),
('SANFDAE33U1286116', 5);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `BookingRefNum` int(11) NOT NULL,
  `DriverLicenceNum` char(12) DEFAULT NULL,
  `OfficialID` char(8) DEFAULT NULL,
  `LanguageCode` char(2) DEFAULT NULL,
  `PickUpLocID` int(11) DEFAULT NULL,
  `DropOffLocID` int(11) DEFAULT NULL,
  `VIN` char(17) DEFAULT NULL,
  `StartTimeIntended` datetime DEFAULT NULL,
  `EndTimeIntended` datetime DEFAULT NULL,
  `StartTimeActual` datetime DEFAULT NULL,
  `EndTimeActual` datetime DEFAULT NULL,
  `StartOdometerKM` int(11) DEFAULT NULL,
  `EndOdometerKM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`BookingRefNum`, `DriverLicenceNum`, `OfficialID`, `LanguageCode`, `PickUpLocID`, `DropOffLocID`, `VIN`, `StartTimeIntended`, `EndTimeIntended`, `StartTimeActual`, `EndTimeActual`, `StartOdometerKM`, `EndOdometerKM`) VALUES
(1, '684507216', 'SPN12345', 'es', 1, 10, 'AAAABBBBCCCCDDDDB', '2022-11-20 06:00:00', '2022-11-20 14:00:00', '2022-11-20 06:30:00', '2022-11-20 15:00:00', 96502, 98500),
(2, '902834105', 'BRZ78901', 'fr', 3, 9, 'AAAABBBBCCCCDDDDC', '2022-06-18 01:00:00', '2022-06-18 18:00:00', '2022-06-18 12:00:00', '2022-06-18 17:30:00', 123485, 124850),
(3, '158409673', 'JAP89012', 'ja', 5, 2, 'AAAABBBBCCCCDDDDD', '2022-12-10 08:30:00', '2022-12-10 17:30:00', '2022-12-10 10:30:00', '2022-12-10 17:30:00', 56987, 57503),
(4, '736985402', 'AUS34567', 'en', 7, 5, 'AAAABBBBCCCCDDDDE', '2022-10-02 09:15:00', '2022-10-02 15:15:00', '2022-10-02 09:30:00', '2022-10-02 15:00:00', 12358, 13990),
(5, '291736845', 'CAN90123', 'ru', 1, 12, 'AAAABBBBCCCCDDDDE', '2022-05-27 07:00:00', '2022-05-27 14:00:00', '2022-05-27 08:25:00', '2022-05-27 17:20:00', 58963, 59765),
(6, '567293481', 'ITA56789', 'fr', 6, 12, 'AAAABBBBCCCCDDDDF', '2022-03-17 10:00:00', '2022-03-17 15:00:00', '2022-03-17 10:30:00', '2022-03-17 15:00:00', 78945, 79550),
(7, '483957620', 'SPN23456', 'es', 9, 3, 'AAAABBBBCCCCDDDDG', '2022-02-02 08:00:00', '2022-02-02 18:00:00', '2022-02-02 08:00:00', '2022-02-02 17:00:00', 45987, 46500),
(8, '623719548', 'FRA34567', 'de', 8, 4, 'AAAABBBBCCCCDDDDH', '2022-08-01 09:30:00', '2022-08-01 18:30:00', '2022-08-01 10:30:00', '2022-08-01 17:30:00', 135896, 135980),
(9, '809273465', 'AUS56789', 'es', 10, 12, 'AAAABBBBCCCCDDDDI', '2022-09-09 08:00:00', '2022-09-09 13:00:00', '2022-09-09 09:00:00', '2022-09-09 15:00:00', 125893, 136585),
(10, '345098712', 'JAP67890', 'en', 4, 8, 'AAAABBBBCCCCDDDDJ', '2022-10-02 12:00:00', '2022-10-02 20:00:00', '2022-10-02 14:00:00', '2022-10-02 20:00:00', 15786, 16580),
(11, '158409673', 'AUS34567', 'en', 2, 5, 'AAAABBBBCCCCDDDDB', '2023-06-25 07:30:00', '2023-06-25 15:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 135654, 150368),
(12, '567293481', 'USA23456', 'en', 4, 8, 'AAAABBBBCCCCDDDDE', '2023-07-05 08:00:00', '2023-07-05 14:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 135654, 150368),
(13, '809273465', 'FRA34567', 'en', 5, 7, 'AAAABBBBCCCCDDDDF', '2023-08-10 07:30:00', '2023-08-10 15:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 135654, 150368),
(14, '345098712', 'SAF78901', 'en', 3, 9, 'AAAABBBBCCCCDDDDI', '2023-07-15 08:00:00', '2023-07-15 18:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 135654, 150368),
(15, '098675532', 'SPN99745', 'en', 14, 13, 'SANFDAE33U1286116', '2023-04-09 10:00:00', '2023-04-09 10:45:00', '2023-04-09 10:15:00', '2023-04-09 11:55:00', 126982, 127119);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `VIN` char(17) NOT NULL,
  `Veh_TypeID` char(2) DEFAULT NULL,
  `Veh_Make` varchar(30) DEFAULT NULL,
  `Veh_Model` varchar(30) DEFAULT NULL,
  `Veh_Year` varchar(4) DEFAULT NULL,
  `Veh_Colour` varchar(20) DEFAULT NULL,
  `Veh_RegoNum` char(6) DEFAULT NULL,
  `Veh_Odometer` int(11) DEFAULT NULL,
  `Veh_Availability` char(1) DEFAULT NULL,
  `Veh_For_Passenger` char(1) DEFAULT NULL,
  `Veh_For_Cargo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VIN`, `Veh_TypeID`, `Veh_Make`, `Veh_Model`, `Veh_Year`, `Veh_Colour`, `Veh_RegoNum`, `Veh_Odometer`, `Veh_Availability`, `Veh_For_Passenger`, `Veh_For_Cargo`) VALUES
('AAAABBBBCCCCDDDDA', 'PV', 'Nissan', 'Altima', '2020', 'Black', 'ABCDEA', 164503, 'Y', 'Y', 'Y'),
('AAAABBBBCCCCDDDDB', 'CV', 'Ford', 'Ranger', '2019', 'Gray', 'ABCDEB', 546325, 'Y', 'N', 'Y'),
('AAAABBBBCCCCDDDDC', 'CV', 'Hyundai', 'iLoad', '2020', 'White', 'ABCDEC', 156413, 'Y', 'Y', 'N'),
('AAAABBBBCCCCDDDDD', 'PV', 'Toyota', 'Camry', '2021', 'Red', 'ABCDED', 198795, 'N', 'N', 'N'),
('AAAABBBBCCCCDDDDE', 'CV', 'BMW', 'X3', '2022', 'White', 'ABCDEE', 354503, 'Y', 'Y', 'Y'),
('AAAABBBBCCCCDDDDF', 'PV', 'Hyundai', 'Venue', '2023', 'Orange', 'ABCDEF', 893455, 'N', 'Y', 'Y'),
('AAAABBBBCCCCDDDDG', 'PV', 'KIA', 'Picanto', '2020', 'Green', 'ABCDEG', 782503, 'Y', 'Y', 'N'),
('AAAABBBBCCCCDDDDH', 'PV', 'Toyota', 'Corolla', '2021', 'Black', 'ABCDEH', 245403, 'Y', 'Y', 'Y'),
('AAAABBBBCCCCDDDDI', 'CV', 'Mazda', 'CX-5', '2023', 'White', 'ABCDEI', 545503, 'Y', 'Y', 'Y'),
('AAAABBBBCCCCDDDDJ', 'PV', 'Mazda', 'Mazda6', '2021', 'Gray', 'ABCDEJ', 457842, 'Y', 'N', 'Y'),
('SANFDAE33U1286116', 'CV', 'Peugeot', '508', '2021', 'Red', 'ABCDEK', 127119, 'Y', 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `Veh_TypeID` char(2) NOT NULL,
  `Veh_Type_Description` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`Veh_TypeID`, `Veh_Type_Description`) VALUES
('CO', 'Convertible'),
('CV', 'Sedan'),
('MV', 'Minivan'),
('PU', 'Pick-Up'),
('PV', 'SUV'),
('SC', 'Sports Car');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargo_vehicle`
--
ALTER TABLE `cargo_vehicle`
  ADD PRIMARY KEY (`VIN`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryCode`);

--
-- Indexes for table `country_language`
--
ALTER TABLE `country_language`
  ADD PRIMARY KEY (`CountryCode`,`LanguageCode`),
  ADD KEY `LanguageCode` (`LanguageCode`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`DriverLicenceNum`);

--
-- Indexes for table `driver_language`
--
ALTER TABLE `driver_language`
  ADD PRIMARY KEY (`LanguageCode`,`DriverLicenceNum`),
  ADD KEY `DriverLicenceNum` (`DriverLicenceNum`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`LanguageCode`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationID`),
  ADD KEY `LocationTypeID` (`LocationTypeID`);

--
-- Indexes for table `location_type`
--
ALTER TABLE `location_type`
  ADD PRIMARY KEY (`LocTypeID`);

--
-- Indexes for table `maintenance_repair`
--
ALTER TABLE `maintenance_repair`
  ADD PRIMARY KEY (`VIN`,`OdometerReading`);

--
-- Indexes for table `official`
--
ALTER TABLE `official`
  ADD PRIMARY KEY (`OfficialID`),
  ADD KEY `OfficialRole` (`OfficialRole`),
  ADD KEY `CountryCode` (`CountryCode`);

--
-- Indexes for table `official_language`
--
ALTER TABLE `official_language`
  ADD PRIMARY KEY (`OfficialID`,`LanguageCode`),
  ADD KEY `LanguageCode` (`LanguageCode`);

--
-- Indexes for table `official_role`
--
ALTER TABLE `official_role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `passenger_vehicle`
--
ALTER TABLE `passenger_vehicle`
  ADD PRIMARY KEY (`VIN`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`BookingRefNum`),
  ADD KEY `DriverLicenceNum` (`DriverLicenceNum`),
  ADD KEY `OfficialID` (`OfficialID`),
  ADD KEY `LanguageCode` (`LanguageCode`),
  ADD KEY `PickUpLocID` (`PickUpLocID`),
  ADD KEY `DropOffLocID` (`DropOffLocID`),
  ADD KEY `VIN` (`VIN`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`VIN`),
  ADD KEY `Veh_TypeID` (`Veh_TypeID`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`Veh_TypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LocationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `BookingRefNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cargo_vehicle`
--
ALTER TABLE `cargo_vehicle`
  ADD CONSTRAINT `cargo_vehicle_ibfk_1` FOREIGN KEY (`VIN`) REFERENCES `vehicle` (`VIN`);

--
-- Constraints for table `country_language`
--
ALTER TABLE `country_language`
  ADD CONSTRAINT `country_language_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`CountryCode`),
  ADD CONSTRAINT `country_language_ibfk_2` FOREIGN KEY (`LanguageCode`) REFERENCES `language` (`LanguageCode`);

--
-- Constraints for table `driver_language`
--
ALTER TABLE `driver_language`
  ADD CONSTRAINT `driver_language_ibfk_1` FOREIGN KEY (`LanguageCode`) REFERENCES `language` (`LanguageCode`),
  ADD CONSTRAINT `driver_language_ibfk_2` FOREIGN KEY (`DriverLicenceNum`) REFERENCES `driver` (`DriverLicenceNum`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`LocationTypeID`) REFERENCES `location_type` (`LocTypeID`);

--
-- Constraints for table `maintenance_repair`
--
ALTER TABLE `maintenance_repair`
  ADD CONSTRAINT `maintenance_repair_ibfk_1` FOREIGN KEY (`VIN`) REFERENCES `vehicle` (`VIN`);

--
-- Constraints for table `official`
--
ALTER TABLE `official`
  ADD CONSTRAINT `official_ibfk_1` FOREIGN KEY (`OfficialRole`) REFERENCES `official_role` (`RoleID`),
  ADD CONSTRAINT `official_ibfk_2` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`CountryCode`);

--
-- Constraints for table `official_language`
--
ALTER TABLE `official_language`
  ADD CONSTRAINT `official_language_ibfk_1` FOREIGN KEY (`OfficialID`) REFERENCES `official` (`OfficialID`),
  ADD CONSTRAINT `official_language_ibfk_2` FOREIGN KEY (`LanguageCode`) REFERENCES `language` (`LanguageCode`);

--
-- Constraints for table `passenger_vehicle`
--
ALTER TABLE `passenger_vehicle`
  ADD CONSTRAINT `passenger_vehicle_ibfk_1` FOREIGN KEY (`VIN`) REFERENCES `vehicle` (`VIN`);

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`DriverLicenceNum`) REFERENCES `driver` (`DriverLicenceNum`),
  ADD CONSTRAINT `trip_ibfk_2` FOREIGN KEY (`OfficialID`) REFERENCES `official_language` (`OfficialID`),
  ADD CONSTRAINT `trip_ibfk_3` FOREIGN KEY (`LanguageCode`) REFERENCES `official_language` (`LanguageCode`),
  ADD CONSTRAINT `trip_ibfk_4` FOREIGN KEY (`PickUpLocID`) REFERENCES `location` (`LocationID`),
  ADD CONSTRAINT `trip_ibfk_5` FOREIGN KEY (`DropOffLocID`) REFERENCES `location` (`LocationID`),
  ADD CONSTRAINT `trip_ibfk_6` FOREIGN KEY (`VIN`) REFERENCES `vehicle` (`VIN`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`Veh_TypeID`) REFERENCES `vehicle_type` (`Veh_TypeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
