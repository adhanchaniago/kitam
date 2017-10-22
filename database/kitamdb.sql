-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2017 at 08:49 AM
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
(43, 0, 54, 'pc', 'Laptop', 'KSL-001', 'Mac', 'Macbook Pro', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 15:59:08', '', '', '', '', '', 'Yes'),
(44, 0, 0, 'pc', 'Laptop', 'KSL-002', 'Dell', 'Inspiron 14 3000 Series', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-13 23:43:03', '', '', '', '', '', 'Yes'),
(45, 0, 0, 'pc', 'Laptop', 'KSL-002a', 'Toshiba', 'Satellite C800-1024', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-13 23:43:14', '', '', '', '', '', 'Yes'),
(46, 0, 0, 'pc', 'Laptop', 'KSL-003', 'ASUS', 'A450CA-WX104D', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-13 23:43:23', '', '', '', '', '', 'Yes'),
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
(92, 0, 51, 'pc', 'Laptop', 'KSL-055', 'ASUS', 'A456U', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-10 16:07:20', '', '', '', '', '', 'Yes'),
(93, 0, 11, 'monitor', 'LCD Monitor', 'KSM-001', 'HP', 'LCD Monitor 19.5 Inch [W1907]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:46:45', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 0, 20, 'monitor', 'LED Monitor', 'KSM-002', 'DELL', 'LED Ultra-Slim Monitor 23 Inch [S2330MX]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:46:59', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 0, 41, 'monitor', 'LED Monitor', 'KSM-003', 'DELL', 'LED Ultra-Slim Monitor 23 Inch [S2330MX]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:47:15', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 0, 19, 'monitor', 'LED Monitor', 'KSM-004', 'DELL', 'LED Ultra-Slim Monitor 23 Inch [S2330MX]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:47:34', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 0, 32, 'monitor', 'LCD Monitor', 'KSM-005', 'HP', 'LCD Monitor 19.5 Inch [W1907]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:48:05', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 0, 16, 'monitor', 'LCD Monitor', 'KSM-006', 'HP', 'LCD Monitor 19.5 Inch [W1907]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:48:21', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 0, 47, 'monitor', 'LED Monitor', 'KSM-007', 'DELL', 'LED Ultra-Slim Monitor 23 Inch [S2330MX]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:49:04', NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, NULL, 'monitor', 'LED Monitor', 'KSM-009', 'DELL', 'Monitor LED 21.5 Inch [E2215HV]', NULL, NULL, NULL, NULL, 'Good', '', NULL, '2017-10-21 14:45:06', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 0, 48, 'monitor', 'LED Monitor', 'KSM-010', 'LG', 'LED Monitor 19.5 Inch [20M38A]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:49:15', NULL, NULL, NULL, NULL, NULL, NULL),
(102, NULL, NULL, 'monitor', 'LED Monitor', 'KSM-011', 'DELL', 'Monitor LED 21.5 Inch [E2215HV]', NULL, NULL, NULL, NULL, 'Good', '', NULL, '2017-10-21 14:45:06', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 0, 36, 'monitor', 'LED Monitor', 'KSM-012', 'DELL', 'LED Monitor 19.5 Inch [E2016HV]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:49:49', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 0, 35, 'monitor', 'LED Monitor', 'KSM-013', 'DELL', 'LED Monitor 19.5 Inch [E2016HV]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:50:00', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 0, 14, 'monitor', 'LED Monitor', 'KSM-014', 'DELL', 'LED Monitor 19.5 Inch [E2016HV]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:50:10', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 0, 28, 'monitor', 'LED Monitor', 'KSM-015', 'DELL', 'LED Monitor 19.5 Inch [E2016HV]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:50:28', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 0, 31, 'monitor', 'LED Monitor', 'KSM-016', 'DELL', 'LED Monitor 19.5 Inch [E2016HV]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:50:53', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 0, 29, 'monitor', 'LED Monitor', 'KSM-017', 'DELL', 'LED Monitor 19.5 Inch [E2016HV]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:51:02', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 0, 37, 'monitor', 'LED Monitor', 'KSM-018', 'DELL', 'IPS LED Monitor 23 Inch [P2317H]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:51:30', NULL, NULL, NULL, NULL, NULL, NULL),
(110, NULL, NULL, 'monitor', 'LED Monitor', 'KSM-019', 'DELL', 'IPS LED Monitor 23 Inch [P2317H]', NULL, NULL, NULL, NULL, 'Good', '', NULL, '2017-10-21 14:45:07', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 0, 49, 'monitor', 'LED Monitor', 'KSM-020', 'DELL', 'IPS LED Monitor 23 Inch [P2317H]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:52:01', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 0, 46, 'monitor', 'LED Monitor', 'KSM-021', 'DELL', 'LED Monitor 22 Inch [E2216HV]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:52:09', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 0, 22, 'monitor', 'LED Monitor', 'KSM-022', 'DELL', 'LED Monitor 22 Inch [E2216HV]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:52:37', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 0, 39, 'monitor', 'LED Monitor', 'KSM-023', 'DELL', 'LED Monitor 22 Inch [E2216HV]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:52:47', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 0, 30, 'monitor', 'LED Monitor', 'KSM-024', 'DELL', 'LED Monitor 22 Inch [E2216HV]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:52:57', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 0, 51, 'monitor', 'LED Monitor', 'KSM-025', 'DELL', 'Monitor Gaming 23.6 inch [SE2417HG]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:53:37', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 0, 12, 'monitor', 'LED Monitor', 'KSM-026', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-21 14:54:21', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 0, 15, 'monitor', 'LED Monitor', 'KSM-027', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-21 14:54:31', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 0, 50, 'monitor', 'LED Monitor', 'KSM-028', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-21 14:56:27', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 0, 56, 'monitor', 'LED Monitor', 'KSM-029', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-21 14:56:34', NULL, NULL, NULL, NULL, NULL, NULL),
(121, NULL, NULL, 'monitor', 'LED Monitor', 'KSM-030', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', NULL, NULL, NULL, NULL, 'Good', '', NULL, '2017-10-21 14:45:07', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 0, 27, 'monitor', 'LED Monitor', 'KSM-031', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-21 14:56:44', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 0, 55, 'monitor', 'LED Monitor', 'KSM-032', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-21 14:56:18', NULL, NULL, NULL, NULL, NULL, NULL),
(124, NULL, NULL, 'monitor', 'LED Monitor', 'KSM-033', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 14:45:07', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 0, 42, 'monitor', 'LED Monitor', 'KSM-034', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Bandung', '', '2017-10-21 14:57:15', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 0, 44, 'monitor', 'LED Monitor', 'KSM-035', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:57:26', NULL, NULL, NULL, NULL, NULL, NULL),
(127, NULL, NULL, 'monitor', 'LED Monitor', 'KSM-036', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', NULL, NULL, NULL, NULL, 'Good', '', NULL, '2017-10-21 14:45:07', NULL, NULL, NULL, NULL, NULL, NULL),
(128, NULL, NULL, 'monitor', 'LED Monitor', 'KSM-037', 'Acer', 'LED Monitor 19.5 Inch [K202HQL]', NULL, NULL, NULL, NULL, 'Good', '', NULL, '2017-10-21 14:45:07', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 0, 17, 'monitor', 'LED Monitor', 'KSM-038', 'Apple', 'iMac 23 Inch', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 14:57:43', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 0, 23, 'accessories', 'Mouse', 'KSP-025', 'Logitech', 'Wired Optical Mouse M90', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:05:20', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 0, 43, 'accessories', 'Mouse', 'KSP-026', 'Logitech', 'Wired Optical Mouse M90', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:05:28', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 0, 16, 'accessories', 'Mouse', 'KSP-027', 'Logitech', 'Wired Optical Mouse M90', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:05:46', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 0, 21, 'accessories', 'Mouse', 'KSP-036', 'Logitech', 'Wired Optical Mouse', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:06:00', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 0, 37, 'accessories', 'Mouse', 'KSP-037', 'Logitech', 'Wired Optical Mouse M90', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:06:09', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 0, 49, 'accessories', 'Mouse', 'KSP-038', 'Logitech', 'Wired Optical Mouse', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:18:05', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 0, 52, 'accessories', 'Mouse', 'KSP-039', 'Genius', 'Wired Optical Mouse', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:06:32', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 0, 32, 'accessories', 'Mouse', 'KSP-040', 'Genius', 'Wired Optical Mouse', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:06:42', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 0, 36, 'accessories', 'Mouse', 'KSP-041', 'Logitech', 'Wired Optical Mouse', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:06:57', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 0, 31, 'accessories', 'Mouse', 'KSP-042', 'Logitech', 'Wired Optical Mouse', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:07:09', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 0, 46, 'accessories', 'Mouse', 'KSP-043', 'Genius', 'Wired Optical Mouse', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:07:34', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 0, 35, 'accessories', 'Mouse', 'KSP-044', 'Logitech', 'Wired Optical Mouse', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:07:42', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 0, 40, 'accessories', 'Mouse', 'KSP-045', 'Logitech', 'Wired Optical Mouse', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:07:57', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 0, 19, 'accessories', 'Mouse', 'KSP-028', 'HAVIT', 'Mousepad Gaming [HV-MP825]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:12:10', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 0, 31, 'accessories', 'Mouse', 'KSP-029', 'HAVIT', 'Mousepad Gaming [HV-MP825]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:12:18', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 0, 18, 'accessories', 'Mouse', 'KSP-030', 'HAVIT', 'Mousepad Gaming [HV-MP825]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:12:24', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 0, 43, 'accessories', 'Mouse', 'KSP-031', 'HAVIT', 'Mousepad Gaming [HV-MP825]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:12:51', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 0, 23, 'accessories', 'Mouse', 'KSP-032', 'HAVIT', 'Mousepad Gaming [HV-MP825]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:12:57', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 0, 37, 'accessories', 'Mouse', 'KSP-033', 'HAVIT', 'Mousepad Gaming [HV-MP825]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:13:06', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 0, 28, 'accessories', 'Mouse', 'KSP-034', 'HAVIT', 'Mousepad Gaming [HV-MP825]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:13:46', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 0, 35, 'accessories', 'Mouse', 'KSP-035', 'HAVIT', 'Mousepad Gaming [HV-MP825]', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:13:59', NULL, NULL, NULL, NULL, NULL, NULL),
(151, NULL, NULL, 'accessories', 'Mouse', 'KSP-002', 'Logitech', 'K120', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:15:49', NULL, NULL, NULL, NULL, NULL, NULL),
(152, 0, 0, 'accessories', 'Converter', 'KSX-XXX', '', 'Mac Converter display port to HDMI', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '        ', '2017-10-21 15:17:29', NULL, NULL, NULL, NULL, NULL, NULL),
(153, NULL, NULL, 'cctv', 'CCTV Station', 'KSC-001', 'Blink', 'Sync Module BSM0100U', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:23:07', NULL, NULL, NULL, NULL, NULL, NULL),
(154, NULL, NULL, 'cctv', 'CCTV Camera', 'KSC-002', 'Blink', 'Blink CCTV Jakarta A', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:23:07', NULL, NULL, NULL, NULL, NULL, NULL),
(155, NULL, NULL, 'cctv', 'CCTV Camera', 'KSC-003', 'Blink', 'Blink CCTV Jakarta B', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:23:07', NULL, NULL, NULL, NULL, NULL, NULL),
(156, NULL, NULL, 'cctv', 'CCTV Camera', 'KSC-004', 'Blink', 'Blink CCTV Jakarta C', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:23:07', NULL, NULL, NULL, NULL, NULL, NULL),
(157, NULL, NULL, 'cctv', 'CCTV Camera', 'KSC-005', 'Netgear', 'Arlo CCTV', NULL, NULL, NULL, NULL, 'Good', 'Kemana Bandung', NULL, '2017-10-21 15:23:07', NULL, NULL, NULL, NULL, NULL, NULL),
(158, NULL, NULL, 'cctv', 'CCTV Camera', 'KSC-006', 'Netgear', 'Arlo CCTV', NULL, NULL, NULL, NULL, 'Good', 'Kemana Bandung', NULL, '2017-10-21 15:23:07', NULL, NULL, NULL, NULL, NULL, NULL),
(159, NULL, NULL, 'cctv', 'CCTV Station', 'KSC-007', 'Netgear', 'Base Station CCTV', NULL, NULL, NULL, NULL, 'Good', 'Kemana Bandung', NULL, '2017-10-21 15:23:07', NULL, NULL, NULL, NULL, NULL, NULL),
(160, 0, 0, 'communication', 'Conference Call', 'KSP-046', 'Panasonic', 'PABX 3 lines (CO) 8 Extension PBX Unit KX-TES824', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:37:03', NULL, NULL, NULL, NULL, NULL, NULL),
(161, NULL, NULL, 'communication', 'Phone', 'KST-100', 'Panasonic', 'KX-T7730', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:51', NULL, NULL, NULL, NULL, NULL, NULL),
(162, NULL, NULL, 'communication', 'Phone', 'KST-101', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:51', NULL, NULL, NULL, NULL, NULL, NULL),
(163, NULL, NULL, 'communication', 'Phone', 'KST-102', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(164, NULL, NULL, 'communication', 'Phone', 'KST-103', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(165, NULL, NULL, 'communication', 'Phone', 'KST-104', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(166, NULL, NULL, 'communication', 'Phone', 'KST-105', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(167, NULL, NULL, 'communication', 'Phone', 'KST-200', 'Panasonic', 'KX-T2373MXW', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(168, NULL, NULL, 'communication', 'Phone', 'KST-201', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(169, NULL, NULL, 'communication', 'Phone', 'KST-202', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(170, NULL, NULL, 'communication', 'Phone', 'KST-203', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(171, NULL, NULL, 'communication', 'Phone', 'KST-204', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(172, NULL, NULL, 'communication', 'Phone', 'KST-205', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(173, NULL, NULL, 'communication', 'Phone', 'KST-206', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(174, NULL, NULL, 'communication', 'Phone', 'KST-207', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(175, NULL, NULL, 'communication', 'Phone', 'KST-208', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(176, NULL, NULL, 'communication', 'Phone', 'KST-210', 'Panasonic', 'KX-TS505MX', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:30:52', NULL, NULL, NULL, NULL, NULL, NULL),
(177, 0, 0, 'communication', 'Conference Call', 'KSP-021', 'Logitech', 'e3000 skype conference call device Hub', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:37:09', NULL, NULL, NULL, NULL, NULL, NULL),
(178, 0, 0, 'communication', 'Conference Call', 'KSP-022', 'Logitech', 'e3000 skype conference call device remote', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:37:13', NULL, NULL, NULL, NULL, NULL, NULL),
(179, NULL, NULL, 'communication', 'PABX', 'KSP-023', 'Logitech', 'e3000 skype conference call device Camera', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:33:03', NULL, NULL, NULL, NULL, NULL, NULL),
(180, NULL, NULL, 'electricity', 'UPS', 'KSP-016', 'UPS', 'General Electric VCL 1500VA', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:38:57', NULL, NULL, NULL, NULL, NULL, NULL),
(181, NULL, NULL, 'multimedia', 'TV', 'KSP-012', 'LG', '47LV3730', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:42:26', NULL, NULL, NULL, NULL, NULL, NULL),
(182, NULL, NULL, 'multimedia', 'TV', 'KSP-013', 'SHARP', 'AQUOS', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:42:26', NULL, NULL, NULL, NULL, NULL, NULL),
(183, NULL, NULL, 'multimedia', 'Speaker', 'KSP-011', 'Polycom', 'Polycom Sound Station', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:44:14', NULL, NULL, NULL, NULL, NULL, NULL),
(184, 0, 0, 'multimedia', 'Headset', 'KSX-XXX', 'SKYPAL', 'Stereo PC HEADSET', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:46:07', NULL, NULL, NULL, NULL, NULL, NULL),
(185, NULL, NULL, 'multimedia', 'Camera', 'KSP-015', 'Panasonic', 'DV Network Station Panasonic NV-DV 200', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:47:27', NULL, NULL, NULL, NULL, NULL, NULL),
(186, 0, 0, 'multimedia', 'Projector', 'KSP-047', 'Optoma', 'Optoma PK301 Pico Pocket Projector', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-21 15:48:50', NULL, NULL, NULL, NULL, NULL, NULL),
(187, 0, 18, 'printer', 'Printer', 'KSP-014', 'HP', 'HP DeskJet 2132', 2000000, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-22 08:10:12', NULL, NULL, NULL, NULL, NULL, NULL),
(188, 0, 0, 'printer', 'Printer', 'KSP-017', 'Fuji Xerox', 'Fuji Xerox Docuprint CM215b', 1500000, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-22 08:10:21', NULL, NULL, NULL, NULL, NULL, NULL),
(189, NULL, NULL, 'printer', 'Printer', 'KSP-018', 'Panasonic', 'Panasonic KX-MB 772', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:52:31', NULL, NULL, NULL, NULL, NULL, NULL),
(190, NULL, NULL, 'printer', 'Printer', 'KSP-020', 'Epson', 'Epson L200', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-21 15:52:31', NULL, NULL, NULL, NULL, NULL, NULL),
(191, 0, 0, 'tools', ' Paper Shredder', 'KSX-XXX', 'Krisbow', 'Paper Shredder', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '', '2017-10-22 04:43:30', NULL, NULL, NULL, NULL, NULL, NULL),
(192, NULL, NULL, 'server', 'Server', 'KSS-001', 'DELL', 'Power Edge R710', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 02:58:20', NULL, NULL, NULL, NULL, NULL, NULL),
(193, NULL, NULL, 'server', 'Server', 'KSS-003', 'DELL', 'Power Edge T20', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 02:58:20', NULL, NULL, NULL, NULL, NULL, NULL),
(194, NULL, NULL, 'server', 'Server', 'KSS-002', 'Intel', 'Tower PC - Intel', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 02:58:20', NULL, NULL, NULL, NULL, NULL, NULL),
(195, NULL, NULL, 'server', 'Server', 'KSS-004', 'QNAP', 'TS-228 Turbo NAS', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 02:58:20', NULL, NULL, NULL, NULL, NULL, NULL),
(196, NULL, NULL, 'network', 'Firewall', 'KSN-010', 'Mikrotik', 'Router Board Mikrotic 450 G', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 03:05:22', NULL, NULL, NULL, NULL, NULL, NULL),
(197, NULL, NULL, 'network', 'Firewall', 'KSN-018', 'Mikrotik', 'Mikrotik Cloud Core Router CCR1016-12G', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 03:05:22', NULL, NULL, NULL, NULL, NULL, NULL),
(198, NULL, NULL, 'network', 'Firewall', 'KSN-017', 'Mikrotik', 'Mikrotik Router Wireless RB962UiGS-5HacT2HnT (hAP-AC)', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 03:05:22', NULL, NULL, NULL, NULL, NULL, NULL),
(199, NULL, NULL, 'network', 'Firewall', 'KSN-019', 'Mikrotik', 'Router Board Mikrotik RB750r2', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 03:05:22', NULL, NULL, NULL, NULL, NULL, NULL),
(200, NULL, NULL, 'network', 'Router', 'KSN-012', 'Peplink', 'Peplink Balance 20', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:20:11', NULL, NULL, NULL, NULL, NULL, NULL),
(201, NULL, NULL, 'network', 'Switch', 'KSN-011', 'LinkSys', 'LinkSys 48Port', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:24:54', NULL, NULL, NULL, NULL, NULL, NULL),
(202, NULL, NULL, 'network', 'Switch', 'KSN-014', 'D-Link', 'D-Link Gigabit Switch 8 Port', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:24:54', NULL, NULL, NULL, NULL, NULL, NULL),
(203, NULL, NULL, 'network', 'Switch', 'KSN-021', 'TP-Link', 'TP-Link TL-SG1016', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:24:54', NULL, NULL, NULL, NULL, NULL, NULL),
(204, NULL, NULL, 'network', 'Switch', 'KSN-022', 'TP-Link', 'TP-Link TL-SG1016', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:24:54', NULL, NULL, NULL, NULL, NULL, NULL),
(205, NULL, NULL, 'network', 'Access Point', 'KSN-001', 'ASUS', 'ASUS RT-N14UHP', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:34:51', NULL, NULL, NULL, NULL, NULL, NULL),
(206, NULL, NULL, 'network', 'Access Point', 'KSN-002', 'TP-Link', 'TPLink TL-WA730RE', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:34:52', NULL, NULL, NULL, NULL, NULL, NULL),
(207, NULL, NULL, 'network', 'Access Point', 'KSN-008', 'TP-Link', 'TP-Link TD-W8951ND', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:34:52', NULL, NULL, NULL, NULL, NULL, NULL),
(208, NULL, NULL, 'network', 'Access Point', 'KSN-009', 'TP-Link', 'TP-Link N Router WR841HP', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:34:52', NULL, NULL, NULL, NULL, NULL, NULL),
(209, NULL, NULL, 'network', 'Access Point', 'KSN-013', 'D-Link', 'D-Link Dir-615', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:34:52', NULL, NULL, NULL, NULL, NULL, NULL),
(210, NULL, NULL, 'network', 'Access Point', 'KSN-015', 'TP-Link', 'TP-Link TL-WL841HP', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:34:52', NULL, NULL, NULL, NULL, NULL, NULL),
(211, NULL, NULL, 'network', 'Access Point', 'KSN-016', 'TP-Link', 'TP-Link TL-SG1008D', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:34:52', NULL, NULL, NULL, NULL, NULL, NULL),
(212, NULL, NULL, 'network', 'Access Point', 'KSN-020', 'ASUS', 'ASUS RT-N18U', NULL, NULL, NULL, NULL, 'Good', 'Kemana Jakarta', NULL, '2017-10-22 04:34:52', NULL, NULL, NULL, NULL, NULL, NULL),
(213, 0, 0, 'network', 'Access Point', 'KSX-XXX', 'TP-Link', 'TP-Link Powerline adapter', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '        ', '2017-10-22 04:38:33', NULL, NULL, NULL, NULL, NULL, NULL),
(214, 0, 0, 'network', 'Access Point', 'KSX-XXX', 'TP-Link', 'TP-Link Wifi Repeater', 0, '0000-00-00', '', NULL, 'Good', 'Kemana Jakarta', '        ', '2017-10-22 04:39:56', NULL, NULL, NULL, NULL, NULL, NULL);

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
(4, 0, NULL, 'Norton Security with Backup', 'Norton', '', 780000, '2017-09-13', NULL, '10', '0000-00-00', '0000-00-00', NULL, 'JW29XYDWKVPKJFQFCQX4TVWP3\r\n', '2017-10-22 04:46:07'),
(5, 0, NULL, 'Norton Security with Backup', 'Norton', '', 780000, '2017-09-13', NULL, '10', '0000-00-00', '0000-00-00', NULL, 'J4FQ3WHWJB6QTFF2V3GJF7Y66\r\n', '2017-10-22 04:47:14'),
(6, 0, NULL, 'Norton Security with Backup', 'Norton', '', 780000, '2017-09-13', NULL, '10', '0000-00-00', '0000-00-00', NULL, 'JYD2JQRY9FF4T2MW6TQGJRWTR\r\n', '2017-10-22 04:47:46'),
(7, 0, NULL, 'Axure RP Team', 'Axure', '', 637000, '2017-08-20', NULL, '2', '0000-00-00', '0000-00-00', NULL, '        ', '2017-10-22 04:48:33');

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
  MODIFY `id_hardware` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `id_software` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
