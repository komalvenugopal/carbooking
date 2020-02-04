-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2019 at 01:46 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'gopi', '763ebba8791060a3a1fe76453954b8da', '2019-10-11 09:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'komal@gmail.com', 1, '2019-10-15', '2019-10-26', 'Chennai', 1, '2019-10-20 15:53:19'),
(2, 'saieswar.s.99@gmail.com', 8, '2019-10-21', '2019-10-22', 'ok', 0, '2019-10-20 17:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2019-01-18 11:24:34', '2019-06-19 11:25:23'),
(2, 'BMW', '2019-01-18 12:24:34', '2019-10-11 07:44:38'),
(3, 'Audi', '2019-01-18 13:24:34', '2019-10-11 07:44:34'),
(4, 'Nissan', '2019-01-18 14:24:34', '2019-10-11 07:44:29'),
(5, 'Toyota', '2019-01-18 15:24:34', '2019-10-11 07:44:24'),
(7, 'Marutiu', '2019-01-18 16:00:34', '2019-10-11 07:44:20'),
(8, 'Toyota', '2019-01-18 17:24:34', '2019-10-20 17:08:52'),
(9, 'Jaguar', '2019-10-20 13:08:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'VIT University, Vellore, Tamil Nadu, India', 'gopinath@gmail.com', '9856778995');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Komal Venugopal', 'komal@gmail.com', '79975145653', 'My booking got cancelled. I dont know the reason', '2019-10-11 10:05:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2>\n	<STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>\n	We will not assure confirm booking and we have right to cancel your booking at any time.<br>\n	We have right to cancel your booking if money is not paid after the journey.<br>\n	We are not responsible for your things you lost during your journey.\n</P>'),
(2, 'Privacy Policy', 'privacy', '																														\r\n\r\n\r\n<p style="text-align: justify;">We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, the terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible from this site</p>\r\n\r\n\r\n<p style="text-align: justify;">Information Collection And Use</p>\r\n\r\n<p style="text-align: justify;">We collect several different types of information for various purposes to provide and improve our Service to you.</p>\r\n\r\n<h3 style="text-align: justify;">Types of Data Collected</h3>\r\n\r\n<h4 style="text-align: justify;">Personal Data</h4>\r\n\r\n<p style="text-align: justify;">While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you ("Personal Data"). Personally identifiable information may include, but is not limited to:</p>\r\n\r\n<span style="font-size: 1em; text-align: justify;">Email address</span><br><span style="font-size: 1em; text-align: justify;">First name and last name</span><br><span style="font-size: 1em; text-align: justify;">Phone number</span><br><span style="font-size: 1em; text-align: justify;">Address, State, Province, ZIP/Postal code, City</span><br><span style="font-size: 1em; text-align: justify;">Cookies and Usage Data</span><br>\r\n\r\n<h4 style="text-align: justify;">Usage Data</h4>\r\n\r\n<p style="text-align: justify;">We may also collect information on how the Service is accessed and used ("Usage Data"). This Usage Data may include information such as your computer\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n\r\n<h4 style="text-align: justify;">Tracking &amp; Cookies Data</h4>\r\n<p style="text-align: justify;">We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.</p>\r\n<p style="text-align: justify;">Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.</p>\r\n<p style="text-align: justify;">Examples of Cookies we use:</p>\r\n<strong style="text-align: justify; font-size: 1em;">Session Cookies.</strong><span style="text-align: justify; font-size: 1em;"> We use Session Cookies to operate our Service.</span><br><strong style="text-align: justify; font-size: 1em;">Preference Cookies.</strong><span style="text-align: justify; font-weight: bold; font-size: 1em;"> We use Preference Cookies to remember your preferences and various settings.</span><br><strong style="text-align: justify; font-size: 1em;">Security Cookies.</strong><span style="text-align: justify; font-size: 1em;"> We use Security Cookies for security purposes.</span><br>\r\n\r\n<p style="text-align: justify;">Use of Data</p>\r\n    \r\n<p style="text-align: justify;">Car Booking System uses the collected data for various purposes:</p>    \r\n<span style="font-size: 1em; text-align: justify;">To provide and maintain the Service</span><br><span style="font-size: 1em; text-align: justify;">To notify you about changes to our Service</span><br><span style="font-size: 1em; text-align: justify;">To allow you to participate in interactive features of our Service when you choose to do so</span><br><span style="font-size: 1em; text-align: justify;">To provide customer care and support</span><br><span style="font-size: 1em; text-align: justify;">To provide analysis or valuable information so that we can improve the Service</span><br><span style="font-size: 1em; text-align: justify;">To monitor the usage of the Service</span><br><span style="font-size: 1em; text-align: justify;">To detect, prevent and address technical issues</span><br>\r\n\r\n<p style="text-align: justify;">Transfer Of Data</p>\r\n<p style="text-align: justify;">Your information, including Personal Data, may be transferred to — and maintained on — computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.</p>\r\n<p style="text-align: justify;">If you are located outside India and choose to provide information to us, please note that we transfer the data, including Personal Data, to India and process it there.</p>\r\n<p style="text-align: justify;">Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.</p>\r\n<p style="text-align: justify;">Car Booking System will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.</p>\r\n\r\n<p style="text-align: justify;">Disclosure Of Data</p>\r\n\r\n<h3 style="text-align: justify;">Legal Requirements</h3>\r\n<p style="text-align: justify;">Car Booking System may disclose your Personal Data in the good faith belief that such action is necessary to:</p>\r\n<span style="font-size: 1em; text-align: justify;">To comply with a legal obligation</span><br><span style="font-size: 1em; text-align: justify;">To protect and defend the rights or property of Car Booking System</span><br><span style="font-size: 1em; text-align: justify;">To prevent or investigate possible wrongdoing in connection with the Service</span><br><span style="font-size: 1em; text-align: justify;">To protect the personal safety of users of the Service or the public</span><br><span style="font-size: 1em; text-align: justify;">To protect against legal liability</span><br>\r\n\r\n<p style="text-align: justify;">Security Of Data</p>\r\n<p style="text-align: justify;">The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.</p>\r\n\r\n<p style="text-align: justify;">Service Providers</p>\r\n<p style="text-align: justify;">We may employ third party companies and individuals to facilitate our Service ("Service Providers"), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.</p>\r\n<p style="text-align: justify;">These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.</p>\r\n\r\n\r\n\r\n<p style="text-align: justify;">Links To Other Sites</p>\r\n<p style="text-align: justify;">Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit.</p>\r\n<p style="text-align: justify;">We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n\r\n\r\n<p style="text-align: justify;">Children\'s Privacy</p>\r\n<p style="text-align: justify;">Our Service does not address anyone under the age of 18 ("Children").</p>\r\n<p style="text-align: justify;">We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.</p>\r\n\r\n\r\n<p style="text-align: justify;">Changes To This Privacy Policy</p>\r\n<p style="text-align: justify;">We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n<p style="text-align: justify;">We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update the "effective date" at the top of this Privacy Policy.</p>\r\n<p style="text-align: justify;">You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n\r\n\r\n<p style="text-align: justify;">Contact Us</p><p style="text-align: justify;"><span style="font-size: 1em;">If you have any questions about this Privacy Policy, please contact us:</span></p>\r\n<span style="text-align: justify; font-size: 1em;">By email: komal@gmail.com</span><br>\r\n										\r\n										\r\n										'),
(3, 'About Us ', 'aboutus', '										<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">\r\nWe are students from VIT who intend to develop a website that makes the people to save money from buying a new vehicle and book the cars for their journey in a effictive way and make them happy.\r\nOur faculy Gopinath MP has helped very much in completion of this project. We are very pleased that you are using our website and our main motto is develop a good interface that make even a illetrate to book a book a vehicle for hs journey. This website shows different variants of the cars of different types and variants and you can book the cars on the hourly basis or the daily basis or monthly basis. The money will be paid by cash only after the journey.\r\n \r\n</span>We are students from VIT who intend to develop a website that makes the people to ssave money from buying a new vehicle and book the cars for their journey in a effictive way and make them happy.\r\nOur faculy Gopinath MP has helped very much in completion of this project.\r\n\r\n\r\n										'),
(11, 'FAQs', 'faqs', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">\n<br>\n1. What is the fare for Audi?<br>\nAns: It depends on your date of booking.<br><br><br>\n\n2. What are the diiferent brands available?<br>\nAns: There are cars like Audo, BMW, Skoda ...<br><br><br>\n\n3. Can we take the car for one day?<br>\nAns: Yes It depends on your requirement.<br><br><br>\n</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(2, 'komal@gmail.com', '2019-10-11 10:04:51'),
(3, 'saieswar.s.99@gmail.com', '2019-10-20 17:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'komal@gmail.com', '\nThis is a good interface which i have seen ever before. Thanks for your service. ', '2019-07-05 11:08:26', 1),
(2, 'bhanu@gmail.com', 'This system is very easy to handle and have good service.', '2019-06-18 07:44:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Komal Venugopal', 'komal@gmail.com', '68673662afe234e2598220915639c3e2', '949144125', '26/11/1999', 'Hitech Plaza, Majestic bustand', 'Banalore', 'India', '2019-06-17 19:59:27', '2019-10-11 10:09:13'),
(2, 'Bhanu Prakash', 'bhanu@gmail.com', 'c2100a63e4cf51df8e61a937dda50bc0', '8285703354', '12/05/1998', '1st street, 2-19 Room no, Ramalayam road, Vuyyuru ', 'Vuuyuru', 'India', '2019-06-17 20:00:49', '2019-10-11 10:12:39'),
(3, 'Rathan', 'rathan@gmail.com', 'f09df7868d52e12bba658982dbd79821', '9999857868', '03/02/1999', '2-78 beside bose bomma chentre', 'Vijayawada', 'India', '2019-06-17 20:01:43', '2019-10-11 07:13:24'),
(4, 'Sai Eswar', 'eswar@gmail.com', 'f0490ea8746f610ff4677ccd4b4beefe', '9999857868', '13/06/1999', '2-19 HJH road', 'tokyo', 'Japan', '2019-06-17 20:03:36', '2019-10-11 10:14:02'),
(5, 'Chaitanya', 'chaitanya@gmail.com', '00d87cd23d9b945bbd0edafb367bf6a8', '7845698563', NULL, NULL, NULL, NULL, '2019-10-20 12:56:09', NULL),
(6, 'sai', 'saieswar.s.99@gmail.com', '87dd6f83772294884ed0ae6c155e6900', 'eswar', NULL, NULL, NULL, NULL, '2019-10-20 17:46:20', NULL),
(7, 'Chaitanya', 'chaitanyanandu15@gmail.com', 'cae08881d25f395c3524ef6a5bb8ecd2', '9003316423', NULL, NULL, NULL, NULL, '2019-10-21 18:41:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, '\nBMW M3', 2, 'The BMW M3 is a high-performance version of the BMW 3-Series, developed by BMW\'s in-house motorsport division, BMW M. M3 models have been derived from the E30, E36, E46, E90/E92/E93, and F80 3-series, and sold with coupe, saloon and convertible body styles. Upgrades over the "standard" 3-Series automobiles include more powerful and responsive engines, improved handling/suspension/braking systems, aerodynamic body enhancements, and interior/exterior accents with the tri-colour "M" emblem. The last M3 coupe was produced in Germany on 5 July 2013, replaced by the M4 Coupe starting with the 2015 model year, but the M3 name will remain in use for the saloon version. ', 300, 'Petrol', 2018, 7, 'm4.jpg', 'm2.jpg', 'm1.jpg', 'm4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-02-19 11:46:23', '2019-10-20 17:01:39'),
(2, 'BMW X3', 2, 'The BMW X3 is an compact luxury crossover SUV manufactured by German automaker BMW since 2003. Based on the BMW 3 Series platform, and now in its second generation, BMW markets the crossover as a Sports Activity Vehicle, the company\'s proprietary descriptor for its X-line of vehicles. The first generation X3 was designed by BMW in conjunction with Magna Steyr of Graz, Austria—who also manufactured all X3s under contract to BMW. BMW manufactures the second generation X3 at their Spartanburg plant in South Carolina, United States.', 450, 'CNG', 2019, 4, 'x1.webp', 'x2.jpeg', 'x3.jpg', 'x5.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2019-02-19 16:16:17', '2019-10-20 17:07:47'),
(3, 'Nissan GT-R', 4, 'The Nissan GT-R is a 2-door 2+2 sports coupé produced by Nissan and first released in Japan in 2007. It is the successor to the Nissan Skyline GT-R although it is no longer part of the Skyline range', 200, 'CNG', 2012, 5, '2.jpg', '3.jpg', '4.jpg', '5.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2019-02-19 16:18:20', '2019-10-20 16:09:34'),
(4, 'Nissan Altima', 1, 'The Nissan Altima is a mid-size car manufactured by Nissan, and is a continuation of the Nissan Bluebird line, which began in 1957. It is the #1 selling Nissan model. The Altima primarily competes in the mainstream mid-size sedan class in the United States against its main rivals, the Toyota Camry and Honda Accord, managing to become the second best-selling car in the United States in 2011. It has historically been larger, more powerful, and more luxurious than the Nissan Sentra but less so than the Nissan Maxima. The Altima is exclusively manufactured in the United States and officially sold in North and South America, along with the Middle East and Australia. ', 578, 'CNG', 2012, 5, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2019-02-19 16:18:43', '2019-10-20 16:42:19'),
(5, 'Toyota Prius', 5, 'The Toyota Prius is a full hybrid electric mid-size hatchback, formerly a compact sedan developed and manufactured by Toyota. The EPA and California Air Resources Board rate the Prius as among the cleanest vehicles sold in the United States based on smog-forming emissions. The Prius first went on sale in Japan in 1997, and was available at all four Toyota Japan dealerships, making it the first mass-produced hybrid vehicle. It was subsequently introduced worldwide in 2000. The Prius is sold in almost 80 countries and regions, with its largest markets being those of Japan and the United States. Global cumulative Prius sales reached the milestone 1 million vehicle mark in May 2008, 2 million i', 601, 'Petrol', 2017, 7, 'tp1.jpg', 'tp2.jpg', 'tp3.jpg', 'tp4.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-02-20 17:57:09', '2019-10-20 17:03:13'),
(6, 'Toyota Tacoma', 8, 'The Toyota Tacoma is a pickup truck manufactured in the U.S. by the Japanese automobile manufacturer Toyota since 1995. The first generation Tacoma, model years 1995½ through 2004, was classified as a compact pickup. The second generation was classified as mid-size. The Tacoma was Motor Trend Magazine\'s Truck of the Year for 2005. As of 2015, the Toyota Tacoma is sold in the U.S., Canada, Mexico, Panama, Bolivia, Chile, and the French territory of New Caledonia.', 105, 'Petrol', 2019, 4, 'tt1.jpg', '2.webp', 'tt3.jpg', 'tt4.jpg', '', 1, 1, 1, NULL, 1, 1, NULL, 1, 1, 1, NULL, 1, '2019-03-05 11:04:18', '2019-10-20 17:03:55'),
(7, 'Jaguar E-Type', 9, 'The Jaguar E-Type is a British sports car, which was manufactured by Jaguar Cars Ltd between 1961 and 1975. Its combination of good looks, high performance and competitive pricing established the marque as an icon of 1960s motoring. More than 70,000 E-Types were sold. In March 2008, the Jaguar E-Type ranked first in a The Daily Telegraph online list of the world\'s "100 most beautiful cars" of all time. In 2004, Sports Car International magazine placed the E-Type at number one on their list of Top Sports Cars of the 1960s.', 256, 'Diesel', 2019, 5, 'jx1.jpg', 'jx2.webp', 'jx3.jpg', 'jx4.jpg', 'jx5.jpg', 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2019-10-20 13:13:53', '2019-10-20 17:05:36'),
(8, 'Nissan terrano', 4, 'Innovation that excites. That\'s the core of Nissan\'s philosophy. As a part of Nissan\'s intelligent Mobility, NissanConnect transforms your car into a more responsive partner. It runs round-the-clock to provide you the best in safety, security and convenience by keeping you connected with us, your car and your loved ones.', 1200, 'Diesel', 2018, 6, 'ter1.jpg', 'ter2.jpg', 'ter1.jpg', 'ter2.jpg', 'ter1.jpg', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-20 17:36:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
