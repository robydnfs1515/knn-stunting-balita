-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2023 at 01:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
  `kelamin_alternatif` varchar(10) NOT NULL,
  `tgl_alternatif` varchar(10) NOT NULL,
  `keputusan_training` varchar(50) NOT NULL,
  `distance` double NOT NULL,
  `rangking` int(11) NOT NULL,
  `pilihan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`id_alternatif`, `nik_alternatif`, `nama_alternatif`, `kelamin_alternatif`, `tgl_alternatif`, `keputusan_training`, `distance`, `rangking`, `pilihan`) VALUES
('A01', '1108156412190001', 'ADIRA AZZAHRA', 'P', '12/24/2019', 'Tidak', 80.339840676964, 1, 'Ya'),
('A02', '1108155901190003', 'AFIFA FATIA', 'P', '1/19/2019', 'Tidak', 93.325291320199, 8, 'Tidak'),
('A03', '1108155502200001', 'AFIVA FITIA', 'P', '2/15/2020', 'Ya', 97.070283815388, 17, 'Tidak'),
('A04', '1108156007190002', 'AIRA ILYANA', 'P', '7/20/2019', 'Tidak', 98.28534987474, 21, 'Tidak'),
('A05', '1108155801200000', 'AKIFA NAILA', 'P', '1/18/2020', 'Tidak', 94.498888882357, 10, 'Tidak'),
('A06', '1108154808180001', 'ALESHA AL ZAHRA', 'P', '8/8/2018', 'Tidak', 98.076500753239, 19, 'Tidak'),
('A07', '1108155205180001', 'ANNISA HAIFA', 'P', '5/12/2018', 'Tidak', 106.84385803592, 29, 'Tidak'),
('A08', '1108156304200000', 'AQILA PUTRI', 'P', '4/23/2020', 'Tidak', 99.842325694066, 23, 'Tidak'),
('A09', '1108151902200000', 'ARIF MUNANDAR', 'L', '2/19/2020', 'Ya', 88.656641037206, 2, 'Ya'),
('A10', '1108064407180001', 'ARIKA FATINA', 'P', '7/4/2018', 'Tidak', 108.75941338569, 34, 'Tidak'),
('A11', '1108156310180001', 'ARIKA SAFNA', 'P', '10/25/2018', 'Tidak', 107.35194455621, 31, 'Tidak'),
('A12', '1108151809190000', 'ARSYILA AINI', 'P', '9/18/2019', 'Tidak', 107.35194455621, 30, 'Tidak'),
('A13', '1108154104200000', 'ASHIMA DINILLAH', 'P', '4/1/2020', 'Tidak', 96.76259607927, 15, 'Tidak'),
('A14', '1108156501190002', 'AZKIATUL MUNA', 'P', '1/25/2019', 'Tidak', 101.17811028083, 26, 'Tidak'),
('A15', '1108155808180001', 'AZRINA', 'P', '8/18/2018', 'Tidak', 97.073219787952, 18, 'Tidak'),
('A16', '1108156812180001', 'FATIN SIDQIA', 'P', '12/28/2018', 'Tidak', 100.18502882168, 24, 'Tidak'),
('A17', '1108150602200002', 'GAYSHAN ALFAN', 'L', '2/6/2020', 'Tidak', 96.654229084919, 14, 'Tidak'),
('A18', '1108154906190003', 'JIHAN TALITA HAURA', 'P', '6/9/2019', 'Tidak', 118.60860002546, 38, 'Tidak'),
('A19', '1108046609190001', 'KHALISA BAHIRA', 'P', '9/26/2019', 'Tidak', 99.775197318773, 22, 'Tidak'),
('A20', '1108154701190001', 'MAULANA ZAHRA', 'P', '1/27/2019', 'Tidak', 91.148230920847, 5, 'Tidak'),
('A21', '1108150707190002', 'MUDA BALIA', 'L', '7/7/2019', 'Tidak', 100.77603881876, 25, 'Tidak'),
('A22', '1108150101200001', 'MUHAMMAD', 'L', '1/1/2020', 'Tidak', 94.788237666917, 11, 'Tidak'),
('A23', '1173012606180001', 'MUHAMMAD AFIQ', 'L', '6/26/2018', 'Tidak', 107.40688990935, 33, 'Tidak'),
('A24', '1108151103200002', 'MUHAMMAD IKRAM', 'L', '3/11/2020', 'Tidak', 107.40688990935, 32, 'Tidak'),
('A25', '1108150512180002', 'MUHAMMAD RIZIQ', 'L', '12/5/2018', 'Tidak', 91.012142047092, 4, 'Tidak'),
('A26', '1108150607190000', 'MUHAMMAD YAZID', 'L', '7/6/2019', 'Tidak', 91.012142047092, 3, 'Ya'),
('A27', '1108152205200000', 'MUHAMMAD ZAIYAN', 'L', '5/22/2020', 'Tidak', 94.911327037398, 12, 'Tidak'),
('A28', '1108151203190001', 'MUHAMMAD ZARMUJI', 'L', '3/12/2019', 'Tidak', 98.130983893977, 20, 'Tidak'),
('A29', '1108155602190001', 'MUNAWARAH', 'P', '2/16/2019', 'Tidak', 91.509562341867, 7, 'Tidak'),
('A30', '1108154105180002', 'MUZAYYUNA', 'P', '5/1/2018', 'Tidak', 109.07451581373, 35, 'Tidak'),
('A31', '1108155207180002', 'NAFISATUL HUSNA', 'P', '7/12/2018', 'Tidak', 113.68975327619, 37, 'Tidak'),
('A32', '1108155111190003', 'NASYA NABILA', 'P', '11/11/2019', 'Ya', 91.160572617772, 6, 'Tidak'),
('A33', '1108155112180001', 'NAURA RANIA', 'P', '8/11/2018', 'Tidak', 96.034577106374, 13, 'Tidak'),
('A34', '1108154705190003', 'SUCI RAMADHANI', 'P', '5/7/2019', 'Tidak', 109.39382980772, 36, 'Tidak'),
('A35', '1108150807190002', 'SULTAN', 'L', '7/8/2019', 'Tidak', 102.57680049602, 27, 'Tidak'),
('A36', '1108151506180004', 'SYAWAL AL FAIZI', 'L', '6/15/2018', 'Tidak', 106.67070825677, 28, 'Tidak'),
('A37', '1108154905200000', 'SYIFAUL KHAIRA', 'P', '5/9/2020', 'Tidak', 93.748013312283, 9, 'Tidak'),
('A38', '1108151311190002', 'ZAIN KAUSAR', 'L', '11/13/2019', 'Tidak', 97.068068900128, 16, 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id_hasil` int(11) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL,
  `keputusan_training` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_hasil`
--

INSERT INTO `tb_hasil` (`id_hasil`, `nama_alternatif`, `keputusan_training`) VALUES
(6, 'Afrizal', 'TIDAK');

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
(147, 'A01', 'Afrizal', 'K01', '9\r\n'),
(148, 'A01', 'Afrizal', 'K02', '77\r\n'),
(149, 'A01', 'Afrizal', 'K03', '41\r\n'),
(150, 'A01', 'Afrizal', 'K04', '13\r\n');

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
(328, 'A01', 'K01', 'S29'),
(329, 'A01', 'K02', 'S76'),
(330, 'A01', 'K03', 'S98'),
(331, 'A01', 'K04', 'S137'),
(332, 'A02', 'K01', 'S15'),
(333, 'A02', 'K02', 'S65'),
(334, 'A02', 'K03', 'S104'),
(335, 'A02', 'K04', 'S123'),
(336, 'A03', 'K01', 'S34'),
(337, 'A03', 'K02', 'S72'),
(338, 'A03', 'K03', 'S110'),
(339, 'A03', 'K04', 'S148'),
(340, 'A04', 'K01', 'S22'),
(341, 'A04', 'K02', 'S72'),
(342, 'A04', 'K03', 'S81'),
(343, 'A04', 'K04', 'S136'),
(344, 'A05', 'K01', 'S32'),
(345, 'A05', 'K02', 'S70'),
(346, 'A05', 'K03', 'S79'),
(347, 'A05', 'K04', 'S119'),
(348, 'A06', 'K01', 'S19'),
(349, 'A06', 'K02', 'S69'),
(350, 'A06', 'K03', 'S87'),
(351, 'A06', 'K04', 'S136'),
(352, 'A07', 'K01', 'S02'),
(353, 'A07', 'K02', 'S39'),
(354, 'A07', 'K03', 'S104'),
(355, 'A07', 'K04', 'S116'),
(356, 'A08', 'K01', 'S36'),
(357, 'A08', 'K02', 'S74'),
(358, 'A08', 'K03', 'S104'),
(359, 'A08', 'K04', 'S123'),
(360, 'A09', 'K01', 'S35'),
(361, 'A09', 'K02', 'S52'),
(362, 'A09', 'K03', 'S101'),
(363, 'A09', 'K04', 'S149'),
(364, 'A10', 'K01', 'S05'),
(365, 'A10', 'K02', 'S43'),
(366, 'A10', 'K03', 'S98'),
(367, 'A10', 'K04', 'S123'),
(368, 'A11', 'K01', 'S09'),
(369, 'A11', 'K02', 'S47'),
(370, 'A11', 'K03', 'S85'),
(371, 'A11', 'K04', 'S150'),
(372, 'A12', 'K01', 'S09'),
(373, 'A12', 'K02', 'S47'),
(374, 'A12', 'K03', 'S85'),
(375, 'A12', 'K04', 'S150'),
(376, 'A13', 'K01', 'S31'),
(377, 'A13', 'K02', 'S45'),
(378, 'A13', 'K03', 'S104'),
(379, 'A13', 'K04', 'S144'),
(380, 'A14', 'K01', 'S13'),
(381, 'A14', 'K02', 'S60'),
(382, 'A14', 'K03', 'S80'),
(383, 'A14', 'K04', 'S133'),
(392, 'A17', 'K01', 'S33'),
(393, 'A17', 'K02', 'S71'),
(394, 'A17', 'K03', 'S93'),
(395, 'A17', 'K04', 'S142'),
(396, 'A16', 'K01', 'S10'),
(397, 'A16', 'K02', 'S66'),
(398, 'A16', 'K03', 'S86'),
(399, 'A16', 'K04', 'S131'),
(400, 'A15', 'K01', 'S28'),
(401, 'A15', 'K02', 'S71'),
(402, 'A15', 'K03', 'S80'),
(403, 'A15', 'K04', 'S136'),
(404, 'A18', 'K01', 'S19'),
(405, 'A18', 'K02', 'S57'),
(406, 'A18', 'K03', 'S94'),
(407, 'A18', 'K04', 'S147'),
(408, 'A19', 'K01', 'S24'),
(409, 'A19', 'K02', 'S62'),
(410, 'A19', 'K03', 'S104'),
(411, 'A19', 'K04', 'S139'),
(412, 'A20', 'K01', 'S14'),
(413, 'A20', 'K02', 'S52'),
(414, 'A20', 'K03', 'S104'),
(415, 'A20', 'K04', 'S126'),
(416, 'A21', 'K01', 'S20'),
(417, 'A21', 'K02', 'S58'),
(418, 'A21', 'K03', 'S97'),
(419, 'A21', 'K04', 'S134'),
(420, 'A22', 'K01', 'S27'),
(421, 'A22', 'K02', 'S53'),
(422, 'A22', 'K03', 'S83'),
(423, 'A22', 'K04', 'S128'),
(424, 'A23', 'K01', 'S04'),
(425, 'A23', 'K02', 'S40'),
(426, 'A23', 'K03', 'S108'),
(427, 'A23', 'K04', 'S134'),
(428, 'A24', 'K01', 'S04'),
(429, 'A24', 'K02', 'S42'),
(430, 'A24', 'K03', 'S108'),
(431, 'A24', 'K04', 'S134'),
(432, 'A26', 'K01', 'S11'),
(433, 'A26', 'K02', 'S68'),
(434, 'A26', 'K03', 'S93'),
(435, 'A26', 'K04', 'S119'),
(436, 'A27', 'K01', 'S38'),
(437, 'A27', 'K02', 'S75'),
(438, 'A27', 'K03', 'S94'),
(439, 'A27', 'K04', 'S134'),
(440, 'A28', 'K01', 'S17'),
(441, 'A28', 'K02', 'S55'),
(442, 'A28', 'K03', 'S103'),
(443, 'A28', 'K04', 'S124'),
(444, 'A29', 'K01', 'S16'),
(445, 'A29', 'K02', 'S54'),
(446, 'A29', 'K03', 'S102'),
(447, 'A29', 'K04', 'S135'),
(448, 'A30', 'K01', 'S01'),
(449, 'A30', 'K02', 'S39'),
(450, 'A30', 'K03', 'S86'),
(451, 'A30', 'K04', 'S123'),
(452, 'A31', 'K01', 'S06'),
(453, 'A31', 'K02', 'S44'),
(454, 'A31', 'K03', 'S103'),
(455, 'A31', 'K04', 'S123'),
(456, 'A32', 'K01', 'S26'),
(457, 'A32', 'K02', 'S54'),
(458, 'A32', 'K03', 'S102'),
(459, 'A32', 'K04', 'S130'),
(460, 'A33', 'K01', 'S12'),
(461, 'A33', 'K02', 'S75'),
(462, 'A33', 'K03', 'S95'),
(463, 'A33', 'K04', 'S124'),
(464, 'A34', 'K01', 'S18'),
(465, 'A34', 'K02', 'S56'),
(466, 'A34', 'K03', 'S114'),
(467, 'A34', 'K04', 'S116'),
(468, 'A35', 'K01', 'S21'),
(469, 'A35', 'K02', 'S59'),
(470, 'A35', 'K03', 'S106'),
(471, 'A35', 'K04', 'S134'),
(472, 'A36', 'K01', 'S03'),
(473, 'A36', 'K02', 'S41'),
(474, 'A36', 'K03', 'S79'),
(475, 'A36', 'K04', 'S126'),
(476, 'A37', 'K01', 'S30'),
(477, 'A37', 'K02', 'S76'),
(478, 'A37', 'K03', 'S98'),
(479, 'A37', 'K04', 'S136'),
(480, 'A38', 'K01', 'S28'),
(481, 'A38', 'K02', 'S66'),
(482, 'A38', 'K03', 'S104'),
(483, 'A38', 'K04', 'S142'),
(484, 'A25', 'K01', 'S08'),
(485, 'A25', 'K02', 'S68'),
(486, 'A25', 'K03', 'S109'),
(487, 'A25', 'K04', 'S120');

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
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_testing`
--
ALTER TABLE `tb_testing`
  MODIFY `id_testing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `tb_training`
--
ALTER TABLE `tb_training`
  MODIFY `id_training` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_pengguna` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
