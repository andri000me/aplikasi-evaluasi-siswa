-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2019 pada 15.43
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
CREATE TABLE `kd` (
  `id_kd` int(11) NOT NULL,
  `kd_ke` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_mapel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kd`
--

INSERT INTO `kd` (`id_kd`, `kd_ke`, `nama`, `id_mapel`) VALUES
(1, 1, 'Pengenalan PBO', 1),
(2, 2, 'Mengenal Object dan Class', 1),
(4, 1, 'Aplikasi Web Stateful', 4),
(5, 2, 'Keamanan Data', 4),
(6, 3, 'PHP Berorientasi Objec', 4),
(7, 4, 'Publikasi Aplikasi Web', 4),
(8, 5, 'MVC Framework', 4),
(9, 1, 'Membedakan  antara fakta dan opini  dari berbagai laporan  lisan', 3),
(10, 2, 'Menyampaikan gagasan dan tanggapan dengan alasan yang logis  dalam diskusi', 3),
(11, 3, 'Menemukan ide pokok dan permasalahan dalam artikel melalui kegiatan membaca intensif  	', 3),
(12, 4, 'Menulis surat lamaran pekerjaan berdasarkan unsur-unsur dan struktur ', 3),
(13, 5, 'Menulis resensi buku pengetahuan berdasarkan format baku', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(10) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
('XIIRPL1', 'XII RPL-1'),
('XIIRPL2', 'XII RPL-2'),
('XIIRPL3', 'XII RPL-3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_admin`
--

DROP TABLE IF EXISTS `m_admin`;
CREATE TABLE `m_admin` (
  `id` int(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `kon_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(5, '123456', 'e10adc3949ba59abbe56e057f20f883e', 'guru', 19),
(6, '654321', 'c33367701511b4f6020ec61ded352059', 'guru', 18),
(7, '16171359', 'ec4bc34b163216f28270313bc1ae6a8e', 'siswa', 24),
(8, '16171360', 'ad3a91f250814d64002ddec06ee82826', 'siswa', 25),
(9, '16171361', 'c3c2ed1a9f4f0fcc5628e6dcbee75bb4', 'siswa', 26),
(10, '16171362', 'dc824f41f552e5cb119a054d8ffc00f0', 'siswa', 27),
(11, '16171364', '43abe8c4bc0df9535da74b5973a0a771', 'siswa', 28),
(12, '16171366', 'e3ae0973fe59729fb3bb5fce4c3fdc4e', 'siswa', 29),
(13, '16171367', '8a19577ccb787bb2bd1d5af65e112232', 'siswa', 30),
(14, '16171368', 'ea9655a0a7dd6efd95aad266663f6a46', 'siswa', 31),
(15, '16171369', '7c843b518ebcd925ba3b4f21ee0013ae', 'siswa', 32),
(16, '16171371', 'b3629078dcf5c02b3425311606b194ff', 'siswa', 33),
(17, '16171391', '484331f4665f5d0161218ab27f1d54a3', 'siswa', 34),
(18, '16171392', '6a704ef73b608392e7894473a8668e30', 'siswa', 35),
(19, '16171393', '19eab2a5e5987e219e4c4871b0a390e9', 'siswa', 36),
(20, '16171394', 'e108fcb1e9c24c68319e7a1e431ab15f', 'siswa', 37),
(21, '16171395', '8276efb51d2ae0bfd6fa902463533745', 'siswa', 38),
(22, '16171396', 'c6c323cdb9319401d5107a88220cd11b', 'siswa', 39),
(23, '16171397', '71b3f66bedf7f02bcd7cc447ff1ef662', 'siswa', 40),
(24, '16171398', '304d14f35fccef87f0edbc8a218ae2f2', 'siswa', 41),
(25, '16171399', 'a734ae3bee63e9b662cde971eb900268', 'siswa', 42),
(26, '16171400', 'e3620569bc4f4e43dc36c97cf2ec0595', 'siswa', 43),
(27, '16171423', '719a0acf1d249d69f233151a9e0febfb', 'siswa', 44),
(28, '16171424', '57d4a5abef41ce93f7a0aeba8fa7d7b9', 'siswa', 45),
(29, '16171425', '154048e606b5e2693093d97231aca803', 'siswa', 46),
(30, '16171427', '81ef174dc9d1cad9463d90aa4da75415', 'siswa', 47),
(31, '16171428', '7493c6b529e6790555e31732a1206519', 'siswa', 48),
(32, '16171430', 'c79fb635b6bad4853f70690ef14d1c8c', 'siswa', 49),
(33, '16171431', '4ffd6a25f40145ae1ea777aa3ee07954', 'siswa', 50),
(34, '16171432', '67fd6a55278ad184693aaeb299f4000f', 'siswa', 51),
(35, '16171433', '50954de58aefb132ce5f6aff7ea933bc', 'siswa', 52),
(36, '16171434', '64ef1595e3a160b0ce332a2dfbfad6a2', 'siswa', 53);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_guru`
--

DROP TABLE IF EXISTS `m_guru`;
CREATE TABLE `m_guru` (
  `id` int(6) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_guru`
--

INSERT INTO `m_guru` (`id`, `nip`, `nama`) VALUES
(18, '654321', 'Fiqri Noor Hadi, ST'),
(19, '123456', 'Yeva Purnama, S.Pd');

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
CREATE TABLE `m_mapel` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(2, 'Bahasa Inggris'),
(3, 'Bahasa Indonesia'),
(4, 'Kejuruan RPL');

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
CREATE TABLE `m_siswa` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `id_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nama`, `nim`, `jurusan`, `id_kelas`) VALUES
(24, 'ADAM MALIK', '16171359', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(25, 'ADITYA ADRIANSYAH RANTI', '16171360', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(26, 'ADNAN MAJID', '16171361', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(27, 'AHMAD ALFARIZI', '16171362', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(28, 'ALIEF RAMADHAN', '16171364', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(29, 'ANTON PUTRA PRATAMA', '16171366', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(30, 'ARIF MUHAMMAD RIZAL', '16171367', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(31, 'ARIS YULIANTO', '16171368', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(32, 'ARYANDHIKA ARRASYID', '16171369', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(33, 'BIMO BAGUS BAGASKORO', '16171371', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(34, 'ABI MUHAMMAD FAUZAN', '16171391', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(35, 'ACHMAD SODIKIN', '16171392', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(36, 'ADZRA YANDRIZA', '16171393', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(37, 'AGUNG TIRTAYASA KUSUMA', '16171394', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(38, 'AHMAD DWIKHALDI RIFAI', '16171395', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(39, 'AKBAR DWI VIRGIAWAN', '16171396', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(40, 'ALFITO DWINATA', '16171397', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(41, 'ANDIKA PRASETIO', '16171398', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(42, 'AULIA DWI SAFITRI', '16171399', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(43, 'DAMAR IMAM SATRIO', '16171400', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(44, 'ADITYA RIZKY ARIWINATA', '16171423', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(45, 'AFDHEL MUHAMMAD DWIWANGKORO', '16171424', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(46, 'AJIE PERDANA', '16171425', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(47, 'ALDIANSYAH DWIPUTRA', '16171427', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(48, 'ALIF AKBAR PERMANA', '16171428', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(49, 'BAYU ASTRIO DHI YAHUDIN', '16171430', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(50, 'CAESAR MUFLIH ASYRAF', '16171431', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(51, 'DAFFA TAMA RAMADANI', '16171432', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(52, 'FARIZ IKHSAN FALAQI', '16171433', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(53, 'FATHIAH AZZAHRAH', '16171434', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3');

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
CREATE TABLE `m_soal` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `file`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`, `jml_benar`, `jml_salah`, `id_kd`) VALUES
(43, 18, 4, 1, '', '', '<p>Istilah dalam menyimpan file yang diperlukan website sehingga memungkinkan semua pihak mengakses data yang tersedia pada website tersebut secara online disebut&hellip;</p>\r\n', '#####<p>Web Hosting</p>\r\n', '#####<p>WWW</p>\r\n', '#####<p>Domain</p>\r\n', '#####<p>FTP</p>\r\n', '#####<p>HTTP</p>\r\n', 'A', '2019-01-03 18:53:56', 0, 0, 8),
(44, 18, 4, 1, '', '', 'Nama unik yang diberikan untuk mengidentifikasi nama server komputer seperti web server atau email server di jaringan komputer ataupun internet disebut…', '#####Web Hosting', '#####WWW', '#####Domain', '#####FTP', '#####HTTP', 'A', '2019-01-03 18:53:56', 0, 0, 8),
(45, 18, 4, 1, '', '', 'Layanan web hosting dimana 1 fisik server digunakan secara bersama-sama (shared) disebut…', '#####Shared Server', '#####Virtual Private Server', '#####Dedicated Server', '#####Cloud server', '#####Colocation Server', 'A', '2019-01-03 18:53:56', 0, 0, 8),
(46, 18, 4, 1, '', '', 'Layanan web hosting yang mendapatkan fitur mirip dengan 1 fisik server, seperti akses ke root serta pembagian jatah CPU dan memory server yang lebih pasti disebut… ', '#####Shared Server', '#####Virtual Private Server', '#####Dedicated Server', '#####Cloud server', '#####Colocation Server', 'A', '2019-01-03 18:53:56', 0, 0, 8),
(47, 18, 4, 1, '', '', 'Layanan tipe server yang fisiknya dimiliki oleh pengguna namun pengelolaannya diserahkan kepada jasa web hosting disebut…', '#####Shared Server', '#####Virtual Private Server', '#####Dedicated Server', '#####Cloud server', '#####Colocation Server', 'A', '2019-01-03 18:53:56', 0, 0, 8),
(48, 18, 4, 1, '', '', 'Layanan  web hosting dimana 1 server khusus digunakan untuk 1 pengguna disebut… ', '#####Shared Server', '#####Virtual Private Server', '#####Dedicated Server', '#####Cloud server', '#####Colocation Server', 'A', '2019-01-03 18:53:56', 0, 0, 8),
(49, 18, 4, 1, '', '', 'Besar lalu lintas data dari dan ke web hosting yang disediakan untuk situs anda disebut…', '#####Bandwidth', '#####Speed', '#####Domain', '#####Kuota', '#####HTTP', 'A', '2019-01-03 18:53:56', 0, 0, 7),
(50, 18, 4, 1, '', '', 'Bagian dari alamat website yang paling kanan hingga tanda titik. Contoh alamat www.google.com, bagian “.com” disebut…', '#####Top Level Domain ', '#####Second Level Domain ', '#####Third Level Domain ', '#####WWW ', '#####HTTP', 'A', '2019-01-03 18:53:56', 0, 0, 7),
(51, 18, 4, 1, '', '', 'Bagian ‘google’ dari alamat website www.google.com disebut…', '#####Top Level Domain ', '#####Second Level Domain ', '#####Third Level Domain ', '#####WWW ', '#####HTTP', 'A', '2019-01-03 18:53:56', 0, 0, 7),
(52, 18, 4, 1, '', '', 'Bagian ‘google’ dari alamat website www.google.co.id disebut…', '#####Top Level Domain ', '#####Second Level Domain ', '#####Third Level Domain ', '#####WWW ', '#####HTTP', 'A', '2019-01-03 18:53:56', 0, 0, 7),
(53, 18, 4, 1, '', '', 'Badan internasional yang mengatur pendaftaran sebuah nama domain adalah…', '#####PALAPA', '#####PANDI', '#####TELKOM', '#####WWW', '#####ICANN', 'A', '2019-01-03 18:53:56', 0, 0, 7),
(54, 18, 4, 1, '', '', 'Badan nasional di Indonesia yang mengatur pendaftaran sebuah nama domain adalah…', '#####PALAPA', '#####PANDI', '#####TELKOM', '#####WWW', '#####ICANN', 'A', '2019-01-03 18:53:56', 0, 0, 7),
(55, 18, 4, 1, '', '', 'Pada pemrograman berorientasi objek, Hasil ‘cetak biru’ atau ‘blueprint’ dari object disebut…', '#####A. Class', '#####Property', '#####Method', '#####Inheritance ', '#####Public', 'A', '2019-01-03 18:53:56', 0, 0, 6),
(56, 18, 4, 1, '', '', 'Data yang terdapat dalam sebuah Class disebut…', '##### Class', '#####Property', '#####Method', '#####Inheritance ', '#####Encapsulation', 'A', '2019-01-03 18:53:56', 0, 0, 6),
(57, 18, 4, 1, '', '', 'Suatu tindakan yang bisa dilakukan dalam sebuah Class disebut…', '##### Class', '#####Property', '#####Method', '#####Inheritance ', '#####Encapsulation', 'A', '2019-01-03 18:53:56', 0, 0, 6),
(58, 18, 4, 1, '', '', 'Sebuah metoda untuk mengatur struktur class dengan cara menyembunyikan alur class disebut…', '##### Class', '#####Property', '#####Method', '#####Inheritance ', '#####Encapsulation', 'A', '2019-01-03 18:53:56', 0, 0, 6),
(59, 18, 4, 1, '', '', 'Property atau method bias diakses dari luar class disebut hak akses…', '##### Class', '#####Property', '#####Method', '#####Inheritance ', '#####Encapsulation', 'A', '2019-01-03 18:53:56', 0, 0, 6),
(60, 18, 4, 1, '', '', 'Property atau method tidak bisa diakses dari luar class, namun bisa diakses oleh class itu sendiri atau turunan class nya disebut hak akses…', '##### Class', '#####Property', '#####Method', '#####Inheritance ', '#####Encapsulation', 'A', '2019-01-03 18:53:56', 0, 0, 6),
(61, 18, 4, 1, '', '', 'Satu-satunya yang bisa mengakses adalah class itu sendiri. Class lain tidak bisa mengaksesnya, termasuk class turunan disebut hak akses…', '##### Class', '#####Property', '#####Method', '#####Inheritance ', '#####Encapsulation', 'A', '2019-01-03 18:53:56', 0, 0, 5),
(62, 18, 4, 1, '', '', 'Variabel $this adalah sebuah variabel khusus dalam OOP PHP yang digunakan sebagai penunjuk kepada objek, ketika kita mengaksesnya dari dalam class. Dalam manual PHP, $this disebut dengan istilah…', '#####Pseudo-variable', '#####Decode', '#####Pseudo-code ', '#####Inheritance  ', '#####Encapsulation ', 'A', '2019-01-03 18:53:56', 0, 0, 5),
(63, 18, 4, 1, '', '', 'Method khusus yang akan dijalankan secara otomatis pada saat sebuah objek dibuat (instansiasi), yakni ketika perintah “new” dijalankan disebut…', '#####Constructor', '#####Destructor', '#####Inheritance', '#####Encapsulation ', '#####Public', 'A', '2019-01-03 18:53:56', 0, 0, 5),
(64, 18, 4, 1, '', '', 'Method khusus yang dijalankan secara otomatis pada saat sebuah objek dihapus disebut…', '#####Constructor', '#####Destructor', '#####Inheritance', '#####Encapsulation ', '#####Public', 'A', '2019-01-03 18:53:56', 0, 0, 5),
(65, 18, 4, 1, '', '', 'Konsep pemrograman dimana sebuah class dapat ‘menurunkan’ property dan method yang dimilikinya kepada class lain disebut…', '#####Constructor', '#####Destructor', '#####Inheritance', '#####Encapsulation ', '#####Public', 'A', '2019-01-03 18:53:56', 0, 0, 5),
(66, 18, 4, 1, '', '', 'Property (variabel) / method (function) yang melekat kepada class, bukan kepada objek disbut…', '#####A. Public Property / Method ', '#####Private  Property / Method', '#####Protected Property / Method', '#####D. Dinamic Property / Method', '#####Static Property / Method', 'A', '2019-01-03 18:53:56', 0, 0, 5),
(67, 18, 4, 1, '', '', 'Fungsi dari base64_encode() adalah…', '#####A. Fungsi ini akan menghasilkan sebuah kode hash baru dengan metode one-way hashing', '#####B. menghasilkan kode hash dengan menggunakan algoritma DES, Blowfish, dan MD5.', '#####C. menghasilkan kode hash sepanjang 32 karakter.menghasilkan sebuah kode hash baru dengan metode one-way hashing ', '#####D. menghasilkan kode hash dari teks yang diinputkan dan bisa dikembalikan ke bentuk semula dengan fungsi base64_decode().', '#####E. menghasilkan kode hash sepanjang 40 karakter. Mirip seperti fungsi md5().', 'A', '2019-01-03 18:53:56', 0, 0, 4),
(68, 18, 4, 1, '', '', 'Fungsi dari shal() adalah…', '#####A. Fungsi ini akan menghasilkan sebuah kode hash baru dengan metode one-way hashing', '#####B. menghasilkan kode hash dengan menggunakan algoritma DES, Blowfish, dan MD5.', '#####C. menghasilkan kode hash sepanjang 32 karakter.menghasilkan sebuah kode hash baru dengan metode one-way hashing ', '#####D. menghasilkan kode hash dari teks yang diinputkan dan bisa dikembalikan ke bentuk semula dengan fungsi base64_decode().', '#####E. menghasilkan kode hash sepanjang 40 karakter. Mirip seperti fungsi md5().', 'A', '2019-01-03 18:53:56', 0, 0, 4),
(69, 18, 4, 1, '', '', 'Fungsi dari md5() adalah…', '#####A. Fungsi ini akan menghasilkan sebuah kode hash baru dengan metode one-way hashing', '#####B. menghasilkan kode hash dengan menggunakan algoritma DES, Blowfish, dan MD5.', '#####C. menghasilkan kode hash sepanjang 32 karakter.menghasilkan sebuah kode hash baru dengan metode one-way hashing ', '#####D. menghasilkan kode hash dari teks yang diinputkan dan bisa dikembalikan ke bentuk semula dengan fungsi base64_decode().', '#####E. menghasilkan kode hash sepanjang 40 karakter. Mirip seperti fungsi md5().', 'A', '2019-01-03 18:53:56', 0, 0, 4),
(70, 18, 4, 1, '', '', '3. Fungsi dari crypt() adalah…', '#####A. Fungsi ini akan menghasilkan sebuah kode hash baru dengan metode one-way hashing', '#####B. menghasilkan kode hash dengan menggunakan algoritma DES, Blowfish, dan MD5.', '#####C. menghasilkan kode hash sepanjang 32 karakter.menghasilkan sebuah kode hash baru dengan metode one-way hashing ', '#####D. menghasilkan kode hash dari teks yang diinputkan dan bisa dikembalikan ke bentuk semula dengan fungsi base64_decode().', '#####E. menghasilkan kode hash sepanjang 40 karakter. Mirip seperti fungsi md5().', 'A', '2019-01-03 18:53:56', 0, 0, 4),
(71, 18, 4, 1, '', '', 'Fungsi dari password_hash() adalah…', '#####A. Fungsi ini akan menghasilkan sebuah kode hash baru dengan metode one-way hashing', '#####B. menghasilkan kode hash dengan menggunakan algoritma DES, Blowfish, dan MD5.', '#####C. menghasilkan kode hash sepanjang 32 karakter.menghasilkan sebuah kode hash baru dengan metode one-way hashing ', '#####D. menghasilkan kode hash dari teks yang diinputkan dan bisa dikembalikan ke bentuk semula dengan fungsi base64_decode().', '#####E. menghasilkan kode hash sepanjang 40 karakter. Mirip seperti fungsi md5().', 'A', '2019-01-03 18:53:56', 0, 0, 4),
(72, 18, 4, 1, '', '', 'Teknik mengamankan data agar tidak diketahui isinya disebut…', '#####Validasi', '#####Enkripsi', '#####Method', '#####Inheritance ', '#####Encapsulation', 'A', '2019-01-03 18:53:56', 0, 0, 4),
(73, 19, 3, 1, '', '', 'Bacalah teks berikut!  \"Perilaku prososial anak tidak datang dengan sendirinya, melainkan diperoleh dari proses belajar yang panjang. Proses belajar di sini tidak hanya yang dilakukan di bangku sekolah tetapi justru yang lebih penting adalah yang diperolehnya dari didikan orang tuanya. Pada masa anak-anak, orang tua merupakan sarana proses sosialisasi yang utama. Sosialisasi terjadi melalui perbuatan orang tua yang menunjukkan penerimaan, kehangatan, dan kasih sayang sebagai contoh dari wujud perilaku anak. Peran orang tua dalam mengasuh, membimbing, mendidik, mengawasi, memberi perhatian, dan menjadi contoh yang baik bagi anak akan membentuk perilaku prososialnya.\" Ide pokok tekt tersebut adalah', '#####pembentukan perilaku sosial ', '#####mempelajari proses perilaku anak', '#####peran orang tua dalam mendidik anak', '#####proses perilaku prososial anak', '#####pola didik orang tua terhadap anak', 'A', '2019-01-03 18:57:43', 1, 1, 9),
(74, 19, 3, 1, '', '', 'Bacalah teks berikut!  \"Menurut hukum internasional, negara pesisir memiliki hak maritim – termasuk kewenangan untuk mengeksplorasi  dan mengeksploitasi sumber daya alam – sejauh 200 mil laut  atau 370 kilometer dari pantainya. Namun, zona ekonomi eksklusif  ini dapat menjadi sumber sengketa di wilayah seperti Laut Tiongkok Selatan, tempat banyak negara terletak berdekatan.\"  Makna istilah eksplorasi dan eksploitasi pada teks tersebut adalah ....', '#####penjajakan, penelitian', '#####penjajakan, pengusahaan', '#####pengusahaan, pendayagunaan', '#####penelitian, perencanaan', '#####pengusahaan, penjajakan', 'A', '2019-01-03 18:57:43', 2, 0, 9),
(75, 19, 3, 1, '', '', 'Bacalah teks berikut!                                                                                                                                \nPesan di online shop\nPemesan: “Mbak, saya boleh pesen?”\nPenjual:  “Boleh mas, mau pesen apa dan berapa jumlahnya?”\nPemesan: “Oh, enggak kok saya enggak mau pesen barang …”\nPenjual: “Terus pesan apa mas?”\nPemesan: “Saya cuma mau pesen, … jaga kesehatan, jangan lupa makan dan inget sholat lima waktu ya ...”\nPenjual : ????????\nInterpretasi kita terhadap teks tersebut adalah ....', '#####pembeli yang memesan barang untuk penjual', '#####kesigapan penjual dalam menyiapkan pesanan pembeli', '#####penjual yang tidak mempunyai katalog barang yang dijual', '##### penjual yang kebingungan dengan apa yang dipesan pembeli', '##### pembeli yang kebingungan dengan barang yang akan dipesan', 'A', '2019-01-03 18:57:43', 1, 1, 9),
(76, 19, 3, 1, '', '', 'Bacalah teks berikut!  \"Kabar bohong atau hoax menjadi ancaman serius bagi keutuhan negara. Seperti dipahami, informasi di sekitar kita dipenuhi dengan kebohongan, ujaran kebencian dan fitnah. [....] Media sosial seperti facebook misalnya,  dijadikan tempat menyebarkan fitnah , kebohongan. Pada titik ekstrem, berita hoax sudah menjadi alat mengadu domba kompenen anak bangsa, sehingga menciptakan kegaduhan di masyarakat. Stop penyebaran berita yang tidak benar.\"  Kalimat yang tepat untuk mengisi bagian rumpang teks tersebut adalah ...', '##### Hoax memenuhi ruang dunia maya.', '##### Hoax berita bohong yang harus dihentikan.', '#####Kita harus mengenali informasi yang tidak benar', '#####Bersikap bijak dalam menerima berita yang belum jelas', '#####Pikirkan kembali sebelum mengirim berita yang belum tentu benar.', 'A', '2019-01-03 18:57:43', 2, 0, 9),
(77, 19, 3, 1, '', '', 'Bacalah teks berikut!  “Sumber daya manusia yang handal  sangat dibutuhkan oleh kalangan dunia usaha dan industri di dunia. Namun, SDM handal itu tidak bisa disiapkan hanya dari sekolah, tapi harus dikolaborasikan melalui hubungan yang erat dengan dunia industri karena merekalah yang akan menilai handal tidaknya SDM dari siswa tamatan sekolah kejuruan khususnya di bidang engineering (permesinan). Engineering sekarang ini diharapkan memiliki peranan yang sangat penting di tengah masyarakat”  Simpulan teks tersebut adalah...', '#####sekolah menghasilkan SDM handal', '#####tamatan sekolah kejuruan harus handal', '#####engineering sangat berperan bagi masyarakat', '##### dunia usaha dan industri membutuhkan SDM yang handal', '##### kerja sama sekolah dan industri hasilkan SDM handal', 'A', '2019-01-03 18:57:43', 2, 0, 9),
(78, 19, 3, 1, '', '', 'Bacalah teks berikut !                                                                                                                                        \nGagasan pokok: Penyelamatan terumbu karang \nGagasan penjelas: \n(1) Pengertian terumbu karang\n(2) Manfaat terumbu karang bagi lingkungan\n(3) Penyebab rusaknya terumbu karang \n(4) Akibat rusaknya terumbu karang\n(5) Pemanfaatan terumbu karang untuk souvenir\n(6) Teknik menyelam di antara terumbu karang\nGagasan penjelas yang tidak sesuai dengan gagasan utama ditandai dengan nomor ....', '#####(1), (3)', '#####(2). (4)', '#####(3), (5)', '#####(4), (5)', '#####(5), (6)', 'A', '2019-01-03 18:57:43', 1, 1, 9),
(79, 19, 3, 1, '', '', 'Bacalah teks berikut !                                                                                                                                        \n(1) Di gang itulah kami dahulu bermain-main.\n(2) Kaus yang tak pernah kupakai lagi sejak aku kena seruduk sapi bantuan presiden itu.\n(3) Di gang itu, di belakang kawasan pasar ikan, terletak rumah orang tua Taripol, di mana dia lahir dan besar.\n(4) Kuurai masa lalu satu per satu, selembar kaus merah tergantung di dinding.\n(5) Kini dia memberi nama buruk pada gang itu, merusak kenangan indah masa bocah kami. (Andrea Hirata: Sirkus Pohon)\nUrutan kalimat-kalimat kutipan novel tersebut yang tepat adalah ....', '#####(1), (3), (5), (4), (2)', '#####(1), (3), (2), (4), (5)', '#####(3), (1), (5), (4), (2)', '#####(3), (5), (4), (2), (1)', '#####(4), (2), (3), (1), (5)', 'A', '2019-01-03 18:57:43', 2, 0, 10),
(80, 19, 3, 1, '', '', 'Cermatilah teks berikut !                                                                                                                                        \nViasti : Mohon maaf Riska, apakah tidak salah penilaian Riska terhadap saya. Bukankah saya ini tergolong kawan baru yang bergabung dalam usahamu  ini belum lama. Bukankan ada kawan yang lebih lama bekerja sama denganmu. \n\nRiska : Saya meminta kamu untuk menjadi penanggung jawab usaha saya di tempat lain tidak ada kaitannya dengan teman lama atau baru, tetapi saya melihatnya dari kinerja kamu. Disiplin, tanggung jawab, tekun, dan santun. Jadi, tolong bantu saya.  \n\nViasti : Baiklah, jika itu alasanmu. Semoga saya bisa mengemban amanah ini.   \nIsi dialog tersebut adalah adalah ....', '#####Riska yang tak mampu menjalani usahanya', '#####Riska yang banyak berharap pertolongan temannya', '#####kesanggupan Viasti mengembangkan usaha temannya', '#####Riska yang merasa bertanggung jawab atas kinerja temannya', '#####Viasti yang merasa tidak etis jika menolak tawaran temannya', 'A', '2019-01-03 18:57:43', 2, 0, 10),
(81, 19, 3, 1, '', '', 'Bacalah teks berikut !                                                                                                                                        \n\n    Seketika demam panggungku lenyap waktu kulihat Dinda dan Azizah tak henti bertepuk tangan, Instalatur ternganga sampai tak bisa menganga lagi. Pipit dan Yubi menunjuk-nunjukku, paman mereka yang hebat ini.\n\n    Ayah memandangku sambil mengangguk-angguk, mungkin baru menyadari bahwa keadaanku tidaklah seperti yang dibayangkannya. Bahwa mustahil pertunjukkan fantastik yang dilihatnya bisa dicapai tanpa latihan gigih. Bahwa ternyata aku bisa juga bekerja keras, berdisiplin, menjaga komitmen, dan punya tekad. \n(Andrea Hirata: Sirkus Pohon)\n\nAmanat kutipan novel tersebut adalah ....\n', '#####berprestasilah agar mendapat pujian ', '#####janganlah menertawakan kesuksesan orang lain', '##### bersenang-senanglah jika sudah mendapat kesuksesan', '#####bekerja keraslah dengan disiplin agar bisa meraih kesuksesan', '#####perbanyaklah tampil di atas panggung agar tidak demam panggung', 'A', '2019-01-03 18:57:43', 2, 0, 10),
(82, 19, 3, 1, '', '', 'Bacalah kutipan novel berikut!                                                                                                                                   \nAku melangkah pelan meninggalkan pekarangan sambil menenteng beberapa plastik kresek. Sampai di pinggir jalan aku menoleh ke belakang untuk kali terakhir. Mereka melambai-lambai dari beranda. (Andrea Hirata: Sirkus Pohon)\nMajas yang terdapat dalam kutipan novel tersebut adalah ....\n\n', '#####klimaks', '#####metafora', '#####pleonasme', '#####hiperbola', '#####personifikasi', 'A', '2019-01-03 18:57:43', 2, 0, 10),
(83, 19, 3, 1, '', '', 'Bacalah teks berikut !                                                                                                                                        \nTahu-tahu Bang Nduk, pemilik warung Kupi Kuli yang kampungan minta ampun itu, telah memakai kaus polo dengan kerah berdiri juga. Rambutnya yang semula kusut bergumpal-gumpal macam pukat habis diterjang buaya, dipotong pendek tipis, ditaklukkan dengan likat minyak rambut Tancho hijau, lalu di-mohawk-kan. (Andrea Hirata: Sirkus Pohon)\nUnsur  intrinsik yang dominan dalam kutipan novel tersebut adalah ....', '#####Alur', '#####Tema', '#####Cara bercerita', '#####Latar', '#####Penokohan', 'A', '2019-01-03 18:57:43', 0, 2, 10),
(84, 19, 3, 1, '', '', 'Bacalah teks berikut !                                                                                                                                        \nZadi semakin semangat dalam belajar. Semangat itu datangnya dari sahabatnya Satria yang senantiasa memotivasinya bahwa belakang parang pun kalau diasah tajam juga. Hal ini terbukti dengan nilai yang selalu kompeten untuk setiap ulangan yang dihadapinya. Proyek  yang menjadi tugas utama untuk kenaikan kelas juga ia kerjakan dengan penuh ketekunan.\nMakna peribahasa pada kalimat yang bercetak miring  dalam teks tersebut adalah ....', '#####jika tidak ingin bodoh, kita harus rajin belajar', '#####orang bodoh kalau mau belajar akan pandai juga', '#####orang malas akan tetap malas walaupun sudah belajar', '#####rajin belajar membuat orang menjadi bertambah pandai', '#####orang bodoh selalu mengalami kesulitan dalam belajar', 'A', '2019-01-03 18:57:43', 1, 1, 10),
(85, 19, 3, 1, '', '', 'Bacalah kutipan novel berikut!                                                                                                                                   \nBerada dalam sebuah jarak, terbentang Laut Jawa sebagai pemisah, Tegar tak dapat melerai hatinya yang tak karuan terhadap Tara. Kini semua dapat diendapkannya dan dia dapat bersikap tenang, melihat khayalan dalam kenyataan, mengubah kerinduan menjadi kebijakan, bahwa apa yang dirasakannya, belum tentu dirasakan Tara. (Andrea Hirata: Sirkus Pohon)\nWatak tokoh Tegar dalam kutipan novel tersebut adalah ....', '#####Penyayang', '#####Peramah', '#####Emosional', '#####Pengecut', '#####Bijaksana', 'A', '2019-01-03 18:57:43', 1, 1, 11),
(86, 19, 3, 1, '', '', 'Cermati kutipan novel berikut! \nPukul 23.30 malam.                                                                                                                                     \n     Dengan hati-hati, Asma meletakkan kamera DSLR yang lensanya baru dia bersihkan di sisi ranjang, lalu membuka netbook, Sekar sudah menghilang dari monitor. Masih ada waktu. Gadis itu meraih netbook dan dengan cepat jemari lentiknya mengetik sebuah nama.\n    Beberapa link tentang Ashima dan Yunnan muncul. Asma menelusuri satu per satu sebelum mengklik sebuah website yang sepertinya terlihat lebih informatif. Ashima, apakah yang memberi gadis itu kekuatan untuk mempercayakan hatinya hanya pada Ahei? Berakhir bahagiakah kisah cinta mereka? \n    Penginapan sederhana yang AC-nya terlalu dingin membuat Asma merapatkan jaket. Kedua mata gadis itu masih merayapi layar netbook, sebelum kemudian menarik napas.\n(Assalamualaikum Beijing karya Asma Nadia)\nLatar tempat yang terdapat dalam kutipan novel tersebut adalah ....\n', '#####Ruang tamu', '#####Ruang kerja', '#####Serambi penginapan', '#####Kamar tidur', '#####Ruang komputer', 'A', '2019-01-03 18:57:43', 0, 2, 11),
(87, 19, 3, 1, '', '', 'Cermati kutipan cerpen berikut!                                                                                                                                      \nSebagai anak pertama, sudah sejak kecil aku hidup seadanya dan bekerja keras. Kedua adikku menjadi tanggung jawabku membiayai pendidikannya sampai sarjana. Aku kuliah sambil bekerja. Honorku kugunakan untuk biaya kuliahku dan adikku-adikku. Aku bertekad kalau aku dan kedua adikku  bisa jadi sarjana. Masa remajaku memang penuh aktivitas dan kadang terasa melelahkan. Namun,  ibuku telah mengajariku dan mencontohkan untuk bersikap lapang dada dalam kehidupan.\nMakna ungkapan lapang dada  dalam kutipan cerpen tersebut adalah ….', '#####Sayang', '#####Santun', '#####Mandiri', '#####Sabar', '#####Optimistis', 'A', '2019-01-03 18:57:43', 2, 0, 11),
(88, 19, 3, 1, '', '', 'Cermati kutipan cerpen berikut!                                                                                                                                    \nSejak dulu, Makaji tidak pernah keberatan membantu keluarga mana saja yang hendak menggelar pesta, tak peduli apakah tuan rumah hajatan itu orang terpandang yang tamunya membludak atau orang biasa yang hanya sanggup menggelar syukuran seadanya. Makaji tak pilih kasih, meski ia satu-satunya juru masak yang masih tersisa di Lareh Panjang. Di usia senja, ia masih tangguh menahan kantuk, tangannya tetap gesit meracik bumbu, masih kuat ia berjaga semalam suntuk.\nUnsur ekstrinsik yang terdapat pada kutipan cerita pendek tersebut adalah ….\n', '#####Estetika', '#####Sosial', '#####Budaya', '#####Politik ', '#####Ekonomi', 'A', '2019-01-03 18:57:43', 1, 1, 11),
(89, 19, 3, 1, '', '', ' Cermati kutipan teks drama berikut!                                                                                                                                     \nFitri: Maaf ya, Ki nanti malam aku sudah ada janji dengan Afi. Jadi, engga bisa ke \n        rumahmu.\nAzki: O, ya? Ya sudah tidak apa-apa kok. Eh, tapi sepertinya  kamu sedang senang nih?\nFitri: Iya, Ki,  aku memang sedang senang sekali. (sambil senyum-senyum)\nAzki: Kenapa? Ada apa? Memang kamu menang undian satu miliar, ya?\nFitri: Undian? Bukan. Aku senang  karena nilai raporku bagus dan ini berarti aku jadi\n         dibelikan laptop baru oleh ayahku.\nInti kutipan drama tersebut adalah .... \n', '#####Fitri berbahagia karena mendapat undian berhadiah', '#####Fitri merasa bahagia karena nilai rapornya bagus', '#####Fitri merasa bahagia karena telah dibelikan laptop', '#####Kebahagiaan Fitri  karena dihadiahkan laptop oleh ayahnya ', '#####Kebahagiaan Fitri saat mendapat hadiah', 'A', '2019-01-03 18:57:43', 2, 0, 11),
(90, 19, 3, 1, '', '', 'Cermati kutipan cerpen berikut!                                                                                                                                    \nAmbillah satu demi satu dan pelan-pelan. Tidak perlu engkau berebut karena semuanya telah diatur. Mana untukmu dan mana untuk yang lain, itu sudah ada jatahnya masing-masing. Tuhan sudah menata dan membagi dengan sangat baik. Semua orang akan mendapatkan kebahagiaan, walaupun dengan bentuk yang tidak sama.\nNilai pendidikan pada  kutian cerpen tersebut adalah ...\n', '#####Jangan memaksa orang lain supaya memiliki kesamaan denganmu.', '#####Yakinlah bahwa semua orang akan mendapatkan kebahagiaan yang sama.', '#####Hendaklah mengambil barang miliknya dengan pelan-pelan.', '#####Jangan mengambil barang milik orang lain.', '#####Sebaiknya menunggu saja jatah pemberian orang lain', 'A', '2019-01-03 18:57:43', 1, 1, 11),
(91, 19, 3, 1, '', '', 'Cermati teks berikut!                                                                                                                        \nTeks 1\nApalah tanda kerang berisi\nBila direbus kulitnya merekah\nApalah tanda orang berbudi\nBila bergaul suka merendah\n \nTeks 2\nBerkatalah dengan sopan\nJagalah setiap ucapan\nAgar engkau menjadi idaman\nSetiap orang merasa nyaman\n\nPerbedaan dua teks tersebut  adalah  …\n', '#####Teks 1\nbersajak a-b-a-b\nTeks 2\nbersajak a-a-a-a', '#####Teks 1\nbersajak sama\nTeks 2\nbersajak silang', '#####Teks 1\ndua larik pertama isi\nTeks 2\ndua larik pertama sampiran', '#####Teks 1\ntidak mempunyai sampiran\nTeks 2\nada sampiran', '#####Teks 1\nrima akhir sama\nTeks 2\nrima akhir berbeda', 'A', '2019-01-03 18:57:43', 2, 0, 12),
(92, 19, 3, 1, '', '', 'Cermati teks berikut!                                                                                                                                    \nKalau kamu mencari berita\nJangan baca berita basi\n[…]\nJangan cari cinta  imitasi\nLarik  yang tepat untuk melengkapi  pantun tersebut adalah ….\n', '#####Kalau cinta memang utama', '#####Kalau cinta memang buta', '#####Kalau kamu membaca berita', '#####Kalau kamu mau meminta', '##### Kalau kamu mencari cinta', 'A', '2019-01-03 18:57:43', 1, 1, 12),
(93, 19, 3, 1, '', '', 'Cermati  pantun berikut!                                                                                                                                     \nMinyak habis api meredup\nAnak kecil bermain dadu\nBila datang cobaan hidup\nKepada Tuhan kita mengadu\nTema pantun tersebut adalah ….\n', '#####Lingkungan ', '#####Kebudayaan', '#####Pendidikan', '#####Percintaan', '#####Persahabatan', 'A', '2019-01-03 18:57:43', 2, 0, 12),
(94, 19, 3, 1, '', '', 'Cermati kutipan cerpen berikut!                                                                                                                                 \n \nSejenak Makaji diam mendengar tawaran Azrial. Tabiat orang tua memang selalu begitu, walau terasa semanis gula, tak bakal langsung direguknya, meski sepahit empedu tidak pula buru-buru dimuntahkannya, mesti matang ia menimbang. Makaji memang sudah lama menunggu ajakan seperti itu. Orang tua mana yang tak ingin berkumpul dengan anaknya di hari tua? Dan kini, gayung telah bersambut, sekali saja ia mengangguk, Azrial akan segera memboyongnya ke rantau. Makaji tetap akan mempunyai kesibukan di Jakarta, ia akan jadi juru masak di rumah makan milik anaknya sendiri. \n\nCara pengarang  bercerita dalam teks tersebut  adalah dengan menggunakan …. \n', '#####sudut pandang orang kedua pelaku utama', '#####sudut pandang orang ketiga pelaku utama', '##### sudut pandang orang pertama pelaku utama', '#####sudut pandang orang kedua pelaku utama', '#####sudut pandang orang ketiga pelaku sampingan', 'A', '2019-01-03 18:57:43', 1, 1, 12),
(95, 19, 3, 1, '', '', 'Cermati kutipan ulasan film berikut!                                                                                                                                 \nFilm “Perahu Kertas 1” terdapat salah satu bagian konflik yang terkesan menarik sementara bagian lainnya terasa datar akibat konflik yang muncul dari sisi kehidupan pribadi masing-masing karakter terlalu banyak yang pada akhirnya justru memecah perhatian penonton. Film ini terbagi menjadi dua seksi sehingga membuat penonton harus menunggu seksi berikutnya. Akhir ceritanya pun kurang jelas dan masih menggantung. \nKutipan ulasan film tersebut berisi tentang ....\n\n', '#####deskripsi film', '#####kelemahan film', '#####simpulan film', '#####keunggulan film', '#####sinopsis film', 'A', '2019-01-03 18:57:43', 2, 0, 12),
(96, 19, 3, 1, '', '', 'Cermati teks berikut!\n(1) Cerita  film “5 Elang”  sangat mudah dicerna. (2) Film ini sangat cocok untuk keluarga maupun anak-anak karena ceritanya mudah  dipahami. (3) Film ini mengajarkan budaya cinta lingkungan seperti saat Rusdi berkata, “ Maaf, kertasnya kecil penghematan buat pohon”. (4) Akting pemain  cukup apik dan natural. (5) Film ini dibintangi oleh anggota Coboy Junior yang menjadi daya tarik tersendiri bagi penggemarnya.\nKalimat simpleks dalam teks tersebut ditandai dengan nomor ….\n', '#####1', '#####2', '#####3', '#####4', '#####5', 'A', '2019-01-03 18:57:43', 1, 1, 12),
(97, 19, 3, 1, '', '', 'Cermati  teks  berikut!\n(1) Salah satu program siswa kelas XI SMK adalah Praktek Kerja Lapangan. (2) Program ini merupakan bagian dari  Program Sistem Ganda (PSG). (3) Kualitas dan kompetensi siswa dapat dilihat dari PKL. (4) Program ini diharapkan dapat meningkatkan kuantitas lulusan SMK yang akan diserap di perusahaan. (5) Persentase keterserapan lulusan di perusahaan pun secara otomatis akan meningkat.\nKata tidak  baku dalam teks  tersebut terdapat dalam kalimat nomor ….', '#####1', '#####2', '#####3', '#####4', '#####5', 'A', '2019-01-03 18:57:43', 1, 1, 13),
(98, 19, 3, 1, '', '', 'Cermati teks  berikut!                                                                                                                                  \n(1) Manfaat kegiatan ekstrakurikuler banyak sekali. (2) Kita bisa mendapatkan aneka ilmu yang bermafaat. (3) Dalam setiap ekstrakurikuler yang dipilih tentu ada dasar-dasar ilmunya.(4) Sebut saja, kegiatan ekstrakurikuler yang berkaitan dengan pelajaran fisika, matematika, dan bahasa inggris.(5) Bila kegiatan ekstrakurikuler di bawah bimbingan guru yang tepat, kegiatan tersebut bisa menjadi wadah yang tepat bagi  para siswa dalam mengembangkan bakat dan kemampuannya.\nKata yang penulisannya tidak sesuai dengan ejaan bahasa Indonesia dalam teks  tersebut ditandai dengan nomor ….\n', '#####1', '#####2', '#####3', '#####4', '#####5', 'A', '2019-01-03 18:57:43', 2, 0, 13),
(99, 19, 3, 1, '', '', 'Cermati teks berikut!                                                                                                                                  \n1. Sejak zaman dahulu, nenek moyang kita telah mengenal tanaman lidah buaya lengkap dengan manfaatnya. Manfaat tumbuhan yang bernama Latin aloe vera ini tidak hanya sebagai penyubur rambut, namun juga bermanfaat bagi kesehatan tubuh. Lidah buaya […] gunakan untuk mengobati luka bakar dan luka karena cedera \nPronomina (kata ganti) yang tepat untuk melengkapi teks tersebut adalah  ….\n', '#####Iya', '#####Saya', '#####Kamu', '#####Kita', '#####Mereka', 'A', '2019-01-03 18:57:43', 2, 0, 13),
(100, 19, 3, 1, '', '', 'Cermati  kalimat-kalimat  berikut!                                                                                                                               \n(1) Agar kita dapat mengembangkan minat dan bakat dalam kegiatan ektrakurikuler, kita  dapat memilihnya sesuai dengan kemampuan yang kita miliki.\n(2) Jalani kegiatan ektrakurikuler tersebut dan terima konsekuensinya dengan hati ikhlas karena ini pilihan kita sehingga kita belajar bertanggung jawab.\n(3) Setelah memilih, tentukan target atau titik acuan yang membuat kita termotivasi dan antusias untuk mengikuti kegiatan ektrakurikuler tersebut.\n(4) Jangan lupa pintar-pintar mengatur waktu antara kegiatan akademis dan kegiatan ektrakurikuler yang kita jalani.\nKalimat-kalimat tersebut akan menjadi paragraf yang padu bila disusun dengan urutan ….', '#####(1), (3), (2), (4) ', '#####(3), (4), (2), (1) ', '#####(4), (1), (2), (3)', '#####(2), (3), (4), (1) ', '#####(4), (3), (1), (2)', 'A', '2019-01-03 18:57:43', 2, 0, 13),
(101, 19, 3, 1, '', '', 'Cermati teks  berikut!                                                                                                                                    \nPenghargaan Nobel dianugerahkan setiap tahun kepada ilmuwan yang telah melakukan penelitian luar biasa. Penghargaan diberikan kepada orang yang menemukan teknik atau peralatan yang baru, atau telah melakukan kontribusi luar biasa bagi masyarakat. Saat ini Hadiah Nobel dianggap sebagai penghargaan tertinggi bagi orang yang mempunyai jasa besar kepada dunia.\nRingkasan teks tersebut yang tepat adalah ….\n', '#####Hadiah Nobel diberikan kepada orang yang ahli di bidang teknik yang berkontribusi kepada masyarakat  dan ilmuwan yang berjasa kepada masyarakat/dunia.', '#####Hadiah Nobel dianggap sebagai penghargaan tertinggi bagi orang yang mempunyai jasa besar kepada dunia dalam bidang teknik yang diberikan setiap tahun. ', '#####Setiap tahun Penghargaan Nobel dianugerahkan  kepada ilmuwan yang telah berkontribusi kepada ahli di bidang teknik atau peralatan baru atau kepada dunia.', '#####Penghargaan Nobel dianugerahkan setiap tahun kepada ilmuwan yang telah melakukan penelitian luar biasa di bidang teknik atau peralatan baru atau berkontribusi kepada dunia.', '#####Penghargaan Nobel dianugerahkan setiap tahun kepada ilmuwan yang telah melakukan penelitian di bidang teknik atau peralatan yang menguntungkan masyarakat.', 'A', '2019-01-03 18:57:43', 1, 1, 13),
(102, 19, 3, 1, '', '', 'Cermati  teks  berikut!                                                                                                                                  \nSalah satu alternatif bertanam dengan lahan sempit adalah dengan tabulampot. […] dengan tabulampot sangat sederhana, yaitu dengan menanamnya di dalam kantung plastik  saja. Praktisnya dapat menanam sayuran yang kita senangi. Dengan […] sayuran di dalam tabulampot, uang belanja dapat dihemat. Tabulampot juga dapat digunakan sebagai hiasan rumah agar tampak rindang.\nKata bentukan yang tepat untuk melengkapi teks tersebut adalah ….\n', '#####menanam, menanami', '#####bertanam, ditanam', '#####penanaman, menanam', '#####menanami, ditanamkan ', '#####menanami, ditanami', 'A', '2019-01-03 18:57:43', 2, 0, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_soal_essay`
--

DROP TABLE IF EXISTS `m_soal_essay`;
CREATE TABLE `m_soal_essay` (
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
-- Struktur dari tabel `tr_guru_mapel`
--

DROP TABLE IF EXISTS `tr_guru_mapel`;
CREATE TABLE `tr_guru_mapel` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(3, 18, 4),
(4, 19, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_tes`
--

DROP TABLE IF EXISTS `tr_guru_tes`;
CREATE TABLE `tr_guru_tes` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_guru_tes`
--

INSERT INTO `tr_guru_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `detil_jenis`, `tgl_mulai`, `terlambat`, `token`, `id_kelas`) VALUES
(2, 19, 3, 'coba ujian buat XII RPL 1', 30, 120, 'set', '', '2019-01-03 01:00:00', '2019-01-31 00:00:00', 'NSXYS', 'XIIRPL1'),
(3, 19, 3, 'coba ujian buat XII RPL 2', 30, 120, 'acak', '', '2019-01-03 00:00:00', '2019-01-31 00:00:00', 'SKIII', 'XIIRPL2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_ikut_ujian`
--

DROP TABLE IF EXISTS `tr_ikut_ujian`;
CREATE TABLE `tr_ikut_ujian` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(7, 2, 25, '73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102', '73:B:N,74:A:N,75:C:N,76:A:N,77:A:N,78:A:N,79:A:N,80:A:N,81:A:N,82:A:N,83:C:N,84:A:N,85:B:N,86:B:N,87:A:N,88:B:N,89:A:N,90:C:N,91:A:N,92:B:N,93:A:N,94:B:N,95:A:N,96:C:N,97:B:N,98:A:N,99:A:N,100:A:N,101:B:N,102:A:N', 18, '60.00', '60.00', '2019-01-03 20:28:27', '2019-01-03 22:28:27', 'N'),
(8, 2, 24, '73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102', '73:A:N,74:A:N,75:A:N,76:A:N,77:A:N,78:B:N,79:A:N,80:A:N,81:A:N,82:A:N,83:B:N,84:B:N,85:A:N,86:E:N,87:A:N,88:A:N,89:A:N,90:A:N,91:A:N,92:A:N,93:A:N,94:A:N,95:A:N,96:A:N,97:A:N,98:A:N,99:A:N,100:A:N,101:A:N,102:A:N', 26, '86.67', '86.67', '2019-01-03 20:28:29', '2019-01-03 22:28:29', 'N');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kd`
--
ALTER TABLE `kd`
  ADD PRIMARY KEY (`id_kd`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kon_id` (`kon_id`);

--
-- Indeks untuk tabel `m_guru`
--
ALTER TABLE `m_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_siswa`
--
ALTER TABLE `m_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_soal`
--
ALTER TABLE `m_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `m_soal_essay`
--
ALTER TABLE `m_soal_essay`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tes` (`id_tes`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kd`
--
ALTER TABLE `kd`
  MODIFY `id_kd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `m_guru`
--
ALTER TABLE `m_guru`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `m_soal`
--
ALTER TABLE `m_soal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `m_soal_essay`
--
ALTER TABLE `m_soal_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
