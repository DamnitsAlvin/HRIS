-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2019 at 03:16 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE DATABASE IF NOT EXISTS HRDB;
use HRDB;

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 7, 1, 'userid'),
(2, '000', 79, 1, 'employeeid'),
(3, '1', 135, 1, 'leaves');

-- --------------------------------------------------------

--
-- Table structure for table `tblchildren`
--

CREATE TABLE `tblchildren` (
  `CHILDID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `NAMEOFCHILD` varchar(90) NOT NULL,
  `DATEOFBIRTH` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblchildren`
--

INSERT INTO `tblchildren` (`CHILDID`, `EMPLOYEEID`, `NAMEOFCHILD`, `DATEOFBIRTH`) VALUES
(1, '233', 'CZARINA FAYE S. CALAMAY', '09/03/1996'),
(2, '233', 'ZAM LOUI S. CALAMAY', '11/08/2003'),
(3, '019', 'CLODMAR KENNETH T. ALCALA', '05/20/1987'),
(4, '019', 'CLOE MARIE T. ALCALA', '07/26/1992'),
(5, '014', 'SHARON FAITH ALBAYDA', '09/02/1987'),
(6, '014', 'MARGARET ROSE ALBAYDA', '08/26/1993');

-- --------------------------------------------------------

--
-- Table structure for table `tblcivilserviceeligibility`
--

CREATE TABLE `tblcivilserviceeligibility` (
  `CSEID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `CAREER` varchar(125) NOT NULL,
  `RATING` varchar(90) NOT NULL,
  `DATEEXAMINATION` varchar(30) NOT NULL,
  `PLACEEXAMINATION` varchar(125) NOT NULL,
  `LICENSENO` varchar(90) NOT NULL,
  `DATERELEASED` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcivilserviceeligibility`
--

INSERT INTO `tblcivilserviceeligibility` (`CSEID`, `EMPLOYEEID`, `CAREER`, `RATING`, `DATEEXAMINATION`, `PLACEEXAMINATION`, `LICENSENO`, `DATERELEASED`) VALUES
(1, '288', 'CIVIL SERVICE ELIGIBLE ( PROF)\r\n\r\n\r\n\r\n\r\n\r\n', '', '04/25/2010', 'ILOILO NATIONAL HIGHSCHOOL', '', '02/12/2010'),
(2, '520', 'ELECTRONICS ENGINEERING BOARD EAM', '75.20', '10/01/2015', 'CEBU CITY', '0062389', '11/20/2015'),
(3, '209', 'LET BOARD EXAM', '', '09/28/2008', 'CSA BACOLOD CITY', '1025541', '07/28/2009'),
(4, '236', 'CIVIL SERVICE ELIGIBILITY', '', '08/27/2005', 'BACOLOD CITY\r\n', '048170', '09/27/2005'),
(5, '019', 'CAREER SERVICE PROF. EAM', '79', 'mm/dd/1982', 'DUMAGUETE CITY', '', 'mm/dd/1982'),
(6, '019', 'LET', '78', 'mm/dd/1986', 'DUMAGUETE CITY\r\n', '', 'mm/dd/1986'),
(7, '014', 'LICENSURE EAM FOR CHEM. ENGRS.', '74.3', '09/05/1983', 'BACOLOD CITY', '0012957', '10/04/1983'),
(8, '014', 'CIVIL SERVICE PROF. EXAM', '82.16', '05/25/1995', 'BACOLOD CITY', '', '06/27/1995');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `DEPARTMENTID` int(11) NOT NULL,
  `DEPARTMENT` varchar(30) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `DEPARTMENTHEAD` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`DEPARTMENTID`, `DEPARTMENT`, `DESCRIPTION`, `DEPARTMENTHEAD`) VALUES
(4, 'ACCOUNTING', 'ACCOUNTING', 'MR. JAN EDUARD IROG'),
(5, 'CECS', 'COLLEGE OF ENGINEERING AND COMPUTER STUDIES', 'ENGR. JENNEE FAITH JOY Y. RESANO'),
(6, 'FINANCE', 'FINANCE', ''),
(7, 'VPAF AND GENERAL SERVICES', 'VICE PRESIDENT FOR ADMINISTRATION AND FINANCE\r\nGENERAL SERVICES', 'MRS.MELCHORIE C. BEPINOSO'),
(8, 'OSAS', 'OFFICE OF THE STUDENT AFFAIRS AND SERVICES', 'VENALYN C. TORESIS'),
(9, 'CTEAS', 'COLLEGE OF TEACHERS EDUCATION ARTS AND SCIENCES', 'MARILYN ALCALA'),
(10, 'CBA', 'COLLEGE OF BUSINESS AND ACCOUNTANCY', 'MARICAR ONAYAN'),
(11, 'CPAHP', 'COLLEGE OF PHARMACY AND HEALTH PROGRAM', 'JUVY HINOSO'),
(12, 'HRDO', 'HUMAN RESOURCE DEVELOPMENT OFFICE', 'DAFFODILS GARCENIEGO'),
(13, 'CHAPLAINS OFFICE', 'CHAPLAINS OFFICE', 'NILO ENGADA'),
(14, 'OIA', 'OFFICE INTERNAL AFFAIRS', 'GLENN REPIQUE'),
(15, 'ELEMENTARY', 'ELEMENTARY', 'MRS. LILY BAGUIO'),
(16, 'HIGH SCHOOL', 'HIGH SCHOOL', 'MRS. MERRILL CHAVEZ'),
(17, 'REGISTRAR', 'REGISTRAR', 'RUTH JOY  CARDIENTE'),
(18, 'LIBRARY', 'LIBRARY', 'SUZENETTE MACAULING'),
(19, 'VPAA', 'VICE PRESIDENT FOR ACADEMIC AFFAIRS', 'MARIETTA VILLEGAS'),
(20, 'RESEARCH & COMMUNITY EXTENSION', 'RESEARCH & COMMUNITY EXTENSION', 'ROY FRANCIS PABIANIA'),
(21, 'PRESIDENT\'S OFFICE', 'PRESIDENT\'S OFFICE', 'DR. DAVID GARGANTIEL');

-- --------------------------------------------------------

--
-- Table structure for table `tbldivision`
--

CREATE TABLE `tbldivision` (
  `DIVISIONID` int(11) NOT NULL,
  `DIVISION` varchar(99) NOT NULL,
  `DIVISIONHEAD` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldivision`
--

INSERT INTO `tbldivision` (`DIVISIONID`, `DIVISION`, `DIVISIONHEAD`) VALUES
(4, 'ADMINISTRATIVE', 'MELCHORIE BEPINOSO'),
(5, 'ACADEMICS', 'MARIETTA VILLEGAS');

-- --------------------------------------------------------

--
-- Table structure for table `tbleducbackground`
--

CREATE TABLE `tbleducbackground` (
  `EDUCID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `ELEMENTARY` varchar(30) NOT NULL,
  `ELEMENTARY_SCHOOL` varchar(90) NOT NULL,
  `ELEMENTARY_SY` varchar(30) NOT NULL,
  `ELEMENTARY_A` text NOT NULL,
  `ELEMENTARY_B` text NOT NULL,
  `ELEMENTARY_C` text NOT NULL,
  `SECONDARY` text NOT NULL,
  `SECONDARY_SCHOOL` text NOT NULL,
  `SECONDARY_SY` text NOT NULL,
  `SECONDARY_A` text NOT NULL,
  `SECONDARY_B` text NOT NULL,
  `SECONDARY_C` text NOT NULL,
  `VOCATIONAL_COURSE` text NOT NULL,
  `VOCATIONAL_SCHOOL` text NOT NULL,
  `VOCATIONAL_SY` text NOT NULL,
  `VOCATIONAL_A` text NOT NULL,
  `VOCATIONAL_B` text NOT NULL,
  `VOCATIONAL_C` text NOT NULL,
  `COLLEGE` text NOT NULL,
  `COLLEGE_SCHOOL` text NOT NULL,
  `COLLEGE_DEGREE` text NOT NULL,
  `COLLEGE_SY` text NOT NULL,
  `COLLEGE_A` text NOT NULL,
  `COLLEGE_B` text NOT NULL,
  `COLLEGE_C` text NOT NULL,
  `GRADUATESTUDIES_SCHOOL` text NOT NULL,
  `GRADUATESTUDIES_2` text NOT NULL,
  `GRADUATESTUDIES_3` text NOT NULL,
  `GRADUATESTUDIES_A` text NOT NULL,
  `GRADUATESTUDIES_B` text NOT NULL,
  `GRADUATESTUDIES_C` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbleducbackground`
--

INSERT INTO `tbleducbackground` (`EDUCID`, `EMPLOYEEID`, `ELEMENTARY`, `ELEMENTARY_SCHOOL`, `ELEMENTARY_SY`, `ELEMENTARY_A`, `ELEMENTARY_B`, `ELEMENTARY_C`, `SECONDARY`, `SECONDARY_SCHOOL`, `SECONDARY_SY`, `SECONDARY_A`, `SECONDARY_B`, `SECONDARY_C`, `VOCATIONAL_COURSE`, `VOCATIONAL_SCHOOL`, `VOCATIONAL_SY`, `VOCATIONAL_A`, `VOCATIONAL_B`, `VOCATIONAL_C`, `COLLEGE`, `COLLEGE_SCHOOL`, `COLLEGE_DEGREE`, `COLLEGE_SY`, `COLLEGE_A`, `COLLEGE_B`, `COLLEGE_C`, `GRADUATESTUDIES_SCHOOL`, `GRADUATESTUDIES_2`, `GRADUATESTUDIES_3`, `GRADUATESTUDIES_A`, `GRADUATESTUDIES_B`, `GRADUATESTUDIES_C`) VALUES
(15, '038310', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, '520', 'Elementary', 'filomena g. gequillana elem. school', '2005', '', '', 'valedictorian', 'Secondary', 'immaculate conception academy', '2009', '', '', 'valedictorian', 'Vocational/Trade Course', '', '', '', '', '', 'College', 'fellowship baptist college', '', '2017', '', '', 'cum laude', '', '', '', '', '', ''),
(17, '398', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, '398', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, '0383-10', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, '0215', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, '022', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, '005', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, '015', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, '006', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, '017', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, '016', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, '012', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, '023', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, '004', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, '020', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, '011', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, '008', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, '024', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, '010', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, '002', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, '003', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, '018', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, '025', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, '026', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, '096', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, '045', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, '099', 'Elementary', '', '', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, '0924553', 'Elementary', 'sad', 'sa', '', '', '', 'Secondary', '', '', '', '', '', 'Vocational/Trade Course', '', '', '', '', '', 'College', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `INCID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `MNAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(90) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(90) NOT NULL,
  `AGE` int(11) NOT NULL,
  `SEX` varchar(30) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `TELNO` varchar(40) NOT NULL,
  `CITIZENSHIP` varchar(90) NOT NULL,
  `RELIGION` varchar(90) NOT NULL,
  `HEIGHT` varchar(30) NOT NULL,
  `WEIGHT` varchar(30) NOT NULL,
  `BLOODTYPE` varchar(30) NOT NULL,
  `TINNO` text NOT NULL,
  `SSSNO` varchar(90) NOT NULL,
  `PHNO` varchar(90) NOT NULL,
  `EMAILADDRESS` varchar(90) NOT NULL,
  `CELLNO` varchar(30) NOT NULL,
  `PAGIBIGNO` varchar(90) NOT NULL,
  `PERAANO` varchar(90) NOT NULL,
  `GSISNO` varchar(90) NOT NULL,
  `POSITION` varchar(50) NOT NULL,
  `WORKSTATS` varchar(90) NOT NULL,
  `DEPARTMENTID` int(11) NOT NULL,
  `DIVISIONID` int(11) NOT NULL,
  `EMPPHOTO` varchar(255) NOT NULL,
  `EMPUSERNAME` varchar(90) NOT NULL,
  `EMPPASSWORD` varchar(125) NOT NULL,
  `DATEHIRED` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`INCID`, `EMPLOYEEID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `SEX`, `CIVILSTATUS`, `TELNO`, `CITIZENSHIP`, `RELIGION`, `HEIGHT`, `WEIGHT`, `BLOODTYPE`, `TINNO`, `SSSNO`, `PHNO`, `EMAILADDRESS`, `CELLNO`, `PAGIBIGNO`, `PERAANO`, `GSISNO`, `POSITION`, `WORKSTATS`, `DEPARTMENTID`, `DIVISIONID`, `EMPPHOTO`, `EMPUSERNAME`, `EMPPASSWORD`, `DATEHIRED`) VALUES
(36, '288', 'DAFFODILS', 'GARCENIEGO', 'CATALUNA', 'KABANKALAN CITY', '1989-05-18', 'ILOILO CITY', 28, 'Female', 'Married', '09175305359', 'AMERICAN', 'BAPTIST', '', '', 'A', '296-810-167', '07-2585122-0', '', 'daffgarceniego@GMAIL.COM', '09175305359', '', '', '', 'STAFF', 'Regular', 12, 4, 'photos/STARTS-JOB-AS-PROGRAMMER.jpg', 'daff', '4277986f0240024a564bce32c8f48538dab5d180', '2000-11-30'),
(37, '520', 'ROSELYN ', 'QUIOCSON', 'MONTILLA', 'BACOLOD CITY', '1991-07-25', 'MAKATI CITY', 25, 'Female', 'Single', '09274014437', 'FILIPINO', 'CATHOLIC', '165 CM', '180KG', 'A+', '435-886-411', '', '', 'rmquiocson@gmail.com', '', '', '', '', 'FACULTY', 'Temporary', 5, 5, 'photos/ms.rhea.jpg', '520', '0b6a63765cf0acb1022fc7c84ed8dcb104f221ed', '2016-06-16'),
(39, '209', 'RAZEN GRACE ', 'JACOSALEM', 'GANON', 'ZONE 4 BRGY MAMBULAC  SILAY CITY NEGROS OCCIDENTAL', '1987-06-17', 'SILAY CITY NEGROS OCCIDENTAL', 29, 'Female', 'Single', '09298860387', 'FILIPINO', 'BAPTIST', '5\'', '44KG', 'O', '276-185-565', '07-2453503-9', '11-050447037-7', 'razengrace29@yahoo.com', '09298860387', 'N/A', 'N/A', 'N/A', 'FACULTY', 'Regular', 15, 5, '', '209', 'acfdd18ea7f4a2ba74132ba977dc207204142994', '2010-09-14'),
(40, '233', 'ZARLITO', 'CALAMAY', 'PICO', 'ROA ST. KABANKALAN CITY', '1973-04-19', 'ROA ST. KABANKALAN CITY', 44, 'Male', 'Married', '09494916033', 'FILIPINO', 'BAPTIST', '5\'4 1/2\"', '120LBS.', 'O', '905-126-310', '07-1677841-9', '11-201131260-0', '', '', '', '', '', 'STAFF', 'Regular', 8, 4, '', '233', '52fdb9f68c503e11d168fe52035901864c0a4861', '2010-01-13'),
(41, '236', 'MARICAR', 'SERGIO', 'BANCES', 'SITIO ULALOD, BRGY. ORINGAO KABANKALAN CITY', '1982-11-29', 'SITIO ULALOD, BRGY. ORINGAO KABANKALAN CITY', 34, 'Female', 'Single', '09216381216', 'FILIPINO', 'BAPTIST', '5\'2\"', '45KG.', 'O+', '248-706-132', '07-3047584-0', '02-050306489-9', 'maricar_sergio@yahoo.com', '09216381216', '', '', '', 'DEAN', 'Regular', 10, 5, '', '236', '5d23e965603269f7674c2fc33318f5d5af406f6f', '2010-11-12'),
(42, '019', 'MARILYN', 'ALCALA', 'TRIO', 'VILLA REMEDIOS SUBD. BRGY. 1; KABANKALAN CITY', '1959-07-26', 'VILLA REMEDIOS SUBD. BRGY. 1; KABANKALAN CITY', 57, 'Female', 'Married', '09195168523', 'FILIPINO', 'BAPTIST', '5\"', '112LBS.', '', '', 'A+', '', 'marilynalcala_2006@yahoo.com', '09195168523', '0906-206567-04', '', '', 'DEAN', 'Regular', 9, 5, '', '019', '6274ffa5fc725b14117efd415c065ced8d3c5587', '2010-09-15'),
(43, '014', 'SHARON ROSE', 'ALBAYDA', 'BANZUELO', 'DON EMILIO VILLAGE PHASE 2, KABANKALAN CITY', '1961-01-27', 'DON EMILIO VILLAGE PHASE 2, KABANKALAN CITY', 56, 'Female', 'none', '09181629356', 'FILIPINO', 'BAPTIST', '5\'2\"', '205LBS.', '', '131-319-097', '07-1068859-2', '11-050070712-7', 'fbc_registrar@yahoo.com', '09187629356', '0602-025256-06', '', '', 'FACULTY', 'Regular', 9, 5, 'photos/856178_608157545868165_276026975_o.jpg', '014', 'c24c173dae0e230c94ab301f276b5ad1366e71c1', '1992-05-29'),
(44, '033', 'ROXANNE', 'NIELES', 'VIRAY', 'KABANKALAN CITY', '1991-07-23', 'MIAGAO ILOILO', 25, 'Female', 'Single', '09218667794', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FACULTY', 'Regular', 16, 5, '', '033', 'b306b51104c6cd3cb997321187a4fa9c0bf49434', '2013-06-01'),
(45, '094', 'VENALYN ', 'TORESIS', 'CABAHUG', 'STO. ULALOD, ORINGAO, KABANKALAN CIT', '1969-02-02', 'SAGAY CITY', 48, 'Female', 'Married', '09502947817', 'FILIPINO', '', '', '', '', '', '', '', '', '', '', '', '', 'DEAN', 'Regular', 8, 4, '', '094', '1cbd2cb09db2ac48529827879eaad399f2e11c9f', '2005-06-05'),
(46, '212', 'ALMA RUTH', 'MARAVILLA', 'MARASIGAN', 'KABANKALAN CITY', '1976-05-04', 'KABANKALAN CITY', 41, 'Female', 'Married', '09213446657', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 14, 4, '', '212', 'e2154fea5da2dd0d1732ff30931723c2973003a0', '2009-06-29'),
(47, '503', 'GARVEN', 'PUTONG', 'ENOFRE', 'SALONG KAB. CITY', '1978-01-25', 'KABANKALAN CITY', 39, 'Male', 'Married', '09178394488', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 6, 4, '', '503', '7110e0d3f236986f20f4297a48a536d8fac5c411', '2015-10-19'),
(53, '022', 'SHERYL ANN', 'PALOTES', 'JALOP', 'KABANKALAN CITY', '1990-04-17', 'KABANKALAN CITY', 27, 'Female', 'Single', '09286392422', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 14, 4, '', '022', '141d6d6bce4007bd0e50d1a014c01085f8aab9f0', '2014-04-05'),
(54, '005', 'DAYLIN', 'ALARBA', 'L', 'KABANKALAN CITY', '1988-06-18', 'KABANKALAN CITY', 28, 'Female', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 17, 5, '', '005', 'de1f53b6fbc3fecd35b0bbc963e21902a149e5e3', '2001-01-01'),
(55, '015', 'JENALYN', 'BORNES', 'X', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 9, 5, '', '015', '37444e63907d968b4a4947cb38ce9c019e6b6310', '2001-01-01'),
(56, '006', 'RUTH JOY', 'CARDIENTE', 'C', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Single', '09228607058', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 17, 5, '', '006', '20dd129da16a9afb802d8b595485f8d2719aea44', '2001-01-01'),
(57, '017', 'GERALD JOHN', 'CORDERO', 'GICOS', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Male', 'Single', '09152863761', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FACULTY', 'Regular', 15, 5, '', '017', '1a0092b5af6d86bcb51d99bec0cffdbc19824481', '2001-01-01'),
(58, '016', 'KATRINA', 'GUILOT', 'RAMOS', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Single', '09105510273', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FACULTY', 'Probationary', 15, 5, '', '016', '399fcd69b06a4f8e2ba3ec7fb9cb3c6d3dc687a8', '2001-01-01'),
(59, '012', 'JAN  EDUARD', 'IROG', 'JAVELLANA', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Male', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 4, 4, '', '012', 'c4a2d99bc28d236098a095277b7eb0718d6be068', '2001-01-01'),
(60, '023', 'JOAHNNA ROUBELLE', 'LORENZO', 'N', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FACULTY', 'Probationary', 15, 5, '', '023', '1bb85661d74e2a15ba3b959218f3c3f93c7ddb88', '2001-01-01'),
(61, '004', 'JANICE', 'MAGBANUA', 'X', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 17, 5, '', '004', 'c63528a52274a35d1c07bd9e55a83c6eb073de81', '2001-01-01'),
(62, '020', 'JUNJJI', 'PADILLA', 'NATURA', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Married', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 6, 4, '', '020', 'f38e1bcab2b7a9b4ea5fa8403af6f8891d5d1115', '2001-01-01'),
(63, '011', 'APRIL MARIE', 'PUYOGAO', 'BAT-OG', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Single', '09303797044', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 4, 4, '', '011', 'e7001334d9d19559a8bb0dd6015f16e31d15566c', '2001-01-01'),
(64, '008', 'DONNA', 'REVELIGIA', 'AKOL', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Married', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 6, 4, '', '008', '52c24d49be8ef49d19f9983b6c3d1c5892c593db', '2001-01-01'),
(65, '024', 'RHODA', 'REYES', 'L', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 17, 5, '', '024', '1da5a1584572ba2bd2dcd2a27ef3103ccf831eb6', '2001-01-01'),
(66, '010', 'DAVE', 'SANTIAGO', 'V', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Male', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 19, 5, '', '010', '47ab9979443fb7ed1c193d06773333ba7876094f', '2001-01-01'),
(67, '002', 'JOMON', 'SOLINAP', 'CLAMOR', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Male', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 7, 4, '', '002', '6fc978af728d43c59faa400d5f6e0471ac850d4c', '2001-01-01'),
(68, '003', 'ARIANNE', 'TALAM', 'M.', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 17, 5, '', '003', '221407c03ae5c73109cce71d27e24637824f3333', '2001-01-01'),
(69, '018', 'CLARIBEL', 'VILLANUEVA', 'ILAGUISON', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 6, 4, '', '018', '6495e9a03887911b82a0d07eb98fe970be6990d7', '2001-01-01'),
(70, '025', 'AILEEN ', 'YEE', 'M', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FACULTY', 'Regular', 11, 5, '', '025', '444d66d50aa517daed7fd36eb19a8857c2cd54e3', '2001-01-01'),
(71, '026', 'RHEA', 'BATAYEN', 'TAQUISO', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Married', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 13, 4, '', '026', 'ed8bce82c67a63bbbb236ab506c80a364bedff31', '2001-01-01'),
(72, '096', 'SUZENETTE', 'MACAULING', 'A', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Married', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 18, 5, '', '096', '507ffa8e35a19a9c769df1a91e500d01ac490cee', '2001-01-01'),
(73, '045', 'CRISTY', 'GRANDE', 'RIZARES', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Single', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 20, 4, '', '045', 'f8e935378fd6fb8783f61dc2bb701c052bbedf5e', '2001-01-01'),
(74, '099', 'APRIL MAE', 'BABA', 'G', 'KABANKALAN CITY', '1988-01-01', 'KABANKALAN CITY', 29, 'Female', 'Married', '09123456789', '', '', '', '', '', '', '', '', '', '', '', '', '', 'STAFF', 'Regular', 21, 4, '', '099', 'e61373b73b0af0cc1fdbffe0b224849de7b38be6', '2001-01-01'),
(75, '0924553', 'JAKE', 'CUENCA', 'LIM', 'KABANKALAN CITY', '1990-01-30', 'KAB CITY', 29, 'Male', 'Married', '234567896', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TEACHER', 'Regular', 15, 5, 'photos/meme 3.jpg', '0924553', 'eafb931da76a2aff3cf118f34e2665133a344b2b', '2010-12-11'),
(76, '2132132222222222', 'SAD', 'SAD', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Regular', 0, 0, '', 'sad', 'b4914600112ba18af7798b6c1a1363728ae1d96f', '0000-00-00'),
(77, '2019', 'JANOBE', 'JANOBE', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Regular', 0, 0, '', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tblfamilybackground`
--

CREATE TABLE `tblfamilybackground` (
  `FAMID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `SPOUSE_FNAME` varchar(90) NOT NULL,
  `SPOUSE_MNAME` varchar(90) NOT NULL,
  `SPOUSE_LNAME` varchar(90) NOT NULL,
  `OCCUPATION` varchar(90) NOT NULL,
  `EMPLOYER_BUSNAME` varchar(90) NOT NULL,
  `BUSADDRESS` varchar(90) NOT NULL,
  `EMPLOYER_BUSTELNO` varchar(90) NOT NULL,
  `SPOUSE_CONTACTNO` varchar(90) NOT NULL,
  `FATHER_FNAME` varchar(90) NOT NULL,
  `FATHER_MNAME` varchar(90) NOT NULL,
  `FATHER_LNAME` varchar(90) NOT NULL,
  `MOTHER_FNAME` varchar(90) NOT NULL,
  `MOTHER_MNAME` varchar(90) NOT NULL,
  `MOTHER_LNAME` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfamilybackground`
--

INSERT INTO `tblfamilybackground` (`FAMID`, `EMPLOYEEID`, `SPOUSE_FNAME`, `SPOUSE_MNAME`, `SPOUSE_LNAME`, `OCCUPATION`, `EMPLOYER_BUSNAME`, `BUSADDRESS`, `EMPLOYER_BUSTELNO`, `SPOUSE_CONTACTNO`, `FATHER_FNAME`, `FATHER_MNAME`, `FATHER_LNAME`, `MOTHER_FNAME`, `MOTHER_MNAME`, `MOTHER_LNAME`) VALUES
(23, '288', '', '', '', '', '', '', '', '', 'ELMER', 'ESPONILLA', 'GARCENIEGO', 'RHODORA', 'CASTROVERDE', 'CATALUNA'),
(24, '520', '', '', '', '', '', '', '', '', 'ROMEO', 'PASIGNA', 'QUIOCSON', 'LIZA', 'DEL ROSARIO', 'MONTILLA'),
(26, '209', '', '', '', '', '', '', '', '', 'EUGENIO', 'BERDON', 'JACOSALEM', 'JEROLYN', 'MOSQUERA', 'GANON'),
(27, '233', 'MARY GRACE', 'VARGAS', 'SALARDA', 'HOUSEWIFE', '', '', '09281809865', '', 'BALTAZAR', 'BANAAG', 'CALAMAY', 'CARMELITA', 'MADALAG', 'PICO'),
(28, '236', '', '', '', '', '', '', '', '', 'OSCAR', '', 'SERGIO', 'LOLITA ', 'BANCES', 'DAGNAO'),
(29, '019', 'CLODUALDO', 'SOLON', 'ALCALA', '', '', '', '', '', 'VICENTE, SR.', 'BINAY', 'TRIO', 'JULIANA', 'MOBILLION', 'TRIO'),
(30, '014', 'JORGE', 'PELAYO', 'ALBAYDA', 'FARMING', '', '', '', '09213683716', 'PRIMO', 'FLORES', 'BANZUELO', 'CORAZON', 'ABABAO', 'BANZUELO'),
(31, '033', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, '094', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, '212', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, '503', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, '038310', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, '398', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, '0383-10', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, '0215', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, '022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, '005', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, '015', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, '006', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, '017', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, '016', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, '012', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, '023', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, '004', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, '020', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, '011', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, '008', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, '024', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, '010', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, '002', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, '003', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, '018', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, '025', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, '026', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, '096', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, '045', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, '099', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, '0924553', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, '2132132222222222', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, '2019', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblfiles`
--

CREATE TABLE `tblfiles` (
  `FILEID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `EMPLOYEE` varchar(125) NOT NULL,
  `FILENAME` varchar(50) NOT NULL,
  `LOCATION` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfiles`
--

INSERT INTO `tblfiles` (`FILEID`, `EMPLOYEEID`, `EMPLOYEE`, `FILENAME`, `LOCATION`) VALUES
(2, '094', 'VENALYN  TORESIS', 'docs', 'photos/24052017045002abstract.docx'),
(3, '233', 'ZARLITO CALAMAY', 'CERTIFICATES', 'photos/25052017052304rhea s. calvo_CIVILCERT.docx'),
(4, '233', 'ZARLITO CALAMAY', 'CERTIFICATES', 'photos/25052017052449april marie bat og_20170511182132.pdf'),
(5, '233', 'ZARLITO CALAMAY', 'cert', 'photos/25052017052541april marie bat og_20170511182041.pdf'),
(6, '520', 'ROSELYN  QUIOCSON', 'cheats', 'photos/31052017110523Warcarft 3 cheat.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvolveothercivic`
--

CREATE TABLE `tblinvolveothercivic` (
  `IOCID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `NAME_ADDRESS_ORG` varchar(128) NOT NULL,
  `DATEFROM` varchar(30) NOT NULL,
  `DATETO` varchar(30) NOT NULL,
  `IOC_POSITION` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvolveothercivic`
--

INSERT INTO `tblinvolveothercivic` (`IOCID`, `EMPLOYEEID`, `NAME_ADDRESS_ORG`, `DATEFROM`, `DATETO`, `IOC_POSITION`) VALUES
(1, '019', 'ASIAN CHRISTIAN FACULTY FELLOWSHIP PHILIPPINES INC. (ACFF PHIL. INC.)', '02/12/2004', 'mm/dd/2017', 'MEMBER');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvolveothereducational`
--

CREATE TABLE `tblinvolveothereducational` (
  `IOEID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `NAME_ADDRESS_ORG` varchar(128) NOT NULL,
  `DATEFROM` varchar(30) NOT NULL,
  `DATETO` varchar(30) NOT NULL,
  `IOE_POSITION` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblleavecredits`
--

CREATE TABLE `tblleavecredits` (
  `LCID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `EMPLOYEE` varchar(255) NOT NULL,
  `VACATION` double NOT NULL,
  `SICK` double NOT NULL,
  `MATERNITY` double NOT NULL,
  `SSS` double NOT NULL,
  `EMERGENCY` double NOT NULL,
  `OTHERS` double NOT NULL,
  `FORCELEAVE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavecredits`
--

INSERT INTO `tblleavecredits` (`LCID`, `EMPLOYEEID`, `EMPLOYEE`, `VACATION`, `SICK`, `MATERNITY`, `SSS`, `EMERGENCY`, `OTHERS`, `FORCELEAVE`) VALUES
(27, '288', 'DAFFODILS GARCENIEGO', 0, 0, 50, 0, 0, 1, 0),
(28, '520', 'ROSELYN  QUIOCSON', 0, 0, 0, 0, 0, 0, 0),
(30, '209', 'RAZEN GRACE  JACOSALEM', 0, 0, 0, 0, 0, 0, 0),
(31, '233', 'ZARLITO CALAMAY', 0, 0, 84, 0, 0, 0, 0),
(32, '236', 'MARICAR SERGIO', 0, 0, 0, 0, 0, 0, 0),
(33, '019', 'MARILYN ALCALA', 0, 0, 0, 0, 0, 0, 0),
(34, '014', 'SHARON ROSE ALBAYDA', 0, 0, 0, 0, 0, 0, 0),
(35, '033', 'ROXANNE NIELES', 0, 0, 0, 0, 0, 0, 0),
(36, '094', 'VENALYN  TORESIS', 0, 0, 0, 0, 0, 0, 0),
(37, '212', 'ALMA RUTH MARAVILLA', 0, 0, 0, 0, 0, 0, 0),
(38, '503', 'GARVEN PUTONG', 0, 0, 0, 0, 0, 0, 0),
(40, '398', 'MICHAEL GAUDIA', 0, 0, 0, 0, 0, 0, 0),
(44, '022', 'SHERYL ANN PALOTES', 0, 0, 0, 0, 0, 0, 0),
(45, '005', 'DAYLIN ALARBA', 0, 0, 0, 0, 0, 0, 0),
(46, '015', 'JENALYN BORNES', 0, 0, 0, 0, 0, 55, 0),
(47, '006', 'RUTH JOY CARDIENTE', 0, 0, 0, 0, 0, 0, 0),
(48, '017', 'GERALD JOHN CORDERO', 0, 0, 0, 0, 0, 0, 0),
(49, '016', 'KATRINA GUILOT', 0, 0, 0, 0, 0, 0, 0),
(50, '012', 'JAN  EDUARD IROG', 0, 0, 0, 0, 0, 0, 0),
(51, '023', 'JOAHNNA ROUBELLE LORENZO', 0, 0, 0, 0, 0, 0, 0),
(52, '004', 'JANICE MAGBANUA', 0, 0, 0, 0, 0, 0, 0),
(53, '020', 'JUNJJI PADILLA', 0, 0, 0, 0, 0, 0, 0),
(54, '011', 'APRIL MARIE PUYOGAO', 0, 0, 0, 0, 0, 0, 0),
(55, '008', 'DONNA REVELIGIA', 0, 0, 0, 0, 0, 0, 0),
(56, '024', 'RHODA REYES', 0, 0, 0, 0, 0, 0, 0),
(57, '010', 'DAVE SANTIAGO', 0, 0, 0, 0, 0, 0, 0),
(58, '002', 'JOMON SOLINAP', 0, 0, 0, 0, 0, 0, 0),
(59, '003', 'ARIANNE TALAM', 0, 0, 0, 0, 0, 0, 0),
(60, '018', 'CLARIBEL VILLANUEVA', 0, 0, 0, 0, 0, 0, 0),
(61, '025', 'AILEEN  YEE', 0, 0, 0, 0, 0, 0, 0),
(62, '026', 'RHEA BATAYEN', 0, 0, 0, 0, 0, 0, 0),
(63, '096', 'SUZENETTE MACAULING', 0, 0, 0, 0, 0, 0, 0),
(64, '045', 'CRISTY GRANDE', 0, 0, 0, 0, 0, 0, 0),
(65, '099', 'APRIL MAE BABA', 0, 0, 0, 0, 0, 0, 0),
(66, '0924553', 'JAKE CUENCA', 0, 0, 0, 0, 0, 0, 0),
(67, '2132132222222222', 'SAD SAD', 0, 0, 0, 0, 0, 0, 0),
(68, '2019', 'JANOBE JANOBE', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `LEAVEID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `EMPLOYEE` varchar(255) NOT NULL,
  `LEAVETYPE` varchar(30) NOT NULL,
  `LEAVECATEGORY` varchar(30) NOT NULL,
  `LEAVECAUSE` varchar(125) NOT NULL,
  `PHYSICIAN_NURSE` varchar(90) NOT NULL,
  `DATEFROM` datetime NOT NULL,
  `DATETO` datetime NOT NULL,
  `TIMEFROM` varchar(33) NOT NULL,
  `TIMETO` varchar(33) NOT NULL,
  `NOOFDAYS` double NOT NULL,
  `CREDITBALANCE` double NOT NULL,
  `NOTEDBY` varchar(90) NOT NULL,
  `LEAVESTATUS` varchar(33) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`LEAVEID`, `EMPLOYEEID`, `EMPLOYEE`, `LEAVETYPE`, `LEAVECATEGORY`, `LEAVECAUSE`, `PHYSICIAN_NURSE`, `DATEFROM`, `DATETO`, `TIMEFROM`, `TIMETO`, `NOOFDAYS`, `CREDITBALANCE`, `NOTEDBY`, `LEAVESTATUS`) VALUES
(199, '022', 'SHERYL ANN PALOTES', 'Sick', 'With Pay', 'FAMILY BOUNDING', 'ROSE', '2017-05-26 08:00:00', '2017-05-27 08:00:00', '', '', 1, 0.25, '', 'Approved'),
(1100, '022', 'SHERYL ANN PALOTES', 'Sick', 'Without Pay', 'FEVER', 'ROSE', '2017-05-27 08:00:00', '2017-05-29 08:00:00', '', '', 2, 0, '', 'Approved'),
(1101, '288', 'DAFFODILS GARCENIEGO', 'Vacation', 'With Pay', 'VACATION', '', '2017-05-25 08:00:00', '2017-05-26 08:00:00', '', '', 1, 1.5, '', 'Denied'),
(1102, '288', 'DAFFODILS GARCENIEGO', 'Maternity', 'Without Pay', 'PREGNANT', '', '2017-06-01 08:00:00', '2017-07-01 08:00:00', '', '', 1, 0, '', 'Approved'),
(1103, '288', 'DAFFODILS GARCENIEGO', 'Maternity', 'Without Pay', 'PREGNANT', '', '2017-06-01 08:00:00', '2017-07-01 08:00:00', '', '', 1, 0, '', 'Approved'),
(1104, '288', 'DAFFODILS GARCENIEGO', 'Sick', 'With Pay', 'FEVER', '', '2017-05-02 08:00:00', '2017-05-03 08:00:00', '', '', 1, 1.5, '', 'Approved'),
(1105, '094', 'VENALYN  TORESIS', 'Maternity', 'Without Pay', 'PREGNANT', '', '2017-06-01 08:00:00', '2017-07-01 08:00:00', '', '', 1, 0, '', 'Approved'),
(1106, '094', 'VENALYN  TORESIS', 'Vacation', 'With Pay', 'VACATION', '', '2017-06-01 08:00:00', '2017-06-03 08:00:00', '', '', 2, 0.5, '', 'Approved'),
(1107, '233', 'ZARLITO CALAMAY', 'Sick', 'Without Pay', 'FEVER', 'DR. SISON', '2017-05-12 08:00:00', '2017-05-15 08:00:00', '', '', 3, 0, '', 'Pending'),
(1124, '233', 'ZARLITO CALAMAY', 'Paternity', 'With Pay', 'BUSING ASAWA', '', '2017-05-31 08:00:00', '2017-06-06 08:00:00', '', '', 6, 84, '', 'Approved'),
(1125, '288', 'DAFFODILS GARCENIEGO', 'Maternity', 'With Pay', 'SADAS', '', '2017-05-31 08:00:00', '2017-06-04 08:00:00', '', '', 4, 46, '', 'Pending'),
(1126, '233', 'ZARLITO CALAMAY', 'Paternity', '', 'BUSONG', '', '2017-06-11 08:00:00', '2017-07-11 08:00:00', '', '', 1, 0, '', 'Pending'),
(1127, '233', 'ZARLITO CALAMAY', 'Paternity', '', 'SADASDAS', '', '2017-06-11 08:00:00', '2017-07-12 08:00:00', '', '', 32, 0, '', 'Pending'),
(1128, '233', 'ZARLITO CALAMAY', 'Paternity', '', 'SADASD', '', '2017-06-11 08:00:00', '2017-07-11 08:00:00', '', '', 1, 0, '', 'Pending'),
(1129, '233', 'ZARLITO CALAMAY', 'Paternity', '', 'SADASD', '', '2017-06-11 08:00:00', '2017-07-11 08:00:00', '', '', 30, 0, '', 'Pending'),
(1130, '233', 'ZARLITO CALAMAY', 'Paternity', '', 'SDASDAS', '', '2017-06-11 08:00:00', '2017-06-11 13:00:00', '', '', 0.5, 0, '', 'Pending'),
(1131, '233', 'ZARLITO CALAMAY', 'Paternity', 'Without Pay', 'SADASD', '', '2017-06-11 08:00:00', '2017-07-11 08:00:00', '', '', 0, 0, '', 'Pending'),
(1132, '233', 'ZARLITO CALAMAY', 'Paternity', 'Without Pay', 'SADASD', '', '2017-06-11 08:00:00', '2017-07-11 08:00:00', '', '', 30, 54, '', 'Pending'),
(1133, '233', 'ZARLITO CALAMAY', 'Paternity', 'Without Pay', 'SADASADSASD', '', '2017-06-11 08:00:00', '2017-07-11 11:10:00', '', '', 0, 53.87, '', 'Pending'),
(1134, '233', 'ZARLITO CALAMAY', 'Paternity', 'Without Pay', 'SADASD', '', '2017-06-11 08:00:00', '2017-07-11 11:00:00', '', '', 30.13, 53.87, '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `LOGID` int(11) NOT NULL,
  `USERID` int(11) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `LOGDATETIME` datetime NOT NULL,
  `LOGROLE` varchar(30) NOT NULL,
  `LOGMODE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`LOGID`, `USERID`, `USERNAME`, `LOGDATETIME`, `LOGROLE`, `LOGMODE`) VALUES
(118, 19, 'MARK GIL QUIZAN', '2017-05-08 03:33:44', 'Administrator', 'Logged in'),
(119, 19, 'MARK GIL QUIZAN', '2017-05-08 03:51:41', 'Administrator', 'Logged in'),
(120, 19, 'QUIZAN', '2017-05-08 04:00:53', 'Employee', 'Logged in'),
(121, 19, 'QUIZAN', '2017-05-08 04:01:42', 'Employee', 'Logged out'),
(122, 19, 'MARK GIL QUIZAN', '2017-05-08 04:05:42', 'Administrator', 'Logged in'),
(123, 19, 'MARK GIL QUIZAN', '2017-05-08 05:09:43', 'Administrator', 'Logged in'),
(124, 19, 'MARK GIL QUIZAN', '2017-05-08 05:11:14', 'Administrator', 'Logged in'),
(125, 19, 'QUIZAN', '2017-05-08 05:20:13', 'Employee', 'Logged in'),
(126, 19, 'QUIZAN', '2017-05-08 05:24:00', 'Employee', 'Logged out'),
(127, 19, 'MARK GIL QUIZAN', '2017-05-08 05:24:35', 'Administrator', 'Logged in'),
(128, 12345, 'PABLICO', '2017-05-08 05:29:18', 'Employee', 'Logged in'),
(129, 12345, 'PABLICO', '2017-05-08 05:32:53', 'Employee', 'Logged out'),
(130, 19, 'MARK GIL QUIZAN', '2017-05-08 05:48:02', 'Administrator', 'Logged in'),
(131, 19, 'QUIZAN', '2017-05-08 05:51:01', 'Employee', 'Logged in'),
(132, 19, 'QUIZAN', '2017-05-08 05:51:58', 'Employee', 'Logged out'),
(133, 12345, 'PABLICO', '2017-05-08 06:04:03', 'Employee', 'Logged in'),
(134, 19, 'MARK GIL QUIZAN', '2017-05-08 06:05:25', 'Administrator', 'Logged in'),
(135, 28, 'LEO ANTHONY QUIZAN', '2017-05-08 06:24:35', 'HR', 'Logged in'),
(136, 12345, 'PABLICO', '2017-05-08 06:25:13', 'Employee', 'Logged out'),
(137, 28, 'QUIZAN', '2017-05-08 06:25:22', 'Employee', 'Logged in'),
(138, 28, 'LEO ANTHONY QUIZAN', '2017-05-08 06:37:15', 'HR', 'Logged in'),
(139, 38310, 'MARK QUIZAN', '2017-05-08 06:46:07', '', 'Logged in'),
(140, 38310, 'MARK QUIZAN', '2017-05-08 06:50:55', '', 'Logged in'),
(141, 28, 'QUIZAN', '2017-05-08 07:07:33', 'Employee', 'Logged out'),
(142, 12345, 'PABLICO', '2017-05-08 07:08:14', 'Employee', 'Logged in'),
(143, 12345, 'PABLICO', '2017-05-08 07:13:47', 'Employee', 'Logged out'),
(144, 38310, 'QUIZAN', '2017-05-08 07:14:08', 'Employee', 'Logged in'),
(145, 38310, 'QUIZAN', '2017-05-08 07:16:27', 'Employee', 'Logged in'),
(146, 38310, 'MARK QUIZAN', '2017-05-08 07:17:11', '', 'Logged in'),
(147, 38310, 'QUIZAN', '2017-05-08 07:22:00', 'Employee', 'Logged out'),
(148, 38310, 'QUIZAN', '2017-05-08 07:23:15', 'Employee', 'Logged in'),
(149, 38310, 'QUIZAN', '2017-05-08 07:23:41', 'Employee', 'Logged out'),
(150, 38310, 'QUIZAN', '2017-05-08 07:24:15', 'Employee', 'Logged out'),
(151, 38310, 'QUIZAN', '2017-05-08 08:02:53', 'Employee', 'Logged in'),
(152, 38310, 'MARK QUIZAN', '2017-05-08 08:03:16', '', 'Logged in'),
(153, 38310, 'QUIZAN', '2017-05-08 08:03:23', 'Employee', 'Logged out'),
(154, 12345, 'PABLICO', '2017-05-08 08:03:33', 'Employee', 'Logged in'),
(155, 12345, 'PABLICO', '2017-05-08 08:06:24', 'Employee', 'Logged out'),
(156, 38310, 'MARK QUIZAN', '2017-05-08 08:15:41', '', 'Logged in'),
(157, 38310, 'MARK QUIZAN', '2017-05-08 08:22:56', '', 'Logged in'),
(158, 12345, 'PABLICO', '2017-05-08 09:27:02', 'Employee', 'Logged in'),
(159, 38310, 'MARK QUIZAN', '2017-05-08 10:11:17', '', 'Logged in'),
(160, 38310, 'MARK QUIZAN', '2017-05-10 13:58:57', '', 'Logged in'),
(161, 38310, 'MARK QUIZAN', '2017-05-11 08:18:28', '', 'Logged in'),
(162, 38310, 'QUIZAN', '2017-05-11 08:19:51', 'Employee', 'Logged in'),
(163, 38310, 'QUIZAN', '2017-05-11 08:20:19', 'Employee', 'Logged out'),
(164, 38310, 'MARK QUIZAN', '2017-05-11 10:31:15', '', 'Logged in'),
(165, 38310, 'MARK QUIZAN', '2017-05-11 13:26:12', '', 'Logged in'),
(166, 38310, 'MARK QUIZAN', '2017-05-11 13:26:56', '', 'Logged in'),
(167, 38310, 'MARK QUIZAN', '2017-05-11 13:28:53', '', 'Logged in'),
(168, 38310, 'MARK QUIZAN', '2017-05-11 13:31:58', '', 'Logged in'),
(169, 38310, 'MARK QUIZAN', '2017-05-11 13:34:42', '', 'Logged in'),
(170, 38310, 'MARK QUIZAN', '2017-05-11 13:35:30', '', 'Logged in'),
(171, 38310, 'MARK QUIZAN', '2017-05-11 14:06:06', '', 'Logged in'),
(172, 38310, 'MARK QUIZAN', '2017-05-11 14:17:44', '', 'Logged in'),
(173, 12345, 'PABLICO', '2017-05-11 14:23:06', 'Employee', 'Logged in'),
(174, 12345, 'PABLICO', '2017-05-11 14:26:35', 'Employee', 'Logged in'),
(175, 38310, 'MARK QUIZAN', '2017-05-11 14:30:40', '', 'Logged in'),
(176, 12345, 'PABLICO', '2017-05-11 14:47:31', 'Employee', 'Logged out'),
(177, 38310, 'QUIZAN', '2017-05-11 14:47:43', 'Employee', 'Logged in'),
(178, 38310, 'MARK QUIZAN', '2017-05-11 14:53:25', '', 'Logged in'),
(179, 38310, 'QUIZAN', '2017-05-11 14:57:16', 'Employee', 'Logged out'),
(180, 1234567, 'PABLICO', '2017-05-11 14:57:33', 'Employee', 'Logged in'),
(181, 1234567, 'PABLICO', '2017-05-11 14:59:01', 'Employee', 'Logged out'),
(182, 1234567, 'JB PABLICO', '2017-05-11 15:00:21', '', 'Logged in'),
(183, 1234567, 'PABLICO', '2017-05-11 15:01:20', 'Employee', 'Logged in'),
(184, 1234567, 'PABLICO', '2017-05-11 15:04:12', 'Employee', 'Logged out'),
(185, 38310, 'QUIZAN', '2017-05-11 15:35:39', 'Employee', 'Logged in'),
(186, 38310, 'QUIZAN', '2017-05-11 15:39:31', 'Employee', 'Logged out'),
(187, 38310, 'MARK QUIZAN', '2017-05-12 03:35:26', '', 'Logged in'),
(188, 38310, 'MARK QUIZAN', '2017-05-12 04:01:55', '', 'Logged in'),
(189, 38310, 'MARK QUIZAN', '2017-05-12 04:25:10', '', 'Logged in'),
(190, 38310, 'MARK QUIZAN', '2017-05-12 04:33:46', '', 'Logged in'),
(191, 201, 'ROSE MILLAREZ', '2017-05-12 04:54:50', 'HR', 'Logged in'),
(192, 201, 'ROSE MILLAREZ', '2017-05-12 05:28:05', 'HR', 'Logged in'),
(193, 201, 'ROSE MILLAREZ', '2017-05-12 05:31:00', 'HR', 'Logged in'),
(194, 201, 'ROSE MILLAREZ', '2017-05-12 05:31:41', 'HR', 'Logged in'),
(195, 372, 'MANDARIO', '2017-05-12 05:34:13', 'Employee', 'Logged in'),
(196, 372, 'MANDARIO', '2017-05-12 06:13:44', 'Employee', 'Logged out'),
(197, 372, 'MANDARIO', '2017-05-12 06:14:41', 'Employee', 'Logged in'),
(198, 372, 'MANDARIO', '2017-05-12 06:22:53', 'Employee', 'Logged out'),
(199, 201, 'MILLAREZ', '2017-05-12 06:23:08', 'Employee', 'Logged in'),
(200, 201, 'MILLAREZ', '2017-05-12 06:23:28', 'Employee', 'Logged out'),
(201, 201, 'ROSE MILLAREZ', '2017-05-12 06:44:43', 'HR', 'Logged in'),
(202, 201, 'ROSE MILLAREZ', '2017-05-12 06:46:12', 'HR', 'Logged in'),
(203, 201, 'ROSE MILLAREZ', '2017-05-12 06:51:44', 'HR', 'Logged in'),
(204, 288, 'DAFFODILS GARCENIEGO', '2017-05-12 06:53:06', 'HR', 'Logged in'),
(205, 520, 'QUIOCSON', '2017-05-12 07:37:32', 'Employee', 'Logged in'),
(206, 288, 'DAFFODILS GARCENIEGO', '2017-05-12 08:01:38', 'HR', 'Logged in'),
(207, 288, 'DAFFODILS GARCENIEGO', '2017-05-12 09:02:55', 'HR', 'Logged in'),
(208, 520, 'QUIOCSON', '2017-05-12 09:10:07', 'Employee', 'Logged out'),
(209, 288, 'DAFFODILS GARCENIEGO', '2017-05-12 09:10:27', 'HR', 'Logged in'),
(210, 288, 'GARCENIEGO', '2017-05-12 09:10:51', 'Employee', 'Logged in'),
(211, 288, 'GARCENIEGO', '2017-05-12 09:23:08', 'Employee', 'Logged out'),
(212, 288, 'DAFFODILS GARCENIEGO', '2017-05-12 09:52:01', 'HR', 'Logged in'),
(213, 520, 'QUIOCSON', '2017-05-12 10:09:54', 'Employee', 'Logged in'),
(214, 288, 'DAFFODILS GARCENIEGO', '2017-05-12 10:35:09', 'HR', 'Logged in'),
(215, 520, 'QUIOCSON', '2017-05-12 10:39:21', 'Employee', 'Logged out'),
(216, 288, 'DAFFODILS GARCENIEGO', '2017-05-13 15:48:56', 'HR', 'Logged in'),
(217, 288, 'DAFFODILS GARCENIEGO', '2017-05-13 15:50:00', 'HR', 'Logged in'),
(218, 288, 'DAFFODILS GARCENIEGO', '2017-05-13 18:03:20', 'HR', 'Logged in'),
(219, 520, 'QUIOCSON', '2017-05-13 18:04:17', 'Employee', 'Logged in'),
(220, 520, 'QUIOCSON', '2017-05-13 18:17:12', 'Employee', 'Logged out'),
(221, 288, 'GARCENIEGO', '2017-05-13 18:17:36', 'Employee', 'Logged in'),
(222, 288, 'GARCENIEGO', '2017-05-13 19:44:31', 'Employee', 'Logged out'),
(223, 288, 'GARCENIEGO', '2017-05-13 19:44:52', 'Employee', 'Logged in'),
(224, 288, 'GARCENIEGO', '2017-05-13 20:04:46', 'Employee', 'Logged out'),
(225, 125, 'ARQUILOS', '2017-05-13 20:04:58', 'Employee', 'Logged in'),
(226, 125, 'ARQUILOS', '2017-05-13 21:12:24', 'Employee', 'Logged out'),
(227, 288, 'DAFFODILS GARCENIEGO', '2017-05-14 01:27:26', 'HR', 'Logged in'),
(228, 288, 'DAFFODILS GARCENIEGO', '2017-05-14 01:56:49', 'HR', 'Logged in'),
(229, 288, 'DAFFODILS GARCENIEGO', '2017-05-14 02:00:48', 'HR', 'Logged in'),
(230, 288, 'DAFFODILS GARCENIEGO', '2017-05-14 09:11:30', 'HR', 'Logged in'),
(231, 209, 'JACOSALEM', '2017-05-14 09:30:30', 'Employee', 'Logged in'),
(232, 209, 'JACOSALEM', '2017-05-14 09:59:39', 'Employee', 'Logged out'),
(233, 233, 'CALAMAY', '2017-05-14 09:59:52', 'Employee', 'Logged in'),
(234, 233, 'CALAMAY', '2017-05-14 10:20:10', 'Employee', 'Logged out'),
(235, 236, 'SERGIO', '2017-05-14 10:20:20', 'Employee', 'Logged in'),
(236, 236, 'SERGIO', '2017-05-14 11:17:57', 'Employee', 'Logged out'),
(237, 19, 'ALCALA', '2017-05-14 11:18:08', 'Employee', 'Logged in'),
(238, 19, 'ALCALA', '2017-05-14 12:01:16', 'Employee', 'Logged out'),
(239, 14, 'ALBAYDA', '2017-05-14 12:01:28', 'Employee', 'Logged in'),
(240, 14, 'ALBAYDA', '2017-05-14 12:42:16', 'Employee', 'Logged out'),
(241, 42, 'CALVO', '2017-05-14 12:42:26', 'Employee', 'Logged in'),
(242, 288, 'DAFFODILS GARCENIEGO', '2017-05-14 13:21:52', 'HR', 'Logged in'),
(243, 42, 'CALVO', '2017-05-14 13:31:13', 'Employee', 'Logged out'),
(244, 357, 'GAYUMALI', '2017-05-14 13:31:27', 'Employee', 'Logged in'),
(245, 357, 'GAYUMALI', '2017-05-14 13:32:05', 'Employee', 'Logged in'),
(246, 357, 'GAYUMALI', '2017-05-14 13:34:05', 'Employee', 'Logged out'),
(247, 357, 'GAYUMALI', '2017-05-14 13:34:12', 'Employee', 'Logged out'),
(248, 357, 'GAYUMALI', '2017-05-14 13:34:23', 'Employee', 'Logged in'),
(249, 357, 'GAYUMALI', '2017-05-14 13:34:49', 'Employee', 'Logged out'),
(250, 288, 'DAFFODILS GARCENIEGO', '2017-05-14 13:35:41', 'HR', 'Logged in'),
(251, 357, 'GAYUMALI', '2017-05-14 13:36:48', 'Employee', 'Logged in'),
(252, 357, 'GAYUMALI', '2017-05-14 13:46:54', 'Employee', 'Logged in'),
(253, 357, 'GAYUMALI', '2017-05-14 14:12:53', 'Employee', 'Logged out'),
(254, 288, 'DAFFODILS GARCENIEGO', '2017-05-15 02:29:12', 'HR', 'Logged in'),
(255, 288, 'DAFFODILS GARCENIEGO', '2017-05-15 04:15:20', 'HR', 'Logged in'),
(256, 288, 'DAFFODILS GARCENIEGO', '2017-05-15 04:38:52', 'HR', 'Logged in'),
(257, 288, 'DAFFODILS GARCENIEGO', '2017-05-15 04:40:53', 'HR', 'Logged in'),
(258, 288, 'DAFFODILS GARCENIEGO', '2017-05-15 04:42:54', 'HR', 'Logged in'),
(259, 288, 'GARCENIEGO', '2017-05-15 04:46:18', 'Employee', 'Logged in'),
(260, 288, 'DAFFODILS GARCENIEGO', '2017-05-16 05:20:04', 'HR', 'Logged in'),
(261, 288, 'DAFFODILS GARCENIEGO', '2009-12-31 23:46:05', 'HR', 'Logged in'),
(262, 288, 'DAFFODILS GARCENIEGO', '2010-01-01 00:42:57', 'HR', 'Logged in'),
(263, 236, 'SERGIO', '2010-01-01 00:44:11', 'Employee', 'Logged in'),
(264, 288, 'DAFFODILS GARCENIEGO', '2010-01-01 01:31:10', 'HR', 'Logged in'),
(265, 520, 'QUIOCSON', '2010-01-01 01:31:49', 'Employee', 'Logged in'),
(266, 288, 'DAFFODILS GARCENIEGO', '2017-05-17 14:47:20', 'HR', 'Logged in'),
(267, 209, 'JACOSALEM', '2017-05-17 14:47:41', 'Employee', 'Logged in'),
(268, 288, 'DAFFODILS GARCENIEGO', '2017-05-21 06:32:27', 'HR', 'Logged in'),
(269, 14, 'ALBAYDA', '2017-05-21 06:34:15', 'Employee', 'Logged in'),
(270, 14, 'ALBAYDA', '2017-05-21 06:44:18', 'Employee', 'Logged out'),
(271, 19, 'ALCALA', '2017-05-21 06:44:34', 'Employee', 'Logged in'),
(272, 19, 'ALCALA', '2017-05-21 07:01:53', 'Employee', 'Logged out'),
(273, 14, 'ALBAYDA', '2017-05-21 07:02:02', 'Employee', 'Logged in'),
(274, 14, 'ALBAYDA', '2017-05-21 09:33:50', 'Employee', 'Logged out'),
(275, 288, 'GARCENIEGO', '2017-05-21 09:34:01', 'Employee', 'Logged in'),
(276, 288, 'GARCENIEGO', '2017-05-21 11:10:43', 'Employee', 'Logged out'),
(277, 288, 'DAFFODILS GARCENIEGO', '2017-05-21 11:19:10', 'HR', 'Logged in'),
(278, 14, 'ALBAYDA', '2017-05-21 11:19:47', 'Employee', 'Logged in'),
(279, 14, 'ALBAYDA', '2017-05-21 11:25:28', 'Employee', 'Logged out'),
(280, 288, 'GARCENIEGO', '2017-05-21 11:25:55', 'Employee', 'Logged in'),
(281, 288, 'GARCENIEGO', '2017-05-21 17:10:22', 'Employee', 'Logged out'),
(282, 209, 'JACOSALEM', '2017-05-21 17:10:34', 'Employee', 'Logged in'),
(283, 209, 'JACOSALEM', '2017-05-21 17:32:56', 'Employee', 'Logged out'),
(284, 520, 'QUIOCSON', '2017-05-21 17:33:17', 'Employee', 'Logged in'),
(285, 520, 'QUIOCSON', '2017-05-21 17:47:57', 'Employee', 'Logged out'),
(286, 233, 'CALAMAY', '2017-05-21 17:48:30', 'Employee', 'Logged in'),
(287, 233, 'CALAMAY', '2017-05-21 18:25:13', 'Employee', 'Logged out'),
(288, 236, 'SERGIO', '2017-05-21 18:25:24', 'Employee', 'Logged in'),
(289, 236, 'SERGIO', '2017-05-21 19:03:27', 'Employee', 'Logged out'),
(290, 19, 'ALCALA', '2017-05-21 19:03:39', 'Employee', 'Logged in'),
(291, 19, 'ALCALA', '2017-05-21 19:07:41', 'Employee', 'Logged out'),
(292, 288, 'DAFFODILS GARCENIEGO', '2017-05-22 02:28:59', 'HR', 'Logged in'),
(293, 33, 'NIELES', '2017-05-22 03:46:58', 'Employee', 'Logged in'),
(294, 33, 'NIELES', '2017-05-22 04:27:43', 'Employee', 'Logged out'),
(295, 233, 'CALAMAY', '2017-05-22 04:39:51', 'Employee', 'Logged in'),
(296, 233, 'CALAMAY', '2017-05-22 05:01:04', 'Employee', 'Logged out'),
(297, 236, 'SERGIO', '2017-05-22 05:04:55', 'Employee', 'Logged in'),
(298, 236, 'SERGIO', '2017-05-22 05:10:08', 'Employee', 'Logged out'),
(299, 236, 'SERGIO', '2017-05-22 05:20:57', 'Employee', 'Logged in'),
(300, 236, 'SERGIO', '2017-05-22 08:45:28', 'Employee', 'Logged out'),
(301, 94, 'TORESIS', '2017-05-22 08:45:54', 'Employee', 'Logged in'),
(302, 288, 'DAFFODILS GARCENIEGO', '2017-05-22 08:54:24', 'HR', 'Logged in'),
(303, 94, 'TORESIS', '2017-05-22 08:57:37', 'Employee', 'Logged out'),
(304, 212, 'MARAVILLA', '2017-05-22 08:57:46', 'Employee', 'Logged in'),
(305, 212, 'MARAVILLA', '2017-05-22 10:22:39', 'Employee', 'Logged out'),
(306, 503, 'PUTONG', '2017-05-22 10:23:01', 'Employee', 'Logged in'),
(307, 288, 'DAFFODILS GARCENIEGO', '2017-05-22 12:58:19', 'HR', 'Logged in'),
(308, 288, 'GARCENIEGO', '2017-05-22 13:04:08', 'Employee', 'Logged in'),
(309, 288, 'GARCENIEGO', '2017-05-22 13:04:49', 'Employee', 'Logged out'),
(310, 520, 'QUIOCSON', '2017-05-22 13:05:01', 'Employee', 'Logged in'),
(311, 520, 'QUIOCSON', '2017-05-22 13:20:35', 'Employee', 'Logged out'),
(312, 236, 'SERGIO', '2017-05-22 13:20:43', 'Employee', 'Logged in'),
(313, 236, 'SERGIO', '2017-05-22 13:53:07', 'Employee', 'Logged out'),
(314, 288, 'DAFFODILS GARCENIEGO', '2017-05-22 18:43:02', 'HR', 'Logged in'),
(315, 288, 'GARCENIEGO', '2017-05-23 01:20:56', 'Employee', 'Logged in'),
(316, 288, 'DAFFODILS GARCENIEGO', '2017-05-23 03:05:23', 'HR', 'Logged in'),
(317, 288, 'GARCENIEGO', '2017-05-23 03:36:58', 'Employee', 'Logged out'),
(318, 288, 'DAFFODILS GARCENIEGO', '2017-05-23 09:52:49', 'HR', 'Logged in'),
(319, 288, 'DAFFODILS GARCENIEGO', '2017-05-23 15:47:34', 'HR', 'Logged in'),
(320, 398, 'GAUDIA', '2017-05-23 17:52:13', 'Employee', 'Logged in'),
(321, 398, 'GAUDIA', '2017-05-23 18:14:18', 'Employee', 'Logged out'),
(322, 398, 'QUIZAN', '2017-05-23 18:16:40', 'Employee', 'Logged in'),
(323, 398, 'QUIZAN', '2017-05-23 18:26:38', 'Employee', 'Logged out'),
(324, 288, 'GARCENIEGO', '2017-05-23 18:27:53', 'Employee', 'Logged in'),
(325, 288, 'GARCENIEGO', '2017-05-23 18:35:36', 'Employee', 'Logged in'),
(326, 288, 'DAFFODILS GARCENIEGO', '2017-05-23 18:36:58', 'HR', 'Logged in'),
(327, 288, 'GARCENIEGO', '2017-05-23 18:37:59', 'Employee', 'Logged in'),
(328, 288, 'DAFFODILS GARCENIEGO', '2017-05-23 18:58:16', 'HR', 'Logged in'),
(329, 288, 'GARCENIEGO', '2017-05-23 19:34:00', 'Employee', 'Logged out'),
(330, 373, 'QUIZAN', '2017-05-23 19:34:19', 'Employee', 'Logged in'),
(331, 373, 'QUIZAN', '2017-05-23 19:40:11', 'Employee', 'Logged out'),
(332, 212, 'MARAVILLA', '2017-05-23 19:40:22', 'Employee', 'Logged in'),
(333, 288, 'GARCENIEGO', '2017-05-23 19:58:50', 'Employee', 'Logged out'),
(334, 215, 'PABLICO', '2017-05-23 19:59:01', 'Employee', 'Logged in'),
(335, 212, 'MARAVILLA', '2017-05-23 23:54:28', 'Employee', 'Logged out'),
(336, 288, 'GARCENIEGO', '2017-05-23 23:54:47', 'Employee', 'Logged in'),
(337, 288, 'GARCENIEGO', '2017-05-24 02:22:17', 'Employee', 'Logged out'),
(338, 22, 'PALOTES', '2017-05-24 02:22:55', 'Employee', 'Logged in'),
(339, 22, 'PALOTES', '2017-05-24 02:24:04', 'Employee', 'Logged out'),
(340, 288, 'DAFFODILS GARCENIEGO', '2017-05-24 03:05:52', 'HR', 'Logged in'),
(341, 22, 'PALOTES', '2017-05-24 03:06:14', 'Employee', 'Logged in'),
(342, 22, 'PALOTES', '2017-05-24 03:19:03', 'Employee', 'Logged out'),
(343, 288, 'GARCENIEGO', '2017-05-24 03:19:17', 'Employee', 'Logged in'),
(344, 288, 'GARCENIEGO', '2017-05-24 03:20:11', 'Employee', 'Logged out'),
(345, 288, 'DAFFODILS GARCENIEGO', '2017-05-24 04:51:44', 'HR', 'Logged in'),
(346, 288, 'DAFFODILS GARCENIEGO', '2017-05-24 04:55:35', 'HR', 'Logged in'),
(347, 288, 'DAFFODILS GARCENIEGO', '2017-05-24 05:20:10', 'HR', 'Logged in'),
(348, 22, 'PALOTES', '2017-05-24 05:25:05', 'Employee', 'Logged in'),
(349, 288, 'DAFFODILS GARCENIEGO', '2017-05-24 15:55:59', 'HR', 'Logged in'),
(350, 94, 'TORESIS', '2017-05-24 16:38:22', 'Employee', 'Logged in'),
(351, 288, 'DAFFODILS GARCENIEGO', '2017-05-24 17:06:36', 'HR', 'Logged in'),
(352, 288, 'DAFFODILS GARCENIEGO', '2017-05-24 17:49:11', 'HR', 'Logged in'),
(353, 94, 'TORESIS', '2017-05-24 17:54:40', 'Employee', 'Logged out'),
(354, 288, 'DAFFODILS GARCENIEGO', '2017-05-24 23:36:15', 'HR', 'Logged in'),
(355, 288, 'DAFFODILS GARCENIEGO', '2017-05-25 03:25:38', 'HR', 'Logged in'),
(356, 288, 'DAFFODILS GARCENIEGO', '2017-05-25 03:31:45', 'HR', 'Logged in'),
(357, 288, 'DAFFODILS GARCENIEGO', '2017-05-25 03:33:03', 'HR', 'Logged in'),
(358, 14, 'ALBAYDA', '2017-05-25 03:33:57', 'Employee', 'Logged in'),
(359, 233, 'CALAMAY', '2017-05-25 04:17:29', 'Employee', 'Logged in'),
(360, 233, 'CALAMAY', '2017-05-25 05:29:52', 'Employee', 'Logged out'),
(361, 14, 'ALBAYDA', '2017-05-25 05:29:58', 'Employee', 'Logged out'),
(362, 288, 'DAFFODILS GARCENIEGO', '2017-05-31 11:01:07', 'HR', 'Logged in'),
(363, 233, 'CALAMAY', '2017-05-31 11:06:44', 'Employee', 'Logged in'),
(364, 209, 'JACOSALEM', '2017-06-11 03:17:07', 'Employee', 'Logged in'),
(365, 288, 'DAFFODILS GARCENIEGO', '2017-06-11 03:17:13', 'HR', 'Logged in'),
(366, 209, 'JACOSALEM', '2017-06-11 03:39:35', 'Employee', 'Logged out'),
(367, 233, 'CALAMAY', '2017-06-11 03:39:58', 'Employee', 'Logged in'),
(368, 288, 'DAFFODILS GARCENIEGO', '2017-07-03 23:49:49', 'HR', 'Logged in'),
(369, 209, 'JACOSALEM', '2017-07-03 23:53:31', 'Employee', 'Logged in'),
(370, 288, 'DAFFODILS GARCENIEGO', '2017-07-05 11:40:30', 'HR', 'Logged in'),
(371, 288, 'DAFFODILS GARCENIEGO', '2017-08-30 05:28:58', 'HR', 'Logged in'),
(372, 288, 'DAFFODILS GARCENIEGO', '2019-07-22 09:30:36', 'HR', 'Logged in'),
(373, 288, 'DAFFODILS GARCENIEGO', '2019-07-22 10:15:26', 'HR', 'Logged in'),
(374, 288, 'DAFFODILS GARCENIEGO', '2019-07-22 10:45:15', 'HR', 'Logged in'),
(375, 520, 'QUIOCSON', '2019-07-22 10:52:19', 'Employee', 'Logged in'),
(376, 520, 'QUIOCSON', '2019-07-22 11:04:27', 'Employee', 'Logged out'),
(377, 288, 'DAFFODILS GARCENIEGO', '2019-07-22 11:04:38', 'HR', 'Logged in'),
(378, 288, 'DAFFODILS GARCENIEGO', '2019-07-25 06:42:17', 'HR', 'Logged in'),
(379, 924553, 'CUENCA', '2019-07-25 06:46:03', 'Employee', 'Logged in'),
(380, 924553, 'CUENCA', '2019-07-25 06:47:08', 'Employee', 'Logged out'),
(381, 288, 'DAFFODILS GARCENIEGO', '2019-07-30 06:15:11', 'HR', 'Logged in'),
(382, 288, 'DAFFODILS GARCENIEGO', '2019-07-30 06:15:38', 'HR', 'Logged in'),
(383, 924553, 'CUENCA', '2019-07-30 06:15:54', 'Employee', 'Logged in');

-- --------------------------------------------------------

--
-- Table structure for table `tblotherinformation`
--

CREATE TABLE `tblotherinformation` (
  `OTHERINFOID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `EMPNAME` varchar(90) NOT NULL,
  `SKILLS` text NOT NULL,
  `NDRA` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblotherinformation`
--

INSERT INTO `tblotherinformation` (`OTHERINFOID`, `EMPLOYEEID`, `EMPNAME`, `SKILLS`, `NDRA`) VALUES
(1, '0924553', 'JAKE CUENCA', 'asd', 'asd\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbltrainingprogram`
--

CREATE TABLE `tbltrainingprogram` (
  `TPID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `SEMINARTITLE` varchar(128) NOT NULL,
  `DATEFROM` varchar(30) NOT NULL,
  `DATETO` varchar(30) NOT NULL,
  `NOHOURS` varchar(15) NOT NULL,
  `SPONSOREDBY` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltrainingprogram`
--

INSERT INTO `tbltrainingprogram` (`TPID`, `EMPLOYEEID`, `SEMINARTITLE`, `DATEFROM`, `DATETO`, `NOHOURS`, `SPONSOREDBY`) VALUES
(6, '236', 'CBA CONVENTION\" FEEL LOCAL, THINK GLOBAL, ACTPROFESSIONAL\"', '03/27/2010', '03/27/2010', '', 'CBA DEPARTMENT'),
(7, '019', 'WRITINGPROPOSALS FOR FUNDING', '04/30/2010', '04/30/2010', '8 HRS.', 'CPU'),
(8, '019', 'IMPROVING MANAGEMENT SHIELD AND EVALUATING', '07/21/2010', '07/21/2010', '4 HRS.', 'FBC'),
(9, '019', 'MONTE CARLO SIMULATION', '06/27/2007', '06/27/2007', '8 HRS.', 'CHED, NSCA'),
(10, '019', 'ENHANCING COMPETENCIES IN TEACHING RESEARCH', '06/28/2007', '06/29/2007', '16 HRS.', 'URC-CPU'),
(11, '019', 'REENGINEERING INSTRUCTION FOR GENERAL EDUCATING OF THE ASSO.OF THE PHIL.', '08/18/2009', '08/19/2009', '', 'APCAS'),
(12, '019', 'CHED NATIONAL RESEARCH CONFERENCE', '11/12/2009', '11/13/2009', '', 'CHED');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccounts`
--

CREATE TABLE `tbluseraccounts` (
  `ID` int(11) NOT NULL,
  `USERID` varchar(30) NOT NULL,
  `FULLNAME` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `UROLE` varchar(30) NOT NULL,
  `USERPHOTO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccounts`
--

INSERT INTO `tbluseraccounts` (`ID`, `USERID`, `FULLNAME`, `USERNAME`, `PASS`, `UROLE`, `USERPHOTO`) VALUES
(8, '288', 'DAFFODILS GARCENIEGO', 'daff', '4277986f0240024a564bce32c8f48538dab5d180', 'HR', 'photos/STARTS-JOB-AS-PROGRAMMER.jpg'),
(10, '2019', 'JANOBE JANOBE', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', '');
(25, "30", "ARIANNE TALAM" ,"a.tala", "secret11", "staff", "");

-- --------------------------------------------------------

--
-- Table structure for table `tblworkexperience`
--

CREATE TABLE `tblworkexperience` (
  `WEID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `DATEFROM` varchar(30) NOT NULL,
  `DATETO` varchar(30) NOT NULL,
  `WE_POSITION` varchar(90) NOT NULL,
  `COMPANY` varchar(90) NOT NULL,
  `MOTHLYSALARY` double NOT NULL,
  `EMPLOYMENTSTATUS` varchar(30) NOT NULL,
  `SERVICELENGTH` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblworkexperience`
--

INSERT INTO `tblworkexperience` (`WEID`, `EMPLOYEEID`, `DATEFROM`, `DATETO`, `WE_POSITION`, `COMPANY`, `MOTHLYSALARY`, `EMPLOYMENTSTATUS`, `SERVICELENGTH`) VALUES
(1, '288', '09/02/2010', '06/02/2011', 'HUMAN RESOURCE ASST.', 'SUPER SHOPPING MARKET INC.', 7800, 'REGULAR', '8 MOS.'),
(2, '520', '11/08/2013', '01/25/2014', 'CUSTOMER SERVICE ASSOCIATE', 'CONVERGYS PHILS', 14000, 'SEASONAL', '2MOS'),
(3, '209', '12/09/2008', '06/21/2009', 'ENGLISH TUTOR', 'SPARTA BACOLOD CENTER', 0, '', '6 MOS.'),
(4, '209', '01/01/2009', '03/01/2009', 'SUSTITUTE TEACHER /APPLICANT TEACHER', 'MONTESORYLEARNING CENTER', 0, '', '2 MOS.'),
(5, '236', '08/02/2006', '05/30/2009', 'PROJECT SUPERVISOR', 'BUSINESS AND AUTOMATED SYSTEM CLINIC INC. ', 15, 'REGULAR', '2 YRS. AND 9 MOS.'),
(6, '019', '06/06/1989', 'mm/dd/2017', 'FACULTY RESEARCH AND EXTENSION', 'FBC', 0, 'PERMANENT', '21 YRS.'),
(7, '019', '06/05/1986', '03/28/1989', 'DIRECTOR/FACULTY', 'DECOR CARMELI', 0, 'PERMANENT', '3 YRS.'),
(8, '019', '06/04/1985', '03/26/1986', 'FACULTY', 'ST. JOSEPH HIGH SCHOOL', 0, 'PROBATIONARY', '1 YR.'),
(9, '019', '06/04/1984', '03/30/1985', 'FACULTY', 'SANTO NINO HIGH SCHOOL', 0, 'PRABATIONARY', '1 YR.'),
(10, '014', '08/0d/1982', '04/dd/1983', 'CASUAL WORKER', 'VICTORIAS MILLING CO.', 0, '', ''),
(11, '014', '06/dd/1983', '08/dd/1983', 'TEACHER', 'AGRO. IND. COLLEGE', 0, '', ''),
(12, '014', '06/dd/1984', '03/dd/1988', 'TEACHER/ASST. PRINCIPAL', 'FORTRESS COLLEGE', 0, '', ''),
(13, '014', '06/dd/1988', '06/dd/1992', 'TEACHER', 'FBC', 0, '', ''),
(14, '014', '06/dd/1992', '06/dd/2009', 'REGISTRAR', 'FBC', 0, '', ''),
(15, '014', '05/dd/2009', '07/dd/2012', 'OIC, VP ADMIN & FINANCE', 'FBC', 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblchildren`
--
ALTER TABLE `tblchildren`
  ADD PRIMARY KEY (`CHILDID`);

--
-- Indexes for table `tblcivilserviceeligibility`
--
ALTER TABLE `tblcivilserviceeligibility`
  ADD PRIMARY KEY (`CSEID`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`DEPARTMENTID`);

--
-- Indexes for table `tbldivision`
--
ALTER TABLE `tbldivision`
  ADD PRIMARY KEY (`DIVISIONID`);

--
-- Indexes for table `tbleducbackground`
--
ALTER TABLE `tbleducbackground`
  ADD PRIMARY KEY (`EDUCID`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`INCID`),
  ADD UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`);

--
-- Indexes for table `tblfamilybackground`
--
ALTER TABLE `tblfamilybackground`
  ADD PRIMARY KEY (`FAMID`),
  ADD UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`);

--
-- Indexes for table `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD PRIMARY KEY (`FILEID`);

--
-- Indexes for table `tblinvolveothercivic`
--
ALTER TABLE `tblinvolveothercivic`
  ADD PRIMARY KEY (`IOCID`);

--
-- Indexes for table `tblinvolveothereducational`
--
ALTER TABLE `tblinvolveothereducational`
  ADD PRIMARY KEY (`IOEID`);

--
-- Indexes for table `tblleavecredits`
--
ALTER TABLE `tblleavecredits`
  ADD PRIMARY KEY (`LCID`),
  ADD UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`LEAVEID`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`LOGID`);

--
-- Indexes for table `tblotherinformation`
--
ALTER TABLE `tblotherinformation`
  ADD PRIMARY KEY (`OTHERINFOID`);

--
-- Indexes for table `tbltrainingprogram`
--
ALTER TABLE `tbltrainingprogram`
  ADD PRIMARY KEY (`TPID`);

--
-- Indexes for table `tbluseraccounts`
--
ALTER TABLE `tbluseraccounts`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USERID` (`USERID`);

--
-- Indexes for table `tblworkexperience`
--
ALTER TABLE `tblworkexperience`
  ADD PRIMARY KEY (`WEID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblchildren`
--
ALTER TABLE `tblchildren`
  MODIFY `CHILDID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcivilserviceeligibility`
--
ALTER TABLE `tblcivilserviceeligibility`
  MODIFY `CSEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  MODIFY `DEPARTMENTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbldivision`
--
ALTER TABLE `tbldivision`
  MODIFY `DIVISIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbleducbackground`
--
ALTER TABLE `tbleducbackground`
  MODIFY `EDUCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `INCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tblfamilybackground`
--
ALTER TABLE `tblfamilybackground`
  MODIFY `FAMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tblfiles`
--
ALTER TABLE `tblfiles`
  MODIFY `FILEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblinvolveothercivic`
--
ALTER TABLE `tblinvolveothercivic`
  MODIFY `IOCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblinvolveothereducational`
--
ALTER TABLE `tblinvolveothereducational`
  MODIFY `IOEID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleavecredits`
--
ALTER TABLE `tblleavecredits`
  MODIFY `LCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `LEAVEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1135;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `tblotherinformation`
--
ALTER TABLE `tblotherinformation`
  MODIFY `OTHERINFOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltrainingprogram`
--
ALTER TABLE `tbltrainingprogram`
  MODIFY `TPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbluseraccounts`
--
ALTER TABLE `tbluseraccounts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblworkexperience`
--
ALTER TABLE `tblworkexperience`
  MODIFY `WEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
