-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2018 at 05:54 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btp_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `pid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `privacy` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `post` text,
  `status` int(11) DEFAULT NULL,
  `dateofpublish` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`pid`, `id`, `privacy`, `title`, `post`, `status`, `dateofpublish`) VALUES
(7, 11, 0, 'First Story - Bradley Whitford', 'Infuse your life with action. Don\'t wait for it to happen. Make it happen. Make your own future. Make your own hope. Make your own love. And whatever your beliefs, honor your creator, not by passively waiting for grace to come down from upon high, but by doing what you can to make grace happen... yourself, right now, right down here on Earth\r\n\r\n', 2, '2018-09-28'),
(8, 11, 0, 'Quote by Helen Keller', 'Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence. ', 2, '2018-09-28'),
(10, 11, 1, 'Quote by - Norman Vincent Peale', 'â€œBelieve in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers you cannot be successful or happy.â€', 2, '2018-09-28'),
(11, 11, 0, 'Story#4', 'This\r\nis a\r\nStory\r\nFull of\r\nHappiness.', 0, '2018-05-04'),
(12, 11, 0, 'New Story', 'This is a new story.\r\nThis contains a sample body for the story.', 0, '2018-05-05'),
(13, 15, 0, 'Quote by Pauline Kael', 'Where there is a will, there is a way. If there is a chance in a million that you can do something, anything, to keep what you want from ending, do it. Pry the door open or, if need be, wedge your foot in that door and keep it open.', 2, '2018-09-28'),
(14, 2, 0, 'Power of Belief', 'No matter how much the world tries to hold you back, always continue with the belief that what you want to achieve is possible. Believing you can become successful is the most important step in actually achieving it.\r\n', 0, '2018-11-29'),
(15, 1, 0, 'Title of the Story', 'Body of the Story.\r\nThis is a story for motivation.', 2, '2018-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `stat` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `pid`, `uid`, `stat`, `comments`, `username`) VALUES
(7, 10, 2, 1, 'Nice Comment by Norman Vincent. I like your positive attitude.', 'Admin'),
(10, 13, 2, 1, 'Oh wow, nice work ! keep it up. ', 'Admin'),
(11, 13, 1, 1, 'Hey Man, I like your post. It was helpful :)', 'neel');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `user_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `result_id` int(11) NOT NULL,
  `result_sum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`user_id`, `form_id`, `result_id`, `result_sum`) VALUES
(2, 1, 6, 51),
(2, 2, 3, 21),
(2, 3, 3, 29),
(1, 1, 4, 23),
(1, 2, 4, 31),
(1, 3, 3, 27);

-- --------------------------------------------------------

--
-- Table structure for table `log_user`
--

CREATE TABLE `log_user` (
  `entry_no` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `login` datetime DEFAULT NULL,
  `logout` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_user`
--

