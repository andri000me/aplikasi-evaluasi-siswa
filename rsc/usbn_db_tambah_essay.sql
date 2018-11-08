-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2018 at 10:09 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usbn_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_admin`
--

CREATE TABLE IF NOT EXISTS `m_admin` (
  `id` int(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `kon_id` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(53, '11', '6512bd43d9caa6e02c990b0a82652dca', 'siswa', 20),
(54, '222', 'bcbe3365e6ac95ea2c0343a2395834dd', 'guru', 13),
(55, '111', '698d51a19d8a121ce581499d7b701668', 'guru', 12),
(56, '22', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'siswa', 21),
(57, '44', 'f7177163c833dff4b38fc8d2872f1ec6', 'siswa', 23),
(58, '152047', '5342e88bf07c459b62a84dada7b2b0ca', 'siswa', 24),
(59, '12345', '827ccb0eea8a706c4c34a16891f84e7b', 'guru', 14);

-- --------------------------------------------------------

--
-- Table structure for table `m_guru`
--

CREATE TABLE IF NOT EXISTS `m_guru` (
  `id` int(6) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_guru`
--

INSERT INTO `m_guru` (`id`, `nip`, `nama`) VALUES
(12, '111', 'heru'),
(13, '222', 'santoso'),
(14, '12345', 'PROKTOR');

--
-- Triggers `m_guru`
--
DELIMITER $$
CREATE TRIGGER `hapus_guru` AFTER DELETE ON `m_guru`
 FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_guru = OLD.id;
DELETE FROM m_admin WHERE m_admin.level = 'guru' AND m_admin.kon_id = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_guru = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_guru = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `m_mapel`
--

CREATE TABLE IF NOT EXISTS `m_mapel` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(5, 'Bahasa Inggris'),
(6, 'Bahasa Indonesia'),
(7, 'Matematika'),
(8, 'Teori Kejuruan RPL');

--
-- Triggers `m_mapel`
--
DELIMITER $$
CREATE TRIGGER `hapus_mapel` AFTER DELETE ON `m_mapel`
 FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_mapel = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_mapel = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_mapel = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `m_siswa`
--

CREATE TABLE IF NOT EXISTS `m_siswa` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nama`, `nim`, `jurusan`) VALUES
(20, 'fiqri', '11', 'RPL'),
(21, 'noor', '22', 'AOVI'),
(22, 'hadi', '33', 'Listrik'),
(23, 'fiqrinoorhadi', '44', 'TKR'),
(24, 'josep', '152047', 'RPL');

--
-- Triggers `m_siswa`
--
DELIMITER $$
CREATE TRIGGER `hapus_siswa` AFTER DELETE ON `m_siswa`
 FOR EACH ROW BEGIN
DELETE FROM tr_ikut_ujian WHERE tr_ikut_ujian.id_user = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `m_soal`
--

CREATE TABLE IF NOT EXISTS `m_soal` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `bobot` int(2) NOT NULL,
  `file` varchar(150) NOT NULL,
  `tipe_file` varchar(50) NOT NULL,
  `soal` longtext NOT NULL,
  `opsi_a` longtext NOT NULL,
  `opsi_b` longtext NOT NULL,
  `opsi_c` longtext NOT NULL,
  `opsi_d` longtext NOT NULL,
  `opsi_e` longtext NOT NULL,
  `jawaban` varchar(5) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `jml_salah` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `file`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`, `jml_benar`, `jml_salah`) VALUES
