-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.35 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for hospital_db
CREATE DATABASE IF NOT EXISTS `hospital_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital_db`;

-- Dumping structure for table hospital_db.bill
CREATE TABLE IF NOT EXISTS `bill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `patient_id` bigint DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo52kupo3wrgtc89i66tsdhqop` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hospital_db.bill: ~0 rows (approximately)

-- Dumping structure for table hospital_db.feedback
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hospital_db.feedback: ~9 rows (approximately)
INSERT INTO `feedback` (`id`, `staff_id`, `department`, `email`, `title`, `content`) VALUES
	(1, '324235', 'TA', 'ta@email.com', 'TAA', 'TAAAAAA'),
	(2, '324235', 'TA', 'ta@email.com', 'TA2', 'TAAAAA2'),
	(3, '324235', 'TA', 'ta@email.com', 'TA', 'TAA3'),
	(4, '324235', 'TA', 'ta@email.com', 'the same ui', 'the same ui'),
	(5, '324235', 'TA', 'ta@email.com', 'taaaa', 'taaaaaaaaaaaaaaaaaaaaaaa3'),
	(6, '324235', 'TA', 'ta@email.com', 'h6', 'h6'),
	(7, '324235', 'TA', 'ta@email.com', 'more', 'testing'),
	(8, '897969', 'HR', 'taTTT@email.com', 'TESTING 29 JUNE', 'TESTING 29 JUNEEEEEEEEEEEEE'),
	(9, '897969', 'TA', 'taTTT@email.com', 'gggggg', 'ggggggg'),
	(10, 'july', 'july', 'july@gmail.com', 'july', 'julyyyy'),
	(11, 'july1', 'july1', 'july1@gmail.com', 'july1', 'july1'),
	(12, 'testhospital8', 'testhospital8', 'testhospital8@testhospital8.com', 'testhospital8', 'testhospital8'),
	(13, 'test9', 'test9', 'test9@gmail.com', 'test9', 'test9');

