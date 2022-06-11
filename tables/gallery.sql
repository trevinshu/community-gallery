-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 01, 2021 at 01:02 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tshu2_dmit2503`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `timedate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `author_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`title`, `description`, `filename`, `timedate`, `author_id`, `id`) VALUES
('Bob\'s Beef Tenderloin', 'Bob\'s beef tenderloin that he found on Google. ', 'beef-tenderloin.jpeg', '2021-02-01 06:52:43', 3, 11),
('Bob\'s Fried Egg Sandwich ', 'Bob found this tasty fried egg sandwich on Google. ', 'fried-egg-sandwhich.jpeg', '2021-02-01 06:53:34', 3, 12),
('Bob\'s Carbonara ', 'Bob wants Carbonara so he Googled a picture because Bob can\'t cook Carbonara.', 'carbonara.jpeg', '2021-02-01 06:54:33', 3, 13),
('Bob\'s Fudge', 'Bob wants dessert so he search for a picture of fudge. ', 'fudge.jpg', '2021-02-01 06:55:18', 3, 14),
('Bob\'s Tuna Wrap', 'Bob is craving tuna so he Googled a picture of Tuna.', 'tuna-wrap.jpeg', '2021-02-01 06:55:57', 3, 15),
('Bob\'s last picture', 'Bob wants a break. So this is Bob\'s last photo of Chicken Cutlets.', 'chicken-cutlets.jpeg', '2021-02-01 06:56:47', 3, 16),
('John\'s Latkes', 'John is craving Latkes so he searched for a picture.', 'latkes.jpeg', '2021-02-01 06:58:14', 2, 17),
('John\'s Soba Noodles', 'John likes Soba Noodles so here\'s a picture of Soba Noodles.', 'Soba-Noodles.jpeg', '2021-02-01 06:59:08', 2, 18),
('John\'s Sunny Side Up Eggs', 'John loves a sunny side up egg so here\'s a photo.', 'sunny-side.jpeg', '2021-02-01 07:00:05', 2, 19),
('John\'s Monte Cristo', 'John likes a Monte Cristo. Here\'s a photo of it.', 'monte-cristo.jpeg', '2021-02-01 07:00:52', 2, 20),
('John\'s Cloud Eggs', 'John watched a trendy YouTube video of Cloud Eggs. Here\'s a photo of it. ', 'cloud-eggs.jpeg', '2021-02-01 07:01:53', 2, 21),
('John\'s Ribbon Pasta', 'John\'s into trendy food so here\'s a photo of Ribbon Pasta.', 'ribbon-pasta.jpeg', '2021-02-01 07:02:42', 2, 22),
('Photo of Tipsy', 'This is a photo of Tipsy the British Shorthair from the British Shorthair Reddit page. ', 'mfzpvhqa1y941.jpg', '2021-02-01 07:05:39', 1, 23),
('Photo of Winston', 'This is a photo of Winston from the British Shorthair Reddit page. ', '2dfvc4ydpo641.jpg', '2021-02-01 07:06:30', 1, 24),
('Photo of Mister Molko ', 'This is a photo of Mister Molko from the British Shorthair Reddit page. ', 'vlw2i080bea41.jpg', '2021-02-01 07:08:21', 1, 25),
('Photo of Koola ', 'This is a photo of Koola from the British Shorthair Reddit page.', 'hcroqxx0e0061.jpg', '2021-02-01 07:09:20', 1, 26),
('Photo of Daeny', 'This is a photo of Daeny from the British Shorthair Reddit page.', 'B07LQZB.jpg', '2021-02-01 07:10:16', 1, 27),
('Photo of Ted', 'This is a photo of Ted from the British Shorthair Reddit page.', 'qvvwo6x8yjc61.jpg', '2021-02-01 07:16:20', 1, 28),
('Photo of Nacho', 'This is a photo of Nacho from the British Shorthair Reddit page.', 'phnhwl3iupb61.jpg', '2021-02-01 07:17:17', 1, 29),
('Photo of Daisy', 'Photo of Daisy from the Golden Retrievers Reddit page.', 's4tidrm4p9751.jpg', '2021-02-01 07:20:04', 7, 30),
('Photo of Mango', 'Photo of Mango from the Golden Retrievers Reddit page.', 'ymku59dvjw251.jpg', '2021-02-01 07:20:36', 7, 31),
('Photo of Shadow', 'Photo of Shadow from the Golden Retrievers Reddit page.', 'V02N2Is.jpg', '2021-02-01 07:21:38', 7, 32),
('Photo of Rosie', 'Photo of Rosie from the Golden Retrievers Reddit page.', '3eut4s0a2fy51.jpg', '2021-02-01 07:22:15', 7, 33),
('Photo of Cooper', 'Photo of Cooper from the Golden Retrievers Reddit page.', '7fc1fd6rxu751.jpg', '2021-02-01 07:22:48', 7, 34),
('Photo of Henri', 'Photo of Henri from the Golden Retrievers Reddit page.', '5zn85hpttlc51.jpg', '2021-02-01 07:23:26', 7, 35),
('Photo of Pancakes', 'Photo of Pancakes from the Golden Retrievers Reddit page.', 'm6sz8sed7m061.jpg', '2021-02-01 07:23:56', 7, 36);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
