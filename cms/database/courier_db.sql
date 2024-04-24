-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2024 at 12:49 PM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `courier_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier`
--

CREATE TABLE IF NOT EXISTS `tbl_courier` (
  `cid` int(10) NOT NULL auto_increment,
  `cons_no` varchar(20) NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `s_add` varchar(200) NOT NULL,
  `rev_name` varchar(100) NOT NULL,
  `r_phone` varchar(12) NOT NULL,
  `r_add` varchar(200) NOT NULL,
  `type` varchar(40) NOT NULL,
  `weight` double NOT NULL,
  `invice_no` varchar(20) NOT NULL,
  `qty` int(10) NOT NULL,
  `book_mode` varchar(20) NOT NULL,
  `freight` double NOT NULL,
  `mode` varchar(20) NOT NULL,
  `pick_date` varchar(20) NOT NULL,
  `pick_time` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `book_date` date NOT NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_courier`
--

INSERT INTO `tbl_courier` (`cid`, `cons_no`, `ship_name`, `phone`, `s_add`, `rev_name`, `r_phone`, `r_add`, `type`, `weight`, `invice_no`, `qty`, `book_mode`, `freight`, `mode`, `pick_date`, `pick_time`, `status`, `comments`, `book_date`) VALUES
(1, ' OD330933457877325100', 'Prasant Behra', '9337128584', 's sd sdsd', 'Rizwan Ahmed', '020 88552', 'sd sd s', 'Parcel', 20, '252525', 12, 'TBB', 240, 'Road', '29/01/2024', '12', 'Completed', 'ds ds d', '2024-01-29'),
(2, 'QIWWGIQP', 'Asif khan', '020 253623', 'shani peth', 'munna bhai', '020 88552', 'asdas das d', 'Documents', 20, '252525', 12, 'TBB', 240, 'Train', '29/01/2024', '4', 'Delivered', 'Plz deliver it', '2024-01-29'),
(3, 'Q906F73L', 'Amol sarode', '9532653652', 'metha nagar, bhusawal', 'sunil pal', '8585425412', 'balliram peth', 'Documents', 12, '239098', 12, 'ToPay', 200, 'Air', '26/01/2013', '4', 'In Transit', 'Thanks', '2024-01-29'),
(4, '2THBV8UM', 'Farzana Sk', '9532652365', 'xzyz', 'Asif Khan', '9852451254', 'ABC', 'Parcel', 2, '23788', 4, 'Paid', 90, 'Road', '20/01/2024', '12', 'Delivered', 'Plz transit', '2024-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_officers`
--

CREATE TABLE IF NOT EXISTS `tbl_courier_officers` (
  `cid` int(10) NOT NULL auto_increment,
  `officer_name` varchar(40) NOT NULL,
  `off_pwd` varchar(40) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ph_no` varchar(12) NOT NULL,
  `office` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_courier_officers`
--

INSERT INTO `tbl_courier_officers` (`cid`, `officer_name`, `off_pwd`, `address`, `email`, `ph_no`, `office`, `reg_date`) VALUES
(1, 'vibek', 'vibek', 'mallick Complex, Jagamara', 'vibek@gmail.com', '7735764693', 'Fast Courier - Khandagiri', '2024-01-10 10:30:40'),
(2, 'sunil', 'sunil', 'khordha', 'sunilnayak@gmail.com', '6370769692', 'Fast Courier - khordha', '2024-01-10 10:35:10'),
(3, 'subhrajyoti', 'subhrajyoti', 'Mendhasala', 'subhrajyotipattanaik@gmail.com', '9337169935', 'Fast Courier - Mendhasala', '2024-01-10 10:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_track`
--

CREATE TABLE IF NOT EXISTS `tbl_courier_track` (
  `id` int(10) NOT NULL auto_increment,
  `cid` int(10) NOT NULL,
  `cons_no` varchar(20) NOT NULL,
  `current_city` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `bk_time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_courier_track`
--

INSERT INTO `tbl_courier_track` (`id`, `cid`, `cons_no`, `current_city`, `status`, `comments`, `bk_time`) VALUES
(1, 1, 'M22P7KHM', 'Fast Courier - Khandagiri', 'Delayed', 'Delay due to Heavy rain', '2024-01-25 18:30:40'),
(3, 1, 'M22P7KHM', 'Fast Courier - Khandagiri', 'Delayed', 'Delayed due to road block', '2024-01-20 16:30:40'),
(4, 4, '2THBV8UM', 'Fast Courier - khordha', 'Delayed', 'Due to rain', '2024-01-30 12:30:40'),
(5, 1, 'M22P7KHM', 'Fast Courier - Khandagiri', 'Completed', 'Completed', '2024-01-31 15:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offices`
--

CREATE TABLE IF NOT EXISTS `tbl_offices` (
  `id` int(10) NOT NULL auto_increment,
  `off_name` varchar(100) NOT NULL,
  `address` varchar(230) NOT NULL,
  `city` varchar(100) NOT NULL,
  `ph_no` varchar(20) NOT NULL,
  `office_time` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_offices`
--

INSERT INTO `tbl_offices` (`id`, `off_name`, `address`, `city`, `ph_no`, `office_time`, `contact_person`) VALUES
(1, 'Fast Courier - Khandagiri', 'Jagamara, Lane-10', 'Jagamara', '0674-3138734', '10.00 am - 9.00 pm', 'Vibek Jena'),
(2, 'Fast Courier - khordha', 'Jemadaye,Khordha', 'Khordha', '0674-6755316641', '10.00 am - 9.00 pm', 'Sunil Kumar Nayak'),
(3, 'Fast Courier - Mendhasala', 'Mendhasala', 'Khordha', '0674-3575855', '10.00 am - 9.00 pm', 'Subhrajyoti Pattanaik');
