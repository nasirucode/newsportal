-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 08:31 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE IF NOT EXISTS `adminlog` (
`id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `userip` binary(12) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlog`
--

INSERT INTO `adminlog` (`id`, `AdminUserName`, `userip`, `loginTime`, `logout`, `status`) VALUES
(36, 'portaladmin1', 0x3a3a31000000000000000000, '2020-04-10 23:35:56', NULL, 1),
(37, 'portaladmin1', 0x3a3a31000000000000000000, '2020-04-10 23:37:11', '11-04-2020 01:37:11 AM', 1),
(38, 'portalceo', 0x3a3a31000000000000000000, '2020-04-16 15:36:25', NULL, 1),
(39, 'portaladmin1', 0x3a3a31000000000000000000, '2020-04-22 16:12:01', NULL, 1),
(40, 'portaladmin1', 0x3a3a31000000000000000000, '2020-04-28 11:45:49', NULL, 1),
(41, 'portaladmin1', 0x3a3a31000000000000000000, '2020-05-06 18:39:31', NULL, 1),
(42, 'portaladmin1', 0x3a3a31000000000000000000, '2020-05-06 19:18:53', NULL, 1),
(43, 'portaladmin1', 0x3a3a31000000000000000000, '2020-05-06 19:34:20', NULL, 1),
(44, 'portaladmin1', 0x3a3a31000000000000000000, '2020-05-08 20:33:46', NULL, 1),
(45, 'portaladmin1', 0x3a3a31000000000000000000, '2020-05-09 20:48:41', NULL, 1),
(46, 'portaladmin1', 0x3a3a31000000000000000000, '2020-05-09 20:57:40', '09-05-2020 10:57:40 PM', 1),
(47, 'portaladmin1', 0x3a3a31000000000000000000, '2020-05-09 21:04:23', NULL, 1),
(48, 'portalceo', 0x3a3a31000000000000000000, '2020-05-09 21:06:07', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE IF NOT EXISTS `tbladmin` (
`id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(24, 'portalceo', '77e73f3a185e16d1f08ca5e057710b9d', 'portalceo@gmail.com', 1, '2020-04-10 21:23:13', '0000-00-00 00:00:00'),
(25, 'portaladmin1', 'df53ca268240ca76670c8566ee54568a', 'akingbolahan12@gmail.com', 1, '2020-04-10 21:28:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE IF NOT EXISTS `tblcategory` (
`id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Sports', 'Related to sports news in nigeria and oversea', '2018-06-06 10:35:09', '2018-06-14 11:11:55', 1),
(5, 'Entertainment', 'Entertainment related  News', '2018-06-14 05:32:58', '2018-06-14 05:33:41', 1),
(6, 'Politic', ' related to Politics', '2018-06-22 15:46:09', '0000-00-00 00:00:00', 1),
(7, 'Business', 'Business news', '2018-06-22 15:46:22', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE IF NOT EXISTS `tblcomments` (
`id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(4, '12', 'akinkunmi', 'akingbolahan12@gmail.com', 'i love this post', '2020-04-09 13:57:39', 1),
(5, '12', 'gbolahan', 'gboutme17@yahoo.com', 'dis post is interesting', '2020-04-10 00:07:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE IF NOT EXISTS `tblpages` (
`id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color="#7b8898" face="Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif"><span style="font-size: 16px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2018-06-30 18:01:03', '2020-04-04 17:04:52'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b><span style="background-color: rgb(247, 247, 247);"><font color="#003163">Address :&nbsp;</font></span> </b>Lagos Nigeria</p><p><b><font color="#003163">Phone Number :</font> </b>+234 8142777129</p><p><b><font color="#003163">Email -id : </font></b>akingbolahan12@gmail.com</p><p><b><font color="#003163">Facebook :</font> </b>Akinkunmigbolahan/facebook.com</p>', '2018-06-30 18:01:36', '2020-05-08 21:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE IF NOT EXISTS `tblposts` (
`id` int(11) NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(7, 'Jejeniwa peter ruled out of England T20I series due to injury', 3, 5, '<p>Jejeniwa peter ruled out of England T20I series due to injury&nbsp;Jejeniwa peter ruled out of England T20I series due to injury&nbsp;Jejeniwa peter ruled out of England T20I series due to injury&nbsp;Jejeniwa peter ruled out of England T20I series due to injury&nbsp;Jejeniwa peter ruled out of England T20I series due to injury<br></p>', '2020-02-08 18:49:23', '2020-05-09 22:00:15', 1, 'Jejeniwa-peter-ruled-out-of-England-T20I-series-due-to-injury', '6d08a26c92cf30db69197a1fb7230626.jpg'),
(10, 'Oil rig in Nigeria', 7, 9, '<font face="Comic Sans MS">Oil Rig in Nigeria&nbsp;Oil rig in Nigeria&nbsp;Oil rig in Nigeria&nbsp;Oil rig in Nigeria</font>', '2020-03-30 19:08:56', '2020-05-08 21:56:42', 1, 'Oil-rig-in-Nigeria', '505e59c459d38ce4e740e3c9f5c6caf7.jpg'),
(11, 'UNs Jean Pierre Lacroix thanks Nigeria for contribution to peacekeeping', 6, 8, '<p>UNs Jean Pierre Lacroix thanks Nigeria for contribution to peacekeeping UNs Jean Pierre Lacroix thanks Nigeria for contribution to peacekeeping UNs Jean Pierre Lacroix thanks Nigeria for contribution to peacekeeping UNs Jean Pierre Lacroix thanks Nigeria for contribution to peacekeeping UNs Jean Pierre Lacroix thanks Nigeria for contribution to peacekeeping UNs Jean Pierre Lacroix thanks Nigeria for contribution to peacekeeping UNs Jean Pierre Lacroix thanks Nigeria for contribution to peacekeeping UNs Jean Pierre Lacroix thanks Nigeria for contribution to peacekeeping UNs Jean Pierre Lacroix thanks Nigeria for contribution to peacekeeping UNs Jean Pierre Lacroix thanks Nigeria for contribution to peacekeeping&nbsp;<br></p>', '2020-03-30 19:10:36', '2020-05-08 21:57:37', 1, 'UNs-Jean-Pierre-Lacroix-thanks-Nigeria-for-contribution-to-peacekeeping', '27095ab35ac9b89abb8f32ad3adef56a.jpg'),
(12, 'gbolahan holds meeting with NE states leaders in Lagos', 6, 7, '<p><span style="color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;">Nigerian president Amit Shah today held meetings with his party leaders who are in-charge of 11 Lok Sabha seats spread across seven northeast states as part of a drive to ensure that it wins the maximum number of these constituencies in the general election next year.</span><br style="box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;"><br style="box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;"><webviewcontentdata style="box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;">Nasiru held separate meetings with the NE states, the partys media head jejeniwa said.<br style="box-sizing: inherit;"><br style="box-sizing: inherit;"></webviewcontentdata><br></p>', '2020-03-30 19:11:44', '2020-05-08 21:58:14', 1, 'gbolahan-holds-meeting-with-NE-states-leaders-in-Lagos', '7fdc1a630c238af0815181f9faa190f5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE IF NOT EXISTS `tblsubcategory` (
`SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2018-06-22 15:45:38', '0000-00-00 00:00:00', 1),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2018-06-30 09:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Football', 'Football', '2018-06-30 09:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Television', 'TeleVision', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'National', 'National', '2018-06-30 19:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'International', 'International', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'Nigeria', 'Nigeria', '2018-06-30 19:08:42', '0000-00-00 00:00:00', 1),
(10, 3, 'football', 'premier-league', '2020-05-09 21:59:21', NULL, 1),
(11, 3, 'football', 'premier-league', '2020-05-09 21:59:22', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlog`
--
ALTER TABLE `adminlog`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
 ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlog`
--
ALTER TABLE `adminlog`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