-- Dumping structure for table hospital_db.patient_bill
CREATE TABLE IF NOT EXISTS `patient_bill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `medical_history` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hospital_db.patient_bill: ~100 rows (approximately)
INSERT INTO `patient_bill` (`id`, `amount`, `patient_name`, `name`, `age`, `address`, `contact_number`, `gender`, `medical_history`) VALUES
	(161, 100.5, 'John Doe', NULL, 30, '123 Main St', '123-456-7890', 'Male', 'Diabetes'),
	(162, 200.75, 'Jane Smith', NULL, 25, '456 Elm St', '234-567-8901', 'Female', 'Allergies'),
	(163, 150, 'Michael Johnson', NULL, 40, '789 Oak St', '345-678-9012', 'Male', 'Diabetes'),
	(164, 175.25, 'Emily Davis', NULL, 35, '101 Pine St', '456-789-0123', 'Female', 'Asthma'),
	(165, 250, 'David Brown', NULL, 28, '202 Maple Ave', '567-890-1234', 'Male', 'Allergies'),
	(166, 300.8, 'Sarah Wilson', NULL, 32, '303 Cedar St', '678-901-2345', 'Female', 'Allergies'),
	(167, 225.6, 'Robert Moore', NULL, 45, '404 Birch Rd', '789-012-3456', 'Male', 'High cholesterol'),
	(168, 195.75, 'Laura Taylor', NULL, 22, '505 Willow Ln', '890-123-4567', 'Female', 'Asthma'),
	(169, 275.9, 'James Anderson', NULL, 50, '606 Ash Dr', '901-234-5678', 'Male', 'Hypertension'),
	(170, 120, 'Patricia Thomas', NULL, 27, '707 Spruce Ct', '012-345-6789', 'Female', 'Heart disease'),
	(171, 85.2, 'Alice Brown', NULL, 34, '808 Cedar St', '223-456-7890', 'Female', 'Hypertension'),
	(172, 190.5, 'Charles Lee', NULL, 29, '909 Birch Rd', '334-567-8901', 'Male', 'Diabetes'),
	(173, 145.75, 'Grace Green', NULL, 45, '100 Maple Ave', '445-678-9012', 'Female', 'Heart disease'),
	(174, 170.3, 'Ethan Young', NULL, 38, '111 Oak St', '556-789-0123', 'Male', 'Allergies'),
	(175, 215.4, 'Hannah Hall', NULL, 52, '222 Pine St', '667-890-1234', 'Female', 'None'),
	(176, 135.25, 'Henry King', NULL, 41, '333 Maple Ave', '778-901-2345', 'Male', 'Heart disease'),
	(177, 220.8, 'Ivy Scott', NULL, 36, '444 Cedar St', '889-012-3456', 'Female', 'None'),
	(178, 125.6, 'Jack White', NULL, 49, '555 Birch Rd', '990-123-4567', 'Male', 'None'),
	(179, 190.75, 'Liam Harris', NULL, 27, '666 Willow Ln', '101-234-5678', 'Male', 'High cholesterol'),
	(180, 140.2, 'Mia Adams', NULL, 31, '777 Ash Dr', '212-345-6789', 'Female', 'None'),
	(181, 230.9, 'Nathan Baker', NULL, 53, '888 Spruce Ct', '323-456-7890', 'Male', 'None'),
	(182, 115, 'Olivia Carter', NULL, 23, '999 Main St', '434-567-8901', 'Female', 'None'),
	(183, 160.25, 'Paul Mitchell', NULL, 44, '101 Elm St', '545-678-9012', 'Male', 'Allergies'),
	(184, 180.3, 'Queen Walker', NULL, 39, '202 Oak St', '656-789-0123', 'Female', 'None'),
	(185, 220.5, 'Ryan Gonzalez', NULL, 48, '303 Maple Ave', '767-890-1234', 'Male', 'None'),
	(186, 125.75, 'Sophia Perez', NULL, 26, '404 Cedar St', '878-901-2345', 'Female', 'Diabetes'),
	(187, 200.6, 'Tommy Roberts', NULL, 42, '505 Birch Rd', '989-012-3456', 'Male', 'High cholesterol'),
	(188, 175.4, 'Uma Edwards', NULL, 37, '606 Willow Ln', '100-123-4567', 'Female', 'None'),
	(189, 145.9, 'Victor Phillips', NULL, 55, '707 Ash Dr', '211-234-5678', 'Male', 'None'),
	(190, 210.25, 'Wendy Lewis', NULL, 34, '808 Spruce Ct', '322-345-6789', 'Female', 'Hypertension'),
	(191, 105.5, 'Anna Black', NULL, 30, '124 Main St', '123-456-7890', 'Female', 'High cholesterol'),
	(192, 250.75, 'Tom Hardy', NULL, 45, '789 Pine St', '234-567-8901', 'Male', 'Allergies'),
	(193, 300, 'Nancy Drew', NULL, 40, '456 Elm St', '345-678-9012', 'Female', 'Heart disease'),
	(194, 175.25, 'Harry Potter', NULL, 35, '101 Oak St', '456-789-0123', 'Male', 'High cholesterol'),
	(195, 200, 'Bruce Wayne', NULL, 38, '102 Maple Ave', '567-890-1234', 'Male', 'Diabetes'),
	(196, 220.8, 'Clark Kent', NULL, 32, '103 Cedar St', '678-901-2345', 'Male', 'Hypertension'),
	(197, 225.6, 'Diana Prince', NULL, 45, '104 Birch Rd', '789-012-3456', 'Female', 'Allergies'),
	(198, 195.75, 'Barry Allen', NULL, 22, '105 Willow Ln', '890-123-4567', 'Male', 'Allergies'),
	(199, 275.9, 'Arthur Curry', NULL, 30, '106 Ash Dr', '901-234-5678', 'Male', 'None'),
	(200, 120, 'Victor Stone', NULL, 28, '107 Spruce Ct', '012-345-6789', 'Male', 'Diabetes'),
	(201, 85.2, 'Selina Kyle', NULL, 34, '108 Cedar St', '223-456-7890', 'Female', 'None'),
	(202, 190.5, 'Oliver Queen', NULL, 29, '109 Birch Rd', '334-567-8901', 'Male', 'None'),
	(203, 145.75, 'Hal Jordan', NULL, 45, '110 Maple Ave', '445-678-9012', 'Male', 'High cholesterol'),
	(204, 170.3, 'John Stewart', NULL, 38, '111 Oak St', '556-789-0123', 'Male', 'Heart disease'),
	(205, 215.4, 'Kyle Rayner', NULL, 52, '112 Pine St', '667-890-1234', 'Male', 'None'),
	(206, 135.25, 'Jessica Cruz', NULL, 41, '113 Maple Ave', '778-901-2345', 'Female', 'None'),
	(207, 220.8, 'Simon Baz', NULL, 36, '114 Cedar St', '889-012-3456', 'Male', 'Diabetes'),
	(208, 125.6, 'Shiera Sanders', NULL, 49, '115 Birch Rd', '990-123-4567', 'Female', 'None'),
	(209, 190.75, 'Kendra Saunders', NULL, 27, '116 Willow Ln', '101-234-5678', 'Female', 'Hypertension'),
	(210, 140.2, 'Carter Hall', NULL, 31, '117 Ash Dr', '212-345-6789', 'Male', 'Hypertension'),
	(211, 230.9, 'Ray Palmer', NULL, 53, '118 Spruce Ct', '323-456-7890', 'Male', 'Diabetes'),
	(212, 115, 'Zatanna Zatara', NULL, 23, '119 Main St', '434-567-8901', 'Female', 'High cholesterol'),
	(213, 160.25, 'Billy Batson', NULL, 44, '120 Elm St', '545-678-9012', 'Male', 'None'),
	(214, 180.3, 'Teth-Adam', NULL, 39, '121 Oak St', '656-789-0123', 'Male', 'None'),
	(215, 220.5, 'Barbara Gordon', NULL, 48, '122 Maple Ave', '767-890-1234', 'Female', 'High cholesterol'),
	(216, 125.75, 'Stephanie Brown', NULL, 26, '123 Cedar St', '878-901-2345', 'Female', 'Hypertension'),
	(217, 200.6, 'Cassandra Cain', NULL, 42, '124 Birch Rd', '989-012-3456', 'Female', 'High cholesterol'),
	(218, 175.4, 'Helena Bertinelli', NULL, 37, '125 Willow Ln', '100-123-4567', 'Female', 'None'),
	(219, 145.9, 'Dinah Drake', NULL, 55, '126 Ash Dr', '211-234-5678', 'Female', 'Diabetes'),
	(220, 210.25, 'Laurel Lance', NULL, 34, '127 Spruce Ct', '322-345-6789', 'Female', 'None'),
	(221, 135, 'Renee Montoya', NULL, 32, '128 Cedar St', '433-456-7890', 'Female', 'Allergies'),
	(222, 175.25, 'Lucius Fox', NULL, 50, '129 Birch Rd', '544-567-8901', 'Male', 'Asthma'),
	(223, 155.5, 'Alfred Pennyworth', NULL, 60, '130 Maple Ave', '655-678-9012', 'Male', 'Allergies'),
	(224, 190.75, 'Harvey Bullock', NULL, 40, '131 Oak St', '766-789-0123', 'Male', 'High cholesterol'),
	(225, 185.6, 'Jim Gordon', NULL, 54, '132 Pine St', '877-890-1234', 'Male', 'None'),
	(226, 210, 'Jason Todd', NULL, 45, '133 Cedar St', '988-901-2345', 'Male', 'Allergies'),
	(227, 125.25, 'Tim Drake', NULL, 28, '134 Birch Rd', '099-012-3456', 'Male', 'None'),
	(228, 170.4, 'Damian Wayne', NULL, 19, '135 Willow Ln', '110-123-4567', 'Male', 'Allergies'),
	(229, 225.75, 'Kate Kane', NULL, 34, '136 Ash Dr', '221-234-5678', 'Female', 'None'),
	(230, 130.2, 'Luke Fox', NULL, 29, '137 Spruce Ct', '332-345-6789', 'Male', 'None'),
	(231, 200.9, 'Dick Grayson', NULL, 35, '138 Cedar St', '443-456-7890', 'Male', 'Asthma'),
	(232, 110.5, 'Garfield Logan', NULL, 26, '139 Birch Rd', '554-567-8901', 'Male', 'Heart disease'),
	(233, 190.75, 'Koriandr', NULL, 30, '140 Maple Ave', '665-678-9012', 'Female', 'Heart disease'),
	(234, 150.4, 'Raven', NULL, 22, '141 Oak St', '776-789-0123', 'Female', 'High cholesterol'),
	(235, 185, 'Victor Stone', NULL, 32, '142 Pine St', '887-890-1234', 'Male', 'Diabetes'),
	(236, 200.75, 'Tara Markov', NULL, 25, '143 Cedar St', '998-901-2345', 'Female', 'Allergies'),
	(237, 170.2, 'Donna Troy', NULL, 29, '144 Birch Rd', '109-012-3456', 'Female', 'High cholesterol'),
	(238, 180.25, 'Wally West', NULL, 34, '145 Willow Ln', '210-123-4567', 'Male', 'Asthma'),
	(239, 220, 'Roy Harper', NULL, 40, '146 Ash Dr', '321-234-5678', 'Male', 'High cholesterol'),
	(240, 130.75, 'Connor Hawke', NULL, 30, '147 Spruce Ct', '432-345-6789', 'Male', 'Asthma'),
	(241, 175.5, 'Mia Dearden', NULL, 27, '148 Cedar St', '543-456-7890', 'Female', 'High cholesterol'),
	(242, 165.75, 'John Diggle', NULL, 38, '149 Birch Rd', '654-567-8901', 'Male', 'None'),
	(243, 180.3, 'Felicity Smoak', NULL, 32, '150 Maple Ave', '765-678-9012', 'Female', 'None'),
	(244, 190.25, 'Curtis Holt', NULL, 29, '151 Oak St', '876-789-0123', 'Male', 'Diabetes'),
	(245, 210.6, 'Rene Ramirez', NULL, 35, '152 Pine St', '987-890-1234', 'Male', 'None'),
	(246, 175.4, 'Dinah Drake', NULL, 37, '153 Cedar St', '098-901-2345', 'Female', 'None'),
	(247, 150.9, 'William Clayton', NULL, 25, '154 Birch Rd', '109-012-3456', 'Male', 'High cholesterol'),
	(248, 200.25, 'Moira Queen', NULL, 50, '155 Willow Ln', '210-123-4567', 'Female', 'None'),
	(249, 180.75, 'Thea Queen', NULL, 27, '156 Ashen Dr', '321-234-5678', 'Female', 'None'),
	(250, 190.5, 'Tommy Merlyn', NULL, 29, '157 Spruce Ct', '432-345-6789', 'Male', 'High cholesterol'),
	(251, 175.75, 'Malcolm Merlyn', NULL, 45, '158 Cedar St', '543-456-7890', 'Male', 'None'),
	(252, 200.6, 'Nyssa al Ghul', NULL, 38, '159 Birch Rd', '654-567-8901', 'Female', 'Allergies'),
	(253, 230.9, 'Ras al Ghul', NULL, 53, '160 Maple Ave', '55555555', 'Male', 'None'),
	(254, 120, 'Talia al Ghul', NULL, 23, '161 Oak St', '876-789-0123', 'Female', 'Allergies'),
	(255, 175.4, 'Damian Wayne', NULL, 19, '162 Pine St', '987-890-1234', 'Male', 'None'),
	(256, 200.75, 'Slade Wilson', NULL, 45, '163 Cedar St', '098-901-2345', 'Male', 'Heart disease'),
	(257, 160.25, 'Joe Wilson', NULL, 25, '164 Birch Rd', '109-012-3456', 'Male', 'Allergies'),
	(258, 180.3, 'Grant Wilson', NULL, 27, '165 Willow Ln', '210-123-4567', 'Male', 'Heart disease'),
	(259, 150.9, 'Rose Wilson', NULL, 22, '166 Ash Dr', '321-234-5678', 'Female', 'High cholesterol'),
	(260, 200.25, 'Adeline Kane', NULL, 50, '167 Spruce Ct', '432-345-6789', 'Female', 'None'),
	(261, 180.75, 'Jericho', NULL, 29, '168 Cedar St', '543-456-7890', 'Male', 'High cholesterol'),
	(262, 175.75, 'Ravager', NULL, 32, '169 Birch Rd', '654-567-8901', 'Female', 'None'),
	(263, 200.6, 'Wintergreen', NULL, 60, '170 Maple Ave', '765-678-9012', 'Male', 'Hypertension'),
	(264, 230.9, 'Isabel Rochev', NULL, 48, '171 Oak St', '876-789-0123', 'Female', 'Diabetes'),
	(265, 120, 'Shado', NULL, 34, '172 Pine St', '987-890-1234', 'Female', 'Diabetes'),
	(266, 105.5, 'Anna Black', NULL, 30, '124 Main St', '123-456-7890', 'Female', 'High cholesterol'),
	(267, 250.75, 'Tom Hardy', NULL, 45, '789 Pine St', '234-567-8901', 'Male', 'Diabetes'),
	(268, 300, 'Nancy Drew', NULL, 40, '456 Elm St', '345-678-9012', 'Female', 'Hypertension'),
	(269, 175.25, 'Harry Potter', NULL, 35, '101 Oak St', '456-789-0123', 'Male', 'High cholesterol'),
	(270, 200, 'Bruce Wayne', NULL, 38, '102 Maple Ave', '567-890-1234', 'Male', 'Heart disease'),
	(271, 220.8, 'Clark Kent', NULL, 32, '103 Cedar St', '678-901-2345', 'Male', 'None'),
	(272, 225.6, 'Diana Prince', NULL, 45, '104 Birch Rd', '789-012-3456', 'Female', 'Hypertension'),
	(273, 195.75, 'Barry Allen', NULL, 22, '105 Willow Ln', '890-123-4567', 'Male', 'None'),
	(274, 275.9, 'Arthur Curry', NULL, 30, '106 Ash Dr', '901-234-5678', 'Male', 'Diabetes'),
	(275, 120, 'Victor Stone', NULL, 28, '107 Spruce Ct', '012-345-6789', 'Male', 'None'),
	(276, 85.2, 'Selina Kyle', NULL, 34, '108 Cedar St', '223-456-7890', 'Female', 'Asthma'),
	(277, 190.5, 'Oliver Queen', NULL, 29, '109 Birch Rd', '334-567-8901', 'Male', 'Heart disease'),
	(278, 145.75, 'Hal Jordan', NULL, 45, '110 Maple Ave', '445-678-9012', 'Male', 'None'),
	(279, 170.3, 'John Stewart', NULL, 38, '111 Oak St', '556-789-0123', 'Male', 'None'),
	(280, 215.4, 'Kyle Rayner', NULL, 52, '112 Pine St', '667-890-1234', 'Male', 'Heart disease'),
	(281, 135.25, 'Jessica Cruz', NULL, 41, '113 Maple Ave', '778-901-2345', 'Female', 'Heart disease'),
	(282, 220.8, 'Simon Baz', NULL, 36, '114 Cedar St', '889-012-3456', 'Male', 'High cholesterol'),
	(283, 125.6, 'Shiera Sanders', NULL, 49, '115 Birch Rd', '990-123-4567', 'Female', 'High cholesterol'),
	(284, 190.75, 'Kendra Saunders', NULL, 27, '116 Willow Ln', '101-234-5678', 'Female', 'None'),
	(285, 140.2, 'Carter Hall', NULL, 31, '117 Ash Dr', '212-345-6789', 'Male', 'Allergies'),
	(286, 230.9, 'Ray Palmer', NULL, 53, '118 Spruce Ct', '323-456-7890', 'Male', 'High cholesterol'),
	(287, 115, 'Zatanna Zatara', NULL, 23, '119 Main St', '434-567-8901', 'Female', 'Hypertension'),
	(288, 160.25, 'Billy Batson', NULL, 44, '120 Elm St', '545-678-9012', 'Male', 'High cholesterol'),
	(289, 180.3, 'Teth-Adam', NULL, 39, '121 Oak St', '656-789-0123', 'Male', 'Hypertension'),
	(290, 220.5, 'Barbara Gordon', NULL, 48, '122 Maple Ave', '767-890-1234', 'Female', 'Heart disease'),
	(291, 125.75, 'Stephanie Brown', NULL, 26, '123 Cedar St', '878-901-2345', 'Female', 'None'),
	(292, 200.6, 'Cassandra Cain', NULL, 42, '124 Birch Rd', '989-012-3456', 'Female', 'Heart disease'),
	(293, 175.4, 'Helena Bertinelli', NULL, 37, '125 Willow Ln', '100-123-4567', 'Female', 'None'),
	(294, 145.9, 'Dinah Drake', NULL, 55, '126 Ash Dr', '211-234-5678', 'Female', 'Heart disease'),
	(295, 210.25, 'Laurel Lance', NULL, 34, '127 Spruce Ct', '322-345-6789', 'Female', 'Heart disease'),
	(296, 135, 'Renee Montoya', NULL, 32, '128 Cedar St', '433-456-7890', 'Female', 'None'),
	(297, 175.25, 'Lucius Fox', NULL, 50, '129 Birch Rd', '544-567-8901', 'Male', 'Hypertension'),
	(298, 155.5, 'Alfred Pennyworth', NULL, 60, '130 Maple Ave', '655-678-9012', 'Male', 'High cholesterol'),
	(299, 190.75, 'Harvey Bullock', NULL, 40, '131 Oak St', '766-789-0123', 'Male', 'Heart disease'),
	(300, 185.6, 'Jim Gordon', NULL, 54, '132 Pine St', '877-890-1234', 'Male', 'Heart disease'),
	(301, 210, 'Jason Todd', NULL, 45, '133 Cedar St', '988-901-2345', 'Male', 'None'),
	(302, 125.25, 'Tim Drake', NULL, 28, '134 Birch Rd', '099-012-3456', 'Male', 'Diabetes'),
	(303, 170.4, 'Damian Wayne', NULL, 19, '135 Willow Ln', '110-123-4567', 'Male', 'None'),
	(304, 225.75, 'Kate Kane', NULL, 34, '136 Ash Dr', '221-234-5678', 'Female', 'Diabetes'),
	(305, 130.2, 'Luke Fox', NULL, 29, '137 Spruce Ct', '332-345-6789', 'Male', 'High cholesterol'),
	(306, 200.9, 'Dick Grayson', NULL, 35, '138 Cedar St', '443-456-7890', 'Male', 'Asthma'),
	(307, 110.5, 'Garfield Logan', NULL, 26, '139 Birch Rd', '554-567-8901', 'Male', 'Asthma'),
	(308, 190.75, 'Koriandr', NULL, 30, '140 Maple Ave', '665-678-9012', 'Female', 'Heart disease'),
	(309, 150.4, 'Raven', NULL, 22, '141 Oak St', '776-789-0123', 'Female', 'Diabetes'),
	(310, 185, 'Victor Stone', NULL, 32, '142 Pine St', '887-890-1234', 'Male', 'None'),
	(311, 200.75, 'Tara Markov', NULL, 25, '143 Cedar St', '998-901-2345', 'Female', 'None'),
	(312, 170.2, 'Donna Troy', NULL, 29, '144 Birch Rd', '109-012-3456', 'Female', 'None'),
	(313, 180.25, 'Wally West', NULL, 34, '145 Willow Ln', '210-123-4567', 'Male', 'High cholesterol'),
	(314, 220, 'Roy Harper', NULL, 40, '146 Ash Dr', '321-234-5678', 'Male', 'Asthma'),
	(315, 130.75, 'Connor Hawke', NULL, 30, '147 Spruce Ct', '432-345-6789', 'Male', 'Allergies'),
	(316, 175.5, 'Mia Dearden', NULL, 27, '148 Cedar St', '543-456-7890', 'Female', 'Allergies'),
	(317, 165.75, 'John Diggle', NULL, 38, '149 Birch Rd', '654-567-8901', 'Male', 'High cholesterol'),
	(318, 180.3, 'Felicity Smoak', NULL, 32, '150 Maple Ave', '765-678-9012', 'Female', 'None'),
	(319, 190.25, 'Curtis Holt', NULL, 29, '151 Oak St', '876-789-0123', 'Male', 'None'),
	(320, 210.6, 'Rene Ramirez', NULL, 35, '152 Pine St', '987-890-1234', 'Male', 'Heart disease'),
	(321, 175.4, 'Dinah Drake', NULL, 37, '153 Cedar St', '098-901-2345', 'Female', 'None'),
	(322, 150.9, 'William Clayton', NULL, 25, '154 Birch Rd', '109-012-3456', 'Male', 'Diabetes'),
	(323, 200.25, 'Moira Queen', NULL, 50, '155 Willow Ln', '210-123-4567', 'Female', 'Hypertension'),
	(324, 180.75, 'Thea Queen', NULL, 27, '156 Ash Dr', '321-234-5678', 'Female', 'None'),
	(325, 190.5, 'Tommy Merlyn', NULL, 29, '157 Spruce Ct', '432-345-6789', 'Male', 'None'),
	(326, 175.75, 'Malcolm Merlyn', NULL, 45, '158 Cedar St', '543-456-7890', 'Male', 'None'),
	(327, 200.6, 'Nyssa al Ghul', NULL, 38, '159 Birch Rd', '654-567-8901', 'Female', 'None'),
	(328, 230.9, 'Ras al Ghul', NULL, 53, '160 Maple Ave', '765-678-9012', 'Male', 'High cholesterol'),
	(329, 120, 'Talia al Ghul', NULL, 23, '161 Oak St', '876-789-0123', 'Female', 'None'),
	(330, 175.4, 'Damian Wayne', NULL, 19, '162 Pine St', '987-890-1234', 'Male', 'None'),
	(331, 200.75, 'Slade Wilson', NULL, 45, '163 Cedar St', '098-901-2345', 'Male', 'Allergies'),
	(332, 160.25, 'Joe Wilson', NULL, 24, '164 Birch Rd', '109-012-3456', 'Male', 'Allergies'),
	(333, 180.3, 'Grant Wilson', NULL, 27, '165 Willow Ln', '210-123-4567', 'Male', 'Heart disease'),
	(334, 150.9, 'Rose Wilson', NULL, 22, '166 Ash Dr', '321-234-5678', 'Female', 'Diabetes'),
	(335, 200.25, 'Adeline Kane', NULL, 50, '167 Spruce Ct', '432-345-6789', 'Female', 'Hypertension'),
	(336, 180.75, 'Jericho', NULL, 29, '168 Cedar St', '543-456-7890', 'Male', 'None'),
	(337, 175.75, 'Ravager', NULL, 32, '169 Birch Rd', '654-567-8901', 'Female', 'None'),
	(338, 200.6, 'Wintergreen', NULL, 60, '170 Maple Ave', '765-678-9012', 'Male', 'Hypertension'),
	(339, 230.9, 'Isabel Rochev', NULL, 48, '171 Oak St', '876-789-0123', 'Female', 'None');

-- Dumping structure for table hospital_db.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hospital_db.staff: ~9 rows (approximately)
INSERT INTO `staff` (`id`, `username`, `password`, `name`, `position`, `department`) VALUES
	(1, 'user1', '111', NULL, NULL, NULL),
	(2, 'user2', '123', NULL, NULL, NULL),
	(6, 'user3', '111', 'ta3', 'ta', 'ta'),
	(7, 'user4', '1111', 'ta3', 'ta', 'TA'),
	(8, 'user5', '111', 'ta3', 'ta', 'TA'),
	(9, 'user7', '111', 'ta3', 'ta', 'TA'),
	(10, 'user8', '111', 'ggg', 'ggg', 'ggg'),
	(11, 'nesh123', '123', 'NESH', 'intern', 'HR'),
	(12, 'gggg', 'gggg', 'gggg', 'gggg', 'gggg'),
	(13, 'july1', 'july1', 'july', 'july', 'july'),
	(14, 'july1', 'july1', 'july1', 'july1', 'july1'),
	(15, 'testhospital8', 'testhospital8', 'testhospital8', 'testhospital8', 'testhospital8'),
	(16, 'test9', 'test9', 'test9', 'test9', 'test9');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
