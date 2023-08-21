-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 02:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbknn_stunting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `id_alternatif` varchar(11) NOT NULL,
  `nik_alternatif` varchar(20) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL,
  `umur_alternatif` varchar(10) NOT NULL,
  `tgl_alternatif` varchar(10) NOT NULL,
  `keputusan_training` varchar(50) NOT NULL,
  `distance` double NOT NULL,
  `rangking` int(11) NOT NULL,
  `pilihan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`id_alternatif`, `nik_alternatif`, `nama_alternatif`, `umur_alternatif`, `tgl_alternatif`, `keputusan_training`, `distance`, `rangking`, `pilihan`) VALUES
('A01', '263527345234324', 'MUZAYYUNA', '34', '22/12/2018', 'TIDAK', 88.694475588956, 28, 'Tidak'),
('A02', '1242141241242143', 'ANNISA HAIFA', '34', '2023-01-21', 'TIDAK', 106.84385803592, 37, 'Tidak'),
('A03', '', 'SYAWAL AL FAIZI', '', '', 'TIDAK', 106.67070825677, 36, 'Tidak'),
('A04', '', 'MUHAMMAD AFIQ', '', '', 'TIDAK', 95.730037083457, 32, 'Tidak'),
('A05', '', 'ARIKA FATINA', '', '', 'TIDAK', 98.871684520898, 34, 'Tidak'),
('A06', '', 'NAFISATUL HUSNA', '', '', 'TIDAK', 103.01145567363, 35, 'Tidak'),
('A07', '', 'ALESHA AL ZAHRA', '', '', 'TIDAK', 85.842879728024, 21, 'Tidak'),
('A08', '', 'AZRINA', '', '', 'TIDAK', 84.155867293968, 16, 'Tidak'),
('A09', '', 'ARIKA SAFNA', '', '', 'TIDAK', 95.007578645074, 31, 'Tidak'),
('A10', '', 'FATIN SIDQIA', '', '', 'TIDAK', 85.29384502999, 19, 'Tidak'),
('A11', '', 'MUHAMMAD RIZIQ', '', '', 'TIDAK', 77.260662694543, 2, 'Ya'),
('A12', '', 'NAURA RANIA', '', '', 'TIDAK', 83.22043018394, 14, 'Tidak'),
('A13', '', 'AZKIATUL MUNA', '', '', 'TIDAK', 88.300679499084, 25, 'Tidak'),
('A14', '', 'MAULANA ZAHRA', '', '', 'TIDAK', 78.262379212493, 4, 'Tidak'),
('A15', '', 'AFIFA FATIA', '', '', 'TIDAK', 81.065467370515, 8, 'Tidak'),
('A16', '', 'MUNAWARAH', '', '', 'TIDAK', 80.230916734137, 7, 'Tidak'),
('A17', '', 'MUHAMMAD ZARMUJI', '', '', 'TIDAK', 85.109870167919, 17, 'Tidak'),
('A18', '', 'SUCI RAMADHANI', '', '', 'TIDAK', 98.13770936801, 33, 'Tidak'),
('A19', '', 'JIHAN TALITA HAURA', '', '', 'TIDAK', 108.66462165765, 38, 'Tidak'),
('A20', '', 'MUDA BALIA', '', '', 'TIDAK', 90.6576527382, 29, 'Tidak'),
('A21', '', 'SULTAN', '', '', 'TIDAK', 92.655275079188, 30, 'Tidak'),
('A22', '', 'AIRA ILYANA', '', '', 'TIDAK', 87.584302246464, 23, 'Tidak'),
('A23', '', 'MUHAMMAD YAZID', '', '', 'TIDAK', 87.655518936345, 24, 'Tidak'),
('A24', '', 'KHALISA BAHIRA', '', '', 'TIDAK', 88.600733631274, 27, 'Tidak'),
('A25', '', 'ARSYILA AINI', '', '', 'TIDAK', 81.664925151499, 10, 'Tidak'),
('A26', '', 'NASYA NABILA', '', '', 'YA', 79.832637436076, 6, 'Tidak'),
('A27', '', 'MUHAMMAD', '', '', 'TIDAK', 81.233059772484, 9, 'Tidak'),
('A28', '', 'ZAIN KAUSAR', '', '', 'TIDAK', 85.142292663517, 18, 'Tidak'),
('A29', '', 'ADIRA AZZAHRA', '', '', 'TIDAK', 82.571726395904, 13, 'Tidak'),
('A30', '', 'MUHAMMAD IKRAM', '', '', 'TIDAK', 76.496339781718, 1, 'Ya'),
('A31', '', 'ASHIMA DINILLAH', '', '', 'TIDAK', 85.375640553966, 20, 'Tidak'),
('A32', '', 'AKIFA NAILA', '', '', 'TIDAK', 79.605527446277, 5, 'Tidak'),
('A33', '', 'GAYSHAN ALFAN', '', '', 'TIDAK', 83.624398353591, 15, 'Tidak'),
('A34', '', 'AFIVA FITIA', '', '', 'YA', 87.485084443007, 22, 'Tidak'),
('A35', '', 'ARIF MUNANDAR', '', '', 'YA', 77.524189773257, 3, 'Ya'),
('A36', '', 'AQILA PUTRI', '', '', 'TIDAK', 88.490055938506, 26, 'Tidak'),
('A37', '', 'SYIFAUL KHAIRA', '', '', 'TIDAK', 82.460232839836, 11, 'Tidak'),
('A38', '', 'MUHAMMAD ZAIYAN', '', '', 'TIDAK', 82.560038759681, 12, 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id_hasil` int(11) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL,
  `keputusan_training` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id_kriteria` varchar(11) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `keterangan_kriteria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id_kriteria`, `nama_kriteria`, `keterangan_kriteria`) VALUES
('K01', 'Berat Badan (BB)', '-'),
('K02', 'Tinggi Badan (TB)', '-'),
('K03', 'Lingkar Kepala (LKP)', '-'),
('K04', 'Lingkar Lengan Atas (LILA)', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tb_subkriteria`
--

