-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3307
-- Generation Time: Aug 14, 2020 at 01:44 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `email`, `mobile`, `password`, `cpassword`) VALUES
(1, 'kidved', 'kvfns@kmvrv.kvmf', '5464974', '$2y$10$5bWtcu3fq6I4JaQwnhUXmeg/AZgZnqJPt0lfr2K.wIEYmK9iT9WDO', '$2y$10$V1bSpk3ZR0PY4FuUWfTEOuRKp/AoQaB0jBCPzzh6K0bthliYHRIRm'),
(2, 'a', 'a@a.a', '1111', '$2y$10$ZrHdeEy7hiVqafdaFjdlK.V5M./dMvLvt7f1KSnVcBgLXK7hK7vEG', '$2y$10$aGUUdl10CWrVAk7n0Ko46eeO6ExMne4wKzR8QcxpfYMskY0VPYKT.'),
(3, 'c', 'c@c.c', '1234', '$2y$10$qjNfcH7cF6sYXutY4qnwWO4J6ZSTQ1qGY2iQkrNi2elJzdvLGLK8a', '$2y$10$uOBcwvwu4KNki9TmZ.WVuOiBRuKfwSRllRymkeHqVCWJdiawzQOrm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
