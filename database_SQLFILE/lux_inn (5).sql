-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 12:39 PM
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
-- Database: `lux_inn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(1, 'ahnafadmin@gmail.com', 'ahnafadmin@gmail.com', '$2y$10$ZVkeP/w6mMv7asjVP8K4SeJ3804clwlP/dZS4eDXui/hm.XW9C1s.', '2024-09-25 15:25:30'),
(2, 'Noman', 'ahnafr71@gmail.com', '$2y$10$PETwW3MrCcbBpPgJgl.qieXVATrbJ8IMBbGNpzw3nE78K7fnlsZrS', '2024-09-25 18:56:31'),
(3, 'iub', 'iubedubd@gmail.com', '$2y$10$G/oNDncZw56XGSCHDu7iGO8mWrr6ghLstbR0vCPpa4nRcj/.mIf1W', '2024-10-15 06:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `check_in` varchar(200) NOT NULL,
  `check_out` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` int(40) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `room_name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `payment` int(10) NOT NULL,
  `user_id` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `check_in`, `check_out`, `email`, `phone_number`, `full_name`, `hotel_name`, `room_name`, `status`, `payment`, `user_id`, `created_at`) VALUES
(2, '9/19/2024', '9/30/2024', 'ahnafr71@gmail.com', 1931289, 'Md Ahnaf Rashid', 'Lux Inn Seaside', 'Suite Room', 'Done', 0, 1, '2024-09-18 11:27:09'),
(3, '9/23/2024', '9/24/2024', 'ahnafr71@gmail.com', 1931289, 'Md Ahnaf Rashid', 'Lux Inn Central', 'Family Room', 'Canceled', 0, 1, '2024-09-24 04:24:26'),
(4, '9/3/2024', '9/4/2024', 'ahnaf.skytech@gmail.com', 1931289, 'Md Ahnaf Rashid', 'Lux Inn Central', 'Family Room', '', 0, 1, '2024-09-24 04:24:52'),
(5, '9/3/2024', '9/4/2024', 'ahnaf.skytech@gmail.com', 1931289, 'Md Ahnaf Rashid', 'Lux Inn Central', 'Family Room', '', 0, 1, '2024-09-24 04:33:54'),
(6, '9/25/2024', '9/26/2024', 'nomanzawad@gmail.com', 123567, 'noman', 'Lux Inn Central', 'Family Room', 'Canceled', 0, 1, '2024-09-24 04:54:31'),
(7, '9/28/2024', '9/29/2024', 'jarif.khan@gmail.com', 123567, 'jarif', 'Lux Inn Central', 'Family Room', 'Pending', 120, 1, '2024-09-24 10:23:08'),
(8, '9/26/2024', '9/30/2024', 'ahnafr71@gmail.com', 1232131, 'ahnaf', 'Lux Inn Seaside', 'Suite Room', 'Pending', 100, 1, '2024-09-25 04:56:03'),
(9, '9/26/2024', '9/30/2024', 'ahnafr71@gmail.com', 1232131, 'ahnaf', 'Lux Inn Seaside', 'Suite Room', 'Pending', 100, 1, '2024-09-25 04:59:37'),
(10, '9/28/2024', '9/30/2024', 'noman', 2147483647, 'a1312321', 'Lux Inn Seaside', 'Suite Room', 'Pending', 100, 1, '2024-09-25 05:00:17'),
(11, '9/27/2024', '9/30/2024', 'ahnafr71@gmail.com', 0, 'Ahnaf', 'Lux Inn Seaside', 'Suite Room', 'Pending', 300, 1, '2024-09-25 08:30:57'),
(12, '9/28/2024', '10/2/2024', 'ahnafr71@gmail.com', 131232131, 'Reafael', 'Lux Inn Seaside', 'Suite Room', 'Pending', 400, 1, '2024-09-25 08:34:56'),
(13, '9/30/2024', '10/1/2024', '12312@@12321312', 123123123, '213123', 'Lux Inn Seaside', 'Suite Room', 'Pending', 100, 1, '2024-09-25 08:36:38'),
(14, '9/27/2024', '9/30/2024', 'asda', 123123, 'aasdasd', 'Lux Inn Central', 'Family Room', 'Pending', 360, 1, '2024-09-25 08:41:26'),
(15, '9/30/2024', '10/5/2024', 'hell@hello.com', 123123123, 'Samina', 'Lux Inn Central', 'Family Room', 'Pending', 600, 1, '2024-09-25 08:55:10'),
(16, '10/4/2024', '10/5/2024', 'simba@gmail.com', 12312321, 'simba', 'Lux Inn Central', 'Family Room', 'Done', 120, 1, '2024-09-25 09:03:28'),
(17, '10/31/2024', '11/7/2024', 'asdasd', 1123213, 'asdasd', 'Lux Inn Seaside', 'Suite Room', 'Confirmed', 700, 1, '2024-10-13 20:18:50'),
(18, '10/20/2024', '11/4/2024', 'cse499@gmail.com', 2147483647, 'jarif', 'Lux Inn Seaside', 'Suite Room', 'Confirmed', 1500, 1, '2024-10-16 15:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Pending','Reviewed','Resolved') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `full_name`, `email`, `phone_number`, `subject`, `message`, `created_at`, `status`) VALUES
(1, 'Md Ahnaf Rashid', 'ahnafr71@gmail.com', '1931289', '', 'Hello I am testing the contact form', '2024-10-04 06:19:53', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(5) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `image`, `description`, `location`, `status`, `created_at`) VALUES
(1, 'Lux Inn TEST', 'hotel_1.jpg', 'Lux Inn Seaside provides a view of the ocean and includes surfing and other features', 'Australia', 1, '2024-09-18 08:02:03'),
(2, 'Lux Inn North-End', 'hotel_2.jpg', 'The North-end Side captures the view of the night city with all malls and structures nearby', 'Australia', 1, '2024-09-18 08:21:08'),
(3, 'Lux Inn Central ', 'hotel_3.jpg', 'The Central and The Biggest Section of Our Hotel, Consisting of state of the art theatre and food court', 'Australia', 1, '2024-09-18 08:22:34'),
(5, 'test3', 'pexels-naimbic-2290738.jpg', 'test3', 'locationtest3', 0, '2024-09-27 10:17:22'),
(8, 'testRoom1', 'pexels-perqued-13722878.jpg', 'testr1', 'Near the Ocean', 1, '2024-10-16 17:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `num_persons` int(10) NOT NULL,
  `size` int(10) NOT NULL,
  `view` varchar(200) NOT NULL,
  `num_beds` int(10) NOT NULL,
  `hotel_id` int(10) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `image`, `price`, `num_persons`, `size`, `view`, `num_beds`, `hotel_id`, `hotel_name`, `status`, `created_at`) VALUES
(1, 'Suite Room', 'room-1.jpg', 100, 3, 50, 'Sea View', 2, 1, 'Lux Inn Seaside', 1, '2024-09-18 08:39:02'),
(2, 'Standard Room', 'room-2.jpg', 90, 3, 60, 'Night View, City Lights', 2, 2, 'Lux Inn North-End', 1, '2024-09-18 08:39:02'),
(3, 'Family Room', 'room-3.jpg', 120, 5, 90, 'Central View To all sides', 4, 3, 'Lux Inn Central', 1, '2024-09-18 08:43:50'),
(4, 'Deluxe Room', 'room-4.jpg', 150, 5, 90, 'All around view', 4, 3, 'Lux Inn Central', 0, '2024-09-18 08:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `created_at`) VALUES
(1, 'ahnaf', 'ahnafr71@gmail.com', '$2y$10$ZVkeP/w6mMv7asjVP8K4SeJ3804clwlP/dZS4eDXui/hm.XW9C1s.', '2024-09-18 05:55:43'),
(2, 'ahnaf', 'ahnafr71@gmail.com', '$2y$10$mrfMRg6YVzdTuKcGA96aAeQbaonOj5vPg6wKM8QgnGEGgARhpKbpC', '2024-09-18 05:57:06'),
(3, '499@gmail.com', '499', '$2y$10$IHqc4lz85X86yTpMGMQ3aO76hiTvUHQINfoezJ4xFUsOZI9adAcBa', '2024-10-16 04:12:12'),
(4, 'ahnaf1', 'ahnafadmin@gmail.com', '$2y$10$8dHnk9JouvWg5pxtIxq34uQcLWte67vmz.ydOrC8naPSl9wEn5Mj.', '2024-10-16 04:13:42'),
(5, 'ahnaf1', 'ahnafadmin@gmail.com', '$2y$10$a4/Pe.01HfXjMHyDVgbr.eVWgDFnClxH/510O0IeDhUCNGDZgV7f2', '2024-10-16 04:19:12'),
(6, '1234', 'iubedubd@gmail.com', '$2y$10$6361G5K8JrDoKHKuC79.g./Z7rICIJUQeZy8F3HWviLFJQuN.uYDm', '2024-10-16 04:19:26'),
(7, '1234', '1234@gmail.com', '$2y$10$GxafEu0J9DoUoF8.ZqKqee7vK8ZUpn7FXmjIOjKj9/TAUYX1AUVaG', '2024-10-16 04:34:21'),
(8, 'abcdefg', 'abcdefg@gmail.com', '$2y$10$s.UFzuPoFSkeFyz4QZC1Tuc6M6zOO9.u7vyRLk6BfKyuRaDhu1Ikq', '2024-10-16 18:36:37'),
(9, '909090909', '9@gmail.com', '$2y$10$J5ngYqedrI47X6buziBxe.MSbn0BYWW4zZvFST9ARKjB4onIHImgy', '2024-10-16 18:37:30'),
(10, 'welt', 'welt@gmail.com', '$2y$10$Ciggq5ct.dfKpCU3SboqBO6gwkvKrMn8IOOvMX0kMcyKXB80lvPUy', '2024-10-16 18:39:55'),
(11, '12312312', 'cse499@gmail.com', '$2y$10$N4glOjRqZxZP4hmeqbHVGOfeo4KzfItOinICgRK54BOE1sh5dBVzK', '2024-10-16 18:40:34'),
(12, 'iub', 'iubedubd@gmail.com', '$2y$10$vvzXpbrcDCynEyeyB1CFPeADy5c029vPKQ10Uf925cWqXWTgfLcoS', '2024-10-16 18:40:58'),
(13, 'iub', 'iubedubd@gmail.com', '$2y$10$nBllRyYCfmQSO9y01nZUa.yFAGVFihnNFk8XL62JPb6FAdfhTzLDC', '2024-10-16 18:42:27'),
(14, 'iub', 'iubedubd@gmail.com', '$2y$10$CK6sLbaVaaL0djkmJfnTFuwr2/vB66nrbKsy0syLbrIaVLdprjicC', '2024-10-16 18:43:46'),
(15, 'ahnaf1', 'ahnafadmin@gmail.com', '$2y$10$Z3cAZREPeWshHT/1nsn2xuHcbu9n94E1Ao458D8bbuMHdaII50/Wq', '2024-10-16 18:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `utilities`
--

CREATE TABLE `utilities` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `room_id` int(5) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilities`
--

INSERT INTO `utilities` (`id`, `name`, `icon`, `description`, `room_id`, `create_at`) VALUES
(1, 'Tea Coffee', 'flaticon-diet', 'Coffee Fresh from the continent roasted and prepared', 1, '2024-09-18 09:21:56'),
(2, 'Bath Tub and Showers', 'flaticon-workout', 'Bath Tub with war water and showers available', 2, '2024-09-18 09:21:56'),
(3, 'Laundry', 'flaticon-diet-1', 'Laundry available', 3, '2024-09-18 09:21:56'),
(4, 'Fully Air Conditioned', 'flaticon-first', 'Full On AC', 1, '2024-09-18 09:21:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
