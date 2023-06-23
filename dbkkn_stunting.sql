-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 05:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkkn_stunting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `id_alternatif` varchar(11) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL,
  `keputusan_training` varchar(50) NOT NULL,
  `distance` double NOT NULL,
  `rangking` int(11) NOT NULL,
  `pilihan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`id_alternatif`, `nama_alternatif`, `keputusan_training`, `distance`, `rangking`, `pilihan`) VALUES
('A01', 'Alternative A', 'GIZI BAIK / NORMAL', 4.2426406871193, 2, 'Ya'),
('A02', 'Alternative B', 'GIZI KURANG / KURUS', 5.0990195135928, 3, 'Ya'),
('A03', 'Alternative C', 'GIZI KURANG / KURUS', 5.0990195135928, 4, 'Tidak'),
('A04', 'Alternative D', 'GIZI LEBIH / OVERWEIGHT', 5.0990195135928, 5, 'Tidak'),
('A05', 'Alternative E', 'OBESITAS', 3.3166247903554, 1, 'Ya'),
('A06', 'Alternative F', 'GIZI LEBIH / OVERWEIGHT', 6.4031242374328, 8, 'Tidak'),
('A07', 'Alternative G', 'OBESITAS', 5.3851648071345, 6, 'Tidak'),
('A08', 'Alternative H', 'OBESITAS', 5.3851648071345, 7, 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id_hasil` int(11) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL,
  `keputusan_training` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id_kriteria` varchar(11) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `keterangan_kriteria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id_kriteria`, `nama_kriteria`, `keterangan_kriteria`) VALUES
('K01', 'BB/U', 'Berat Badan terhadap Umur'),
('K02', 'TB/U', 'Tinggi Badan terhadap Umur'),
('K03', 'TB/BB', 'Tinggi Badan terhadapa Berat Badan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_subkriteria`
--

CREATE TABLE `tb_subkriteria` (
  `id_subkriteria` varchar(20) NOT NULL,
  `nama_subkriteria` varchar(50) NOT NULL,
  `id_kriteria` varchar(11) NOT NULL,
  `nilai_subkriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_subkriteria`
--

INSERT INTO `tb_subkriteria` (`id_subkriteria`, `nama_subkriteria`, `id_kriteria`, `nilai_subkriteria`) VALUES
('0', '', '', 0),
('', '', '', 0),
('', '', '', 0),
('S01', 'Sub-Kriteria A', 'K01', 4),
('S02', 'Sub-Kriteria B', 'K02', 3),
('S03', 'Sub-Kriteria AB', 'K02', 2),
('S04', 'Sub-Kriteria ABC', 'K02', 1),
('S05', 'Sub-Kriteria AD', 'K02', 4),
('S06', 'Sub-Kriteria A', 'K01', 4),
('S07', 'Sub-Kriteria AB', 'K01', 3),
('S08', 'Sub-Kriteria C', 'K03', 1),
('S09', 'Sub-Kriteria C', 'K03', 4),
('S10', 'Sub-Kriteria C', 'K03', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_testing`
--

CREATE TABLE `tb_testing` (
  `id_testing` int(11) NOT NULL,
  `id_alternatif` varchar(20) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL,
  `id_kriteria` varchar(20) NOT NULL,
  `nilai_testing` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_testing`
--

INSERT INTO `tb_testing` (`id_testing`, `id_alternatif`, `nama_alternatif`, `id_kriteria`, `nilai_testing`) VALUES
(109, 'A01', 'Bagus', 'K01', '4'),
(110, 'A01', 'Bagus', 'K02', '4'),
(111, 'A01', 'Bagus', 'K03', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tb_training`
--

CREATE TABLE `tb_training` (
  `id_training` int(11) NOT NULL,
  `id_alternatif` varchar(11) NOT NULL,
  `id_kriteria` varchar(11) NOT NULL,
  `id_subkriteria` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_training`
--

INSERT INTO `tb_training` (`id_training`, `id_alternatif`, `id_kriteria`, `id_subkriteria`) VALUES
(190, 'A01', 'K01', 'S01'),
(191, 'A01', 'K02', 'S04'),
(192, 'A01', 'K03', 'S08'),
(193, 'A02', 'K01', 'S06'),
(194, 'A02', 'K02', 'S02'),
(195, 'A02', 'K03', 'S08'),
(196, 'A03', 'K01', 'S07'),
(197, 'A03', 'K02', 'S04'),
(198, 'A03', 'K03', 'S09'),
(199, 'A04', 'K01', 'S01'),
(200, 'A04', 'K02', 'S04'),
(201, 'A04', 'K03', 'S10'),
(202, 'A05', 'K01', 'S07'),
(203, 'A05', 'K02', 'S04'),
(204, 'A05', 'K03', 'S08'),
(205, 'A06', 'K01', 'S06'),
(206, 'A06', 'K02', 'S05'),
(207, 'A06', 'K03', 'S10'),
(208, 'A07', 'K01', 'S06'),
(209, 'A07', 'K02', 'S03'),
(210, 'A07', 'K03', 'S10'),
(211, 'A08', 'K01', 'S06'),
(212, 'A08', 'K02', 'S03'),
(213, 'A08', 'K03', 'S10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id_pengguna` int(15) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'Novri Rizki Akbar', 'admin', '12345', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tb_testing`
--
ALTER TABLE `tb_testing`
  ADD PRIMARY KEY (`id_testing`);

--
-- Indexes for table `tb_training`
--
ALTER TABLE `tb_training`
  ADD PRIMARY KEY (`id_training`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_testing`
--
ALTER TABLE `tb_testing`
  MODIFY `id_testing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tb_training`
--
ALTER TABLE `tb_training`
  MODIFY `id_training` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_pengguna` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