(80, 12, 5, 1, '', '', 'Soal ke 2 jawabannya B', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'B', '2018-03-13 17:04:19', 2, 2),
(81, 12, 5, 1, '', '', 'Soal ke 3 jawabannya C', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'C', '2018-03-13 17:04:19', 2, 1),
(82, 12, 5, 1, '', '', 'Soal ke 4 jawabannya D', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'D', '2018-03-13 17:04:19', 2, 1),
(83, 12, 5, 1, '', '', 'Soal ke 5 jawabannya E', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'E', '2018-03-13 17:04:19', 2, 1),
(84, 12, 5, 1, '', '', 'Soal ke 6 jawabannya A', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'A', '2018-03-13 17:04:19', 2, 1),
(85, 12, 5, 1, '', '', 'Soal ke 7 jawabannya B', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'B', '2018-03-13 17:04:19', 2, 1),
(86, 12, 5, 1, '', '', 'Soal ke 8 jawabannya C', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'C', '2018-03-13 17:04:19', 2, 1),
(87, 12, 5, 1, '', '', 'Soal ke 9 jawabannya D', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'D', '2018-03-13 17:04:19', 2, 1),
(88, 12, 5, 1, '', '', 'Soal ke 10 jawabannya E', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'E', '2018-03-13 17:04:19', 2, 1),
(89, 12, 5, 1, '', '', 'Soal ke 11 jawabannya A', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'A', '2018-03-13 17:04:19', 1, 2),
(90, 12, 5, 1, '', '', 'Soal ke 12 jawabannya B', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'B', '2018-03-13 17:04:19', 1, 2),
(91, 12, 5, 1, '', '', 'Soal ke 13 jawabannya C', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'C', '2018-03-13 17:04:19', 2, 1),
(92, 12, 5, 1, '', '', 'Soal ke 14 jawabannya D', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'D', '2018-03-13 17:04:19', 2, 1),
(93, 12, 5, 1, '', '', 'Soal ke 15 jawabannya E', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'E', '2018-03-13 17:04:19', 1, 2),
(94, 12, 5, 1, '', '', 'Soal ke 16 jawabannya A', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'A', '2018-03-13 17:04:19', 3, 0),
(95, 12, 5, 1, '', '', 'Soal ke 17 jawabannya B', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'B', '2018-03-13 17:04:19', 1, 2),
(96, 12, 5, 1, '', '', 'Soal ke 18 jawabannya C', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'C', '2018-03-13 17:04:19', 2, 1),
(97, 12, 5, 1, '', '', 'Soal ke 19 jawabannya D', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'D', '2018-03-13 17:04:19', 1, 2),
(98, 12, 5, 1, '', '', 'Soal ke 20 jawabannya E', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'E', '2018-03-13 17:04:19', 2, 1),
(99, 13, 6, 1, '', '', 'Soal ke 1 jawabannya A', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'A', '2018-03-13 17:06:00', 0, 3),
(100, 13, 6, 1, '', '', 'Soal ke 2 jawabannya B', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'B', '2018-03-13 17:06:00', 1, 2),
(101, 13, 6, 1, '', '', 'Soal ke 3 jawabannya C', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'C', '2018-03-13 17:06:00', 1, 2),
(102, 13, 6, 1, '', '', 'Soal ke 4 jawabannya D', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'D', '2018-03-13 17:06:00', 1, 2),
(103, 13, 6, 1, '', '', 'Soal ke 5 jawabannya E', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'E', '2018-03-13 17:06:00', 1, 2),
(104, 13, 6, 1, '', '', 'Soal ke 6 jawabannya A', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'A', '2018-03-13 17:06:00', 1, 2),
(105, 13, 6, 1, '', '', 'Soal ke 7 jawabannya B', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'B', '2018-03-13 17:06:00', 1, 2),
(106, 13, 6, 1, '', '', 'Soal ke 8 jawabannya C', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'C', '2018-03-13 17:06:00', 1, 2),
(107, 13, 6, 1, '', '', 'Soal ke 9 jawabannya D', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'D', '2018-03-13 17:06:00', 1, 2),
(108, 13, 6, 1, '', '', 'Soal ke 10 jawabannya E', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'E', '2018-03-13 17:06:00', 1, 2),
(110, 13, 6, 1, '', '', 'Soal ke 12 jawabannya B', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'B', '2018-03-13 17:06:00', 1, 2),
(111, 13, 6, 1, '', '', 'Soal ke 13 jawabannya C', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'C', '2018-03-13 17:06:00', 1, 2),
(112, 13, 6, 1, '', '', 'Soal ke 14 jawabannya D', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'D', '2018-03-13 17:06:00', 1, 2),
(113, 13, 6, 1, '', '', 'Soal ke 15 jawabannya E', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'E', '2018-03-13 17:06:00', 1, 2),
(118, 13, 6, 1, '', '', 'Soal ke 20 jawabannya E', '#####kopi', '#####gula', '#####susu', '#####krim', '#####mocca', 'E', '2018-03-13 17:06:00', 1, 2),
(119, 12, 5, 1, '', '', '<p>AAAA</p>\r\n', '#####<p>BBB</p>\r\n', '#####<p>CCC</p>\r\n', '#####<p>DDD</p>\r\n', '#####<p>EEE</p>\r\n', '#####<p>FFF</p>\r\n', 'A', '0000-00-00 00:00:00', 0, 1),
(120, 12, 5, 1, '', '', '<p>Cobaaa lagi</p>\r\n', '#####<p>a</p>\r\n', '#####<p>b</p>\r\n', '#####<p>c</p>\r\n', '#####<p>d</p>\r\n', '#####<p>e</p>\r\n', 'A', '0000-00-00 00:00:00', 0, 0),
(125, 14, 5, 1, '', '', '<p>asdasdasd</p>\r\n', '#####<p>a</p>\r\n', '#####<p>a</p>\r\n', '#####<p>a</p>\r\n', '#####<p>a</p>\r\n', '#####<p>a</p>\r\n', 'A', '0000-00-00 00:00:00', 0, 0),
(126, 14, 5, 1, '', '', '<p>asdasdasdasdasd</p>\r\n', '#####<p>aasdasd</p>\r\n', '#####<p>a</p>\r\n', '#####<p>sddsd</p>\r\n', '#####<p>sdsd</p>\r\n', '#####<p>ffff</p>\r\n', 'A', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_soal_essay`
--

CREATE TABLE IF NOT EXISTS `m_soal_essay` (
  `id` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `file` varchar(150) NOT NULL,
  `tipe_file` varchar(50) NOT NULL,
  `soal` longtext NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_soal_essay`
--

INSERT INTO `m_soal_essay` (`id`, `id_guru`, `id_mapel`, `file`, `tipe_file`, `soal`, `cek`) VALUES
(1, 14, 5, '', '', '<p>asdasdasd</p>\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tr_guru_mapel`
--

CREATE TABLE IF NOT EXISTS `tr_guru_mapel` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(27, 13, 6),
(28, 12, 5),
(29, 14, 5),
(30, 14, 6),
(31, 14, 7),
(32, 14, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tr_guru_tes`
--

CREATE TABLE IF NOT EXISTS `tr_guru_tes` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `nama_ujian` varchar(200) NOT NULL,
  `jumlah_soal` int(6) NOT NULL,
  `waktu` int(6) NOT NULL,
  `jenis` enum('acak','set') NOT NULL,
  `detil_jenis` varchar(500) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `terlambat` datetime NOT NULL,
  `token` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_guru_tes`
--

INSERT INTO `tr_guru_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `detil_jenis`, `tgl_mulai`, `terlambat`, `token`) VALUES
(12, 12, 5, 'tes', 20, 60, 'acak', '', '2018-03-16 07:05:00', '2018-03-16 10:10:00', 'YXWML'),
(13, 13, 6, 'tes2', 15, 60, 'acak', '', '2018-03-16 07:17:00', '2018-03-16 17:17:00', 'FHQMD'),
(14, 12, 5, 'Ujian O', 1, 60, 'acak', '', '2018-03-15 17:36:00', '2018-03-15 17:39:00', 'IIEVM'),
(15, 12, 5, 'Coab Lagi', 1, 60, 'acak', '', '2018-03-17 13:00:00', '2018-03-17 14:30:00', 'XPVQQ'),
(17, 14, 5, 'asdasdasdasdasd', 2, 60, 'acak', '', '2018-03-17 15:00:00', '2018-03-17 16:00:00', 'FDKST');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ikut_ujian`
--

CREATE TABLE IF NOT EXISTS `tr_ikut_ujian` (
  `id` int(6) NOT NULL,
  `id_tes` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `nilai` decimal(10,2) NOT NULL,
  `nilai_bobot` decimal(10,2) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(14, 12, 21, '86,89,79,98,80,88,83,93,96,85,95,91,87,81,97,90,94,82,92,84', '86:C:N,89:B:N,79:C:N,98:E:N,80:B:N,88:E:N,83:E:N,93:B:N,96:C:N,85:B:N,95:D:N,91:C:N,87:D:N,81:C:N,97:C:N,90:D:N,94:A:N,82:D:N,92:D:N,84:A:N', 14, '70.00', '70.00', '2018-03-13 17:23:36', '2018-03-13 18:23:36', 'N'),
(15, 13, 20, '112,103,111,105,100,102,106,117,115,109,108,118,107,116,114,113,104,110,101,99', '112:D:N,103:E:N,111:C:N,105:B:N,100:B:N,102:D:N,106:C:N,117:D:N,115:B:N,109:A:N,108:E:N,118:E:N,107:D:N,116:C:N,114:A:N,113:E:N,104:A:N,110:B:N,101:C:N,99:A:N', 19, '95.00', '95.00', '2018-03-13 17:26:17', '2018-03-13 18:26:17', 'N'),
(16, 12, 20, '97,93,92,94,82,83,89,91,79,87,85,84,98,95,81,88,96,86,80,90', '97:D:N,93:E:N,92:D:N,94:A:N,82:D:N,83:E:N,89:A:N,91:C:N,79:A:N,87:D:N,85:B:N,84:A:N,98:E:N,95:B:N,81:C:N,88:E:N,96:C:N,86:C:N,80:B:N,90:B:N', 20, '100.00', '100.00', '2018-03-13 17:31:46', '2018-03-13 18:31:46', 'N'),
(17, 13, 21, '117,104,109,101,105,110,115,116,114,107,99,108,106,102,111,100,112,103,113,118', '117:A:N,104:B:N,109:B:N,101:B:N,105:C:N,110:C:N,115:E:N,116:D:N,114:C:N,107:C:N,99:C:N,108:C:N,106:D:N,102:C:N,111:A:N,100:D:N,112:E:N,103:B:N,113:A:N,118:C:N', 0, '0.00', '0.00', '2018-03-13 17:34:02', '2018-03-13 18:34:02', 'N'),
(18, 12, 23, '97,119,91,84,88,90,89,82,81,83,85,87,96,98,93,86,92,95,80,94', '97:E:N,119::N,91::N,84::N,88:C:N,90::N,89::N,82::N,81::N,83::N,85::N,87:A:Y,96::N,98::N,93::N,86::N,92::N,95::N,80::N,94:A:N', 1, '5.00', '5.00', '2018-03-15 19:08:21', '2018-03-15 20:08:21', 'N'),
(19, 13, 23, '113,99,104,103,105,111,110,101,100,108,118,112,107,102,106', '113::N,99::N,104::N,103::N,105::N,111::N,110::N,101::N,100::N,108::N,118::N,112::N,107::N,102::N,106::N', 0, '0.00', '0.00', '2018-03-16 09:33:10', '2018-03-16 10:33:10', 'N'),
(20, 15, 23, '80', '80::N', 0, '0.00', '0.00', '2018-03-17 14:01:14', '2018-03-17 15:01:14', 'N'),
(21, 17, 23, '126,125', '126::N,125::N', 0, '0.00', '0.00', '2018-03-17 15:57:53', '2018-03-17 16:57:53', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kon_id` (`kon_id`);

--
-- Indexes for table `m_guru`
--
ALTER TABLE `m_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_siswa`
--
ALTER TABLE `m_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_soal`
--
ALTER TABLE `m_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `m_soal_essay`
--
ALTER TABLE `m_soal_essay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tes` (`id_tes`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `m_guru`
--
ALTER TABLE `m_guru`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `m_soal`
--
ALTER TABLE `m_soal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `m_soal_essay`
--
ALTER TABLE `m_soal_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
