-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2017 at 04:17 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitamdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `used_for` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `used_for`, `name`, `label`, `options`, `status`, `timestamp`) VALUES
(2, 'hardware', 'server', 'Server', 'Server', 'Enable', '2017-10-10 14:26:04'),
(3, 'hardware', 'pc', 'PC / Laptop', 'Laptop,PC', 'Enable', '2017-09-23 03:46:35'),
(4, 'hardware', 'network', 'Network', 'Access Point,Firewall,Modem,Router,Switch,PoE', 'Enable', '2017-10-10 14:21:32'),
(5, 'hardware', 'monitor', 'Monitor', 'LCD Monitor,LED Monitor', 'Enable', '2017-09-23 03:47:05'),
(6, 'hardware', 'accessories', 'Accessories', 'Keyboard,Mouse,Mouse Pad,Converter', 'Enable', '2017-10-10 14:13:32'),
(7, 'hardware', 'tools', 'Tools', 'Crimpting Tools, Paper Shredder', 'Enable', '2017-10-10 14:27:07'),
(9, 'hardware', 'cctv', 'CCTV', 'CCTV Camera,CCTV Station', 'Enable', '2017-10-10 14:15:04'),
(10, 'hardware', 'communication', 'Communication', 'Phone,Fax,PABX,Conference Call', 'Enable', '2017-10-10 14:16:45'),
(11, 'hardware', 'electricity', 'Electricity', 'UPS,Stabilizer', 'Enable', '2017-10-10 14:17:21'),
(12, 'hardware', 'multimedia', 'Multimedia', 'Camera,Headset,Speaker,TV,Projector', 'Enable', '2017-10-10 14:19:28'),
(13, 'hardware', 'printer', 'Printer / Scanner', 'Printer,Scanner', 'Enable', '2017-10-10 14:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

CREATE TABLE `hardware` (
  `id_hardware` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `id_staff` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `series` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `warranty` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cpu` varchar(255) DEFAULT NULL,
  `memory` varchar(255) DEFAULT NULL,
  `vga` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `lan_port` varchar(255) DEFAULT NULL,
  `wireless_adapter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hardware`
--

INSERT INTO `hardware` (`id_hardware`, `id_supplier`, `id_staff`, `category`, `name`, `label`, `manufacturer`, `series`, `price`, `purchase_date`, `warranty`, `image`, `condition`, `location`, `description`, `timestamp`, `cpu`, `memory`, `vga`, `storage`, `lan_port`, `wireless_adapter`) VALUES
(38, 4, 0, 'server', 'Blade Server', 'DELLET', 'Dell', 'Dellet aja', 520000, '2017-09-14', '9', NULL, 'In Service', 'Bandung Office', 'asdfas dfdf', '2017-09-21 09:17:43', '7', '7', '7', '7', '7', 'No'),
(40, 4, 4, 'monitor', 'LCD Monitor', 'Acerrr10', 'Acer', 'Cerrrrr', 150000, '2017-09-28', '36', NULL, 'Bad', 'Jakarta Office', 'sdafasdf        ', '2017-09-21 09:58:33', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 2, 1, 'dummy', ' Dummy 3', 'test img2', 'Test', '234', 156000, '2017-09-14', '12', NULL, 'Good', 'Jakarta Office', 'asdfas', '2017-09-23 04:19:23', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 0, 54, 'pc', 'Laptop', 'KSL-001', 'Mac', 'Macbook Pro', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 15:59:08', '', '', '', '', '', 'Yes'),
(44, NULL, NULL, 'pc', 'Laptop', 'KSL-002', 'Dell', 'Inspiron 14 3000 Series', NULL, NULL, NULL, NULL, '', '', NULL, '2017-10-10 15:44:31', NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, 'pc', 'Laptop', 'KSL-002a', 'Toshiba', 'Satellite C800-1024', NULL, NULL, NULL, NULL, '', '', NULL, '2017-10-10 15:44:31', NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, 'pc', 'Laptop', 'KSL-003', 'ASUS', 'A450CA-WX104D', NULL, NULL, NULL, NULL, '', '', NULL, '2017-10-10 15:44:31', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 0, 30, 'pc', 'Laptop', 'KSL-004', 'ASUS', 'A46CB-WX025D', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 15:59:11', '', '', '', '', '', 'Yes'),
(48, 0, 16, 'pc', 'Laptop', 'KSL-004a', 'ASUS', ' X455LA-WX081D', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 15:59:14', '', '', '', '', '', 'Yes'),
(49, 0, 0, 'pc', 'Laptop', 'KSL-005', 'Lenovo', 'G450', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:03:28', '', '', '', '', '', 'Yes'),
(50, NULL, NULL, 'pc', 'Laptop', 'KSL-006', 'Mac', 'Macbook Pro A1278', NULL, NULL, NULL, NULL, '', '', NULL, '2017-10-10 15:44:31', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 0, 21, 'pc', 'Laptop', 'KSL-007', 'Fujitsu', 'LifeBook L Series LH532', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 15:59:18', '', '', '', '', '', 'Yes'),
(52, 0, 32, 'pc', 'Laptop', 'KSL-008', 'Lenovo', 'G450', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 15:59:20', '', '', '', '', '', 'Yes'),
(53, 0, 12, 'pc', 'Laptop', 'KSL-009', 'Mac', 'Macbook Pro', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-10 15:59:32', '', '', '', '', '', 'Yes'),
(54, 0, 22, 'pc', 'Laptop', 'KSL-010', 'Fujitsu', 'LifeBook L Series LH532', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 15:59:41', '', '', '', '', '', 'Yes'),
(55, NULL, NULL, 'pc', 'Laptop', 'KSL-011', 'Lenovo', 'G450', NULL, NULL, NULL, NULL, '', '', NULL, '2017-10-10 15:44:31', NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, 'pc', 'Laptop', 'KSL-012', 'Toshiba', 'Satellite C800-1024', NULL, NULL, NULL, NULL, '', '', NULL, '2017-10-10 15:44:31', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 0, 45, 'pc', 'Laptop', 'KSL-013', 'Dell', 'Inspiron 3442', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 15:59:45', '', '', '', '', '', 'Yes'),
(58, 0, 31, 'pc', 'Laptop', 'KSL-014', 'ASUS', 'X455LA-WX669D', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 15:59:49', '', '', '', '', '', 'Yes'),
(59, 0, 47, 'pc', 'Laptop', 'KSL-015', 'ASUS', 'A46CB-WX025D', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 15:59:53', '', '', '', '', '', 'Yes'),
(60, NULL, NULL, 'pc', 'Laptop', 'KSL-016', 'ASUS', 'A450C', NULL, NULL, NULL, NULL, '', '', NULL, '2017-10-10 15:44:31', NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, 'pc', 'Laptop', 'KSL-017', 'ASUS', 'X450CA-WX242D', NULL, NULL, NULL, NULL, '', '', NULL, '2017-10-10 15:44:31', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 0, 23, 'pc', 'Laptop', 'KSL-020', 'ASUS', 'A450C', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 15:59:58', '', '', '', '', '', 'Yes'),
(63, NULL, NULL, 'pc', 'Laptop', 'KSL-022', 'ASUS', 'X451CA-VX126D', NULL, NULL, NULL, NULL, '', '', NULL, '2017-10-10 15:44:31', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 0, 46, 'pc', 'Laptop', 'KSL-023', 'Acer', 'Aspire E5-471G', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:00:09', '', '', '', '', '', 'Yes'),
(65, 0, 40, 'pc', 'Laptop', 'KSL-025', 'ASUS', 'X555L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:00:13', '', '', '', '', '', 'Yes'),
(66, 0, 43, 'pc', 'Laptop', 'KSL-026', 'ASUS', 'X555L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:00:17', '', '', '', '', '', 'Yes'),
(67, 0, 11, 'pc', 'Laptop', 'KSL-027', 'ASUS', 'X555L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:00:21', '', '', '', '', '', 'Yes'),
(68, 0, 12, 'pc', 'Laptop', 'KSL-028', 'ASUS', 'A456U', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-10 16:00:29', '', '', '', '', '', 'Yes'),
(69, 0, 20, 'pc', 'Laptop', 'KSL-029', 'ASUS', 'X456UF', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:00:37', '', '', '', '', '', 'Yes'),
(70, 0, 22, 'pc', 'Laptop', 'KSL-030', 'ASUS', 'X456UF', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:00:42', '', '', '', '', '', 'Yes'),
(71, 0, 41, 'pc', 'Laptop', 'KSL-031', 'ASUS', 'X455LJ', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:00:46', '', '', '', '', '', 'Yes'),
(72, 0, 37, 'pc', 'Laptop', 'KSL-032', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:00:53', '', '', '', '', '', 'Yes'),
(73, 0, 49, 'pc', 'Laptop', 'KSL-033', 'ASUS', 'X455LJ', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:01:12', '', '', '', '', '', 'Yes'),
(74, 0, 35, 'pc', 'Laptop', 'KSL-034', 'ASUS', 'X450CA', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:01:16', '', '', '', '', '', 'Yes'),
(75, 0, 52, 'pc', 'Laptop', 'KSL-035', 'ASUS', 'X540L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:01:21', '', '', '', '', '', 'Yes'),
(76, 0, 27, 'pc', 'Laptop', 'KSL-036', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-10 16:01:28', '', '', '', '', '', 'Yes'),
(77, 0, 15, 'pc', 'Laptop', 'KSL-037', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-10 16:01:34', '', '', '', '', '', 'Yes'),
(78, 0, 44, 'pc', 'Laptop', 'KSL-038', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-10 16:01:43', '', '', '', '', '', 'Yes'),
(79, 0, 53, 'pc', 'Laptop', 'KSL-039', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-10 16:04:09', '', '', '', '', '', 'Yes'),
(80, 0, 25, 'pc', 'Laptop', 'KSL-040', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-10 16:04:21', '', '', '', '', '', 'Yes'),
(81, 0, 56, 'pc', 'Laptop', 'KSL-041', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-10 16:04:44', '', '', '', '', '', 'Yes'),
(82, 0, 10, 'pc', 'Laptop', 'KSL-042', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-10 16:04:56', '', '', '', '', '', 'Yes'),
(83, 0, 14, 'pc', 'Laptop', 'KSL-043', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:05:13', '', '', '', '', '', 'Yes'),
(84, 0, 26, 'pc', 'Laptop', 'KSL-043a', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-10 16:05:21', '', '', '', '', '', 'Yes'),
(85, 0, 36, 'pc', 'Laptop', 'KSL-044', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:05:37', '', '', '', '', '', 'Yes'),
(86, 0, 29, 'pc', 'Laptop', 'KSL-049', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:05:50', '', '', '', '', '', 'Yes'),
(87, 0, 34, 'pc', 'Laptop', 'KSL-050', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:06:17', '', '', '', '', '', 'Yes'),
(88, 0, 39, 'pc', 'Laptop', 'KSL-051', 'ASUS', 'A455L', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:06:34', '', '', '', '', '', 'Yes'),
(89, 0, 48, 'pc', 'Laptop', 'KSL-052', 'ASUS', 'A456U', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:06:52', '', '', '', '', '', 'Yes'),
(90, 0, 19, 'pc', 'Laptop', 'KSL-053', 'ASUS', 'A456U', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:07:00', '', '', '', '', '', 'Yes'),
(91, 0, 28, 'pc', 'Laptop', 'KSL-054', 'ASUS', 'A456U', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:07:12', '', '', '', '', '', 'Yes'),
(92, 0, 51, 'pc', 'Laptop', 'KSL-055', 'ASUS', 'A456U', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:07:20', '', '', '', '', '', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE `software` (
  `id_software` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `license_qty` varchar(255) DEFAULT NULL,
  `license_start_date` date DEFAULT NULL,
  `license_end_date` date DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `description` text,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`id_software`, `id_supplier`, `category`, `name`, `manufacturer`, `version`, `price`, `purchase_date`, `license`, `license_qty`, `license_start_date`, `license_end_date`, `condition`, `description`, `timestamp`) VALUES
(1, 1, 'Licensed', 'OS Windows 10', 'Microsoft', 'Professional', 1500000, '2017-09-02', 'License', '5', '2017-09-01', '2018-09-01', 'Good', 'Nothing', NULL),
(3, 2, NULL, 'Antivirus', 'Avast Inc', '1.0.1', 520000, '2017-10-05', NULL, '8', '2017-09-28', '2017-09-30', NULL, 'test', '2017-10-01 12:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `name`, `position`, `email`, `phone`, `location`, `status`, `timestamp`) VALUES
(10, 'Amy Amadea', 'Backend Developer', 'aamadea@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:15:59'),
(11, 'Anan Fauzi', '', 'afauzi@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:15:59'),
(12, 'Ansyori B', '', 'ansyori@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:15:59'),
(13, 'Arvin Arvin Kurniawan', 'Office Manager', 'akurniawan@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:15:59'),
(14, 'Ashadi Muliawan', '', 'amuliawan@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:15:59'),
(15, 'Bobby Brillian Yerikho', 'Backend Developer', 'bbyerikho@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:15:59'),
(16, 'Budi Hriyana', '', 'bhariyana@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:15:59'),
(17, 'Christopher Benz', '', 'cbenz@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:15:59'),
(18, 'Cindy Kitty Heronita', '', 'ckitty@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(19, 'Cipto Raharjo', '', 'craharjo@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(20, 'Didi Kusnadi', '', 'dkusnadi@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(21, 'Didiet Nur Cahyanto', '', 'didiet@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(22, 'Edi Suryadi', '', 'esuryadi@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(23, 'Fajar Indra', '', 'findra@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(24, 'Fikri Abdilah', 'Mobile Developer', 'fabdilah@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:16:00'),
(25, 'Firman Alhadiansyah', 'Backend Developer', 'falhadiansyah@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:16:00'),
(26, 'Gen Gen Fikri Adam', 'Backend Developer', 'gfadam@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:16:00'),
(27, 'Hafizh Fathir Firdaus', 'Backend Developer', 'hffirdaus@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:16:00'),
(28, 'Henry Wongkar', '', 'hwongkar@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(29, 'Hernady Latip', '', 'hlatip@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(30, 'Herwandi', '', 'herwandi@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(31, 'Imam Kusuma', '', 'ikusuma@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(32, 'Irman Pambudi', '', 'ipambudi@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(33, 'Jeffry Yudha Putra', '', 'jyputra@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(34, 'Kamaludin', '', 'kamaludin@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(35, 'Kevin Gosal', '', 'kgosal@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(36, 'Kurniawan', '', 'kurniawan@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(37, 'Mahardhika Putra Sulistyo', '', 'mpsulistyo@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(38, 'Miranitha Fasha', 'Backend Developer', 'mfasha@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:16:00'),
(39, 'Muttaqiin', '', 'muttaqiin@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(40, 'Norisa Rorah', '', 'nrorah@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(41, 'Pendi', '', 'pendi@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(42, 'Ratna Puri Effendi', 'Frontend Developer', 'rpeffendi@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:16:00'),
(43, 'Ratu Dita', '', 'rdita@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:00'),
(44, 'Rizal Fauzie Ridwan', 'Frontend Developer', 'rfridwan@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:16:01'),
(45, 'Romauli Oktohana', '', 'mhana@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:01'),
(46, 'Ryan Permana', '', 'rpermana@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:01'),
(47, 'Saiful Fahamsyah', '', 'sfahamsyah@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:01'),
(48, 'Sapta Sanjaya', '', 'ssanjaya@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:01'),
(49, 'Shinta Octavia', '', 'soctavia@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:01'),
(50, 'Sidik Purnomo', 'Backend Developer', 'spurnomo@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:16:01'),
(51, 'Simon Petrus', '', 'spetrus@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:01'),
(52, 'Sonny Ariestiawan', '', 'sariestiawan@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:01'),
(53, 'Syahfitria Syarifuddin', 'Backend Developer', 'ssyarifuddin@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:16:01'),
(54, 'Tata Arpandi', '', 'tarpandi@kemana.com', NULL, 'Kemana Jakarta', 'Active', '2017-10-10 15:16:01'),
(55, 'Taufik Maulana Nugraha', 'Frontend Developer', 'tmnugraha@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:16:01'),
(56, 'Taupik Otto Ismail', 'Frontend Developer', 'toismail@kemana.com', NULL, 'Kemana Bandung', 'Active', '2017-10-10 15:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `name`, `address`, `email`, `phone`, `fax`, `city`, `country`, `timestamp`) VALUES
(1, 'Unknown', NULL, 'unknown@mail.com', '00000000000', '00000000000', 'Unknown', 'Unknown', '2017-10-10 15:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `foto`, `role`, `email`, `timestamp`) VALUES
(1, 'guest', '084e0343a0486ff05530df6c705c8bb4', 'Guest User', 'Koala.jpg', 'guest', 'guest@kemana.com', '2017-09-23 14:49:25'),
(2, 'firman', '74bfebec67d1a87b161e5cbcf6f72a4a', 'Firman Alhadiansyah', 'Koala.jpg', 'management', 'falhadiansyah@kemana.com', '2017-09-23 13:37:23'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', NULL, 'administrator', 'admin@kemana.com', '2017-09-23 13:37:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`id_hardware`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id_software`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `hardware`
--
ALTER TABLE `hardware`
  MODIFY `id_hardware` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `id_software` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
