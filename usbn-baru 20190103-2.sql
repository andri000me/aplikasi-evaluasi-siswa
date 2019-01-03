-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2019 at 10:38 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usbn`
--

-- --------------------------------------------------------

--
-- Table structure for table `kd`
--

CREATE TABLE IF NOT EXISTS `kd` (
  `id_kd` int(11) NOT NULL,
  `kd_ke` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_mapel` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kd`
--

INSERT INTO `kd` (`id_kd`, `kd_ke`, `nama`, `id_mapel`) VALUES
(1, 1, 'Pengenalan PBO', 1),
(2, 2, 'Mengenal Object dan Class', 1),
(3, 1, 'Mengenal Grammer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` varchar(10) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
('XITKR2', 'XI TKR-2'),
('XRPL1', 'X RPL-1'),
('XRPL2', 'X RPL-2');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(2, '162049', '19c26d0237205b9c9471eaa98e4ecda1', 'guru', 16),
(3, 'ADE', '8418cad2dcc02c5131a160caf4d8a229', 'guru', 10),
(4, '131129', '48c72a18f56e02deeab699caf23aa2cc', 'siswa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_guru`
--

CREATE TABLE IF NOT EXISTS `m_guru` (
  `id` int(6) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_guru`
--

INSERT INTO `m_guru` (`id`, `nip`, `nama`) VALUES
(10, 'ADE', 'Guru Produktif'),
(15, 'USBN2018', 'PROKTOR'),
(16, '162049', 'Fiqri Noor Hadi'),
(17, '123456789', 'fqir');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(1, 'PBO'),
(2, 'Bahasa Inggris');

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
  `jurusan` varchar(50) NOT NULL,
  `id_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nama`, `nim`, `jurusan`, `id_kelas`) VALUES
(1, 'Rio Dening Roso', '131129', 'Rekayasa Perangkat Lunak', 'XRPL2'),
(2, 'Roni Pirmansah', '2121212', 'Rekayasa Perangkat Lunak', 'XRPL1'),
(3, 'Bambang', '121212', 'RPL', 'XITKR2'),
(4, 'Rosomantep', '121212', 'Rekayasa Perangkat Lunak', 'XRPL1'),
(5, 'Agus', '15090110', 'REKAYASA PERANGKAT LUNAK', 'XRPL1'),
(6, 'Budi', '15090111', 'REKAYASA PERANGKAT LUNAK', 'XRPL1'),
(7, 'Candra', '15090112', 'REKAYASA PERANGKAT LUNAK', 'XRPL1'),
(8, 'Dedi', '15090113', 'REKAYASA PERANGKAT LUNAK', 'XRPL1'),
(9, 'Eko', '15090114', 'REKAYASA PERANGKAT LUNAK', 'XRPL1'),
(10, 'Fajar', '15090115', 'REKAYASA PERANGKAT LUNAK', 'XRPL1'),
(11, 'Galuh', '15090116', 'REKAYASA PERANGKAT LUNAK', 'XRPL1'),
(12, 'Heri', '15090117', 'REKAYASA PERANGKAT LUNAK', 'XRPL1'),
(13, 'Indra', '15090118', 'REKAYASA PERANGKAT LUNAK', 'XRPL1'),
(14, 'Joko', '15090119', 'REKAYASA PERANGKAT LUNAK', 'XRPL1'),
(15, 'Kukuh', '15090120', 'REKAYASA PERANGKAT LUNAK', 'XRPL2'),
(16, 'Linda', '15090121', 'REKAYASA PERANGKAT LUNAK', 'XRPL2'),
(17, 'Michael', '15090122', 'REKAYASA PERANGKAT LUNAK', 'XRPL2'),
(18, 'Nawang', '15090123', 'REKAYASA PERANGKAT LUNAK', 'XRPL2'),
(19, 'Opan', '15090124', 'REKAYASA PERANGKAT LUNAK', 'XRPL2'),
(20, 'Putri', '15090125', 'REKAYASA PERANGKAT LUNAK', 'XRPL2'),
(21, 'Qisti', '15090126', 'REKAYASA PERANGKAT LUNAK', 'XRPL2'),
(22, 'Riris', '15090127', 'REKAYASA PERANGKAT LUNAK', 'XRPL2'),
(23, 'Sita', '15090128', 'REKAYASA PERANGKAT LUNAK', 'XRPL2');

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
  `bobot` float NOT NULL,
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
  `jml_salah` int(6) NOT NULL,
  `id_kd` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `file`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`, `jml_benar`, `jml_salah`, `id_kd`) VALUES
(1, 16, 1, 1, '', '', '<p>tes soal 123</p>\r\n', '#####<p>1</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####<p>5</p>\r\n', 'A', '0000-00-00 00:00:00', 0, 0, 1),
(2, 10, 1, 1, '', '', '<p>asdasdsd</p>\r\n', '#####<p>a</p>\r\n', '#####<p>aa</p>\r\n', '#####<p>aa</p>\r\n', '#####<p>aa</p>\r\n', '#####<p>aa</p>\r\n', 'A', '0000-00-00 00:00:00', 3, 3, 1),
(3, 10, 1, 1, '', '', '<p>rtert</p>\r\n', '#####<p>ertertert</p>\r\n', '#####<p>hhjghj</p>\r\n', '#####<p>bnmnm</p>\r\n', '#####<p>bnmnm</p>\r\n', '#####<p>ghjghj</p>\r\n', 'A', '0000-00-00 00:00:00', 2, 3, 2),
(4, 10, 1, 1, '', '', '<p>Soal lagi....</p>\r\n', '#####<p>jawaba</p>\r\n', '#####<p>asdasd</p>\r\n', '#####<p>aaasdad asdads</p>\r\n', '#####<p>&nbsp;asdadads</p>\r\n', '#####<p>asdad</p>\r\n', 'A', '0000-00-00 00:00:00', 3, 2, 2),
(5, 10, 1, 1, '', '', '<p>INi percobaan lagi</p>\r\n', '#####<p>a</p>\r\n', '#####<p>b</p>\r\n', '#####<p>c</p>\r\n', '#####<p>d</p>\r\n', '#####<p>e</p>\r\n', 'A', '0000-00-00 00:00:00', 0, 0, 2),
(6, 10, 2, 1, '', '', '<p>AAA</p>\r\n', '#####<p>a</p>\r\n', '#####<p>b</p>\r\n', '#####<p>c</p>\r\n', '#####<p>d</p>\r\n', '#####<p>e</p>\r\n', 'A', '0000-00-00 00:00:00', 0, 0, 3),
(7, 10, 1, 1, '', '', 'Soal ke 1', '#####opsi A.1', '#####opsi B.1', '#####opsi C.1', '#####opsi D.1', '#####opsi E.1', 'A', '2019-01-03 14:19:59', 0, 0, 0),
(8, 10, 1, 1, '', '', 'Soal ke 2', '#####opsi A.2', '#####opsi B.2', '#####opsi C.2', '#####opsi D.2', '#####opsi E.2', 'B', '2019-01-03 14:19:59', 0, 0, 0),
(9, 10, 1, 1, '', '', 'Soal ke 3', '#####opsi A.3', '#####opsi B.3', '#####opsi C.3', '#####opsi D.3', '#####opsi E.3', 'E', '2019-01-03 14:19:59', 0, 0, 0),
(10, 10, 1, 1, '', '', 'Soal ke 4', '#####opsi A.4', '#####opsi B.4', '#####opsi C.4', '#####opsi D.4', '#####opsi E.4', 'D', '2019-01-03 14:19:59', 0, 0, 0),
(11, 10, 1, 1, '', '', 'Soal ke 5', '#####opsi A.5', '#####opsi B.5', '#####opsi C.5', '#####opsi D.5', '#####opsi E.5', 'E', '2019-01-03 14:19:59', 0, 0, 0),
(12, 10, 1, 1, '', '', 'Soal ke 6', '#####opsi A.6', '#####opsi B.6', '#####opsi C.6', '#####opsi D.6', '#####opsi E.6', 'C', '2019-01-03 14:19:59', 0, 0, 0),
(13, 10, 1, 1, '', '', 'Soal ke 7', '#####opsi A.7', '#####opsi B.7', '#####opsi C.7', '#####opsi D.7', '#####opsi E.7', 'A', '2019-01-03 14:19:59', 0, 0, 0),
(14, 10, 1, 1, '', '', 'Soal ke 8', '#####opsi A.8', '#####opsi B.8', '#####opsi C.8', '#####opsi D.8', '#####opsi E.8', 'B', '2019-01-03 14:19:59', 0, 0, 0),
(15, 10, 1, 1, '', '', 'Soal ke 9', '#####opsi A.9', '#####opsi B.9', '#####opsi C.9', '#####opsi D.9', '#####opsi E.9', 'B', '2019-01-03 14:19:59', 0, 0, 0),
(16, 10, 1, 1, '', '', 'Soal ke 10', '#####opsi A.10', '#####opsi B.10', '#####opsi C.10', '#####opsi D.10', '#####opsi E.10', 'C', '2019-01-03 14:19:59', 0, 0, 0),
(17, 10, 1, 1, '', '', 'Soal ke 11', '#####opsi A.11', '#####opsi B.11', '#####opsi C.11', '#####opsi D.11', '#####opsi E.11', 'D', '2019-01-03 14:19:59', 0, 0, 0),
(18, 10, 1, 1, '', '', 'Soal ke 12', '#####opsi A.12', '#####opsi B.12', '#####opsi C.12', '#####opsi D.12', '#####opsi E.12', 'E', '2019-01-03 14:19:59', 0, 0, 0),
(19, 10, 1, 1, '', '', 'Soal ke 13', '#####opsi A.13', '#####opsi B.13', '#####opsi C.13', '#####opsi D.13', '#####opsi E.13', 'A', '2019-01-03 14:19:59', 0, 0, 0),
(20, 10, 1, 1, '', '', 'Soal ke 14', '#####opsi A.14', '#####opsi B.14', '#####opsi C.14', '#####opsi D.14', '#####opsi E.14', 'A', '2019-01-03 14:19:59', 0, 0, 0),
(21, 10, 1, 1, '', '', 'Soal ke 15', '#####opsi A.15', '#####opsi B.15', '#####opsi C.15', '#####opsi D.15', '#####opsi E.15', 'D', '2019-01-03 14:19:59', 0, 0, 0),
(22, 10, 1, 1, '', '', 'Soal ke 16', '#####opsi A.16', '#####opsi B.16', '#####opsi C.16', '#####opsi D.16', '#####opsi E.16', 'C', '2019-01-03 14:19:59', 0, 0, 0),
(23, 10, 1, 1, '', '', 'Soal ke 17', '#####opsi A.17', '#####opsi B.17', '#####opsi C.17', '#####opsi D.17', '#####opsi E.17', 'D', '2019-01-03 14:19:59', 0, 0, 0),
(24, 10, 1, 1, '', '', 'Soal ke 18', '#####opsi A.18', '#####opsi B.18', '#####opsi C.18', '#####opsi D.18', '#####opsi E.18', 'E', '2019-01-03 14:19:59', 0, 0, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tr_guru_mapel`
--

CREATE TABLE IF NOT EXISTS `tr_guru_mapel` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(1, 10, 1),
(2, 16, 2);

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
  `token` varchar(5) NOT NULL,
  `id_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_guru_tes`
--

INSERT INTO `tr_guru_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `detil_jenis`, `tgl_mulai`, `terlambat`, `token`, `id_kelas`) VALUES
(1, 10, 1, 'Ujian 1', 3, 60, 'acak', '', '2018-12-27 07:00:00', '2018-12-27 19:00:00', 'PFJZA', 'XRPL2');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(6, 1, 1, '3,4,2', '3:B:N,4:A:N,2:A:N', 2, '66.67', '66.67', '2018-12-27 11:51:38', '2018-12-27 12:51:38', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kd`
--
ALTER TABLE `kd`
  ADD PRIMARY KEY (`id_kd`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

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
-- AUTO_INCREMENT for table `kd`
--
ALTER TABLE `kd`
  MODIFY `id_kd` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_guru`
--
ALTER TABLE `m_guru`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `m_soal`
--
ALTER TABLE `m_soal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `m_soal_essay`
--
ALTER TABLE `m_soal_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