CREATE TABLE `tb_subkriteria` (
  `id_subkriteria` varchar(50) NOT NULL,
  `nama_subkriteria` varchar(50) NOT NULL,
  `id_kriteria` varchar(50) NOT NULL,
  `nilai_subkriteria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_subkriteria`
--

INSERT INTO `tb_subkriteria` (`id_subkriteria`, `nama_subkriteria`, `id_kriteria`, `nilai_subkriteria`) VALUES
('S01', 'BB', 'K01', '13.5\r'),
('S02', 'BB', 'K01', '11.9\r'),
('S03', 'BB', 'K01', '15.8\r'),
('S04', 'BB', 'K01', '11.8\r'),
('S05', 'BB', 'K01', '13.1\r'),
('S06', 'BB', 'K01', '14.4\r'),
('S07', 'BB', 'K01', '12\r'),
('S08', 'BB', 'K01', '13.9\r'),
('S09', 'BB', 'K01', '13.8\r'),
('S10', 'BB', 'K01', '14.8\r'),
('S100', 'LKP', 'K03', '43\r'),
('S101', 'LKP', 'K03', '41\r'),
('S102', 'LKP', 'K03', '41\r'),
('S103', 'LKP', 'K03', '45\r'),
('S104', 'LKP', 'K03', '43\r'),
('S105', 'LKP', 'K03', '42\r'),
('S106', 'LKP', 'K03', '41\r'),
('S107', 'LKP', 'K03', '43\r'),
('S108', 'LKP', 'K03', '46\r'),
('S109', 'LKP', 'K03', '45\r'),
('S11', 'BB', 'K01', '13.9\r'),
('S110', 'LKP', 'K03', '40\r'),
('S111', 'LKP', 'K03', '41\r'),
('S112', 'LKP', 'K03', '43\r'),
('S113', 'LKP', 'K03', '42\r'),
('S114', 'LKP', 'K03', '44\r'),
('S115', 'LILA', 'K04', '17\r'),
('S116', 'LILA', 'K04', '20\r'),
('S117', 'LILA', 'K04', '19\r'),
('S118', 'LILA', 'K04', '16\r'),
('S119', 'LILA', 'K04', '17\r'),
('S12', 'BB', 'K01', '14.2\r'),
('S120', 'LILA', 'K04', '17\r'),
('S121', 'LILA', 'K04', '15\r'),
('S122', 'LILA', 'K04', '15\r'),
('S123', 'LILA', 'K04', '17\r'),
('S124', 'LILA', 'K04', '19\r'),
('S125', 'LILA', 'K04', '17\r'),
('S126', 'LILA', 'K04', '19\r'),
('S127', 'LILA', 'K04', '18\r'),
('S128', 'LILA', 'K04', '19\r'),
('S129', 'LILA', 'K04', '17\r'),
('S13', 'BB', 'K01', '15.1\r'),
('S130', 'LILA', 'K04', '16\r'),
('S131', 'LILA', 'K04', '19\r'),
('S132', 'LILA', 'K04', '20\r'),
('S133', 'LILA', 'K04', '18\r'),
('S134', 'LILA', 'K04', '16\r'),
('S135', 'LILA', 'K04', '16\r'),
('S136', 'LILA', 'K04', '15\r'),
('S137', 'LILA', 'K04', '15\r'),
('S138', 'LILA', 'K04', '16\r'),
('S139', 'LILA', 'K04', '16\r'),
('S14', 'BB', 'K01', '13\r'),
('S140', 'LILA', 'K04', '16\r'),
('S141', 'LILA', 'K04', '19\r'),
('S142', 'LILA', 'K04', '18\r'),
('S143', 'LILA', 'K04', '15\r'),
('S144', 'LILA', 'K04', '15\r'),
('S145', 'LILA', 'K04', '15\r'),
('S146', 'LILA', 'K04', '17\r'),
('S147', 'LILA', 'K04', '18\r'),
('S148', 'LILA', 'K04', '13\r'),
('S149', 'LILA', 'K04', '13\r'),
('S15', 'BB', 'K01', '13.1\r'),
('S150', 'LILA', 'K04', '17\r'),
('S151', 'LILA', 'K04', '15\r'),
('S152', 'LILA', 'K04', '16\r'),
('S16', 'BB', 'K01', '14\r'),
('S17', 'BB', 'K01', '13.7\r'),
('S18', 'BB', 'K01', '14.9\r'),
('S19', 'BB', 'K01', '12\r'),
('S20', 'BB', 'K01', '10.9\r'),
('S21', 'BB', 'K01', '11\r'),
('S22', 'BB', 'K01', '10.1\r'),
('S23', 'BB', 'K01', '10.7\r'),
('S24', 'BB', 'K01', '10.3\r'),
('S25', 'BB', 'K01', '10.4\r'),
('S26', 'BB', 'K01', '11.5\r'),
('S27', 'BB', 'K01', '14.1\r'),
('S28', 'BB', 'K01', '13.9\r'),
('S29', 'BB', 'K01', '9.7\r'),
('S30', 'BB', 'K01', '8.7\r'),
('S31', 'BB', 'K01', '8\r'),
('S32', 'BB', 'K01', '9.8\r'),
('S33', 'BB', 'K01', '10.2\r'),
('S34', 'BB', 'K01', '9.2\r'),
('S35', 'BB', 'K01', '9\r'),
('S36', 'BB', 'K01', '9.3\r'),
('S37', 'BB', 'K01', '8.7\r'),
('S38', 'BB', 'K01', '9.6\r'),
('S39', 'TB', 'K02', '95\r'),
('S40', 'TB', 'K02', '95\r'),
('S41', 'TB', 'K02', '92\r'),
('S42', 'TB', 'K02', '95\r'),
('S43', 'TB', 'K02', '98\r'),
('S44', 'TB', 'K02', '102\r'),
('S45', 'TB', 'K02', '85\r'),
('S46', 'TB', 'K02', '83\r'),
('S47', 'TB', 'K02', '94\r'),
('S48', 'TB', 'K02', '84\r'),
('S49', 'TB', 'K02', '76\r'),
('S50', 'TB', 'K02', '82\r'),
('S51', 'TB', 'K02', '87\r'),
('S52', 'TB', 'K02', '77\r'),
('S53', 'TB', 'K02', '80\r'),
('S54', 'TB', 'K02', '79\r'),
('S55', 'TB', 'K02', '84\r'),
('S56', 'TB', 'K02', '97\r'),
('S57', 'TB', 'K02', '108\r'),
('S58', 'TB', 'K02', '90\r'),
('S59', 'TB', 'K02', '92\r'),
('S60', 'TB', 'K02', '87\r'),
('S61', 'TB', 'K02', '87\r'),
('S62', 'TB', 'K02', '88\r'),
('S63', 'TB', 'K02', '81\r'),
('S64', 'TB', 'K02', '79\r'),
('S65', 'TB', 'K02', '80\r'),
('S66', 'TB', 'K02', '84\r'),
('S67', 'TB', 'K02', '82\r'),
('S68', 'TB', 'K02', '76\r'),
('S69', 'TB', 'K02', '85\r'),
('S70', 'TB', 'K02', '79\r'),
('S71', 'TB', 'K02', '83\r'),
('S72', 'TB', 'K02', '87\r'),
('S73', 'TB', 'K02', '77\r'),
('S74', 'TB', 'K02', '88\r'),
('S75', 'TB', 'K02', '82\r'),
('S76', 'TB', 'K02', '82\r'),
('S77', 'LKP', 'K03', '49\r'),
('S78', 'LKP', 'K03', '43\r'),
('S79', 'LKP', 'K03', '48\r'),
('S80', 'LKP', 'K03', '46\r'),
('S81', 'LKP', 'K03', '42\r'),
('S82', 'LKP', 'K03', '45\r'),
('S83', 'LKP', 'K03', '45\r'),
('S84', 'LKP', 'K03', '46\r'),
('S85', 'LKP', 'K03', '47\r'),
('S86', 'LKP', 'K03', '49\r'),
('S87', 'LKP', 'K03', '45\r'),
('S88', 'LKP', 'K03', '44\r'),
('S89', 'LKP', 'K03', '46\r'),
('S90', 'LKP', 'K03', '43\r'),
('S91', 'LKP', 'K03', '43\r'),
('S92', 'LKP', 'K03', '41\r'),
('S93', 'LKP', 'K03', '45\r'),
('S94', 'LKP', 'K03', '44\r'),
('S95', 'LKP', 'K03', '44\r'),
('S96', 'LKP', 'K03', '41\r'),
('S97', 'LKP', 'K03', '41\r'),
('S98', 'LKP', 'K03', '42\r'),
('S99', 'LKP', 'K03', '41\r');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_testing`
--

INSERT INTO `tb_testing` (`id_testing`, `id_alternatif`, `nama_alternatif`, `id_kriteria`, `nilai_testing`) VALUES
(141, 'A01', 'SYLLA', 'K01', '13.7\r\n'),
(142, 'A01', 'SYLLA', 'K02', '81\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_training`
--

CREATE TABLE `tb_training` (
  `id_training` int(11) NOT NULL,
  `id_alternatif` varchar(11) NOT NULL,
  `id_kriteria` varchar(11) NOT NULL,
  `id_subkriteria` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_training`
--

INSERT INTO `tb_training` (`id_training`, `id_alternatif`, `id_kriteria`, `id_subkriteria`) VALUES
(246, 'A04', 'K01', 'S04'),
(247, 'A04', 'K02', 'S39'),
(248, 'A05', 'K01', 'S15'),
(249, 'A05', 'K02', 'S43'),
(250, 'A06', 'K01', 'S06'),
(251, 'A06', 'K02', 'S44'),
(252, 'A07', 'K01', 'S19'),
(253, 'A07', 'K02', 'S45'),
(254, 'A08', 'K01', 'S08'),
(255, 'A08', 'K02', 'S46'),
(256, 'A09', 'K01', 'S09'),
(257, 'A09', 'K02', 'S47'),
(258, 'A10', 'K01', 'S10'),
(259, 'A10', 'K02', 'S48'),
(260, 'A11', 'K01', 'S28'),
(261, 'A11', 'K02', 'S68'),
(262, 'A12', 'K01', 'S12'),
(263, 'A12', 'K02', 'S50'),
(264, 'A13', 'K01', 'S13'),
(265, 'A13', 'K02', 'S60'),
(266, 'A14', 'K01', 'S16'),
(267, 'A14', 'K02', 'S52'),
(268, 'A15', 'K01', 'S15'),
(269, 'A15', 'K02', 'S65'),
(270, 'A16', 'K01', 'S16'),
(271, 'A16', 'K02', 'S54'),
(272, 'A17', 'K01', 'S17'),
(273, 'A17', 'K02', 'S55'),
(274, 'A18', 'K01', 'S18'),
(275, 'A18', 'K02', 'S56'),
(276, 'A19', 'K01', 'S07'),
(277, 'A19', 'K02', 'S57'),
(278, 'A20', 'K01', 'S20'),
(279, 'A20', 'K02', 'S58'),
(280, 'A21', 'K01', 'S21'),
(281, 'A21', 'K02', 'S41'),
(282, 'A22', 'K01', 'S22'),
(283, 'A22', 'K02', 'S60'),
(284, 'A23', 'K01', 'S23'),
(285, 'A23', 'K02', 'S61'),
(286, 'A24', 'K01', 'S24'),
(287, 'A24', 'K02', 'S74'),
(288, 'A25', 'K01', 'S25'),
(289, 'A25', 'K02', 'S63'),
(290, 'A26', 'K01', 'S26'),
(291, 'A26', 'K02', 'S70'),
(292, 'A27', 'K01', 'S27'),
(293, 'A27', 'K02', 'S53'),
(294, 'A28', 'K01', 'S28'),
(295, 'A28', 'K02', 'S55'),
(296, 'A29', 'K01', 'S29'),
(297, 'A29', 'K02', 'S76'),
(298, 'A30', 'K01', 'S30'),
(299, 'A30', 'K02', 'S68'),
(300, 'A31', 'K01', 'S31'),
(301, 'A31', 'K02', 'S45'),
(302, 'A32', 'K01', 'S32'),
(303, 'A32', 'K02', 'S54'),
(304, 'A33', 'K01', 'S33'),
(305, 'A33', 'K02', 'S46'),
(306, 'A34', 'K01', 'S34'),
(307, 'A34', 'K02', 'S51'),
(308, 'A35', 'K01', 'S35'),
(309, 'A35', 'K02', 'S73'),
(310, 'A36', 'K01', 'S36'),
(311, 'A36', 'K02', 'S62'),
(312, 'A37', 'K01', 'S30'),
(313, 'A37', 'K02', 'S76'),
(314, 'A38', 'K01', 'S38'),
(315, 'A38', 'K02', 'S76'),
(316, 'A01', 'K01', 'S01'),
(317, 'A01', 'K02', 'S39'),
(318, 'A01', 'K03', 'S86'),
(319, 'A01', 'K04', 'S129'),
(320, 'A02', 'K01', 'S02'),
(321, 'A02', 'K02', 'S40'),
(322, 'A02', 'K03', 'S104'),
(323, 'A02', 'K04', 'S116'),
(324, 'A03', 'K01', 'S03'),
(325, 'A03', 'K02', 'S59'),
(326, 'A03', 'K03', 'S79'),
(327, 'A03', 'K04', 'S128');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `tb_subkriteria`
--
ALTER TABLE `tb_subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`);

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
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_testing`
--
ALTER TABLE `tb_testing`
  MODIFY `id_testing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `tb_training`
--
ALTER TABLE `tb_training`
  MODIFY `id_training` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_pengguna` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
