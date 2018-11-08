-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2018 pada 04.06
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usbn`
--
CREATE DATABASE IF NOT EXISTS `usbn` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `usbn`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kd`
--

DROP TABLE IF EXISTS `kd`;
CREATE TABLE IF NOT EXISTS `kd` (
  `id_kd` int(11) NOT NULL,
  `kd_ke` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_mapel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

DROP TABLE IF EXISTS `kelas`;
CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_admin`
--

DROP TABLE IF EXISTS `m_admin`;
CREATE TABLE IF NOT EXISTS `m_admin` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `kon_id` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kon_id` (`kon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', '2DD315C28A2D9D2ECD9C4D257505F55D', 'admin', 0),
(2, '162049', '19c26d0237205b9c9471eaa98e4ecda1', 'guru', 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_guru`
--

DROP TABLE IF EXISTS `m_guru`;
CREATE TABLE IF NOT EXISTS `m_guru` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_guru`
--

INSERT INTO `m_guru` (`id`, `nip`, `nama`) VALUES
(10, 'ADE', 'Guru Produktif'),
(15, 'USBN2018', 'PROKTOR'),
(16, '162049', 'Fiqri Noor Hadi'),
(17, '123456789', 'fqir');

--
-- Trigger `m_guru`
--
DROP TRIGGER IF EXISTS `hapus_guru`;
DELIMITER $$
CREATE TRIGGER `hapus_guru` AFTER DELETE ON `m_guru` FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_guru = OLD.id;
DELETE FROM m_admin WHERE m_admin.level = 'guru' AND m_admin.kon_id = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_guru = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_guru = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_mapel`
--

DROP TABLE IF EXISTS `m_mapel`;
CREATE TABLE IF NOT EXISTS `m_mapel` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(1, 'PBO');

--
-- Trigger `m_mapel`
--
DROP TRIGGER IF EXISTS `hapus_mapel`;
DELIMITER $$
CREATE TRIGGER `hapus_mapel` AFTER DELETE ON `m_mapel` FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_mapel = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_mapel = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_mapel = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_siswa`
--

DROP TABLE IF EXISTS `m_siswa`;
CREATE TABLE IF NOT EXISTS `m_siswa` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `m_siswa`
--
DROP TRIGGER IF EXISTS `hapus_siswa`;
DELIMITER $$
CREATE TRIGGER `hapus_siswa` AFTER DELETE ON `m_siswa` FOR EACH ROW BEGIN
DELETE FROM tr_ikut_ujian WHERE tr_ikut_ujian.id_user = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_soal`
--

DROP TABLE IF EXISTS `m_soal`;
CREATE TABLE IF NOT EXISTS `m_soal` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
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
  `id_kd` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_guru` (`id_guru`),
  KEY `id_mapel` (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `file`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`, `jml_benar`, `jml_salah`, `id_kd`) VALUES
(1, 16, 1, 1, '', '', '<p>tes soal 123</p>\r\n', '#####<p>1</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####<p>5</p>\r\n', 'A', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_soal_essay`
--

DROP TABLE IF EXISTS `m_soal_essay`;
CREATE TABLE IF NOT EXISTS `m_soal_essay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `file` varchar(150) NOT NULL,
  `tipe_file` varchar(50) NOT NULL,
  `soal` longtext NOT NULL,
  `cek` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_mapel`
--

DROP TABLE IF EXISTS `tr_guru_mapel`;
CREATE TABLE IF NOT EXISTS `tr_guru_mapel` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_guru` (`id_guru`),
  KEY `id_mapel` (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(1, 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_tes`
--

DROP TABLE IF EXISTS `tr_guru_tes`;
CREATE TABLE IF NOT EXISTS `tr_guru_tes` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
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
  `id_kelas` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_guru` (`id_guru`),
  KEY `id_mapel` (`id_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_ikut_ujian`
--

DROP TABLE IF EXISTS `tr_ikut_ujian`;
CREATE TABLE IF NOT EXISTS `tr_ikut_ujian` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_tes` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `nilai` decimal(10,2) NOT NULL,
  `nilai_bobot` decimal(10,2) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tes` (`id_tes`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
