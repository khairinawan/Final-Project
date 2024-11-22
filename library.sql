-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2024 at 07:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'WAN NUR KHAIRINA BINTI WAN MUDA', 'admin@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-11-18 08:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(16, 'Lynn Painter', '2024-11-18 17:53:59', NULL),
(17, 'Doug Lowe', '2024-11-18 18:05:22', NULL),
(18, 'HOWARD E. POSTON', '2024-11-18 18:10:03', NULL),
(19, 'Liana Cincotti', '2024-11-18 18:54:03', NULL),
(20, 'Joel Murach', '2024-11-18 18:59:03', NULL),
(21, 'Jeffrey Chilberto', '2024-11-18 19:13:30', NULL),
(22, ' Vijay Arora', '2024-11-18 19:15:08', NULL),
(23, 'Marissa Fendi', '2024-11-19 07:12:54', NULL),
(24, 'Charles W.L. Hill', '2024-11-19 07:26:24', NULL),
(25, ' Schwab, V. E.', '2024-11-21 07:34:58', NULL),
(26, 'Raffera', '2024-11-21 17:31:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(3, 'Physics Redefined: Beginning From The Beginning', 6, 22, '1111', 107.95, 'dd8267b57e0e4feee5911cb1e1a03a79.jpg', 1, '2024-01-30 07:23:03', '2024-11-19 07:15:34'),
(5, 'Murach\'s MySQL', 5, 20, '9350237695', 320.00, '5939d64655b4d2ae443830d73abc35b6.jpg', 0, '2024-01-30 07:23:03', '2024-11-18 19:42:35'),
(6, 'WordPress for Beginners 2022: A Visual Step-by-Step Guide to Mastering WordPress', 5, 24, 'B019MO3WCM', 100.00, '144ab706ba1cb9f6c23fd6ae9c0502b3.jpg', NULL, '2024-01-30 07:23:03', '2024-11-21 17:33:55'),
(7, 'WordPress Mastery Guide:', 5, 11, 'B09NKWH7NP', 53.00, '90083a56014186e88ffca10286172e64.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(8, 'Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not', 8, 17, 'B07C7M8SX9', 51.50, '52411b2bd2a6b2e0df3eb10943a5b640.jpg', NULL, '2024-01-30 07:23:03', '2024-11-21 17:34:08'),
(9, 'The Girl Who Drank the Moon', 8, 25, '1848126476', 29.00, 'f05cd198ac9335245e1fdffa793207a7.jpg', NULL, '2024-01-30 07:23:03', '2024-11-21 17:34:22'),
(10, 'C++: The Complete Reference, 4th Edition', 9, 22, '007053246X', 142.00, '36af5de9012bf8c804e499dc3c3b33a5.jpg', 0, '2024-01-30 07:23:03', '2024-11-21 17:32:56'),
(11, 'ASP.NET Core 5 for Beginners', 9, 11, 'GBSJ36344563', 252.11, 'b1b6788016bbfab12cfd2722604badc9.jpg', 0, '2024-01-30 07:23:03', '2024-11-18 19:12:22'),
(12, 'Betting on You', 10, 16, '9781665921237', 45.00, 'a5f5489e1a13b855283e803fc19e0ed7.jpg', 0, '2024-11-18 17:58:59', '2024-11-19 06:44:17'),
(13, 'Better Than the Movies', 10, 16, '9781534467637', 39.90, '99757f092752c3d71dcdb29162502416jpeg', NULL, '2024-11-18 18:01:38', NULL),
(14, 'Java All-in-One For Dummies, 7th Edition', 9, 17, '9781119986645', 161.78, '218b65740ccb94323399ae464ef75e00jpeg', 1, '2024-11-18 18:07:46', '2024-11-19 07:10:04'),
(15, 'Python for Cybersecurity: Using Python for Cyber Offense and Defense', 9, 18, '9781119850649', 134.77, '2407938e7c3451c5bc9fffe878c8d32c.jpg', NULL, '2024-11-18 18:13:46', NULL),
(16, 'Blockchain Security From the Bottom Up', 5, 18, '9781119896296', 134.77, '92b37880c594824ffb6615a1eadb91e9.png', NULL, '2024-11-18 18:31:21', NULL),
(17, 'Nothing Like The Movies', 10, 16, '9781398536425', 65.90, '28cd94deda84b0c678116d233d3c2538.jpg', NULL, '2024-11-18 18:43:58', NULL),
(18, 'The Do-Over', 10, 16, '9781534478879', 72.50, 'ac5636b2d353cae1bbd65ee6d08c5b7a.jpg', NULL, '2024-11-18 18:46:09', NULL),
(19, 'Picking Daisies on Sundays', 10, 19, '9798396490833', 42.00, 'e6b4841662ddcae0d7678590d82c6e14jpeg', NULL, '2024-11-18 18:55:53', NULL),
(20, 'Songs Of The Runaway Heart', 10, 23, '9789673698868', 35.10, 'af1ffab60456c5eb95342cbf119997e2jpeg', 1, '2024-11-19 07:14:09', '2024-11-19 07:14:40'),
(21, 'International Business: Competing in the Global Marketplace', 11, 24, '9780073102559', 363.38, '0e6bf26f3bc44e19547f0dc55a657b2bjpeg', NULL, '2024-11-19 07:28:05', NULL),
(22, 'The Invisible Life of Addie LaRue', 13, 25, '9781789095593', 79.90, '725007875f7a70f065b91ffa49ef1fe9jpeg', 0, '2024-11-21 07:35:45', '2024-11-21 07:37:22'),
(23, 'Lyrics & You', 10, 23, '9786299927112', 35.00, '0c29278eada80f015d418d0519e74c97.jpg', 0, '2024-11-21 17:48:49', '2024-11-21 17:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(5, 'Technology', 1, '2024-01-31 07:23:03', '2024-11-21 17:21:17'),
(6, 'Science', 1, '2024-01-31 07:23:03', '2024-02-04 06:33:51'),
(7, 'Management', 1, '2024-01-31 07:23:03', '2024-02-04 06:33:51'),
(8, 'General', 1, '2024-01-31 07:23:03', '2024-02-04 06:33:51'),
(9, 'Programming', 1, '2024-01-31 07:23:03', '2024-02-04 06:33:51'),
(10, 'Romance', 1, '2024-11-18 16:49:00', '0000-00-00 00:00:00'),
(11, 'Business', 1, '2024-11-19 05:34:08', '0000-00-00 00:00:00'),
(13, 'Science Fiction', 1, '2024-11-21 07:33:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(14, 12, 'SID018', '2024-11-19 06:24:51', '2024-11-19 06:44:17', 1, 0),
(15, 14, 'SID011', '2024-11-19 07:10:04', NULL, NULL, NULL),
(16, 20, 'SID027', '2024-11-19 07:14:40', NULL, NULL, NULL),
(17, 3, 'SID012', '2024-11-19 07:15:34', NULL, NULL, NULL),
(18, 22, 'SID011', '2024-11-21 07:36:47', '2024-11-21 07:37:22', 1, 0),
(19, 23, 'SID021', '2024-11-21 17:55:50', '2024-11-21 17:58:55', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(11, 'SID011', 'NUR SARAH HARITHAH BINTI SHAMSUL ADZMIR ', 'sarahharithah852@gmail.com', '0149993312', 'd65a7b27644c675d7a35312a3eec2019', 1, '2024-11-18 08:58:28', '2024-11-21 19:08:34'),
(12, 'SID012', 'NUR \'AINA BINTI ZURIAMI', 'ainazuriamii@gmail.com', '0116568325', 'c79a339dc782fddfb3adf1680c04acfa', 1, '2024-11-18 14:16:26', '2024-11-19 07:18:23'),
(13, 'SID013', 'ALEEYA MAISARAH BT RAHMAT ', 'apple923aazz@gmail.com', '0177755985', '607fba5d2984fdb65bbc05adb2c2f551', 1, '2024-11-18 14:19:03', NULL),
(14, 'SID014', 'WAN MUHAMMAD DAFFA ANAQI ', 'daffaanaqi13@gmail.com', '0167066765', 'd2cd117432f74956ce37d97580527a96', 1, '2024-11-18 14:48:00', NULL),
(16, 'SID018', 'NIK ATHIRAH BATRISYIA BINTI NIK MAHYUDIN ', 'athirahbatrisyiaaa@gmail.com', '0132183202', '2e17a3c686ee94f8541adfc39c2aefcb', 1, '2024-11-18 14:55:42', NULL),
(17, 'SID019', 'NURIN IDAYU HASFIZUL', 'nurinhasfizul77@gmail.com', '0139813515', 'ea70bbb9e412b35416f03dcfda112622', 1, '2024-11-18 14:58:15', NULL),
(19, 'SID021', 'NUR SAFIYYA BINTI MOHD NAWI', 'safiyyanawi02@gmail.com', '01111853193', '74484d361c392a9f9b7dd73382e82998', 1, '2024-11-18 15:03:48', NULL),
(20, 'SID022', 'NUR FARISYA BINTI GHAZALI', 'farisyaghzl26@gmail.com', '01140660713', '1d9f23880e711eca521c2082b4d60440', 1, '2024-11-18 15:07:54', NULL),
(21, 'SID023', 'SITI AISYAH BINTI GHAZALI', 'aisyah2003@gmail.com', '01125547911', 'f0fe844c6d6a9ab6191a9a96e96e0502', 1, '2024-11-18 15:09:24', NULL),
(22, 'SID024', 'NUR IZZATI BINTI MOHD RASDI', 'izzatirasdi@gmail.com', '0132743240', '2db0338d2590685efde280923ac6e81a', 1, '2024-11-18 15:10:49', NULL),
(23, 'SID025', 'MUHAMMAD SOLHAN BIN AHMAD ', 'solhanahmad99@gmail.com', '0143304284', '640382e57e0c7f07f14a8d878595b608', 1, '2024-11-18 15:17:48', '2024-11-21 07:38:29'),
(24, 'SID026', 'MUNEERAH RAIESAH BINTI RUDY HIDAYAT', 'munraiesah@gmail.com', '0132064997', 'fc9241c2809f44a736c0c057b0994cb4', 1, '2024-11-18 15:19:14', NULL),
(25, 'SID027', 'WAN AHMAD HAIKAL RIDZUAN BIN MOHD KHAMISAN', 'ahmdhaikalrzuan@gmail.com', '0168923771', 'aa35acce432c5a5e935597bf281d96ce', 1, '2024-11-18 15:27:11', NULL),
(26, 'SID028', 'PUTERI NUR ATHIRAH FARZANA BINTI KAMARUZAMAN', 'athirahfarzana@gmail.com', '0128769081', '1f8190cc08add06cb967380eb0e77bd4', 1, '2024-11-21 07:30:07', '2024-11-21 07:32:02'),
(27, 'SID029', 'AINA SYAFEEQA BINTI MOHD AZLI', 'ainasyfeqa@gmail.com', '0179005665', '6595ff89d7ad6dd9b271c88d0206c440', 1, '2024-11-21 18:45:35', '2024-11-21 18:49:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

