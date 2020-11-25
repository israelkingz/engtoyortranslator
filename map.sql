-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 10:13 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `map`
--

-- --------------------------------------------------------

--
-- Table structure for table `addwords`
--

CREATE TABLE `addwords` (
  `id` int(10) NOT NULL,
  `word` varchar(100) NOT NULL,
  `meaning` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addwords`
--

INSERT INTO `addwords` (`id`, `word`, `meaning`) VALUES
(1, 'Come', 'Wa'),
(2, 'Eat', 'Jeun'),
(3, 'Sleep', 'Sun'),
(4, 'go away', 'kuro nipe');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `messager` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `owner`, `messager`, `message`, `time`) VALUES
(1, 0, 1, 'Hello and Welcome {name}, My name is Aria and I\'m going to be your personal assistant', 1605790992),
(57, 1, 1, 'Mokola Roundabout to Challenge', 1606145279),
(58, 0, 1, 'Walk To Ojota Bus Stop\r\n\r\nTake a Danfo\r\nFrom: Ojota Bus Stop\r\nHeading Toward: Ketu Bus Stop\r\nGet Off at: Iyana Ipaja Bus Station\r\nPrice: ?250 - 300\r\n\r\nTake a Danfo\r\nFrom: Iyana Ipaja Bus Station\r\nHeading Toward: Iyana Ipaja Bus Station\r\nGet Off at: Ajah Bus Stop\r\nPrice: ?700 - 1200\r\n\r\nWalk To Ajah Bus Stop\r\n\r\nWalk to your destination\r\nTotal Estimate: ?950 - 1500\r\n', 1606145281),
(59, 1, 1, 'Mokola Roundabout to Challenge', 1606145296),
(60, 0, 1, 'Walk To Ojota Bus Stop\r\n\r\nTake a Danfo\r\nFrom: Ojota Bus Stop\r\nHeading Toward: Ketu Bus Stop\r\nGet Off at: Iyana Ipaja Bus Station\r\nPrice: ?250 - 300\r\n\r\nTake a Danfo\r\nFrom: Iyana Ipaja Bus Station\r\nHeading Toward: Iyana Ipaja Bus Station\r\nGet Off at: Ajah Bus Stop\r\nPrice: ?700 - 1200\r\n\r\nWalk To Ajah Bus Stop\r\n\r\nWalk to your destination\r\nTotal Estimate: ?950 - 1500\r\n', 1606145298),
(61, 1, 1, 'Mokola to Challenge', 1606145312),
(62, 0, 1, 'Walk To Ojota Bus Stop\r\n\r\nTake a Danfo\r\nFrom: Ojota Bus Stop\r\nHeading Toward: Ketu Bus Stop\r\nGet Off at: Iyana Ipaja Bus Station\r\nPrice: ?250 - 300\r\n\r\nTake a Danfo\r\nFrom: Iyana Ipaja Bus Station\r\nHeading Toward: Iyana Ipaja Bus Station\r\nGet Off at: Ajah Bus Stop\r\nPrice: ?700 - 1200\r\n\r\nWalk To Ajah Bus Stop\r\n\r\nWalk to your destination\r\nTotal Estimate: ?950 - 1500\r\n', 1606145314),
(63, 1, 1, 'Hello', 1606145379),
(64, 0, 1, 'Could not find Location', 1606145381),
(65, 1, 1, 'Mokola Roundabout to Challenge', 1606145447),
(66, 0, 1, 'Walk To Ojota Bus Stop\r\n\r\nTake a Danfo\r\nFrom: Ojota Bus Stop\r\nHeading Toward: Ketu Bus Stop\r\nGet Off at: Iyana Ipaja Bus Station\r\nPrice: ?250 - 300\r\n\r\nTake a Danfo\r\nFrom: Iyana Ipaja Bus Station\r\nHeading Toward: Iyana Ipaja Bus Station\r\nGet Off at: Ajah Bus Stop\r\nPrice: ?700 - 1200\r\n\r\nWalk To Ajah Bus Stop\r\n\r\nWalk to your destination\r\nTotal Estimate: ?950 - 1500\r\n', 1606145449);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `loc_from` varchar(100) NOT NULL,
  `loc_to` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `description1` varchar(1000) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `loc_from`, `loc_to`, `description`, `description1`, `state`) VALUES
(1, 'Mokola Roundabout', 'Challenge', 'Walk To Ojota Bus Stop\r\n\r\nTake a Danfo\r\nFrom: Ojota Bus Stop\r\nHeading Toward: Ketu Bus Stop\r\nGet Off at: Iyana Ipaja Bus Station\r\nPrice: ?250 - 300\r\n\r\nTake a Danfo\r\nFrom: Iyana Ipaja Bus Station\r\nHeading Toward: Iyana Ipaja Bus Station\r\nGet Off at: Ajah Bus Stop\r\nPrice: ?700 - 1200\r\n\r\nWalk To Ajah Bus Stop\r\n\r\nWalk to your destination\r\nTotal Estimate: ?950 - 1500\r\n', 'Walk To Ojota Bus Stop\r\n\r\nTake a Danfo\r\nFrom: Ojota Bus Stop\r\nHeading Toward: Ketu Bus Stop\r\nGet Off at: Iyana Ipaja Bus Station\r\nPrice: ?250 - 300\r\n\r\nTake a Danfo\r\nFrom: Iyana Ipaja Bus Station\r\nHeading Toward: Iyana Ipaja Bus Station\r\nGet Off at: Ajah Bus Stop\r\nPrice: ?700 - 1200\r\n\r\nWalk To Ajah Bus Stop\r\n\r\nWalk to your destination\r\nTotal Estimate: ?950 - 1500\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`) VALUES
(1, 'Lagos'),
(2, 'Oyo');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `loc_from` varchar(100) NOT NULL,
  `loc_to` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `traffic`
--

CREATE TABLE `traffic` (
  `id` int(11) NOT NULL,
  `loc_id` int(11) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `state` int(1) NOT NULL,
  `avatar` text NOT NULL,
  `theme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `password`, `status`, `state`, `avatar`, `theme`) VALUES
(1, 'Tomiwa Amole', 'tomiwamole@gmail.com', 9092354394, 'tomiwamole', '', 1, '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addwords`
--
ALTER TABLE `addwords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traffic`
--
ALTER TABLE `traffic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addwords`
--
ALTER TABLE `addwords`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `traffic`
--
ALTER TABLE `traffic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
