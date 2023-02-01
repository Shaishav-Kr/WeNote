-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 01, 2023 at 01:47 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wenote`
--

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `mod_no` int DEFAULT NULL,
  `notes_link` text,
  `impques_file` text,
  `sid` int DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `siid` (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=2047 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`mid`, `mod_no`, `notes_link`, `impques_file`, `sid`) VALUES
(2000, 1, 'https://drive.google.com/file/d/101fFd5_iwv5XV9bNT2U2qv6eQbQsKu_f/view', 'https://drive.google.com/file/d/19fQeTqbQCjMFvqPfxm-Dti-oGKe55K_A/view', 1000),
(2001, 2, 'https://drive.google.com/file/d/1sxbxnWjidvGHcN6owRYuXScrCitj0c6s/view', 'https://drive.google.com/file/d/19fQeTqbQCjMFvqPfxm-Dti-oGKe55K_A/view', 1000),
(2002, 3, 'https://drive.google.com/file/d/1tC-p3sdC05pj-kQYPmrXIH4SY4CdLD0Z/view', 'https://drive.google.com/file/d/19fQeTqbQCjMFvqPfxm-Dti-oGKe55K_A/view', 1000),
(2003, 4, 'https://drive.google.com/file/d/1svvujulVE96kil86BdvYSKuE5vNoqYA7/view', 'https://drive.google.com/file/d/19fQeTqbQCjMFvqPfxm-Dti-oGKe55K_A/view', 1000),
(2004, 5, 'https://drive.google.com/file/d/1svvujulVE96kil86BdvYSKuE5vNoqYA7/view', 'https://drive.google.com/file/d/19fQeTqbQCjMFvqPfxm-Dti-oGKe55K_A/view', 1000),
(2005, 1, 'https://drive.google.com/file/d/1nVJKPfumuKYNl0McAjEJSy1lx6ksscYF/view', 'https://drive.google.com/file/d/1oOz5o9RLQVCZQuYGI_EbmyLeSi2itFn8/view', 1001),
(2006, 2, 'https://drive.google.com/file/d/1EdgRZ7ghRG84VZFQRXaEprQgkEXS_Wj2/view', 'https://drive.google.com/file/d/1oOz5o9RLQVCZQuYGI_EbmyLeSi2itFn8/view', 1001),
(2007, 3, 'https://drive.google.com/file/d/1agG0yEz06i4dMeNFTnNmHZmhuecWjJrX/view', 'https://drive.google.com/file/d/1oOz5o9RLQVCZQuYGI_EbmyLeSi2itFn8/view', 1001),
(2008, 4, 'https://drive.google.com/file/d/1tuRCgLlKKgCPGjN5G_CFEEkCFx4ev35Z/view', 'https://drive.google.com/file/d/1oOz5o9RLQVCZQuYGI_EbmyLeSi2itFn8/view', 1001),
(2009, 5, 'https://drive.google.com/file/d/1NkeCFEPRH8cJeP3ui9pKaOPB7jyc01K8/view', 'https://drive.google.com/file/d/1oOz5o9RLQVCZQuYGI_EbmyLeSi2itFn8/view', 1001),
(2010, 1, 'https://drive.google.com/file/d/177Jca_fKi6EDg4poH-DOBGXN15dmUm7k/view', 'https://drive.google.com/file/d/13vAoWP0Ubc4s4-wEdMrwwiXOBo1Ia5-2/view', 1002),
(2011, 2, 'https://drive.google.com/file/d/175CtvBb_B3EIYfMGfTFKQGnPMOrdELNI/view', 'https://drive.google.com/file/d/13vAoWP0Ubc4s4-wEdMrwwiXOBo1Ia5-2/view', 1002),
(2012, 3, 'https://drive.google.com/file/d/1Qm1Z95QWYzlw880wpNCaXgplCbs07s69/view', 'https://drive.google.com/file/d/13vAoWP0Ubc4s4-wEdMrwwiXOBo1Ia5-2/view', 1002),
(2013, 4, 'https://drive.google.com/file/d/1rlm1ZlFgCVs_JawZhzsKEVIzVfHqGLpO/view', 'https://drive.google.com/file/d/13vAoWP0Ubc4s4-wEdMrwwiXOBo1Ia5-2/view', 1002),
(2014, 5, 'https://drive.google.com/file/d/1CurqYvJgTDJXZcCDP_omprKhVuIWTxz9/view', 'https://drive.google.com/file/d/13vAoWP0Ubc4s4-wEdMrwwiXOBo1Ia5-2/view', 1002),
(2015, 1, 'https://drive.google.com/file/d/1JDW-yfXHxhBzRBe8vIfDL0ueRzcBstCg/view', 'https://drive.google.com/file/d/16MxEnNTrU1MD6rc6rcK8NXgtT6fC3_Id/view', 1003),
(2016, 2, 'https://drive.google.com/file/d/19w7iKBej3R16OG-B0jFOWj-VkybDy3o0/view', 'https://drive.google.com/file/d/1rkrkRg2KB44Oci4a5SPqOq32eYn8HcfJ/view', 1003),
(2017, 3, 'https://drive.google.com/file/d/1mEbDsCVnAHlRnbua3jVk2QZx1TTF8xvJ/view', 'https://drive.google.com/file/d/1rkrkRg2KB44Oci4a5SPqOq32eYn8HcfJ/view', 1003),
(2018, 4, 'https://drive.google.com/file/d/1SKeGQDzNzJepZycPmfK69q2lnb6G8AkY/view', 'https://drive.google.com/file/d/1_v5fcP4IC-X_-drm7I49PsipKFtSOFXu/view', 1003),
(2019, 5, 'https://drive.google.com/file/d/1LztYBNCahH98_Ffeipocxhxi9PEWlZ2N/view', 'https://drive.google.com/file/d/1_barBV6-X3N4v7hrtL1Y1ilHac5xtiCd/view', 1003),
(2020, 1, 'https://drive.google.com/file/d/1jKGidVZTCzzRuA_3-YIBkWZeluhcZson/view', 'https://drive.google.com/file/d/1IQsQHRnd1ty4oPTmikDJDFemIqfriYyE/view', 1004),
(2021, 2, 'https://drive.google.com/file/d/1n7rqDARQeO8JFSd25EvjgcuoKYoigJ19/view', 'https://drive.google.com/file/d/1IQsQHRnd1ty4oPTmikDJDFemIqfriYyE/view', 1004),
(2022, 3, 'https://drive.google.com/file/d/1nUI_h4CM8LT6kWWvW_hxNjOQjvZ-Jjb9/view', 'https://drive.google.com/file/d/1IQsQHRnd1ty4oPTmikDJDFemIqfriYyE/view', 1004),
(2023, 4, 'https://drive.google.com/file/d/1dDl8d3ejVBmd5TVl05hyYTeyb0ilVqrZ/view', 'https://drive.google.com/file/d/1IQsQHRnd1ty4oPTmikDJDFemIqfriYyE/view', 1004),
(2024, 5, 'https://drive.google.com/file/d/1mz-0yiHdeuilmaz-8D59_-I1xBpdoLL9/view', 'https://drive.google.com/file/d/1IQsQHRnd1ty4oPTmikDJDFemIqfriYyE/view', 1004),
(2025, 1, 'https://drive.google.com/file/d/1cGX5FcvWRxwgHnF0G5vSy0lWFfl-ayB4/view', 'https://drive.google.com/file/d/1KfNa0ntRqzs4GlemGwfQYjZvRXCjsZUF/view', 1005),
(2026, 2, 'https://drive.google.com/file/d/1Qe0RyyzRUl0WRGa_1LZKby8Y8suKZwHk/view', 'https://drive.google.com/file/d/1KfNa0ntRqzs4GlemGwfQYjZvRXCjsZUF/view', 1005),
(2027, 3, 'https://drive.google.com/file/d/1T-rC8VE8_BGdr3D1I9Wz6m2zjjVFCo5T/view', 'https://drive.google.com/file/d/1KfNa0ntRqzs4GlemGwfQYjZvRXCjsZUF/view', 1005),
(2028, 4, 'https://drive.google.com/file/d/1o-8FBYd1DmzuYjr173KxQNIoMOXScVmY/view', 'https://drive.google.com/file/d/1KfNa0ntRqzs4GlemGwfQYjZvRXCjsZUF/view', 1005),
(2029, 5, 'https://drive.google.com/file/d/1e0XUkBFmhFGt-dN35np-edDJ5CQrPr4L/view', 'https://drive.google.com/file/d/1KfNa0ntRqzs4GlemGwfQYjZvRXCjsZUF/view', 1005),
(2030, 1, 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 1006),
(2031, 2, 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 1006),
(2032, 3, 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 1006),
(2033, 4, 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 1006),
(2034, 5, 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 1006),
(2035, 1, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(2036, 2, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(2037, 3, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(2038, 4, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(2039, 5, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(2040, 1, 'https://drive.google.com/file/d/1EVA-8wzPckFnovq3m4j4hyinGwbdiKVR/view', 'https://drive.google.com/file/d/18L64VX_zaRC_QsH1mdkYfI61n083fgoc/view', 1008),
(2041, 2, 'https://drive.google.com/file/d/1EVA-8wzPckFnovq3m4j4hyinGwbdiKVR/view', 'https://drive.google.com/file/d/18L64VX_zaRC_QsH1mdkYfI61n083fgoc/view', 1008),
(2042, 3, 'https://drive.google.com/file/d/1EVA-8wzPckFnovq3m4j4hyinGwbdiKVR/view', 'https://drive.google.com/file/d/18L64VX_zaRC_QsH1mdkYfI61n083fgoc/view', 1008),
(2043, 4, 'https://drive.google.com/file/d/1EVA-8wzPckFnovq3m4j4hyinGwbdiKVR/view', 'https://drive.google.com/file/d/18L64VX_zaRC_QsH1mdkYfI61n083fgoc/view', 1008),
(2044, 5, 'https://drive.google.com/file/d/1EVA-8wzPckFnovq3m4j4hyinGwbdiKVR/view', 'https://drive.google.com/file/d/18L64VX_zaRC_QsH1mdkYfI61n083fgoc/view', 1008),
(2046, 2, 'www.google.com', 'www.google.com', 1008);

-- --------------------------------------------------------

--
-- Table structure for table `mod_vid`
--

DROP TABLE IF EXISTS `mod_vid`;
CREATE TABLE IF NOT EXISTS `mod_vid` (
  `mid` int DEFAULT NULL,
  `vid` int DEFAULT NULL,
  `sid` int DEFAULT NULL,
  `mod_no` int DEFAULT NULL,
  KEY `fk9` (`sid`),
  KEY `miiid` (`mid`),
  KEY `viiid` (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mod_vid`
