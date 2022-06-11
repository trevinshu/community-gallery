-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 01, 2021 at 01:03 AM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password_hash`, `user_email`) VALUES
(1, 'trevinshu', '$2y$10$uchXGrub7xd8q5kC4kraiORR8UGpN/anZyE0N/G0y686jRBFkEy2a', 'tshu2@nait.ca'),
(2, 'johndoe', '$2y$10$pjrzjmy1K9nZXNQBYPuH7.KH/N.URj0//Qt5FUp7XuwOd03ZaHkNS', 'johndoe@email.com'),
(3, 'bobsmith', '$2y$10$lkqjLNgarRohddd0bN8QIueNVgevfCt6hWA7GZ1OK91KWzA.va2bi', 'bobsmith@email.com'),
(4, 'sallysmith', '$2y$10$rp2zZNYIlHWUa6NWwbgKkOkZfDutTZLSLLZtXfwnn3GHIYPHKobWG', 'sallysmith@email.com'),
(5, 'trevin', '$2y$10$RJ3N2DT3Sag4wvua1KPEB.FG3AWaOYWmm/m36j3GZA2rTuxE/1xPq', 'trevin@trevin.trevin'),
(6, 'test', '$2y$10$dVjNTY1yZJR2cVR8CpnEbuiO16Ckml4qj9gSzGTRo6C.IwrWGbu1e', 'test@test.test'),
(7, 'janedoe', '$2y$10$jFyNogwk0PSk2WAwOTBLVeJX7Js/u/kxg3emqCOK6ZSYZoU.H4Jnq', 'janedoe@mail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
