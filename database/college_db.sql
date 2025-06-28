-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2025 at 03:21 AM
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
-- Database: `college_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `rating` float DEFAULT NULL,
  `courses` varchar(255) DEFAULT NULL,
  `fees` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`, `city`, `contact`, `rating`, `courses`, `fees`) VALUES
(1, 'TIMSCDR - Thakur Institute of Management Studies, Career Development & Research', 'Mumbai', '022 6730 8301', 5, 'MCA', '160000'),
(2, 'Indian Institute of Technology Bombay', 'Mumbai', '02225722545', 4.9, 'AI, B.Tech, Computer Science, Data Science, M.Tech', '230000'),
(3, 'Indian Institute of Technology Delhi', 'Delhi', '01126597135', 4.9, 'B.Tech, Data Science, IT, M.Tech, Management', '240000'),
(4, 'Birla Institute of Technology and Science (BITS Pilani)', 'Pilani', '01596245210', 4.8, 'B.Tech, Data Science, M.Tech, MBA, MCA', '220000'),
(5, 'Vellore Institute of Technology (VIT)', 'Vellore', '04162200622', 4.6, 'B.Tech, Data Science, IT, MBA, MCA', '195000'),
(6, 'SRM Institute of Science and Technology', 'Chennai', '04427417000', 4.5, 'B.Tech, IT, MBA, MCA, Management', '185000'),
(7, 'Manipal Academy of Higher Education', 'Manipal', '08202572954', 4.5, 'AI, B.Tech, Data Science, IT, MBA, MCA', '200000'),
(8, 'Amity University', 'Noida', '01202439999', 4.2, 'B.Tech, Data Science, IT, Management, MBA, MCA', '180000'),
(9, 'Jamia Millia Islamia', 'Delhi', '01126981717', 4.3, 'B.Tech, Computer Science, IT, MBA, MCA', '60000'),
(10, 'Pune Institute of Computer Technology (PICT)', 'Pune', '02024371101', 4.4, 'B.Tech, Computer Science, IT, MCA, Software Engineering', '160000'),
(11, 'Narsee Monjee Institute of Management Studies (NMIMS)', 'Mumbai', '02242355555', 4.4, 'Data Science, IT, Management, MBA, MCA', '190000'),
(12, 'Lovely Professional University (LPU)', 'Phagwara', '01824504444', 4, 'AI, B.Tech, Data Science, IT, MBA, MCA', '180000'),
(13, 'Chandigarh University', 'Mohali', '01605000175', 4.2, 'B.Tech, Cloud Computing, Data Science, IT, MBA, MCA', '175000'),
(14, 'Christ University', 'Bangalore', '08040129100', 4.5, 'Data Science, Management, MBA, MCA, B.Tech', '145000, 170000, 180000'),
(15, 'Shiv Nadar University', 'Noida', '01206714000', 4.3, 'AI, B.Tech, Data Science, IT, MBA, MCA', '210000'),
(16, 'Symbiosis Institute of Computer Studies and Research (SICSR)', 'Pune', '02025671905', 4.4, 'Data Science, IT, Management, MBA, MCA', '165000'),
(17, 'Indraprastha Institute of Information Technology (IIIT)', 'Delhi', '01126907400', 4.7, 'AI, B.Tech, Data Science, IT, M.Tech', '200000'),
(18, 'Jaypee Institute of Information Technology (JIIT)', 'Noida', '01202409850', 4, 'B.Tech, Data Science, IT, MBA, MCA', '150000'),
(19, 'Galgotias University', 'Greater Noida', '01202378300', 4.1, 'B.Tech, Data Science, IT, Management, MBA, MCA', '140000'),
(20, 'Graphic Era University', 'Dehradun', '18001804177', 4.2, 'AI, B.Tech, Cloud Computing, IT, MBA, MCA', '130000'),
(21, 'Dhirubhai Ambani Institute of Information and Communication Technology (DAIICT)', 'Gandhinagar', '07930520000', 4.5, 'AI, B.Tech, Data Science, IT, M.Tech', '190000'),
(22, 'Thakur Institute of Management Studies & Research', 'Mumbai', '022 6730 8202', 4.5, 'MBA', '250000'),
(23, 'Veermata Jijabai Technological Institute', 'Mumbai', '0222419 8102', 5, 'MCA', '90000'),
(24, 'L.N.Mishra Institute of Economic Development and Social Change', 'Patna', '022 45672334', 5, 'MBA, MCA', '160000'),
(25, 'Shaheed Sukhdev College of Business Studies', 'Pujab', '022 57253762', 4, 'BBA, BMS', '120000'),
(26, 'Punjab Engineering College, Chandigarh', 'Chandigarh', '0172 2753072', 4.3, 'B.Tech, M.Tech, MBA', '160000'),
(27, 'IIT Bombay', 'Mumbai', '022-25722545', 5, 'BTech, MTech, MCA', '225000'),
(28, 'NIT Trichy', 'Tiruchirappalli', '0431-2503000', 4.9, 'MCA, BTech, MTech', '95000, 180000'),
(29, 'VIT Vellore', 'Vellore', '0416-2202020', 4.8, 'BTech, MTech, MCA', '160000, 190000'),
(30, 'JNU Delhi', 'Delhi', '011-26704090', 4.8, 'MCA', '50000, 60000'),
(31, 'University of Hyderabad', 'Hyderabad', '040-23132100', 4.7, 'MCA', '50000, 55000'),
(32, 'BIT Mesra', 'Ranchi', '0651-2275444', 4.7, 'BTech, MCA', '130000, 170000'),
(33, 'SRM University', 'Chennai', '044-27455510', 4.6, 'BTech, MTech, MCA', '155000, 185000'),
(34, 'PSG College Coimbatore', 'Coimbatore', '0422-2572177', 4.5, 'MCA', '90000, 120000'),
(35, 'IIIT Hyderabad', 'Hyderabad', '040-66531000', 4.5, 'MTech', '220000'),
(36, 'IIT Kanpur', 'Kanpur', '0512-2590151', 4.9, 'BTech, MTech', '215000'),
(37, 'IIT Madras', 'Chennai', '044-22578053', 4.9, 'BTech, MTech', '210000'),
(38, 'IIT Kharagpur', 'Kharagpur', '03222-282269', 4.8, 'BTech, MTech', '210000'),
(39, 'NIT Surathkal', 'Surathkal', '0824-2474000', 4.7, 'BTech, MTech', '175000'),
(40, 'Christ University', 'Bangalore', '080-40129100', 4.5, 'MCA', '180000'),
(41, 'Amity University', 'Noida', '0120-2445252', 4.4, 'MCA', '180000, 220000'),
(42, 'IIM Ahmedabad', 'Ahmedabad', '079-66324633', 5, 'MBA', '2500000'),
(43, 'IIM Bangalore', 'Bangalore', '080-26993013', 4.9, 'MBA', '2400000'),
(44, 'IIM Calcutta', 'Kolkata', '033-24678300', 4.9, 'MBA', '2400000'),
(45, 'ISB Hyderabad', 'Hyderabad', '040-23007000', 4.8, 'MBA', '3600000'),
(46, 'IIM Lucknow', 'Lucknow', '0522-2734101', 4.8, 'MBA', '2300000'),
(47, 'XLRI Jamshedpur', 'Jamshedpur', '0657-6653203', 4.7, 'MBA', '2300000'),
(48, 'SPJIMR Mumbai', 'Mumbai', '022-26237454', 4.7, 'MBA', '2250000'),
(49, 'FMS Delhi', 'Delhi', '011-27666382', 4.6, 'MBA', '200000'),
(50, 'MDI Gurgaon', 'Gurgaon', '0124-4560000', 4.5, 'MBA', '2300000'),
(51, 'IIFT Delhi', 'Delhi', '011-39147200', 4.5, 'MBA', '1800000'),
(52, 'MIT World Peace University', 'Pune', '020-71177104', 4.2, 'B.Tech, MBA, MCA, AI, Data Science', '175000'),
(53, 'Jain University', 'Bangalore', '080-46650100', 4.3, 'B.Tech, MBA, MCA, Data Science', '165000'),
(54, 'KIIT - Kalinga Institute of Industrial Technology', 'Bhubaneswar', '0674-2742103', 4.4, 'B.Tech, MBA, MCA, IT, AI', '180000'),
(55, 'Sharda University', 'Greater Noida', '0120-4060210', 4.1, 'B.Tech, MBA, MCA, IT, Data Science', '160000'),
(56, 'Bennett University', 'Greater Noida', '18001037719', 4.2, 'B.Tech, MBA, AI, Data Science', '200000'),
(57, 'ITM University', 'Gwalior', '0751-2440058', 4.1, 'B.Tech, MBA, MCA, Data Science', '150000'),
(58, 'SASTRA University', 'Thanjavur', '04362-264101', 4.3, 'B.Tech, MBA, MCA', '140000'),
(59, 'REVA University', 'Bangalore', '080-46966966', 4, 'B.Tech, MBA, AI, Data Science', '170000'),
(60, 'Amrita Vishwa Vidyapeetham', 'Coimbatore', '0422-2685000', 4.4, 'B.Tech, MBA, MCA, AI', '190000'),
(61, 'Alliance University', 'Bangalore', '080-46199000', 4.2, 'B.Tech, MBA, Data Science', '200000'),
(62, 'GLA University', 'Mathura', '05662-241000', 4.1, 'B.Tech, MBA, MCA, Data Science', '155000'),
(63, 'BML Munjal University', 'Gurgaon', '18001026568', 4.2, 'B.Tech, MBA, AI, Data Science', '195000'),
(64, 'ICFAI University', 'Dehradun', '18004257676', 4, 'B.Tech, MBA, MCA', '130000'),
(65, 'Ansal University', 'Gurgaon', '0124-4750400', 4, 'B.Tech, MBA, MCA', '145000'),
(66, 'SRM University Andhra Pradesh', 'Amaravati', '0863-2343000', 4.3, 'B.Tech, AI, Data Science', '175000'),
(67, 'Ashoka University', 'Sonipat', '1800-120-2114', 4.5, 'B.Tech, AI, Data Science', '210000'),
(68, 'OP Jindal Global University', 'Sonipat', '0130-4091888', 4.4, 'B.Tech, MBA, Data Science', '220000'),
(69, 'Vignan University', 'Guntur', '0863-2344777', 4.1, 'B.Tech, MBA, MCA', '150000'),
(70, 'Graphic Era Hill University', 'Dehradun', '1800-180-0014', 4.2, 'B.Tech, MBA, Data Science', '135000'),
(71, 'Sri Sri University', 'Cuttack', '0671-7135353', 4, 'B.Tech, MBA, AI, Data Science', '145000'),
(72, 'Delhi Technological University (DTU)', 'Delhi', '011-27871018', 4.6, 'B.Tech, M.Tech, MBA, Data Science', '200000'),
(73, 'Netaji Subhas University of Technology (NSUT)', 'Delhi', '011-25099050', 4.5, 'B.Tech, M.Tech, AI, Data Science', '190000'),
(74, 'National Institute of Technology Warangal', 'Warangal', '0870-2459191', 4.7, 'B.Tech, M.Tech, MCA', '180000'),
(75, 'IIIT Allahabad', 'Prayagraj', '0532-2922025', 4.6, 'B.Tech, M.Tech, IT, Data Science', '185000'),
(76, 'Indian Statistical Institute (ISI)', 'Kolkata', '033-25752500', 4.8, 'Data Science, AI, Statistics', '30000'),
(77, 'Harcourt Butler Technical University (HBTU)', 'Kanpur', '0512-2534001', 4.3, 'B.Tech, M.Tech, MBA', '160000'),
(78, 'Anna University', 'Chennai', '044-22351723', 4.5, 'B.Tech, M.Tech, MBA', '150000'),
(79, 'University of Calcutta', 'Kolkata', '033-23350015', 4.4, 'MCA, MBA, Data Science', '50000'),
(80, 'Osmania University', 'Hyderabad', '040-27098222', 4.2, 'MCA, MBA, Data Science', '60000'),
(81, 'University of Pune (SPPU)', 'Pune', '020-25696061', 4.4, 'MCA, MBA, Data Science', '55000'),
(82, 'Cochin University of Science and Technology (CUSAT)', 'Kochi', '0484-2577290', 4.3, 'B.Tech, MCA, MBA', '70000'),
(83, 'Maulana Azad National Institute of Technology (MANIT)', 'Bhopal', '0755-4051000', 4.6, 'B.Tech, M.Tech, MCA', '170000'),
(84, 'Visvesvaraya National Institute of Technology (VNIT)', 'Nagpur', '0712-2801361', 4.5, 'B.Tech, M.Tech, MCA', '165000'),
(85, 'NIT Rourkela', 'Rourkela', '0661-2462020', 4.6, 'B.Tech, M.Tech, MCA', '175000'),
(86, 'Indian Institute of Engineering Science and Technology (IIEST)', 'Shibpur', '033-26684561', 4.5, 'B.Tech, M.Tech, Data Science', '160000'),
(87, 'Jamia Hamdard', 'Delhi', '011-26059688', 4.3, 'B.Tech, MCA, MBA, Data Science', '120000'),
(88, 'Aligarh Muslim University (AMU)', 'Aligarh', '0571-2700920', 4.4, 'B.Tech, MCA, MBA', '60000'),
(89, 'University of Mumbai', 'Mumbai', '022-22652819', 4.2, 'MCA, MBA, Data Science', '50000'),
(90, 'Shivaji University', 'Kolhapur', '0231-2609000', 4.1, 'B.Tech, MBA, MCA', '55000'),
(91, 'Kurukshetra University', 'Kurukshetra', '01744-238169', 4.2, 'B.Tech, MBA, MCA', '60000'),
(92, 'North Eastern Hill University', 'Shillong', '0364-2721001', 4.2, 'B.Tech, MCA, MBA', '50000'),
(93, 'Maharaja Sayajirao University of Baroda', 'Vadodara', '0265-2795555', 4.3, 'B.Tech, MCA, MBA', '55000'),
(94, 'Birla Global University', 'Bhubaneswar', '0674-7103001', 4.1, 'MBA, BBA, Data Science', '150000'),
(95, 'Dr. A.P.J. Abdul Kalam Technical University', 'Lucknow', '0522-2336805', 4.2, 'B.Tech, MBA, MCA', '120000'),
(96, 'Kalasalingam Academy of Research and Education', 'Virudhunagar', '04563-289042', 4.1, 'B.Tech, MBA, AI', '130000'),
(97, 'Shiv Nadar University Chennai', 'Chennai', '1800-102-1768', 4.3, 'B.Tech, AI, Data Science', '175000'),
(98, 'IIITDM Kancheepuram', 'Kancheepuram', '044-27476300', 4.4, 'B.Tech, M.Tech, Data Science', '165000'),
(99, 'Central University of Rajasthan', 'Ajmer', '01463-238755', 4.2, 'MCA, MBA, Data Science', '60000'),
(100, 'Doon University', 'Dehradun', '0135-2533105', 4.1, 'MBA, MCA, Data Science', '70000'),
(101, 'Central University of Kerala', 'Kasaragod', '0467-2309495', 4, 'MCA, MBA, Data Science', '50000'),
(102, 'Pandit Deendayal Energy University', 'Gandhinagar', '079-23275060', 4.3, 'B.Tech, MBA, AI', '180000'),
(103, 'Central University of Jharkhand', 'Ranchi', '0651-2285038', 4, 'MCA, MBA, Data Science', '50000'),
(104, 'NIT Meghalaya', 'Shillong', '0364-2501294', 4.4, 'B.Tech, M.Tech', '170000'),
(105, 'IIIT Guwahati', 'Guwahati', '0361-2630015', 4.3, 'B.Tech, M.Tech, AI', '175000'),
(106, 'IIT Bhubaneswar', 'Bhubaneswar', '0674-7134550', 4.6, 'B.Tech, M.Tech, Data Science', '210000'),
(107, 'IIITDM Jabalpur', 'Jabalpur', '0761-2794222', 4.3, 'B.Tech, M.Tech, Data Science', '170000'),
(108, 'IIT Gandhinagar', 'Gandhinagar', '079-23952000', 4.7, 'B.Tech, M.Tech, AI', '220000'),
(109, 'IIT Hyderabad', 'Hyderabad', '040-23016031', 4.8, 'B.Tech, M.Tech, AI, Data Science', '225000'),
(110, 'IIT Indore', 'Indore', '0731-6603200', 4.7, 'B.Tech, M.Tech, Data Science', '220000'),
(111, 'Hindustan Institute of Technology and Science', 'Chennai', '044-27474262', 4.1, 'B.Tech, MBA, MCA, Data Science', '165000'),
(112, 'Karpagam Academy of Higher Education', 'Coimbatore', '0422-2980011', 4, 'B.Tech, MBA, MCA, AI', '150000'),
(113, 'Manipal University Jaipur', 'Jaipur', '0141-3999100', 4.3, 'B.Tech, MBA, MCA, Data Science', '180000'),
(114, 'GITAM University', 'Visakhapatnam', '0891-2840501', 4.2, 'B.Tech, MBA, Data Science', '175000'),
(115, 'NIIT University', 'Neemrana', '1800-103-5050', 4, 'B.Tech, MBA, AI', '160000'),
(116, 'Ramaiah Institute of Technology', 'Bangalore', '080-23600822', 4.5, 'B.Tech, MBA, MCA, Data Science', '180000'),
(117, 'Sri Krishna College of Engineering and Technology', 'Coimbatore', '0422-2678001', 4.2, 'B.Tech, MBA, MCA', '140000'),
(118, 'Vel Tech Rangarajan Dr. Sagunthala R&D Institute of Science and Technology', 'Chennai', '044-26840605', 4.1, 'B.Tech, MBA, Data Science', '145000'),
(119, 'Sathyabama Institute of Science and Technology', 'Chennai', '044-24503165', 4.2, 'B.Tech, MBA, MCA, Data Science', '160000'),
(120, 'KL University (Koneru Lakshmaiah Education Foundation)', 'Vijayawada', '0863-2399999', 4.3, 'B.Tech, MBA, Data Science', '170000'),
(121, 'CV Raman Global University', 'Bhubaneswar', '0674-2460093', 4.2, 'B.Tech, MBA, MCA, Data Science', '145000'),
(122, 'Indira Gandhi Delhi Technical University for Women (IGDTUW)', 'Delhi', '011-23900261', 4.4, 'B.Tech, M.Tech, AI, Data Science', '150000'),
(123, 'JSS Science and Technology University', 'Mysuru', '0821-2548285', 4.3, 'B.Tech, MBA, MCA, Data Science', '155000'),
(124, 'Tezpur University', 'Tezpur', '03712-267007', 4.3, 'MCA, MBA, Data Science, B.Tech', '60000'),
(125, 'Sikkim Manipal Institute of Technology', 'Majitar', '03592-246466', 4.2, 'B.Tech, MBA, MCA', '160000'),
(126, 'Dayananda Sagar University', 'Bangalore', '080-42161750', 4.1, 'B.Tech, MBA, Data Science', '170000'),
(127, 'Acharya Institute of Technology', 'Bangalore', '080-23722222', 4, 'B.Tech, MBA, MCA', '155000'),
(128, 'Bharath Institute of Higher Education and Research', 'Chennai', '044-22290125', 4.1, 'B.Tech, MBA, Data Science', '150000'),
(129, 'NIT Hamirpur', 'Hamirpur', '01972-254001', 4.5, 'B.Tech, M.Tech, MCA', '175000'),
(130, 'IIITDM Kurnool', 'Kurnool', '08518-289115', 4.2, 'B.Tech, M.Tech, AI, Data Science', '160000'),
(131, 'GITAM University Hyderabad Campus', 'Hyderabad', '08455-221266', 4.1, 'B.Tech, MBA, MCA, Data Science', '160000'),
(132, 'Saveetha Engineering College', 'Chennai', '044-66726677', 4, 'B.Tech, MBA, AI', '145000'),
(133, 'SRM Institute of Science and Technology - NCR Campus', 'Ghaziabad', '0120-2726486', 4.2, 'B.Tech, MBA, MCA', '170000'),
(134, 'Velammal Engineering College', 'Chennai', '044-26555714', 4.1, 'B.Tech, MBA, Data Science', '150000'),
(135, 'Koneru Lakshmaiah Education Foundation - Hyderabad Campus', 'Hyderabad', '0866-2577715', 4, 'B.Tech, MBA, AI', '160000'),
(136, 'Chitkara University', 'Rajpura', '01762-507084', 4.3, 'B.Tech, MBA, MCA, Data Science', '165000'),
(137, 'Galgotias College of Engineering and Technology', 'Greater Noida', '0120-4370000', 4.2, 'B.Tech, MBA, MCA, Data Science', '160000'),
(138, 'IMS Engineering College', 'Ghaziabad', '0120-4940000', 4, 'B.Tech, MBA, MCA', '145000'),
(139, 'Jagran Lakecity University', 'Bhopal', '07480-286000', 4.1, 'B.Tech, MBA, Data Science', '150000'),
(140, 'NIIT University - Neemrana', 'Neemrana', '1800-103-5050', 4, 'B.Tech, MBA, AI, Data Science', '170000'),
(141, 'Integral University', 'Lucknow', '0522-2890812', 4, 'B.Tech, MBA, MCA, Data Science', '140000'),
(142, 'Amrita Vishwa Vidyapeetham - Amritapuri Campus', 'Kollam', '0476-2801280', 4.4, 'B.Tech, MBA, Data Science', '170000'),
(143, 'MVJ College of Engineering', 'Bangalore', '080-42991000', 4.1, 'B.Tech, MBA, Data Science', '150000'),
(144, 'Maharishi Markandeshwar University', 'Ambala', '1800-274-0238', 4.2, 'B.Tech, MBA, MCA', '155000'),
(145, 'Jain Deemed-to-be University', 'Bangalore', '080-46650100', 4.3, 'B.Tech, MBA, AI, Data Science', '180000'),
(146, 'Bharati Vidyapeeth Deemed University', 'Pune', '020-24407100', 4.2, 'B.Tech, MBA, MCA, Data Science', '170000'),
(147, 'Indira Institute of Management', 'Pune', '020-66759400', 4.1, 'MBA, MCA, Data Science', '145000'),
(148, 'M.S. Ramaiah University of Applied Sciences', 'Bangalore', '080-45366666', 4.2, 'B.Tech, MBA, Data Science', '160000'),
(149, 'Sri Venkateswara College of Engineering', 'Sriperumbudur', '044-27152000', 4.3, 'B.Tech, MBA, Data Science', '155000'),
(150, 'SNS College of Technology', 'Coimbatore', '0422-2669401', 4.1, 'B.Tech, MBA, MCA', '150000'),
(151, 'Indore Institute of Science and Technology', 'Indore', '0731-4010727', 4, 'B.Tech, MBA, MCA', '135000'),
(152, 'Bansal Institute of Science and Technology', 'Bhopal', '0755-2896294', 4, 'B.Tech, MBA, Data Science', '130000'),
(153, 'Noida Institute of Engineering and Technology (NIET)', 'Greater Noida', '0120-2328062', 4.1, 'B.Tech, MBA, MCA, Data Science', '160000'),
(154, 'Oriental Institute of Science and Technology', 'Bhopal', '0755-2529026', 4, 'B.Tech, MBA, MCA', '135000'),
(155, 'Rajiv Gandhi Institute of Technology', 'Mumbai', '022-29250303', 4.3, 'B.Tech, MCA, MBA', '150000'),
(156, 'SAGE University', 'Indore', '1800-120-2012', 4.1, 'B.Tech, MBA, Data Science, AI', '145000'),
(157, 'Rungta College of Engineering and Technology', 'Bhilai', '0788-2286800', 4, 'B.Tech, MBA, Data Science', '140000'),
(158, 'PES University', 'Bangalore', '080-26721983', 4.4, 'B.Tech, MBA, Data Science', '190000'),
(159, 'MIT Art Design and Technology University', 'Pune', '020-71177177', 4.2, 'B.Tech, MBA, AI, Data Science', '160000'),
(160, 'Sri Ramakrishna Engineering College', 'Coimbatore', '0422-2460088', 4.2, 'B.Tech, MBA, Data Science', '150000'),
(161, 'CMR Institute of Technology', 'Bangalore', '080-28524466', 4.2, 'B.Tech, MBA, MCA, Data Science', '160000'),
(162, 'KLE Technological University', 'Hubli', '0836-2378123', 4.3, 'B.Tech, MBA, AI, Data Science', '155000'),
(163, 'D.Y. Patil College of Engineering', 'Pune', '020-27653965', 4.2, 'B.Tech, MBA, MCA', '150000'),
(164, 'Vidya Jyothi Institute of Technology', 'Hyderabad', '040-23042758', 4, 'B.Tech, MBA, Data Science', '140000'),
(165, 'BMS Institute of Technology and Management', 'Bangalore', '080-28469898', 4.3, 'B.Tech, MBA, Data Science', '165000'),
(166, 'Rajalakshmi Engineering College', 'Chennai', '044-67181111', 4.2, 'B.Tech, MBA, MCA', '150000'),
(167, 'Poornima College of Engineering', 'Jaipur', '0141-2770798', 4.1, 'B.Tech, MBA, MCA, Data Science', '140000'),
(168, 'SIES Graduate School of Technology', 'Navi Mumbai', '022-27783304', 4.1, 'B.Tech, MCA, MBA', '145000'),
(169, 'Reva Institute of Technology and Management', 'Bangalore', '080-66226600', 4.2, 'B.Tech, MBA, AI, Data Science', '160000'),
(170, 'New Horizon College of Engineering', 'Bangalore', '080-66297777', 4.3, 'B.Tech, MBA, AI, Data Science', '170000'),
(171, 'ABES Engineering College', 'Ghaziabad', '0120-7135112', 4.1, 'B.Tech, MBA, Data Science', '150000'),
(172, 'Jaypee University of Engineering and Technology', 'Guna', '07542-267176', 4, 'B.Tech, MBA, AI', '145000'),
(173, 'ITM University', 'Gwalior', '0751-2432988', 4, 'B.Tech, MBA, MCA, Data Science', '140000'),
(174, 'Sharda University', 'Greater Noida', '0120-4570000', 4.2, 'B.Tech, MBA, MCA, AI, Data Science', '170000'),
(175, 'Amrapali Group of Institutes', 'Haldwani', '05946-238201', 4, 'B.Tech, MBA, MCA', '130000'),
(176, 'GIET University', 'Gunupur', '06857-250134', 4.1, 'B.Tech, MBA, Data Science', '135000'),
(177, 'JSS Academy of Technical Education', 'Noida', '0120-2401442', 4.2, 'B.Tech, MBA, MCA', '150000'),
(178, 'Babu Banarasi Das University', 'Lucknow', '0522-6196300', 4.1, 'B.Tech, MBA, Data Science', '140000'),
(179, 'Shri Ramdeobaba College of Engineering and Management', 'Nagpur', '0712-2580011', 4.3, 'B.Tech, MBA, MCA', '155000'),
(180, 'Narula Institute of Technology', 'Kolkata', '033-25639617', 4.1, 'B.Tech, MBA, MCA', '145000'),
(181, 'Jalpaiguri Government Engineering College', 'Jalpaiguri', '03561-255131', 4.2, 'B.Tech, MCA, Data Science', '130000'),
(182, 'Techno India University', 'Kolkata', '033-22541005', 4, 'B.Tech, MBA, MCA, AI', '150000'),
(183, 'Camellia Institute of Technology', 'Kolkata', '033-25263122', 4, 'B.Tech, MBA, Data Science', '130000'),
(184, 'Haldia Institute of Technology', 'Haldia', '03224-252900', 4.1, 'B.Tech, MBA, MCA', '140000'),
(185, 'Heritage Institute of Technology', 'Kolkata', '033-66270600', 4.3, 'B.Tech, MBA, MCA, Data Science', '155000'),
(186, 'MCKV Institute of Engineering', 'Howrah', '033-26548079', 4.1, 'B.Tech, MBA, MCA', '140000'),
(187, 'Asansol Engineering College', 'Asansol', '0341-2252109', 4, 'B.Tech, MBA, Data Science', '135000'),
(188, 'Institute of Engineering and Management (IEM)', 'Kolkata', '033-23571276', 4.3, 'B.Tech, MBA, MCA, Data Science', '160000'),
(189, 'Netaji Subhash Engineering College', 'Kolkata', '033-24361285', 4.1, 'B.Tech, MBA, MCA, AI', '145000'),
(190, 'Dr. B.C. Roy Engineering College', 'Durgapur', '0343-2516612', 4, 'B.Tech, MBA, MCA', '135000'),
(191, 'Atria Institute of Technology', 'Bangalore', '080-23631298', 4, 'B.Tech, MBA, Data Science', '140000'),
(192, 'RNS Institute of Technology', 'Bangalore', '080-28611880', 4.2, 'B.Tech, MBA, MCA', '150000'),
(193, 'Global Academy of Technology', 'Bangalore', '080-28603158', 4, 'B.Tech, MBA, Data Science', '145000'),
(194, 'BNM Institute of Technology', 'Bangalore', '080-26711780', 4.2, 'B.Tech, MBA, AI', '155000'),
(195, 'Vemana Institute of Technology', 'Bangalore', '080-25533636', 4, 'B.Tech, MBA, MCA', '140000'),
(196, 'Sri Krishna College of Technology', 'Coimbatore', '0422-2678002', 4.3, 'B.Tech, MBA, Data Science', '150000'),
(197, 'Karpagam College of Engineering', 'Coimbatore', '0422-2619005', 4.1, 'B.Tech, MBA, MCA', '145000'),
(198, 'Dr. Mahalingam College of Engineering and Technology', 'Pollachi', '04259-236030', 4.2, 'B.Tech, MBA, Data Science', '140000'),
(199, 'PSNA College of Engineering and Technology', 'Dindigul', '0451-2554032', 4.2, 'B.Tech, MBA, MCA', '135000'),
(200, 'Kongu Engineering College', 'Erode', '04294-226555', 4.3, 'B.Tech, MBA, MCA, Data Science', '145000'),
(201, 'Velalar College of Engineering and Technology', 'Erode', '0424-2244201', 4.1, 'B.Tech, MBA, AI', '140000'),
(202, 'Aditya Engineering College', 'Surampalem', '0884-2326171', 4.1, 'B.Tech, MBA, MCA, Data Science', '140000'),
(203, 'GMR Institute of Technology', 'Rajam', '08941-251592', 4.2, 'B.Tech, MBA, AI', '150000'),
(204, 'Anil Neerukonda Institute of Technology and Sciences', 'Visakhapatnam', '08922-248550', 4.2, 'B.Tech, MBA, Data Science', '140000'),
(205, 'Sri Venkateswara College of Engineering and Technology', 'Chittoor', '08572-241387', 4, 'B.Tech, MBA, MCA', '135000'),
(206, 'Gayatri Vidya Parishad College of Engineering', 'Visakhapatnam', '0891-2739144', 4.3, 'B.Tech, MBA, Data Science', '150000'),
(207, 'Aditya Institute of Technology and Management', 'Srikakulam', '08941-222201', 4, 'B.Tech, MBA, Data Science', '130000'),
(208, 'Prasad V. Potluri Siddhartha Institute of Technology', 'Vijayawada', '0866-2581699', 4.1, 'B.Tech, MBA, MCA', '145000'),
(209, 'VNR Vignana Jyothi Institute of Engineering and Technology', 'Hyderabad', '040-23042758', 4.3, 'B.Tech, MBA, Data Science', '155000'),
(210, 'CMR College of Engineering & Technology', 'Hyderabad', '08418-200719', 4.2, 'B.Tech, MBA, Data Science', '150000'),
(211, 'Malla Reddy Engineering College', 'Hyderabad', '040-29562505', 4.1, 'B.Tech, MBA, MCA', '145000'),
(212, 'Institute of Technology, Nirma University', 'Ahmedabad', '02717-241911', 4.5, 'B.Tech, MBA, Data Science', '165000'),
(213, 'Uka Tarsadia University', 'Bardoli', '02622-273006', 4.2, 'B.Tech, MBA, MCA, AI', '150000'),
(214, 'Indus University', 'Ahmedabad', '02764-260277', 4, 'B.Tech, MBA, Data Science', '140000'),
(215, 'Parul University', 'Vadodara', '02668-260300', 4.1, 'B.Tech, MBA, MCA, Data Science', '145000'),
(216, 'ITM Vocational University', 'Vadodara', '02668-260500', 4, 'B.Tech, MBA, Data Science', '135000'),
(217, 'Rajasthan Technical University', 'Kota', '0744-2473931', 4.3, 'B.Tech, MBA, MCA', '130000'),
(218, 'JECRC University', 'Jaipur', '0141-6565601', 4.2, 'B.Tech, MBA, Data Science', '145000'),
(219, 'Swami Keshvanand Institute of Technology', 'Jaipur', '0141-2752165', 4.1, 'B.Tech, MBA, MCA', '140000'),
(220, 'Arya College of Engineering & IT', 'Jaipur', '0141-2470660', 4, 'B.Tech, MBA, AI, Data Science', '135000'),
(221, 'Pacific University', 'Udaipur', '0294-3065000', 4, 'B.Tech, MBA, MCA', '140000'),
(222, 'LNCT Bhopal (Lakshmi Narain College of Technology)', 'Bhopal', '0755-2981100', 4.3, 'B.Tech, MBA, MCA, AI', '160000'),
(223, 'Technocrats Institute of Technology', 'Bhopal', '0755-2736210', 4.2, 'B.Tech, MBA, Data Science', '145000'),
(224, 'Oriental College of Technology', 'Bhopal', '0755-2529026', 4.1, 'B.Tech, MBA, MCA', '140000'),
(225, 'RGPV (Rajiv Gandhi Proudyogiki Vishwavidyalaya)', 'Bhopal', '0755-2734913', 4.4, 'B.Tech, M.Tech, Data Science', '125000'),
(226, 'Sagar Institute of Research & Technology', 'Bhopal', '0755-3983180', 4.2, 'B.Tech, MBA, Data Science', '145000'),
(227, 'Gandhi Institute for Technological Advancement', 'Bhubaneswar', '0674-2490902', 4.1, 'B.Tech, MBA, MCA', '140000'),
(228, 'Trident Academy of Technology', 'Bhubaneswar', '0674-6649034', 4, 'B.Tech, MBA, Data Science', '135000'),
(229, 'Silicon Institute of Technology', 'Bhubaneswar', '0674-2725448', 4.3, 'B.Tech, MBA, AI, Data Science', '155000'),
(230, 'Centurion University of Technology and Management', 'Paralakhemundi', '06815-222535', 4.1, 'B.Tech, MBA, Data Science', '140000'),
(231, 'KIIT School of Computer Engineering', 'Bhubaneswar', '0674-2740326', 4.4, 'B.Tech, MCA, AI, Data Science', '170000'),
(232, 'Govt College of Engineering', 'Amravati', '0721-2660360', 4.2, 'B.Tech, MBA, MCA', '130000'),
(233, 'Pimpri Chinchwad College of Engineering', 'Pune', '020-27653168', 4.3, 'B.Tech, MBA, MCA', '150000'),
(234, 'MIT World Peace University', 'Pune', '020-71177177', 4.4, 'B.Tech, MBA, Data Science, AI', '165000'),
(235, 'Vishwakarma Institute of Technology', 'Pune', '020-25489300', 4.3, 'B.Tech, MBA, MCA, Data Science', '155000'),
(236, 'Walchand College of Engineering', 'Sangli', '0233-2300383', 4.3, 'B.Tech, M.Tech, AI', '140000'),
(237, 'Yeshwantrao Chavan College of Engineering', 'Nagpur', '0712-2292550', 4.2, 'B.Tech, MBA, Data Science', '145000'),
(238, 'Government College of Engineering', 'Aurangabad', '0240-2366101', 4.3, 'B.Tech, M.Tech, Data Science', '130000'),
(239, 'Institute of Engineering and Technology, Lucknow', 'Lucknow', '0522-2361692', 4.3, 'B.Tech, M.Tech, MCA', '130000'),
(240, 'Shri Mata Vaishno Devi University', 'Katra', '01991-285524', 4.2, 'B.Tech, MBA, MCA, Data Science', '140000'),
(241, 'National Institute of Technology Mizoram', 'Aizawl', '0389-2391236', 4.3, 'B.Tech, M.Tech', '160000'),
(242, 'North Eastern Regional Institute of Science and Technology (NERIST)', 'Itanagar', '0360-2257401', 4.2, 'B.Tech, MBA, Data Science', '150000'),
(243, 'Assam Don Bosco University', 'Guwahati', '0361-2842956', 4.1, 'B.Tech, MBA, MCA, AI', '145000'),
(244, 'Kaziranga University', 'Jorhat', '0376-2305502', 4, 'B.Tech, MBA, Data Science', '140000'),
(245, 'Mizoram University', 'Aizawl', '0389-2330654', 4.2, 'MCA, B.Tech, Data Science', '120000'),
(246, 'Tripura Institute of Technology', 'Agartala', '0381-2370013', 4, 'B.Tech, MCA, AI', '130000'),
(247, 'The ICFAI University', 'Dehradun', '0135-3003000', 4.1, 'B.Tech, MBA, Data Science', '150000'),
(248, 'Graphic Era Hill University', 'Dehradun', '1800-180-0014', 4.2, 'B.Tech, MBA, MCA, AI', '155000'),
(249, 'Quantum University', 'Roorkee', '01332-280300', 4, 'B.Tech, MBA, Data Science', '140000'),
(250, 'University of Petroleum and Energy Studies (UPES)', 'Dehradun', '1800-102-8737', 4.4, 'B.Tech, MBA, Data Science, AI', '180000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
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
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