--

INSERT INTO `mod_vid` (`mid`, `vid`, `sid`, `mod_no`) VALUES
(2000, 3000, 1000, 1),
(2001, 3001, 1000, 2),
(2002, 3002, 1000, 3),
(2003, 3003, 1000, 4),
(2004, 3004, 1000, 5),
(2005, 3005, 1001, 1),
(2006, 3006, 1001, 2),
(2007, 3007, 1001, 3),
(2008, 3008, 1001, 4),
(2009, 3009, 1001, 5);

-- --------------------------------------------------------

--
-- Table structure for table `pyq`
--

DROP TABLE IF EXISTS `pyq`;
CREATE TABLE IF NOT EXISTS `pyq` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `month` varchar(10) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `test_paper` text,
  `sid` int DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `siiid` (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=4001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pyq`
--

INSERT INTO `pyq` (`pid`, `month`, `year`, `test_paper`, `sid`) VALUES
(3000, 'August', 2022, 'https://www.vturesource.com/vtu/7687714598/Management,-Entrepreneurship-for-IT-idustry/18CS51/Aug-2022', 1000),
(3001, 'March', 2022, 'https://www.vturesource.com/vtu/9863638042/Computer-Networks-and-Security/18CS52/Mar-2022', 1001),
(3002, 'August', 2022, 'https://www.vturesource.com/vtu/4471925280/Database-Management-System/18CS53/Aug-2022', 1002),
(3003, 'August', 2022, 'https://www.vturesource.com/vtu/4471925280/Database-Management-System/18CS53/Aug-2022', 1003),
(3004, 'August', 2022, 'https://www.vturesource.com/vtu/2098308673/Automata-theory-and-Computability/18CS54/Aug-2022', 1004),
(3005, 'March', 2022, 'https://www.vturesource.com/vtu/7859871668/Unix-Programming/18CS56/Mar-2022', 1005),
(3006, 'March', 2022, 'https://www.vturesource.com/vtu/7859871668/Unix-Programming/18CS56/Mar-2022', 1006),
(3007, 'August', 2022, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(3008, 'March', 2022, 'https://www.vturesource.com/vtu/5223201509/Environmental-Studies/18CIV59/Mar-2022', 1008);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `sub_code` varchar(7) DEFAULT NULL,
  `scheme` varchar(4) NOT NULL,
  `study_hours` int DEFAULT (40),
  `marks_max` int DEFAULT (100),
  `uid` int DEFAULT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sub_code` (`sub_code`),
  KEY `uiid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `sub_code`, `scheme`, `study_hours`, `marks_max`, `uid`) VALUES
(1000, '18cs51', '2018', 40, 100, 2),
(1001, '18cs52', '2018', 40, 100, 2),
(1002, '18cs53', '2018', 40, 100, 2),
(1003, '18cs54', '2018', 40, 100, 2),
(1004, '18cs55', '2018', 40, 100, 2),
(1005, '18cs56', '2018', 40, 100, 2),
(1006, '18csl57', '2018', 40, 100, 2),
(1007, '18csl58', '2018', 40, 100, 2),
(1008, '18civ59', '2018', 40, 100, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `username`, `fname`, `lname`, `email`, `dob`, `phone`, `password`) VALUES
(1, 'abcde', 'abcd', 'abcd', 'abcd@gmail.com', '2023-01-12', '5421365985', 'abcd'),
(2, 'shaishav', 'shaishav', 'shaishav', 'shaishavpatna@gmail.com', '2000-04-29', '9801094555', 'shaishav'),
(3, 'monu', 'monu', 'kumar', 'monu@gmail.com', '1999-09-08', '4637486948', 'monu'),
(4, 'sonu', 'sonu', 'chotala', 'sonu@gmail.com', '2002-02-05', '9801094555', 'sonu'),
(5, 'golu', 'golu', 'molu', 'golu@gmail.com', '2003-02-13', '9801094555', 'golu'),
(6, 'pappu', 'pappu', 'singhania', 'pappu@gmail.com', '1995-07-29', '9801094555', 'pappu'),
(7, 'ramu', 'ramu', 'domar', 'ramu@gmail.com', '1996-11-10', '9801094555', 'ramu'),
(8, 'rakesh', 'rakesh', 'khuranna', 'rakesh@gmail.com', '1999-05-21', '997141715', 'rakesh'),
(10, 'satwik', 'satwik', 'patil', 'satwik@gmail.com', '2001-12-25', '9741402740', 'satwik'),
(12, 'ranjana', 'ranjana', 'saye', 'ranjana@gmail.com', '2002-04-27', '7687564534', 'ranjana'),
(14, 'aarush', 'arushaa', 'verma', 'aarush@gmail.com', '2002-06-05', '9568745123', 'aarush'),
(15, 'bhavik', 'bhavik', 'bardiaa', 'bhavik@gmail.com', '2001-10-17', '9875461235', 'bhavik');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `vid` int NOT NULL AUTO_INCREMENT,
  `vid_name` varchar(200) DEFAULT NULL,
  `vid_type` varchar(50) DEFAULT NULL,
  `vid_link` text,
  `vid_length` int DEFAULT NULL,
  `sid` int DEFAULT NULL,
  `mod_no` int DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `fk1` (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=3018 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`vid`, `vid_name`, `vid_type`, `vid_link`, `vid_length`, `sid`, `mod_no`) VALUES
(3001, 'VTU ME (18CS51) MANAGEMENT AND ENTREPRENEURSHIP [DIRECTING] (M2 L1)', 'lecture', 'https://www.youtube.com/watch?v=uXYH7iIogYY&list=PLon7I2JOCP9UJ7Ow-4KyUWgXONs0LThRF&index=8', 13, 1000, 2),
(3002, 'VTU ME (18CS51) MANAGEMENT & ENTREPRENEURSHIP [ENTREPRENEUR- FUNCTIONS & CHARACTERISTICS] (M3 L1)', 'lecture', 'https://www.youtube.com/watch?v=ij_nnyuvEec&list=PLon7I2JOCP9UJ7Ow-4KyUWgXONs0LThRF&index=15', 19, 1000, 3),
(3003, 'VTU ME (18CS51) MANAGEMENT AND ENTREPRENEURSHIP [PROJECT MANAGEMENT] (M4 L1)', 'lecture', 'https://www.youtube.com/watch?v=Q-cOc4pTK9I&list=PLon7I2JOCP9UJ7Ow-4KyUWgXONs0LThRF&index=20', 19, 1000, 4),
(3004, 'VTU ME (18CS51) MANAGEMENT AND ENTREPRENEURSHIP FOR IT INDUSTRY [MSE/SSI] (M5 L1)', 'lecture', 'https://www.youtube.com/watch?v=DGmA1Z6TfeY&list=PLon7I2JOCP9UJ7Ow-4KyUWgXONs0LThRF&index=24', 24, 1000, 5),
(3005, 'VTU COMPUTER NETWORKS AND SECURITY(18CS52)[PRINCIPLES OF NETWORK APPLICATIONS](M1 L1)', 'lecture', 'https://www.youtube.com/watch?v=iYaykov_X4I&list=PLon7I2JOCP9XY1blHcRRX54UkZB4zjuiU&index=3', 25, 1001, 1),
(3006, 'VTU COMPUTER NETWORKS & SECURITY (18CS52) [Transport Layer - Overview] (M2 L1)', 'lecture', 'https://www.youtube.com/watch?v=RGlerBYUlDM&list=PLon7I2JOCP9XY1blHcRRX54UkZB4zjuiU&index=21', 19, 1001, 2),
(3007, 'VTU COMPUTER NETWORKS AND SECURITY(18CS52)[Inside Router](M3 L1)', 'lecture', 'https://www.youtube.com/watch?v=Ja-MF1_W9rk&list=PLon7I2JOCP9XY1blHcRRX54UkZB4zjuiU&index=45', 22, 1001, 3),
(3008, 'VTU COMPUTER NETWORKS AND SECURITY (18CS52) [Network Security : Overview] (M4 L1)', 'lecture', 'https://www.youtube.com/watch?v=yd069dv0Lkc&list=PLon7I2JOCP9XY1blHcRRX54UkZB4zjuiU&index=68', 20, 1001, 4),
(3009, 'VTU CNS(18CS52)Multimedia Networking - Properties of Video/Audio](M5 L1)', 'lecture', 'https://www.youtube.com/watch?v=026NxTmbAtM&list=PLon7I2JOCP9XY1blHcRRX54UkZB4zjuiU&index=58', 34, 1001, 5),
(3017, 'VTU ME (18CS51) NATURE,CHARACTERSITICS AND FUNCTIONAL AREAS OF MANAGEMENT (M1 L1)', 'lecture', 'https://www.youtube.com/watch?v=5bROam5Epy4&list=PLon7I2JOCP9UJ7Ow-4KyUWgXONs0LThRF&index=1', 31, 1000, 1),
(3015, 'VTU DBMS (18CS53) DATABASE MANAGEMENT SYSTEM[DATABASES AND DATABASE USERS] (M1 L1)', 'lecture', 'https://www.youtube.com/watch?v=lPmMepN27VI&list=PLon7I2JOCP9VanxHVv1YyoRg98PiL7ZWc&index=1', 23, 1002, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