INSERT INTO `log_user` (`entry_no`, `id`, `login`, `logout`) VALUES
(1, 11, '2018-04-14 14:59:56', '2018-05-12 00:42:04'),
(2, 1, '2018-04-14 15:00:08', '2018-12-11 00:11:35'),
(3, 2, '2018-04-14 15:00:15', '2018-12-11 00:18:45'),
(4, 4, '2018-04-13 12:01:47', '2018-04-14 15:01:49'),
(5, 11, '2018-04-12 15:01:55', '2018-05-12 00:42:04'),
(6, 2, '2018-04-10 15:02:05', '2018-12-11 00:18:45'),
(7, 13, '2018-03-01 15:16:35', '2018-04-14 06:33:18'),
(8, 2, '2018-04-14 15:16:44', '2018-12-11 00:18:45'),
(9, 11, '2018-04-14 15:37:43', '2018-05-12 00:42:04'),
(10, 11, '2018-04-14 19:23:53', '2018-05-12 00:42:04'),
(11, 2, '2018-04-14 19:24:25', '2018-12-11 00:18:45'),
(13, 2, '2018-04-15 18:07:21', '2018-12-11 00:18:45'),
(14, 11, '2018-04-16 00:53:59', '2018-05-12 00:42:04'),
(15, 11, '2018-04-16 02:14:23', '2018-05-12 00:42:04'),
(16, 11, '2018-04-16 16:40:36', '2018-05-12 00:42:04'),
(17, 11, '2018-04-16 19:23:24', '2018-05-12 00:42:04'),
(18, 2, '2018-04-16 19:29:32', '2018-12-11 00:18:45'),
(19, 11, '2018-04-16 19:31:04', '2018-05-12 00:42:04'),
(20, 11, '2018-04-17 01:00:18', '2018-05-12 00:42:04'),
(21, 2, '2018-04-17 01:03:57', '2018-12-11 00:18:45'),
(22, 2, '2018-04-17 01:04:04', '2018-12-11 00:18:45'),
(23, 11, '2018-04-17 01:04:21', '2018-05-12 00:42:04'),
(24, 11, '2018-04-17 01:07:22', '2018-05-12 00:42:04'),
(25, 2, '2018-04-17 01:08:16', '2018-12-11 00:18:45'),
(27, 2, '2018-04-17 01:48:34', '2018-12-11 00:18:45'),
(28, 11, '2018-04-17 01:52:50', '2018-05-12 00:42:04'),
(29, 2, '2018-04-17 01:54:25', '2018-12-11 00:18:45'),
(30, 11, '2018-04-17 01:58:08', '2018-05-12 00:42:04'),
(31, 11, '2018-04-17 12:31:33', '2018-05-12 00:42:04'),
(33, 11, '2018-04-18 00:24:32', '2018-05-12 00:42:04'),
(34, 2, '2018-04-18 00:24:39', '2018-12-11 00:18:45'),
(35, 11, '2018-04-18 00:26:49', '2018-05-12 00:42:04'),
(36, 2, '2018-04-18 00:27:44', '2018-12-11 00:18:45'),
(37, 2, '2018-04-18 00:28:23', '2018-12-11 00:18:45'),
(38, 11, '2018-04-18 00:36:27', '2018-05-12 00:42:04'),
(39, 2, '2018-04-18 00:37:39', '2018-12-11 00:18:45'),
(40, 11, '2018-04-18 00:39:31', '2018-05-12 00:42:04'),
(41, 11, '2018-04-18 00:43:39', '2018-05-12 00:42:04'),
(42, 2, '2018-04-18 00:51:59', '2018-12-11 00:18:45'),
(43, 2, '2018-04-18 01:18:51', '2018-12-11 00:18:45'),
(44, 2, '2018-04-18 01:20:51', '2018-12-11 00:18:45'),
(45, 2, '2018-04-18 01:46:46', '2018-12-11 00:18:45'),
(46, 11, '2018-04-18 01:47:06', '2018-05-12 00:42:04'),
(47, 2, '2018-04-18 01:47:16', '2018-12-11 00:18:45'),
(48, 11, '2018-04-18 18:38:06', '2018-05-12 00:42:04'),
(49, 2, '2018-04-18 18:40:49', '2018-12-11 00:18:45'),
(50, 11, '2018-04-18 18:41:58', '2018-05-12 00:42:04'),
(51, 2, '2018-04-18 21:46:25', '2018-12-11 00:18:45'),
(52, 2, '2018-04-19 16:41:47', '2018-12-11 00:18:45'),
(53, 11, '2018-04-19 16:42:35', '2018-05-12 00:42:04'),
(54, 11, '2018-04-23 23:35:30', '2018-05-12 00:42:04'),
(55, 11, '2018-04-23 23:49:58', '2018-05-12 00:42:04'),
(56, 2, '2018-04-24 00:39:03', '2018-12-11 00:18:45'),
(57, 11, '2018-04-24 00:48:29', '2018-05-12 00:42:04'),
(58, 2, '2018-04-24 00:57:31', '2018-12-11 00:18:45'),
(59, 2, '2018-04-24 16:38:25', '2018-12-11 00:18:45'),
(60, 11, '2018-04-24 17:30:33', '2018-05-12 00:42:04'),
(61, 2, '2018-04-24 17:30:45', '2018-12-11 00:18:45'),
(62, 2, '2018-04-24 21:52:29', '2018-12-11 00:18:45'),
(63, 11, '2018-04-24 23:13:42', '2018-05-12 00:42:04'),
(64, 2, '2018-04-24 23:14:24', '2018-12-11 00:18:45'),
(65, 2, '2018-04-25 21:59:34', '2018-12-11 00:18:45'),
(66, 2, '2018-04-25 22:45:04', '2018-12-11 00:18:45'),
(67, 2, '2018-05-04 10:40:15', '2018-12-11 00:18:45'),
(68, 2, '2018-05-04 17:41:29', '2018-12-11 00:18:45'),
(69, 11, '2018-05-04 17:41:43', '2018-05-12 00:42:04'),
(70, 2, '2018-05-04 17:44:17', '2018-12-11 00:18:45'),
(71, 2, '2018-05-04 21:34:41', '2018-12-11 00:18:45'),
(72, 2, '2018-05-04 21:49:35', '2018-12-11 00:18:45'),
(73, 11, '2018-05-05 00:00:28', '2018-05-12 00:42:04'),
(74, 2, '2018-05-05 00:05:54', '2018-12-11 00:18:45'),
(75, 2, '2018-05-05 00:06:58', '2018-12-11 00:18:45'),
(76, 2, '2018-05-05 00:16:41', '2018-12-11 00:18:45'),
(77, 15, '2018-05-05 02:54:22', '2018-05-05 02:58:11'),
(78, 2, '2018-05-05 02:56:25', '2018-12-11 00:18:45'),
(79, 15, '2018-05-05 02:58:07', '2018-05-05 02:58:11'),
(80, 16, '2018-05-05 03:00:23', '2018-05-05 03:02:24'),
(81, 2, '2018-05-05 03:02:29', '2018-12-11 00:18:45'),
(82, 11, '2018-05-12 00:27:09', '2018-05-12 00:42:04'),
(83, 2, '2018-05-12 00:29:12', '2018-12-11 00:18:45'),
(84, 2, '2018-05-12 00:35:44', '2018-12-11 00:18:45'),
(85, 11, '2018-05-12 00:41:43', '2018-05-12 00:42:04'),
(86, 2, '2018-05-12 00:42:07', '2018-12-11 00:18:45'),
(87, 2, '2018-05-12 22:28:46', '2018-12-11 00:18:45'),
(88, 2, '2018-07-11 09:36:42', '2018-12-11 00:18:45'),
(89, 2, '2018-07-11 09:52:05', '2018-12-11 00:18:45'),
(90, 2, '2018-07-11 10:29:44', '2018-12-11 00:18:45'),
(91, 2, '2018-07-11 10:30:12', '2018-12-11 00:18:45'),
(92, 2, '2018-07-11 10:30:16', '2018-12-11 00:18:45'),
(93, 2, '2018-07-12 11:10:37', '2018-12-11 00:18:45'),
(94, 2, '2018-09-28 12:33:20', '2018-12-11 00:18:45'),
(95, 2, '2018-09-28 18:48:53', '2018-12-11 00:18:45'),
(96, 2, '2018-10-18 11:35:56', '2018-12-11 00:18:45'),
(97, 2, '2018-11-28 22:09:55', '2018-12-11 00:18:45'),
(98, 2, '2018-11-29 09:56:32', '2018-12-11 00:18:45'),
(99, 2, '2018-11-30 01:16:55', '2018-12-11 00:18:45'),
(100, 2, '2018-12-01 20:40:31', '2018-12-11 00:18:45'),
(101, 2, '2018-12-03 10:26:13', '2018-12-11 00:18:45'),
(102, 2, '2018-12-03 11:28:17', '2018-12-11 00:18:45'),
(103, 2, '2018-12-04 14:49:59', '2018-12-11 00:18:45'),
(104, 2, '2018-12-07 09:34:07', '2018-12-11 00:18:45'),
(105, 1, '2018-12-07 09:34:45', '2018-12-11 00:11:35'),
(106, 2, '2018-12-07 09:53:00', '2018-12-11 00:18:45'),
(107, 2, '2018-12-09 18:26:18', '2018-12-11 00:18:45'),
(108, 1, '2018-12-09 19:14:28', '2018-12-11 00:11:35'),
(109, 2, '2018-12-09 19:14:32', '2018-12-11 00:18:45'),
(110, 2, '2018-12-09 19:14:43', '2018-12-11 00:18:45'),
(111, 1, '2018-12-09 19:14:53', '2018-12-11 00:11:35'),
(112, 2, '2018-12-09 19:14:59', '2018-12-11 00:18:45'),
(113, 1, '2018-12-10 18:07:58', '2018-12-11 00:11:35'),
(114, 2, '2018-12-10 18:08:04', '2018-12-11 00:18:45'),
(115, 2, '2018-12-10 18:54:59', '2018-12-11 00:18:45'),
(116, 1, '2018-12-10 18:55:12', '2018-12-11 00:11:35'),
(117, 2, '2018-12-10 18:56:49', '2018-12-11 00:18:45'),
(118, 1, '2018-12-10 22:14:06', '2018-12-11 00:11:35'),
(119, 2, '2018-12-10 23:07:14', '2018-12-11 00:18:45'),
(120, 1, '2018-12-10 23:12:11', '2018-12-11 00:11:35'),
(121, 2, '2018-12-10 23:25:38', '2018-12-11 00:18:45'),
(122, 1, '2018-12-10 23:40:51', '2018-12-11 00:11:35'),
(123, 2, '2018-12-10 23:43:19', '2018-12-11 00:18:45'),
(124, 1, '2018-12-11 00:08:08', '2018-12-11 00:11:35'),
(125, 2, '2018-12-11 00:11:38', '2018-12-11 00:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `rid` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`rid`, `type`, `cid`, `content`, `problem`, `uid`) VALUES
(1, 1, 13, 'Quote by Pauline Kael', 'the content is not following the community guidelines.', 2),
(4, 1, 13, 'Quote by Pauline Kael', 'waapis se report karien', 2),
(6, 1, 7, 'First Story - Bradley Whitford', 'Bad post', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `avatar` text,
  `about` text,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `firstname`, `lastname`, `avatar`, `about`, `email`) VALUES
(1, 'badshah', 'singh', '/BTP/assets/avatars/neel.png', 'a brief description about badshah', 'notcompulsary@gmail.com'),
(2, 'Admin', 'BhaiSahab', '/BTP/assets/avatars/admin.png', 'I am the Admin!', 'admin@btp.com'),
(3, 'badshah3', 'singh', '/BTP/assets/avatars/rakoon.jpg', 'a brief description about badshah', 'notcompulsary@gmail.com'),
(4, 'Abhinav', 'Mishra', '/BTP/assets/avatars/rakoon.jpg', 'i am manan.\r\nand I\'m cute.\r\nand I know it \"ALL\" !', 'abhi77@hotmail.com'),
(6, 'badshah6', 'singh', '/BTP/assets/avatars/rakoon.jpg', 'a brief description about badshah', 'notcompulsary@gmail.com'),
(7, 'badshah7', 'singh', '/BTP/assets/avatars/rakoon.jpg', 'a brief description about badshah', 'notcompulsary@gmail.com'),
(11, 'Manan', 'Adhikari', '/BTP/assets/avatars/manan.png', 'About Me- I am Positive !\r\nAin\'t I man no great. \r\nHello world!\r\n', ''),
(13, 'John', 'Doe', '/BTP/assets/avatars/rakoon.jpg', 'About Me- I am Positive !', 'email ID'),
(14, 'John', 'Doe', '/BTP/assets/avatars/rajeev.jpg', 'About Me- I am Positive !', 'email ID'),
(15, 'Superman', 'Verma', '/BTP/assets/avatars/raman.jpg', 'About Me- I am Positive !\r\nI am cool !', 'email ID');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `level` int(1) DEFAULT NULL,
  `security_ques` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_name`, `user_password`, `level`, `security_ques`, `ans`) VALUES
(1, 'neel', 'neel', 2, 'What city were you born in?', 'maggie'),
(2, 'Admin', 'admin', 5, 'What is your favorite food?', 'chaat'),
(3, 'sasasas', 'kdkdkd', 1, 'kdkdkd', 'nnnnn'),
(4, 'abc', 'manan', 5, '1+1=?', '2'),
(6, 'rajpurohit', 'singh', 1, 'a,b,c, ?', 'd'),
(7, 'neelesh', 'singh', 1, '1,2,3,?', '4'),
(11, 'manan', 'manan', 1, 'What Is your favorite book?', 'pasta'),
(13, 'rakoon', 'badshah', 1, 'lol', 'lol3'),
(14, 'rajeev', 'nair', 1, 'who is the best?', 'me'),
(15, 'raman', 'neelesh123', 1, 'What is your favorite food?', 'maggie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD UNIQUE KEY `pid` (`pid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `log_user`
--
ALTER TABLE `log_user`
  ADD PRIMARY KEY (`entry_no`),
  ADD UNIQUE KEY `entry_no` (`entry_no`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `log_user`
--
ALTER TABLE `log_user`
  MODIFY `entry_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
