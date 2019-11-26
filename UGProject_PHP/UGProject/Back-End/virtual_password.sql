-- phpMyAdmin SQL Dump
-- version 2.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 10, 2013 at 09:32 AM
-- Server version: 5.0.45
-- PHP Version: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `virtual_password`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_det`
--

CREATE TABLE `account_det` (
  `acc_id` int(11) NOT NULL auto_increment,
  `username` varchar(100) collate latin1_general_ci NOT NULL,
  `acc_no` int(11) NOT NULL,
  `acc_pinno` int(11) NOT NULL,
  PRIMARY KEY  (`acc_id`),
  UNIQUE KEY `acc_no` (`acc_no`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `account_det`
--

INSERT INTO `account_det` (`acc_id`, `username`, `acc_no`, `acc_pinno`) VALUES
(1, 'alex', 1111, 1111),
(2, 'vijay', 2222, 2222),
(3, 'mahendran', 8888, 8888);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `dep_id` int(11) NOT NULL auto_increment,
  `username` varchar(100) collate latin1_general_ci NOT NULL,
  `dep_accno` int(11) NOT NULL,
  `dep_pinno` int(11) NOT NULL,
  `dep_amt` int(11) NOT NULL,
  PRIMARY KEY  (`dep_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`dep_id`, `username`, `dep_accno`, `dep_pinno`, `dep_amt`) VALUES
(1, 'alex', 1111, 1111, 12000),
(2, 'vijay', 2222, 2222, 20000),
(3, 'mahendran', 8888, 8888, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `passport`
--

CREATE TABLE `passport` (
  `id` int(10) NOT NULL auto_increment,
  `uid` varchar(100) NOT NULL,
  `dist` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `present_addr` varchar(500) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `permanent_addr` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `marital` varchar(100) NOT NULL,
  `father` varchar(100) NOT NULL,
  `mother` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `spouse` varchar(100) NOT NULL,
  `national` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `eye` varchar(100) NOT NULL,
  `hair` varchar(100) NOT NULL,
  `mark` varchar(100) NOT NULL,
  `mark2` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `amounts` varchar(100) NOT NULL,
  `prev_apply` varchar(100) NOT NULL,
  `ratno` varchar(50) NOT NULL,
  `ratimg` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dispatch` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `passport`
--

INSERT INTO `passport` (`id`, `uid`, `dist`, `fname`, `lname`, `gender`, `dob`, `qualification`, `present_addr`, `mobile`, `permanent_addr`, `email`, `marital`, `father`, `mother`, `profession`, `spouse`, `national`, `height`, `weight`, `eye`, `hair`, `mark`, `mark2`, `city`, `state`, `pin`, `photo`, `cheque`, `bank`, `branch`, `amounts`, `prev_apply`, `ratno`, `ratimg`, `status`, `dispatch`) VALUES
(1, 'kavi', 'coimbotore', 'kavi', 'R', 'Male', '05-03-1991', 'BE', 'cbe', '9994482552', 'cbe', 'mahe@gmail.com', 'Un-Married', 'ramasamy', 'lakshmi', 'Programmer', '', 'India', '6', '70', 'blue', 'black', 'mole in right hand', 'mole in left hand', 'Coimbatore', 'Tamil Nadu', '641027', 'power-quotes-of-success-screenshot.jpg', '2564', 'iob', 'ganapathy', '1500', 'No', '', '', 'dispatch', ''),
(2, 'cena', 'coimbotore', 'john', 'cena', 'Male', '07-03-1990', 'BE', 'cbe', '9952355052', 'cbe', 'johncena@gmail.com', 'Un-Married', 'cena', 'Marry', 'student', '', 'India', '6', '70', 'blue', 'black', 'mole in right hand', 'mole in left hand', 'Coimbatore', 'Tamil Nadu', '641027', 'Water lilies.jpg', '2564', 'iob', 'ganapathy', '1500', 'No', '', '', 'dispatch', ''),
(3, 'mahe', 'coimbotore', 'mahe', 'R', 'Male', '17-03-2013', 'BE', 'cbe', '9994482552', 'cbe', 'mahendran.ksgf@gmail.com', 'Un-Married', 'ramasamy', 'lakshmi', 'programmer', '', 'India', '6', '5', 'black', 'black', 'mole in right hand', 'mole in left hand', 'Cochin', 'Haryana', '64127', 'banner.jpg', '6589', 'IOB', 'ganapathy', '1500', 'Yes', '6589', 'banner.jpg', 'dispatch', ''),
(4, 'raj', 'coimbotore', 'raj', 'R', 'Male', '11-04-1991', 'BE', 'cbe', '9952355052', 'cbe', 'rajkumar@gmail.com', '', '', '', '', '', 'â€CIâ€', '6.7', '55', 'blue', 'black', 'mole in right hand', 'mole in left hand', 'Coimbatore', 'Tamil Nadu', '641006', 'pic.png', '6589', 'iob', 'ganapathy', '1500', 'No', '6589', 'win8.jpeg', '', ''),
(5, 'sruthi', 'coimbotore', 'mahe', 'R', 'Male', '11-04-1991', 'BE', 'cbe', '9994482552', 'cbe', 'sruthi@gmail.com', 'Un-Married', 'kamalahashan', 'sug', 'Actor', '', 'India', '5.7', '65', 'blue', 'black', 'mole in right hand', 'mole in left hand', 'Coimbatore', 'Tamil Nadu', '641027', 'delhi.jpg', '6589', 'IOB', 'ganapathy', '1500', 'No', '6589', 'cate.jpg', 'dispatch', '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(5) NOT NULL auto_increment,
  `uid` varchar(100) NOT NULL,
  `mobno` varchar(100) NOT NULL,
  `start_limit` varchar(100) NOT NULL,
  `end_limit` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `common` varchar(100) NOT NULL,
  `func` varchar(100) NOT NULL,
  `a` varchar(10) NOT NULL,
  `random_num` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `uid`, `mobno`, `start_limit`, `end_limit`, `pass`, `common`, `func`, `a`, `random_num`) VALUES
(1, 'mahe', '9994482552', '1', '50', '1234', '1', '($a*$x)+($c*$y)', '1', '8'),
(2, 'raj', '9952355052', '1', '10', '1234', '3', '($a*$x)+($c*$y)', '1', '8'),
(3, 'sruthi', '9994482552', '1', '10', '1234', '3', '($a*$x)+($c*$y)', '1', '4');
