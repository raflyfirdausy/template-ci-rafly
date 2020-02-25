-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2020 at 08:23 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `racik`
--

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(11) NOT NULL,
  `nama_desa` varchar(50) NOT NULL,
  `kecamatan_desa` varchar(100) NOT NULL,
  `kabupaten_desa` varchar(100) NOT NULL,
  `provinsi_desa` varchar(100) NOT NULL,
  `dusun_desa` varchar(30) DEFAULT NULL,
  `namakantor_desa` varchar(50) DEFAULT NULL,
  `alamatkantor_desa` text,
  `kodepos_desa` varchar(6) DEFAULT NULL,
  `notelp_desa` varchar(20) DEFAULT NULL,
  `email_desa` varchar(100) DEFAULT NULL,
  `deskripsi_desa` text,
  `website_desa` varchar(100) DEFAULT NULL,
  `logo_desa` text,
  `path_desa` varchar(50) DEFAULT NULL,
  `userid_desa` varchar(100) DEFAULT NULL,
  `password_desa` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `nama_desa`, `kecamatan_desa`, `kabupaten_desa`, `provinsi_desa`, `dusun_desa`, `namakantor_desa`, `alamatkantor_desa`, `kodepos_desa`, `notelp_desa`, `email_desa`, `deskripsi_desa`, `website_desa`, `logo_desa`, `path_desa`, `userid_desa`, `password_desa`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 'Wanadadi', 'Wanadadi', 'Banjarnegara', 'Jawa Tengah', 'Wanawani', 'Balai Desa', 'Jalan Jalan YUK', '53181', '0281293871293', 'wanadadi@haha.com', 'mantap mantap', 'google.com', 'logo', '10_hahaha', 'rafly', 'ganteng', '2020-02-25 02:02:26', '2020-02-25 14:07:05', '2020-02-25 14:07:05'),
(19, 'Wanadadi', 'Wanadadi', 'Banjarnegara', 'Jawa Tengah', 'Wanawani', 'Balai Desa', 'Jalan Jalan YUK', '53181', '0281293871293', 'wanadadi@haha.com', 'mantap mantap', 'google.com', 'logo', '10_hahaha', 'rafly', 'ganteng', '2020-02-25 02:02:26', '2020-02-25 14:07:05', '2020-02-25 14:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `rest_access`
--

CREATE TABLE `rest_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(200) NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rest_keys`
--

CREATE TABLE `rest_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rest_keys`
--

INSERT INTO `rest_keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`, `date_modified`) VALUES
(1, 1, 'abc', 1, 0, 0, '192.168.1.1', 123123, '2020-02-24 14:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `rest_limits`
--

CREATE TABLE `rest_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rest_logs`
--

CREATE TABLE `rest_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(200) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `rest_access`
--
ALTER TABLE `rest_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest_keys`
--
ALTER TABLE `rest_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest_limits`
--
ALTER TABLE `rest_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest_logs`
--
ALTER TABLE `rest_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rest_access`
--
ALTER TABLE `rest_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_keys`
--
ALTER TABLE `rest_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rest_limits`
--
ALTER TABLE `rest_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_logs`
--
ALTER TABLE `rest_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
