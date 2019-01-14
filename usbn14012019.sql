-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2019 pada 05.05
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 5.6.34

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
(15, 1, '3.1. Mengidentifikasi jenis-jenis hand tools sesuai fungsinya', 10),
(16, 2, '3.2. Mengidentifikasi jenis-jenis power tools sesuai dengan fungsinya', 10),
(17, 3, '3.3. Mengidentifikasi peralatan workshop equipment sesuai peruntukannya', 10),
(18, 4, '3.4. Mengidentifikasi jenis-jenis special service tools sesuai fungsinya', 10),
(19, 5, '3.5. Mengidentifikasi jenis-jenis alat ukur mekanik dan fungsinya', 10),
(20, 6, '3.6. Mengidentifikasi jenis-jenis alat ukur elektrik dan elektronik serta fungsinya', 10),
(23, 1, '3.1. menganalisis fungsi social, struktur teks, dan unsure kebahasaan pada ungkapan penawaran jasa d', 8),
(24, 2, '3.2. Menganalisis fungsi social, struktur teks, dan unsur kebahasaan ungkapan memuji bersayap sesuai', 8),
(25, 3, '3.4 Menganalisis fungsi social, struktur teks, dan unsur kebahasaan untuk menyatakan tentang niat me', 8),
(26, 4, '3.7.Menganalisis fungsi social, strukrue teks dan unsure kebahasaan pada teks deskriptip sederhana t', 8),
(27, 5, '4.2. Menyusun tek lisan dan tulis untuk menyatakan dan merespon ungkapan menyatakan pendapat dan pik', 8),
(28, 6, '4.4. Menangkap makna dalam teks berbentuk Surat lamaran kerja ', 8),
(29, 7, '4.6. Menyususnn teks lisan dan tulis untuk menyatakan dan menanyakan tentang tindakan /kejadian yang', 8),
(30, 8, '4.7. Menangkap makna teks enyerta gambar (Caption)', 8),
(31, 9, '4.9. Menangkap makna teks prosedur, lisan dan tulis, berbentuk manual dan kiat-kiat (tips)', 8),
(32, 10, '4.12. Menyusun teks lisan dan tulis untuk menyatakan dan menanyakan tentang pengandaian jika terjadi', 8),
(33, 11, '4.13. Menangkap makna teks berita sederhana dari Koran/radio/TV', 8),
(34, 12, '4.15 Menangkap niat melakukan sesuatu, sesuai dengan makna teks biografi pendek tentang tokoh terken', 8),
(35, 1, 'KD 3.1', 9),
(38, 2, 'KD 3.3', 9),
(39, 3, 'KD 3.4', 9),
(40, 4, 'KD 3.5', 9),
(41, 5, 'KD 3.6', 9),
(42, 6, 'KD 3.9', 9),
(43, 7, 'KD 3.13', 9),
(44, 8, 'KD 3.14', 9),
(46, 9, 'KD 3.17', 9),
(48, 10, 'KD 3.18', 9),
(49, 11, 'KD 3.20', 9),
(50, 12, 'KD 3.22', 9),
(51, 13, 'KD 3.24', 9),
(52, 14, 'KD 3.26', 9),
(53, 15, 'KD 3.27', 9),
(54, 16, 'KD 3.28', 9),
(55, 17, 'KD 3.29', 9),
(56, 18, 'KD 3.30', 9),
(57, 19, 'KD 3.31', 9),
(59, 20, 'KD 3.32', 9),
(61, 1, 'KD 3.1 /4.1 DLE', 12),
(62, 2, 'KD 3.2/4.2 IPL', 12),
(63, 3, 'KD 3.3/4.3 IML', 12),
(64, 4, 'KD 3.4/4.4 DLE', 12),
(71, 1, 'Memahami proses booting pada Sistem operasi closed source', 11),
(72, 2, 'Memahami instalasi sistem operasi closed source', 11),
(73, 3, 'Memahami komponen perangkat input dan output', 11),
(74, 4, 'Memahami peta tata letak komponen komputer', 11),
(75, 5, 'Memahami peralatan dan bahan yang digunakan dalam perakitan komputer', 11),
(76, 6, 'Memahami format teks pada halaman web', 11),
(77, 7, 'Memahami tampilan format multimedia pada halaman web', 11),
(78, 8, 'Memahami format tabel pada halaman web', 11),
(79, 9, 'Memahami format kaitan pada halaman web', 11),
(80, 10, 'Memahami style pada halaman web', 11),
(81, 11, 'Memahami Struktur CPU dan fungsi CPU', 11),
(82, 12, 'Memahami konsep pemodelan perangkat lunak', 11),
(83, 13, 'Memahami diagram aliran data (DFD)', 11),
(84, 14, 'Memahami diagram hubungan antar entitas (ERD)', 11),
(85, 15, 'Memahami konsep pemodelan berorientasi obyek (UML)', 11),
(86, 16, 'Memahami struktur hirarki basis data', 11),
(87, 17, 'Memahami bahasa untuk mengelola basis data', 11),
(88, 18, 'Memahami konsep pemrograman berorientasi obyek', 11),
(89, 19, 'Memahami konsep enkapsulasi dalam melindungi data dan informasi', 11),
(90, 20, 'Memahami dasar pemrograman pada web server', 11),
(91, 21, 'Memahami struktur kendali program', 11),
(92, 22, 'Memahami pembuatan aplikasi interaktif pada web server', 11),
(93, 23, 'Menalar kasus kedalam paradigma berorientasi obyek', 11),
(94, 24, 'Memahami grafik 2 dimensi', 11),
(95, 1, '3.1 Memahami struktur dan kaidah teks cerita pendek, baik melalui lisan maupun tulisan', 7),
(96, 2, '3.3  Menganalisis teks film/drama baik melalui lisan maupun tulisan', 7),
(97, 3, '3.4 Mengidentifikasi teks editorial/opini, baik secara lisan maupun tulisan', 7),
(98, 4, '3.5 Mengevaluasi teks novel berdasarkan kaidah-kaidah baik melalui lisan maupun tulisan', 7),
(99, 5, '4.1 Menginterpretasi makna teks eksposisi baik secara lisan maupun tulisan', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(10) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
('XIIAV1', 'XII AV-1'),
('XIIRPL1', 'XII RPL-1'),
('XIIRPL2', 'XII RPL-2'),
('XIIRPL3', 'XII RPL-3'),
('XIITITL1', 'XII TITL-1'),
('XIITITL2', 'XII TITL-2'),
('XIITKR1', 'XII TKR-1'),
('XIITKR2', 'XII TKR-2'),
('XIITKR3', 'XII TKR-3'),
('XIITKR4', 'XII TKR-4'),
('XIITKR5', 'XII TKR-5'),
('XIITKR6', 'XII TKR-6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_admin`
--

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
(1, 'admin', 'ac77abf8e65ef8492cfe623ddbf22b3e', 'admin', 0),
(96, 'usbn2019', 'ac77abf8e65ef8492cfe623ddbf22b3e', 'guru', 19),
(101, '12345', '827ccb0eea8a706c4c34a16891f84e7b', 'siswa', 419),
(102, '161710081', 'd544ab4be2f65bbf8f589cea2961d9ee', 'siswa', 1),
(103, '161710082', '67924565c062a62cfab0163c9aea0548', 'siswa', 2),
(104, '161710085', '246201ca94c230b3115b62ef2d9e82d8', 'siswa', 3),
(105, '161710086', '510b91320d294730f9049d3e6f6b4f9f', 'siswa', 4),
(106, '161710088', 'd51ec9a61d5bc6bf7c0f26f64ecb7e61', 'siswa', 5),
(107, '161710089', '63fe285294bb8e0f8e8e6964f19a999a', 'siswa', 6),
(108, '161710090', '9cc2dfdb9b8c09ef2e6c8145d2599c94', 'siswa', 7),
(109, '161710091', '01725162d2ffbf83bdd1fdc7b7fa1299', 'siswa', 8),
(110, '161710092', '921250628bf02e6d198bbdc8fda80717', 'siswa', 9),
(111, '161710093', '2c4fcec37e55a0b480d74ef453c20c4c', 'siswa', 10),
(112, '161710094', '46583fe60c6435d05d2b9b2b27fdc92d', 'siswa', 11),
(113, '161710095', '6e6bb6b13bfb57c80d709de4e354a3ec', 'siswa', 12),
(114, '161710096', '39e6e1332207d4e36f3a83c54852ae2c', 'siswa', 13),
(115, '161710097', 'f1ec3c94432126d39caa108a26207f9c', 'siswa', 14),
(116, '161710098', '6a233351448163bf643a12d839156503', 'siswa', 15),
(117, '161710099', 'f4ed577a8062483f614de136ecb9d639', 'siswa', 16),
(118, '161710100', 'feee0c4c1a50d4c4583303d4bc45646f', 'siswa', 17),
(119, '161710101', '027f9f270c6c5eb236fc47cd4fe4a327', 'siswa', 18),
(120, '161710102', 'bd2ef5fb212d5e5683c6f15c0f55f237', 'siswa', 19),
(121, '161710103', '5c3a22cca4b23a3c440ed00dc5ce1501', 'siswa', 20),
(122, '161710105', 'b285b2c7462092c32fa95e1dbee0c88b', 'siswa', 21),
(123, '161710106', 'af291d527741cd300009090c220bcc18', 'siswa', 22),
(124, '161710107', 'ca560d24913f22d5a479fc8fb8d99785', 'siswa', 23),
(125, '161710109', '3b1785973b985e16a3e2daeefcb0a7ce', 'siswa', 24),
(126, '161710112', 'f502d864723eb337a9dae5e7b04503b7', 'siswa', 25),
(127, '161710113', '7e52d61c9b718b93c5b14265d54c5312', 'siswa', 26),
(128, '161710114', '4576ad317e66c10726c7fd84607d12d0', 'siswa', 27),
(129, '161710115', '40d8ce23e034a832529b9de734a5b539', 'siswa', 28),
(130, '161710116', '9e40b37539c99ce22e0e5b7647e96685', 'siswa', 29),
(131, '151610147', '5db2703895d2c2cbb36c317b4715f394', 'siswa', 30),
(132, '161710117', '82d50f87114348c6942fadbe7757547c', 'siswa', 31),
(133, '161710118', 'e0178084939a975ecd27eb0a6549331e', 'siswa', 32),
(134, '161710119', 'a51b2c7e0b5d3f72df54e10232ad5397', 'siswa', 33),
(135, '161710120', '057f7cfb6c3674d1f5c422a8d39f5ed5', 'siswa', 34),
(136, '161710121', '288a7bb7a8e50689108d4bc61dc07cff', 'siswa', 35),
(137, '161710122', '543cd8db1c8d096f9de29b7619547ba0', 'siswa', 36),
(138, '161710123', '9a3a2f184d9803a4f19dec7ed8db9eb2', 'siswa', 37),
(139, '161710124', 'f9c806357317928f4d5611adb755802e', 'siswa', 38),
(140, '161710125', '1d878a06ae2396e99f9f170924271bee', 'siswa', 39),
(141, '161710126', '1b1566ca8ea3f404cedcb42a77757bbf', 'siswa', 40),
(142, '161710127', 'eff0b0fdfc981cc0180eca2cc644f98b', 'siswa', 41),
(143, '161710128', 'f461ed2dc4e91e8c5eb7b338d753e8be', 'siswa', 42),
(144, '161710129', '2e813d0aa1b7dbfa7510c48a2e8bf15f', 'siswa', 43),
(145, '161710130', '4bfc75fea462ff05308e689311837060', 'siswa', 44),
(146, '161710131', '7ee1a144797ba24506dc74c1bb085f8d', 'siswa', 45),
(147, '161710132', '592bce704bfb840923e74481e88b6abe', 'siswa', 46),
(148, '161710133', '4511aa9ffbaf9c2db63aaeb26a0f511b', 'siswa', 47),
(149, '161710134', '3349f6b69150cedaa535fcdcfcbffb42', 'siswa', 48),
(150, '161710135', '13f9665bd551d14e81b0beed1d4d4df7', 'siswa', 49),
(151, '161710136', '9d34c6d57ed61a60d23baf73f9106acb', 'siswa', 50),
(152, '161710137', '3aa9b1c48fd30a802f2fb106216806df', 'siswa', 51),
(153, '161710138', 'af7ba051386e90c1b30a532c8795520f', 'siswa', 52),
(154, '161710139', '16f13c65cef84206754401fa789680c1', 'siswa', 53),
(155, '161710140', '4a51c3d6d13f209951c321b056863834', 'siswa', 54),
(156, '161710141', 'da030aebff85f1c3c20a3fc976058173', 'siswa', 55),
(157, '161710142', '51955ffda151293611e762cce8ce7847', 'siswa', 56),
(158, '161710143', '13ca03ecc6fbe9a526b94096e2848080', 'siswa', 57),
(159, '161710144', 'f5df076a47b969cf2547d06c412b1c75', 'siswa', 58),
(160, '161710145', 'f4510a6afdfa9025fec7e22514db5bc0', 'siswa', 59),
(161, '161710146', '56057e07e1e1d91b690898621c288448', 'siswa', 60),
(162, '161710147', '41d9bdf417ee5a492f6d1381933511e2', 'siswa', 61),
(163, '161710148', 'b89ff198b8450994300c49ea109ae238', 'siswa', 62),
(164, '161710149', 'bb6efdabda24a10166ae0c66cbcca467', 'siswa', 63),
(165, '161710150', '631389a2abaca317401a6fbcfc74b0a6', 'siswa', 64),
(166, '161710151', 'f77ac8cb7dd3a3fc24bf97256cec14a4', 'siswa', 65),
(167, '161710154', 'b3269aa03adb4bdf56f98566dbeb80ab', 'siswa', 66),
(168, '161710156', '60121d8cb3969e9ff0b04ce2d6642480', 'siswa', 67),
(169, '161710157', '96bc1f79e9479d673229e7fb012770e8', 'siswa', 68),
(170, '161710158', '55460a5648e4a93ea72b6c3958cdaaad', 'siswa', 69),
(171, '161710159', 'a7c38269ecd185f18a83e55ba48d8467', 'siswa', 70),
(172, '161710160', '476c3196e4d0506fef719721f98bcf98', 'siswa', 71),
(173, '161710161', 'ccf7be822073ad6f7da5fe0d30eaa5c6', 'siswa', 72),
(174, '161710162', '4a86277e63be804b83a573daceb81f92', 'siswa', 73),
(175, '161710163', 'e5aa3e28419e8375752ce677536faaf4', 'siswa', 74),
(176, '161710164', '5eb3cc8ff6ac4c7fa22a808424152509', 'siswa', 75),
(177, '161710165', '8067e98114ea52eb605e7a4557c9d85e', 'siswa', 76),
(178, '161710166', 'c7d5a0ae4105257343a9b0000c053184', 'siswa', 77),
(179, '161710167', 'e69eae8c48ea71f60668df7a3249ed5b', 'siswa', 78),
(180, '161710168', '901ec8e26ad44aab65bbb420d2a6b767', 'siswa', 79),
(181, '161710169', 'b7a3e2de6ae7c287bd0af0b50aa36e2a', 'siswa', 80),
(182, '161710170', '0dbbf7b8285bd3b033f01c9284c09ad3', 'siswa', 81),
(183, '161710171', '7535f1a22ae9a2e5a09097ebc825d58d', 'siswa', 82),
(184, '161710172', 'c866f2c6e48e88f2d140e307fa7b9e46', 'siswa', 83),
(185, '161710173', '45c7ebd3e2f5b5429496b37c31578dce', 'siswa', 84),
(186, '161710174', '1906e51b91a5dbfdbf654e0478362d61', 'siswa', 85),
(187, '161710175', '1a628b25420c52fd429b15c100ad80e0', 'siswa', 86),
(188, '161710176', '686e3b7a1ee46a4f69cf85071cf860d2', 'siswa', 87),
(189, '161710177', '87e4848f00a4bf81e6db87e20065a3a1', 'siswa', 88),
(190, '161710178', 'e5485154feac6e898378f0345f16b9c5', 'siswa', 89),
(191, '161710179', 'c017868358a3a28c2de6de70c9363878', 'siswa', 90),
(192, '161710180', 'b95f719b14bb1c05ef46e6a565ff4fae', 'siswa', 91),
(193, '161710181', '17e662f674f40c628b11a15825d384a6', 'siswa', 92),
(194, '161710182', '33561d154801698441864d456452e8b2', 'siswa', 93),
(195, '161710183', '730261c2edeadf44199ec4822a60c9b0', 'siswa', 94),
(196, '161710184', '21c8eb6234e5f2d6dd9ff56ec51e8998', 'siswa', 95),
(197, '161710185', '7bcd37633f41dcdbd9511d0630306de9', 'siswa', 96),
(198, '161710188', 'aa042c19b303970540fad7987dda789e', 'siswa', 97),
(199, '161710186', '9f226fe9d3e44177a4537076f0c5ec44', 'siswa', 98),
(200, '161710187', '39d62a2ba8b60dd330a880d1c78c0049', 'siswa', 99),
(201, '161710189', '970f7320f600604fac1db20f201d99df', 'siswa', 100),
(202, '161710190', '433e2deabfb7d202a84cd7ff7d4a776b', 'siswa', 101),
(203, '161710191', 'ec72b25685c567a59c7eec6100dc92af', 'siswa', 102),
(204, '161710192', '12ff609cfd1fa0b96f9c023e2461bb79', 'siswa', 103),
(205, '161710193', '7d367f247c9ddbdcf36de13178812be6', 'siswa', 104),
(206, '161710194', '39929e42c16a60caf04a3314bb11ad5b', 'siswa', 105),
(207, '161710195', 'f83a2708bd43e64b77a2953daa9a7f60', 'siswa', 106),
(208, '161710196', '5fce65ac33b8af4ece9c1764b506d4eb', 'siswa', 107),
(209, '161710198', '83ba934daf580624a7fb32bb618238d4', 'siswa', 108),
(210, '161710199', '4fd46bfe9d5ce04dfe205f285d4f0aa4', 'siswa', 109),
(211, '161710200', 'c6ac9eae82f4ee0bc8a78f13773b9f1c', 'siswa', 110),
(212, '161710201', '813400dcdc18cd0d34c56067177d6df6', 'siswa', 111),
(213, '161710202', 'a958363086be11d2dff80c00315eea66', 'siswa', 112),
(214, '161710203', 'aaf49bb3afb81527e950b6153995bbf1', 'siswa', 113),
(215, '161710204', '8346dd9ec1a7b131a4e2e00833bdf33b', 'siswa', 114),
(216, '161710205', 'b6b312d9ca831dc1e93ff7199faaa092', 'siswa', 115),
(217, '161710206', 'fe97daf030f695f88778912ff11cec48', 'siswa', 116),
(218, '161710207', '1a5e18bfe5677871bc90bb5b415da672', 'siswa', 117),
(219, '161710208', '9a083b59af5d147bcbd3afa73b3f33a5', 'siswa', 118),
(220, '161710209', 'cb2a7e51f04aba02d608af127971befc', 'siswa', 119),
(221, '161710210', '0f6a8b062bb1ac26e554eb88f51cefb4', 'siswa', 120),
(222, '161710211', '01847c4892dd1cb2c0ec16683da82e1d', 'siswa', 121),
(223, '161710212', '3686b6c956386552f514debad65c8a6d', 'siswa', 122),
(224, '161710213', 'd953df5b77611ab2a96ee7c2d9b60055', 'siswa', 123),
(225, '161710214', '34a57d7b6f26e5b59ff3a6cd8f6089f7', 'siswa', 124),
(226, '161710215', 'ccb9aac4e4a06d335dca7639a18c9008', 'siswa', 125),
(227, '161710217', '692e44c87ec60fa65568db6a79b28fbd', 'siswa', 126),
(228, '161710218', '971cb8e46eabeb7d6a9a1f1732dda2cf', 'siswa', 127),
(229, '161710220', '2c711a4b7d7bc9f6dd907e17ff3aebe7', 'siswa', 128),
(230, '161710221', '30d8a63c5e5bbafe9eb631314bf3458b', 'siswa', 129),
(231, '161710222', '68083b31108d58349d63495042541a19', 'siswa', 130),
(232, '161710223', '196640ef9371c91717fc87c9b0355b81', 'siswa', 131),
(233, '161710224', 'dfae5340e9a11b3f7fec7c6b26448c78', 'siswa', 132),
(234, '161710225', 'bdd6e2864de0a2cbf6f56b1ad8798b40', 'siswa', 133),
(235, '161710226', '36703e99075f335a6bc4556daa057fd4', 'siswa', 134),
(236, '161710227', '75b46fb165532fde23e00d2e9a41a257', 'siswa', 135),
(237, '161710228', '115c2fa35f851fe54e028c30c7267faf', 'siswa', 136),
(238, '161710231', 'd0e3df93f56513759a134658035df0e6', 'siswa', 137),
(239, '161710232', '6253053f7ecf908f3252387108739013', 'siswa', 138),
(240, '161710234', '03112d5d5e1a5bf66948700c60417b39', 'siswa', 139),
(241, '161710235', 'e15c4d94175b996ebf8f8f05c2266f4a', 'siswa', 140),
(242, '161710236', 'f2e05f0acfb7509e6fa35fa3b91991a0', 'siswa', 141),
(243, '161710237', '53ca55598bfb98f6864e6a47874546ff', 'siswa', 142),
(244, '161710238', 'e847428e099475a0f91f9111197c966c', 'siswa', 143),
(245, '161710239', '6e71949c499a232f8fae833f1e869867', 'siswa', 144),
(246, '161710240', '1f7e8aac723b8eea637b9631d923db6e', 'siswa', 145),
(247, '161710241', 'b0611c3fffb26798b6812af13d150b25', 'siswa', 146),
(248, '161710242', 'e741b0eacbc08828a33dfa978e9fac36', 'siswa', 147),
(249, '161710243', 'cdf06e22cf2636158e6cc4e84949e9a3', 'siswa', 148),
(250, '161710244', 'f143113c5d23e17e44d758ed27ffebe5', 'siswa', 149),
(251, '161710245', '2b9a0630f48517408a8a94180b6b64b1', 'siswa', 150),
(252, '161710246', '6f9b9a4986b97b28c72e128016c925f5', 'siswa', 151),
(253, '161710247', 'af9eeb0cf66737b9557fa49952a7bc12', 'siswa', 152),
(254, '161710248', '4bb17195ab62659223fd2c36ebcbed16', 'siswa', 153),
(255, '161710249', '4f78e6c416a3dcb79e6ff22fd46e3356', 'siswa', 154),
(256, '161710251', '0c0d57ffa92d4f4c516d77e53972e273', 'siswa', 155),
(257, '161710252', 'e3b3b7e956b09d0ebd873f0e84193ba2', 'siswa', 156),
(258, '161710253', '6dc8032a3d554c0d8819ae6b99091737', 'siswa', 157),
(259, '161710254', 'bdf51babc8aee442cf9a7f44566c6d6a', 'siswa', 158),
(260, '161710256', '114cd72556e39d81182bc330328a0210', 'siswa', 159),
(261, '161710257', '050feb01a62e3728d0e6c0b6104b0e2c', 'siswa', 160),
(262, '161710258', 'eea74c8c666ddc4b25171da98ee3e70a', 'siswa', 161),
(263, '161710259', 'e86d39fac0f8c58fd22095aab7127569', 'siswa', 162),
(264, '161710261', '3801c21b83131de15000c6514d169411', 'siswa', 163),
(265, '161710262', '3b90555844c0c4c6a4c106fcbce6f435', 'siswa', 164),
(266, '161710263', '24a9a1ea2089f3edef51dc6da957c473', 'siswa', 165),
(267, '161710264', '13b40f4655aae4d0a9634cb740add85c', 'siswa', 166),
(268, '161710265', '197c023a36805896078960f892c5ca0d', 'siswa', 167),
(269, '161710266', '8224bb198c00a0aac448dc34e8a674b7', 'siswa', 168),
(270, '161710267', 'a4aa3764fd9e3371e4ec50e7a1d6951f', 'siswa', 169),
(271, '161710268', 'ce25cc23b4a9467cdb277d6ffff98009', 'siswa', 170),
(272, '161710269', 'c15cad7e02ea9a8557f39041da3f764f', 'siswa', 171),
(273, '161710270', '173c2f58c8f9f928fd42777da8429d26', 'siswa', 172),
(274, '161710271', '1949b5a4eced3a7f957ff76ac48922ca', 'siswa', 173),
(275, '161710272', 'b187351e967ebab83118c51b4610aa76', 'siswa', 174),
(276, '161710273', 'a897e9bb7be7a45543e855d2dac7fcc8', 'siswa', 175),
(277, '161710274', '7cc10c87857fca0905eae01529076ee2', 'siswa', 176),
(278, '161710275', '837f5a6ff584327bb4702517c4feafb1', 'siswa', 177),
(279, '161710276', 'b32511058fa48ceb6a906363a9c318eb', 'siswa', 178),
(280, '161710277', '8363a9f28eb4485c0cc3865f5223f5f6', 'siswa', 179),
(281, '161710278', 'f3d59f614aad4db6bd089ca42c37bf4b', 'siswa', 180),
(282, '161710280', '7652d8e49dfb801c0a23c515d10011fe', 'siswa', 181),
(283, '161710281', '7c2a5f81687b9e29b815a531f3045ce1', 'siswa', 182),
(284, '161710282', 'a1ee5355cfd2bd07e1662bd1367a63b2', 'siswa', 183),
(285, '161710283', 'c0da4cb3c2aa9ff09035a7e4fdec4162', 'siswa', 184),
(286, '161710284', '617f3451a552ae7b10818c9adf9ae78d', 'siswa', 185),
(287, '161710285', 'dc4f2cf95e31c42e374851c82bfe5f44', 'siswa', 186),
(288, '161710286', 'c90c148a6c8144ff7051d9be8175978f', 'siswa', 187),
(289, '161710287', '65b70c59e248ea1abeb257a080d2a9a3', 'siswa', 188),
(290, '161710288', '8bbdf91fce3096de391801f26e270b4d', 'siswa', 189),
(291, '161710289', 'ff1cbfc99a83f2d9f6f6eee44100eb40', 'siswa', 190),
(292, '161710291', '502e26a4a0ef15128c6257bd7d1a10bc', 'siswa', 191),
(293, '161710308', 'b33f5e8371b4ea8546bcc900583dc19b', 'siswa', 192),
(294, '161710292', '49dbfc8d83187d0f1da7bbf507d1d60e', 'siswa', 193),
(295, '161710293', 'f3df98c2d55bce047f04b1ea16b76110', 'siswa', 194),
(296, '161710295', '83f0be0a61d60a5e8c571b6725680008', 'siswa', 195),
(297, '161710297', 'aa5359f35f37cb0f70f50270e348a0de', 'siswa', 196),
(298, '161710300', '4caf22a180dde1c20c93983d7226a833', 'siswa', 197),
(299, '161710298', 'd52cf1486de19f11251f3e83d8815621', 'siswa', 198),
(300, '161710302', 'c3697e8265c3c1258da7e21eb59f909c', 'siswa', 199),
(301, '161710303', '0c5682e66bec6abb31a0957e1c437a53', 'siswa', 200),
(302, '161710304', '722be28156cb784176b1591438a46364', 'siswa', 201),
(303, '161710296', '62354b55bd9d3d20bc71d3cd1d149c26', 'siswa', 202),
(304, '161710305', '4067d693a6992704152ea220faab891e', 'siswa', 203),
(305, '161710306', 'ece40cd5314593b8f140c6d7fe69c370', 'siswa', 204),
(306, '161710299', 'f3aa83bddc86bb12b35cb794711e3779', 'siswa', 205),
(307, '161710307', '45b8a45d9fc0617119eafa35bf846198', 'siswa', 206),
(308, '161710310', '0abea0c3dbd45e59f2a1552bb8c03757', 'siswa', 207),
(309, '161710311', 'bf873a81c2973ceb20351e6ed105b605', 'siswa', 208),
(310, '161710312', '6bbef00872a57fcb45e07ff9505ac848', 'siswa', 209),
(311, '161710313', '2c9d8af2331ae8481b97a7e1da79de26', 'siswa', 210),
(312, '161710314', 'f8ff4fc57f94c69dc49a19ac0bc62bdc', 'siswa', 211),
(313, '161710315', 'e93e138b30f001457d82420cab93d75f', 'siswa', 212),
(314, '161710316', 'b9b654c605762d8d4ac6b108be2634e3', 'siswa', 213),
(315, '161710317', '2963745bb4da99791078b8dfc780322a', 'siswa', 214),
(316, '161710318', '308b183c7992de1c96d1255881535a96', 'siswa', 215),
(317, '161710319', '71524f3db6f37f33f8def906c0991f8a', 'siswa', 216),
(318, '161710321', '9861082128a7bf37832dafc361d8fafb', 'siswa', 217),
(319, '161710322', 'f500c25c4076c116a10201e905698497', 'siswa', 218),
(320, '161710323', '6d99372440538590b98051be2f356676', 'siswa', 219),
(321, '161710324', '19c14048a5d14d9133b4c218c91d12ea', 'siswa', 220),
(322, '161710325', 'c7397a6025aa97a1cd82812b81d9bbde', 'siswa', 221),
(323, '161710326', '7ff7161147c76d7d425cc5d8472b3b51', 'siswa', 222),
(324, '161710327', 'f67b98a2855bee5f2467490e8dc7c20f', 'siswa', 223),
(325, '161710328', '5caa9b9b173bb2a61918a99439bebb34', 'siswa', 224),
(326, '161710329', '8d288c7c7a95e508bf235a67fe1853da', 'siswa', 225),
(327, '161710330', '84cbc79692be86bbab312a0a0f9360cc', 'siswa', 226),
(328, '161710331', '39f3a61c6be6237bb643f34f1ba92819', 'siswa', 227),
(329, '161710332', '9343fd3c75bad6d2cef3bd22a181a21e', 'siswa', 228),
(330, '161710333', '94762281a25ba248872c50f6d766c614', 'siswa', 229),
(331, '161710334', 'e4d309d7d7b571e5e3b3433f19380f92', 'siswa', 230),
(332, '161710335', '24a7c75968a73a6d53231fa49ad85f15', 'siswa', 231),
(333, '161710337', 'fc9a946008bdd8d9c4ea7aaf24b3e24d', 'siswa', 232),
(334, '161710339', '4251bb1f95de78acededd0b3ee824b79', 'siswa', 233),
(335, '161710340', '18ad05b31d81fabd7723d22f69732fde', 'siswa', 234),
(336, '161710345', '8885c8ecadd5b588bfde3efa41cb1159', 'siswa', 235),
(337, '161710343', 'ebad514d614e677f6000d6313c20e8d3', 'siswa', 236),
(338, '161710344', '989361c30388392cff7fe3b27b88743e', 'siswa', 237),
(339, '161710341', 'b9b100da61a5fcb62e98f94dcd26d2fe', 'siswa', 238),
(340, '161710338', '68e50a8edfffa092035ba5f1086adbcb', 'siswa', 239),
(341, '161710342', '98844278981c305fa97575fece2aaa58', 'siswa', 240),
(342, '161710346', '91bb2497abdea260b78d3e0d12d53fca', 'siswa', 241),
(343, '161710347', 'e7ba9bac93bbeb7886445f574a730260', 'siswa', 242),
(344, '161710348', '5fed8f571cb24dd612ed036495d17b59', 'siswa', 243),
(345, '161710349', '85e76436ba5298e5a5496b6d34f1941f', 'siswa', 244),
(346, '161710350', '4c7e69e0e9cb8a786b41aaa5c5f08001', 'siswa', 245),
(347, '161710351', '61b2368867fba15b96767b36cd4a0b3b', 'siswa', 246),
(348, '161710352', '36ef6b6019375404e5493bd59b755258', 'siswa', 247),
(349, '161710353', '2027f2eba2f2af1dcb29cfc5ad2c7381', 'siswa', 248),
(350, '161710354', '65e55c0ce0ab1983e370bee4aa0b42e8', 'siswa', 249),
(351, '161710355', '05e0a1e3b6e5402677ab2647a8183cf3', 'siswa', 250),
(352, '161710356', 'b6e10c0b16f21c8106e4b11ae3c5c4e5', 'siswa', 251),
(353, '161710357', '36abc0295296f9d15d901cf87b9c280a', 'siswa', 252),
(354, '161710358', '8124225ed42b347b34ca3cf41b49b7e6', 'siswa', 253),
(355, '161710001', 'cc7003643e507a133d789705127bf24e', 'siswa', 254),
(356, '161710005', '5329ca1e08807b1b003d42f7e216ffcc', 'siswa', 255),
(357, '161710002', 'c338551ca8aa6f07dd7f8d93f276c3c6', 'siswa', 256),
(358, '161710003', '21466c7675ebcf0147d1e9ff30dee855', 'siswa', 257),
(359, '161710004', 'd40d38d490e80a907db3dd24b20f7a72', 'siswa', 258),
(360, '161710006', '06a2f9a939add23c8ac302c8ba854226', 'siswa', 259),
(361, '161710007', 'a0671809232142e513861ecb6844ec1d', 'siswa', 260),
(362, '161710008', '144bd10c3ee9fdd7d5d282937bdc963c', 'siswa', 261),
(363, '161710009', '57dcbc0080df47b06aba309e8ce957e7', 'siswa', 262),
(364, '161710010', '80a496c401812078b531ffff6c699d6f', 'siswa', 263),
(365, '161710011', '43586bec7c78f88445545b96ae599f5d', 'siswa', 264),
(366, '161710012', '85e680ddfdd4bed13bb4532813820b54', 'siswa', 265),
(367, '161710013', 'd950339a756e10bd7574b11bc12ff2eb', 'siswa', 266),
(368, '161710014', '4dbf0b61d3ea94e955e703f301ffac08', 'siswa', 267),
(369, '161710015', 'f99a8636c223c3edf359ef93e5c3c7fb', 'siswa', 268),
(370, '161710016', '00c0c5e71e2e6b2b6eca8baee7ee6fbc', 'siswa', 269),
(371, '161710017', 'cbda7b7b1d5afd4632b4dd9ca662a31a', 'siswa', 270),
(372, '161710018', 'e58629444f14cf6ddf3373c1002c90b2', 'siswa', 271),
(373, '161710019', '3659966c880cbe3cba3f08ea30cbfee2', 'siswa', 272),
(374, '161710020', '22d3f6cd6ff7993a1a7c7754b7c559a2', 'siswa', 273),
(375, '161710021', '04e8fdd618f2e13c226ae0c7c52a7c5d', 'siswa', 274),
(376, '161710023', 'c05f6c908127d504f78375b95f1acf9c', 'siswa', 275),
(377, '161710025', '4e4b27bd5aab5d5efc7591f1667f2f58', 'siswa', 276),
(378, '161710026', '8fad9913e51298d297486270ddb65008', 'siswa', 277),
(379, '161710027', '9c54d3ecb95bd5c69f78c64b0bcd601e', 'siswa', 278),
(380, '161710028', '5c627520e382eccc67f1f7d14df108ec', 'siswa', 279),
(381, '161710029', 'e04868fbe56e84cdd8db95afb6c9b091', 'siswa', 280),
(382, '161710030', '69b3839f25b41ff7ca511e4169b6f6e2', 'siswa', 281),
(383, '161710031', '6458f262980a0c547ca41bd3327fca21', 'siswa', 282),
(384, '161710032', '6429a597cc836cffa7052d52b16166ef', 'siswa', 283),
(385, '161710033', 'f2acb45e5ae628432c18d4c5407fbce8', 'siswa', 284),
(386, '161710034', 'd34289f15b01d5514ffe0969c0f50217', 'siswa', 285),
(387, '161710036', 'bb44c978f8e773e34418f4c7f6207207', 'siswa', 286),
(388, '161710037', 'e79b029d673f58881d2de00e4a4372b2', 'siswa', 287),
(389, '161710038', '5278907383697eb62c73d4194e1e7e3d', 'siswa', 288),
(390, '161710040', '7fdf3ce59d435d96177a6a9672da398b', 'siswa', 289),
(391, '161710041', '14f4b228d1ecdadf8a31da0426080df2', 'siswa', 290),
(392, '161710042', 'b91405afd71279cb08f62ece096cc735', 'siswa', 291),
(393, '161710043', '1aeb8af020fd0686d6ba89578ed94c92', 'siswa', 292),
(394, '161710044', '08eef7f5a5fab39b11a64cfa556f173e', 'siswa', 293),
(395, '161710045', '472de76e667e4ea8e651fd6473275e14', 'siswa', 294),
(396, '161710046', '1725066bbe05eddbae6c864d0342eb5f', 'siswa', 295),
(397, '161710047', 'ffbe69502f351a7a2e94bc681e0e3f00', 'siswa', 296),
(398, '161710048', '7120d653cd6746103d15146fd9b55dfd', 'siswa', 297),
(399, '161710049', '44cea9a19e422c30b096f17c15803ad0', 'siswa', 298),
(400, '161710051', '0f7abbb465e88b9e38d6c6413aec2c29', 'siswa', 299),
(401, '161710052', '3ba44579bb040a92c85d4bcd1ef3e474', 'siswa', 300),
(402, '161710053', '53ce02f338bddf2d13cf21f04ae0ff26', 'siswa', 301),
(403, '161710054', '15843b5acb3d2190903bf2f03fd5d3f5', 'siswa', 302),
(404, '161710055', '1fdc3d76b67207487801ef373fdc361d', 'siswa', 303),
(405, '161710056', '0947537c429f066dde287ace9945efb4', 'siswa', 304),
(406, '161710057', '4112460d083a4197824301f9fefddb46', 'siswa', 305),
(407, '161710058', '92382a806a97139bec397775fbf22d1c', 'siswa', 306),
(408, '161710059', '8d633aa10178a19b7df96149a9753781', 'siswa', 307),
(409, '161710060', 'b9b6bb45e15dbbe8d14c9cfec528be3e', 'siswa', 308),
(410, '161710061', '546b7aaabc97796f350f179e479e5263', 'siswa', 309),
(411, '161710062', '9e4af5020492effeb455e63e98252e81', 'siswa', 310),
(412, '161710063', '6087dc319fc7ef78bf6f4f508e5ea3e3', 'siswa', 311),
(413, '161710064', 'a67a085140bd449b206e74fcdd53e09e', 'siswa', 312),
(414, '161710065', '343067274691d572481fd93b53263da2', 'siswa', 313),
(415, '161710066', '5ee90c8aee033946b807f252e11ee5c0', 'siswa', 314),
(416, '161710067', 'd97048e76603dcf0f8011b467ab23c41', 'siswa', 315),
(417, '161710068', '03c3a9907db0a05992c731deead11ebc', 'siswa', 316),
(418, '161710069', '03a95f0cf0173c33b9b5c68cadc729b1', 'siswa', 317),
(419, '161710070', 'f052833757877c41216d60e067d89936', 'siswa', 318),
(420, '161710072', 'd836a2361156dae38e4358906922c6c7', 'siswa', 319),
(421, '161710073', 'd5956c66d835d7595ba242031bb345cb', 'siswa', 320),
(422, '161710074', 'cca37585d914fe04a690420f5b6b9c38', 'siswa', 321),
(423, '161710075', 'e3c9ffab4f35a4724a06adf59707546f', 'siswa', 322),
(424, '161710076', '2328c16bf557cd4c25bd6756074f1796', 'siswa', 323),
(425, '161710077', '2d908b4f1f8b97ee0e3483a6e610cc8d', 'siswa', 324),
(426, '161710079', '2b7dfcb2e265ebd263e4d5b7bf8f5c95', 'siswa', 325),
(427, '151610063', '142d1572d4235ab7443ebb59fe877753', 'siswa', 326),
(428, '161710359', 'fbff28cd98c49ed978cab6bdf416dfbb', 'siswa', 327),
(429, '161710360', 'bf4457e83dfaec5972bef55336973c85', 'siswa', 328),
(430, '161710361', 'f36a0e47d2c7702704b2da3f8b2892af', 'siswa', 329),
(431, '161710362', '341801907136ca84189316e72193d4cb', 'siswa', 330),
(432, '161710364', '641b3db50809a5eb5f8a3ba1071d7a94', 'siswa', 331),
(433, '161710366', 'c251b85dbf0f2b5e8813f6b9eaeaedcf', 'siswa', 332),
(434, '161710367', '6669e87228a864a7f5c0a0497f79d65b', 'siswa', 333),
(435, '161710368', 'd072f86fc9dd9cb6a89d455494bb6e9b', 'siswa', 334),
(436, '161710369', '5d095efc8aa81ad34d83b2fbcb355b79', 'siswa', 335),
(437, '161710371', '3ea5077f0c6c1b1429a1de15609c1aad', 'siswa', 336),
(438, '161710372', '0f2b05c1a498974e96ef32731c2a1c69', 'siswa', 337),
(439, '161710373', 'c41e7ef394b30e0b4230f7d3458b1046', 'siswa', 338),
(440, '161710374', '990203cc3d14bc89025a7156d8b23aeb', 'siswa', 339),
(441, '161710375', '2703f0b17bc1298ef124deab2cf176fb', 'siswa', 340),
(442, '161710378', 'f89320f3da51b70e921fbf9808673972', 'siswa', 341),
(443, '161710379', 'a991b8cfc7c1377634a4f4f6698a7de2', 'siswa', 342),
(444, '161710377', '3a33b12c5b86b01718d4b23216035ec3', 'siswa', 343),
(445, '161710381', '62069c4b7f6d2145cf1a17a6a22573a1', 'siswa', 344),
(446, '161710382', 'f169af2840f588c398fe238efc546eb3', 'siswa', 345),
(447, '161710383', '098bdf7d30eff35139eb12f9bfef6b93', 'siswa', 346),
(448, '161710384', '23d15e9e9d8c59b50357f6d3bea9cb92', 'siswa', 347),
(449, '161710385', '4dc739aac4375bf75fa6789939a2b305', 'siswa', 348),
(450, '161710386', '7942a522fc4822ef7c0fe01b9319f2c7', 'siswa', 349),
(451, '161710387', 'a0a4a597eb2f735c48fcb7135e1aba0b', 'siswa', 350),
(452, '161710388', 'a2b363413901e19d86112e158356f798', 'siswa', 351),
(453, '161710389', '41f827c346d193b6e3cd62508d09ee7b', 'siswa', 352),
(454, '161710390', '6b0b7cf2841da36f5bada26195256c10', 'siswa', 353),
(455, '161710391', '37a74bc01088e4aa58b4c7cd197c3473', 'siswa', 354),
(456, '161710392', '4fb6f2e178ea83847e4554072cdfa6e9', 'siswa', 355),
(457, '161710393', 'aa6480c21522cdaf387c5ed5705d8566', 'siswa', 356),
(458, '161710394', 'afe6ee06d9e742054f7c79fce8109388', 'siswa', 357),
(459, '161710395', '465fd1870e3f12ea6d6cb52e94e17c0e', 'siswa', 358),
(460, '161710396', '8224e8aa6c6411600831ab9cd47ad7d7', 'siswa', 359),
(461, '161710397', '075556160dff875c20d3f55c9b0145f9', 'siswa', 360),
(462, '161710398', 'ce4badac6618c61bcac5f0f364aa5cfb', 'siswa', 361),
(463, '161710399', '5996275e4e63c80c905249433e94adab', 'siswa', 362),
(464, '161710400', '1379c14dba148a19c5cab0f1ed8309d0', 'siswa', 363),
(465, '161710401', 'dbdc2b1b9f46db0d6e51b9642e13b74b', 'siswa', 364),
(466, '161710402', '700d3cffc2505d674772c3c3097521ba', 'siswa', 365),
(467, '161710403', 'f877205cd363e5c8f53edca80fa4a77d', 'siswa', 366),
(468, '161710404', 'dbedc1e19d5d1fa7721c912953e2dc79', 'siswa', 367),
(469, '161710409', '47c07fd9178a5497e797e7c7b026071e', 'siswa', 368),
(470, '161710411', 'e488a6b5d194c3e50c5a8539a450282f', 'siswa', 369),
(471, '161710405', 'ff17c511fdd447e191baade0489b2746', 'siswa', 370),
(472, '161710406', 'eaf7edb0c94fc452e9d39e741fc5e9aa', 'siswa', 371),
(473, '161710410', '5e8e12fdfc3154e2a716b8f2be15b98c', 'siswa', 372),
(474, '161710412', 'e1aa1aef2cc21e630a9730bf2014d1f9', 'siswa', 373),
(475, '161710407', 'eafda419be777013b3c8ea78938858ba', 'siswa', 374),
(476, '161710413', '01499e52994f534eae4dfa2d5bdec879', 'siswa', 375),
(477, '161710414', '667baefb988b76c157ccea9d91730f1d', 'siswa', 376),
(478, '161710415', '15bac60e45b4056f8dafb03ccfaecfbd', 'siswa', 377),
(479, '161710416', '76e23ab768da4cfc5b6fc8933a2079eb', 'siswa', 378),
(480, '161710417', '6856216e762929f45d0629d957fa5990', 'siswa', 379),
(481, '161710418', '862d01bc8818e2bffc44c470b94cf077', 'siswa', 380),
(482, '161710419', 'd080f558884ad73ecc8943bb82320d13', 'siswa', 381),
(483, '161710420', '0c87e4dfd25529676a4e7014b2fdf3ee', 'siswa', 382),
(484, '161710421', '1dd7958ab73b9e4e025138f5e7f9fcc4', 'siswa', 383),
(485, '161710422', '15a5f32312b4450fc99227ed3d0b27ab', 'siswa', 384),
(486, '161710423', 'e3bb560e3f88307d406d932df3c46634', 'siswa', 385),
(487, '161710424', 'd682ad70d16a6cadf32b58f8aacfffbc', 'siswa', 386),
(488, '161710425', '2e2fef065ca659937f0896d9b5add123', 'siswa', 387),
(489, '161710427', 'f3ed5d62d3cf1684c3a89e8fd2f4ed4d', 'siswa', 388),
(490, '161710428', '8ab95c4c3e71e1ed7e1b1af542914d50', 'siswa', 389),
(491, '161710430', '1c080b45e4eea0c21e8717c43d97018b', 'siswa', 390),
(492, '161710431', '8b6796a710e42da279126fda6642b4f2', 'siswa', 391),
(493, '161710432', '66460376dc97adb438d1fb13aa9c262a', 'siswa', 392),
(494, '161710433', '575b475746544efb0927f0a4057738e4', 'siswa', 393),
(495, '161710434', '574136dcac2fd31b3cca981a61c161e2', 'siswa', 394),
(496, '161710435', '53903056e33239abaed6ffbfc0602f13', 'siswa', 395),
(497, '161710436', 'ed8ccb552f748481c7a18b323c47c849', 'siswa', 396),
(498, '161710437', '14a8ab2df88dfa29ed17817b1a0cf8df', 'siswa', 397),
(499, '161710438', 'e0ab71e616d331207ad666c169b17499', 'siswa', 398),
(500, '161710439', '3586f0b13476e9efc7101f270690d479', 'siswa', 399),
(501, '161710441', 'e4fb4ab545cbe7a9ad1bacee269163b2', 'siswa', 400),
(502, '161710442', '3fe6ad81a60ffc2ff77dcc20fc9c5728', 'siswa', 401),
(503, '161710443', 'e88736ea51c9f5fbb77d28846aac9722', 'siswa', 402),
(504, '161710444', '2087f34f9bb13e198aec734c2c7e5972', 'siswa', 403),
(505, '161710445', 'aae4ccb53423df5323d7e18582ed5f64', 'siswa', 404),
(506, '161710446', '7b429bf93bc4ef160f6921d5283d6438', 'siswa', 405),
(507, '161710440', '6aed77bac266ec0a436ea24c943157d3', 'siswa', 406),
(508, '161710447', '7cadadc4fe4355ca67a8d701158da9aa', 'siswa', 407),
(509, '161710448', 'd9f3f88ff644f82ae1797aacaa82e490', 'siswa', 408),
(510, '161710449', '9311a588b4392bcf7613dce0404ce934', 'siswa', 409),
(511, '161710450', '3745552e78eae9e0c5cbf4d157bbfb11', 'siswa', 410),
(512, '161710451', '86d179fa275fcc5e2bd3bb69b98b070d', 'siswa', 411),
(513, '161710452', '31d8278a15fe9576126bf9ea6d322d0c', 'siswa', 412),
(514, '161710453', '880566eaa49094f57c802b73c3b9f67a', 'siswa', 413),
(515, '161710454', '68fb9d748dace96f923cded5d5e2ef40', 'siswa', 414);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_guru`
--

CREATE TABLE `m_guru` (
  `id` int(6) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_guru`
--

INSERT INTO `m_guru` (`id`, `nip`, `nama`) VALUES
(19, 'usbn2019', 'usbn2019');

--
-- Trigger `m_guru`
--
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

CREATE TABLE `m_mapel` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(7, 'Bahasa Indonesia'),
(8, 'Bahasa Inggris'),
(9, 'Matematika'),
(10, 'Teknik Dasar Otomotif - TKR'),
(11, 'Teknik Informatika - RPL'),
(12, 'Teknik Instalasi Tenaga Listrik - TITL');

--
-- Trigger `m_mapel`
--
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
(1, 'ABDUL AZIZ', '161710081', 'AUDIO VIDEO', 'XIIAV1'),
(2, 'ABDUL FAKIH RAMDHANI', '161710082', 'AUDIO VIDEO', 'XIIAV1'),
(3, 'ADE WAHYUDI', '161710085', 'AUDIO VIDEO', 'XIIAV1'),
(4, 'ALDI FAJAR BAROS', '161710086', 'AUDIO VIDEO', 'XIIAV1'),
(5, 'ANDI SETIAWAN', '161710088', 'AUDIO VIDEO', 'XIIAV1'),
(6, 'ANGGARA NIKOLAS', '161710089', 'AUDIO VIDEO', 'XIIAV1'),
(7, 'AZRIL AKMAL MAULANA', '161710090', 'AUDIO VIDEO', 'XIIAV1'),
(8, 'CHANDRA LATIIF FADILLAH', '161710091', 'AUDIO VIDEO', 'XIIAV1'),
(9, 'DIAN NUSA PUTRA', '161710092', 'AUDIO VIDEO', 'XIIAV1'),
(10, 'DIKKI SEPTIAWAN M', '161710093', 'AUDIO VIDEO', 'XIIAV1'),
(11, 'EKA ARDYATAMA', '161710094', 'AUDIO VIDEO', 'XIIAV1'),
(12, 'FARRAS HABIBULLAH ALKOMARA', '161710095', 'AUDIO VIDEO', 'XIIAV1'),
(13, 'FIRMAN SYAH', '161710096', 'AUDIO VIDEO', 'XIIAV1'),
(14, 'FITRIYANI NUR KHASANAH', '161710097', 'AUDIO VIDEO', 'XIIAV1'),
(15, 'GALIH SATRIA YACOB', '161710098', 'AUDIO VIDEO', 'XIIAV1'),
(16, 'GUSTI AMRI PANGESTU', '161710099', 'AUDIO VIDEO', 'XIIAV1'),
(17, 'MARDI HASAN', '161710100', 'AUDIO VIDEO', 'XIIAV1'),
(18, 'MATEZA KUSUMA', '161710101', 'AUDIO VIDEO', 'XIIAV1'),
(19, 'MAULIDA ISMAWATI LESTARI', '161710102', 'AUDIO VIDEO', 'XIIAV1'),
(20, 'MOCH ARIF SUPARYANTO', '161710103', 'AUDIO VIDEO', 'XIIAV1'),
(21, 'MUHAMMAD RESTU', '161710105', 'AUDIO VIDEO', 'XIIAV1'),
(22, 'MUHAMMAD ROBBI ARDIANSYAH', '161710106', 'AUDIO VIDEO', 'XIIAV1'),
(23, 'NUR HANIPAH', '161710107', 'AUDIO VIDEO', 'XIIAV1'),
(24, 'PUTRI ANGGREYANI', '161710109', 'AUDIO VIDEO', 'XIIAV1'),
(25, 'RAVI SYAHRU PAHLEFI', '161710112', 'AUDIO VIDEO', 'XIIAV1'),
(26, 'RAYVALDO MATYU BERLIANO', '161710113', 'AUDIO VIDEO', 'XIIAV1'),
(27, 'RIO REYNALDY', '161710114', 'AUDIO VIDEO', 'XIIAV1'),
(28, 'RIZKY TRI HARIADI', '161710115', 'AUDIO VIDEO', 'XIIAV1'),
(29, 'SUGENG KURNIAWAN', '161710116', 'AUDIO VIDEO', 'XIIAV1'),
(30, 'SUTIYOSO AGUNG PRAMONO', '151610147', 'AUDIO VIDEO', 'XIIAV1'),
(31, 'TRI HANDAYANI', '161710117', 'AUDIO VIDEO', 'XIIAV1'),
(32, 'WAHYU DWI AGUST NUGROHO', '161710118', 'AUDIO VIDEO', 'XIIAV1'),
(33, 'ABDULLAH HAPIPI', '161710119', 'OTOMOTIF', 'XIITKR1'),
(34, 'ADAM GUSTI PERWIRA', '161710120', 'OTOMOTIF', 'XIITKR1'),
(35, 'AHMAD WARDHANA', '161710121', 'OTOMOTIF', 'XIITKR1'),
(36, 'ALIF JUWADI', '161710122', 'OTOMOTIF', 'XIITKR1'),
(37, 'ALYA ABDI KUSTIFAR', '161710123', 'OTOMOTIF', 'XIITKR1'),
(38, 'ARMAYODHA RAMADHAN', '161710124', 'OTOMOTIF', 'XIITKR1'),
(39, 'ARYA NUGROHO', '161710125', 'OTOMOTIF', 'XIITKR1'),
(40, 'BAGUS DWIYANTO', '161710126', 'OTOMOTIF', 'XIITKR1'),
(41, 'BRILLIANO APRILIANTO', '161710127', 'OTOMOTIF', 'XIITKR1'),
(42, 'CHAERUL UMAM', '161710128', 'OTOMOTIF', 'XIITKR1'),
(43, 'DANY FITROH JAMALLUDIN', '161710129', 'OTOMOTIF', 'XIITKR1'),
(44, 'DAVID ANDRIANSYAH', '161710130', 'OTOMOTIF', 'XIITKR1'),
(45, 'DENNY JANUARSAH', '161710131', 'OTOMOTIF', 'XIITKR1'),
(46, 'FACHRUL JULIANSYAH', '161710132', 'OTOMOTIF', 'XIITKR1'),
(47, 'FAISAL RAHMATULLAH', '161710133', 'OTOMOTIF', 'XIITKR1'),
(48, 'GUNADI HERMAWAN', '161710134', 'OTOMOTIF', 'XIITKR1'),
(49, 'HANIF EKA SETIAWAN', '161710135', 'OTOMOTIF', 'XIITKR1'),
(50, 'HENRI KRISTIAWAN', '161710136', 'OTOMOTIF', 'XIITKR1'),
(51, 'HERMAWAN PRASETYO', '161710137', 'OTOMOTIF', 'XIITKR1'),
(52, 'KHOIRUL UMAN', '161710138', 'OTOMOTIF', 'XIITKR1'),
(53, 'M. ALDY RIVALDI', '161710139', 'OTOMOTIF', 'XIITKR1'),
(54, 'MUHAMAD FARHAN HUSYAENI', '161710140', 'OTOMOTIF', 'XIITKR1'),
(55, 'MUHAMMAD ARDIANSYAH PANGESTU', '161710141', 'OTOMOTIF', 'XIITKR1'),
(56, 'MUHAMMAD FAJAR SIDIK', '161710142', 'OTOMOTIF', 'XIITKR1'),
(57, 'MUHAMMAD ILHAM WAHYUDI', '161710143', 'OTOMOTIF', 'XIITKR1'),
(58, 'MUHAMMAD LIGA ASIDIQ', '161710144', 'OTOMOTIF', 'XIITKR1'),
(59, 'MUHAMMAD RIFKY AL FARIDZI', '161710145', 'OTOMOTIF', 'XIITKR1'),
(60, 'NAZARUDDIN ADAM', '161710146', 'OTOMOTIF', 'XIITKR1'),
(61, 'R. YUDHISTIRA RAMADHANI', '161710147', 'OTOMOTIF', 'XIITKR1'),
(62, 'RAFFI RAMDHANI', '161710148', 'OTOMOTIF', 'XIITKR1'),
(63, 'REZA ALFARIZY', '161710149', 'OTOMOTIF', 'XIITKR1'),
(64, 'RIZKI APRIZAL', '161710150', 'OTOMOTIF', 'XIITKR1'),
(65, 'RIZQI FAJRI OCTAMA SAPUTRA', '161710151', 'OTOMOTIF', 'XIITKR1'),
(66, 'SULAIMAN', '161710154', 'OTOMOTIF', 'XIITKR1'),
(67, 'SYUKRON YUDI PRANOTO', '161710156', 'OTOMOTIF', 'XIITKR1'),
(68, 'TIO RIZKY PUTRA', '161710157', 'OTOMOTIF', 'XIITKR1'),
(69, 'TRI DINAR ADITYA', '161710158', 'OTOMOTIF', 'XIITKR1'),
(70, 'ACHMAD BIMA PRATAMA', '161710159', 'OTOMOTIF', 'XIITKR2'),
(71, 'ADITYA ANDRIANSYAH', '161710160', 'OTOMOTIF', 'XIITKR2'),
(72, 'ADITYA BAGUS SANTOSO', '161710161', 'OTOMOTIF', 'XIITKR2'),
(73, 'ARY ALVARIZKI', '161710162', 'OTOMOTIF', 'XIITKR2'),
(74, 'ARYA DWIJAYANTO DARWIS', '161710163', 'OTOMOTIF', 'XIITKR2'),
(75, 'AZAHARI ABDUL FAWAZ', '161710164', 'OTOMOTIF', 'XIITKR2'),
(76, 'BAGAS BUDI PRASETIO', '161710165', 'OTOMOTIF', 'XIITKR2'),
(77, 'BAGUS PRIHANTORO', '161710166', 'OTOMOTIF', 'XIITKR2'),
(78, 'CHRISNA ANGGARA PUTRA', '161710167', 'OTOMOTIF', 'XIITKR2'),
(79, 'DESMAN PAHALA KRISTIAN MANULLANG', '161710168', 'OTOMOTIF', 'XIITKR2'),
(80, 'DIMAS PRASTIA RAHMAD WIJAYA', '161710169', 'OTOMOTIF', 'XIITKR2'),
(81, 'DJULIO TSANI INDRAWAN', '161710170', 'OTOMOTIF', 'XIITKR2'),
(82, 'EKA NUR HIDAYAT', '161710171', 'OTOMOTIF', 'XIITKR2'),
(83, 'ELANG DARMA SETYA', '161710172', 'OTOMOTIF', 'XIITKR2'),
(84, 'ERIE SETIAWAN', '161710173', 'OTOMOTIF', 'XIITKR2'),
(85, 'FAHRIL IRAWAN', '161710174', 'OTOMOTIF', 'XIITKR2'),
(86, 'GALIH PANGESTU', '161710175', 'OTOMOTIF', 'XIITKR2'),
(87, 'GALLIH DEWA ANANDRA', '161710176', 'OTOMOTIF', 'XIITKR2'),
(88, 'GANI MUHAMAD ADRIANTO', '161710177', 'OTOMOTIF', 'XIITKR2'),
(89, 'GHIFARRY NOOR FAJAR', '161710178', 'OTOMOTIF', 'XIITKR2'),
(90, 'GIANLUIGI FAJAR MAULANA', '161710179', 'OTOMOTIF', 'XIITKR2'),
(91, 'HABIB SHOLIKH MARHADIKA', '161710180', 'OTOMOTIF', 'XIITKR2'),
(92, 'HAFIZUN JULIANTO', '161710181', 'OTOMOTIF', 'XIITKR2'),
(93, 'HARIS RAHMAT RAMADHAN', '161710182', 'OTOMOTIF', 'XIITKR2'),
(94, 'HARRIS HERNANDA', '161710183', 'OTOMOTIF', 'XIITKR2'),
(95, 'IHSAN FAUZY', '161710184', 'OTOMOTIF', 'XIITKR2'),
(96, 'LUTHFI BAYU APRIYANTO', '161710185', 'OTOMOTIF', 'XIITKR2'),
(97, 'M. BILAL AL FADZRI', '161710188', 'OTOMOTIF', 'XIITKR2'),
(98, 'MAULA DANIL SYAH', '161710186', 'OTOMOTIF', 'XIITKR2'),
(99, 'MOCHAMMAD RIZKY FIRDAUS', '161710187', 'OTOMOTIF', 'XIITKR2'),
(100, 'MUHAMMAD EGA SETIA ERLANGGA', '161710189', 'OTOMOTIF', 'XIITKR2'),
(101, 'MUHAMMAD HAFIDZ ALRIAZI', '161710190', 'OTOMOTIF', 'XIITKR2'),
(102, 'MUHAMMAD RIZKY FAUZILLAH', '161710191', 'OTOMOTIF', 'XIITKR2'),
(103, 'MUHAMMAD RIZQI FAJAR HERMAWAN', '161710192', 'OTOMOTIF', 'XIITKR2'),
(104, 'MUHAMMAD ROIHAN', '161710193', 'OTOMOTIF', 'XIITKR2'),
(105, 'RADEN WAHYU PANGESTU', '161710194', 'OTOMOTIF', 'XIITKR2'),
(106, 'RENDY SIANTURI', '161710195', 'OTOMOTIF', 'XIITKR2'),
(107, 'RIZKI RAMADHAN', '161710196', 'OTOMOTIF', 'XIITKR2'),
(108, 'ZAINAL ARIFIN', '161710198', 'OTOMOTIF', 'XIITKR2'),
(109, 'ACHMAD RUDIYANTO', '161710199', 'OTOMOTIF', 'XIITKR3'),
(110, 'AHMAD DAFFA ZIDAIN JANWAR', '161710200', 'OTOMOTIF', 'XIITKR3'),
(111, 'ALDIANSYAH', '161710201', 'OTOMOTIF', 'XIITKR3'),
(112, 'ARDITA FANSA PUTRA', '161710202', 'OTOMOTIF', 'XIITKR3'),
(113, 'ARIEF KHAERUL AMIN', '161710203', 'OTOMOTIF', 'XIITKR3'),
(114, 'BAGUS NUR CAHYO', '161710204', 'OTOMOTIF', 'XIITKR3'),
(115, 'DHIO PRIMAYUDHA', '161710205', 'OTOMOTIF', 'XIITKR3'),
(116, 'FEBRIAN HAKIM', '161710206', 'OTOMOTIF', 'XIITKR3'),
(117, 'FERDI MAULDANI', '161710207', 'OTOMOTIF', 'XIITKR3'),
(118, 'HERU NUGROHO', '161710208', 'OTOMOTIF', 'XIITKR3'),
(119, 'HILMY KHAIRINASYWA', '161710209', 'OTOMOTIF', 'XIITKR3'),
(120, 'ILHAM NUR RIFAI', '161710210', 'OTOMOTIF', 'XIITKR3'),
(121, 'IQBAL RAMADAN', '161710211', 'OTOMOTIF', 'XIITKR3'),
(122, 'IRPAN PADLI', '161710212', 'OTOMOTIF', 'XIITKR3'),
(123, 'KRIS PRAYOGA', '161710213', 'OTOMOTIF', 'XIITKR3'),
(124, 'LEO AJI SAPUTRO', '161710214', 'OTOMOTIF', 'XIITKR3'),
(125, 'LINTANG BASUKI', '161710215', 'OTOMOTIF', 'XIITKR3'),
(126, 'MOHAMMAD SYAHRU AMIN', '161710217', 'OTOMOTIF', 'XIITKR3'),
(127, 'MUHAMMAD ARI SADEWA', '161710218', 'OTOMOTIF', 'XIITKR3'),
(128, 'MUHAMMAD FANDY RIFALDI', '161710220', 'OTOMOTIF', 'XIITKR3'),
(129, 'MUHAMMAD IQBAL FADHIL', '161710221', 'OTOMOTIF', 'XIITKR3'),
(130, 'MUHAMMAD REZA', '161710222', 'OTOMOTIF', 'XIITKR3'),
(131, 'NANDA SATYA PUTRA', '161710223', 'OTOMOTIF', 'XIITKR3'),
(132, 'PUTU AGUS PUJA NUGRAHA', '161710224', 'OTOMOTIF', 'XIITKR3'),
(133, 'RAHMAT HIDAYAT', '161710225', 'OTOMOTIF', 'XIITKR3'),
(134, 'RIKKY DARMAWAN', '161710226', 'OTOMOTIF', 'XIITKR3'),
(135, 'RIZKY AGUNG NUGROHO', '161710227', 'OTOMOTIF', 'XIITKR3'),
(136, 'RIZKY DOSAN ALFREDO', '161710228', 'OTOMOTIF', 'XIITKR3'),
(137, 'SAHRUL RAMADANI', '161710231', 'OTOMOTIF', 'XIITKR3'),
(138, 'SANDI PRATAMA', '161710232', 'OTOMOTIF', 'XIITKR3'),
(139, 'TEGUH ABILAH MASHUR', '161710234', 'OTOMOTIF', 'XIITKR3'),
(140, 'WAHYU ADITYA RIZKY PERMANA', '161710235', 'OTOMOTIF', 'XIITKR3'),
(141, 'WAHYU EKO SHAPUTRO', '161710236', 'OTOMOTIF', 'XIITKR3'),
(142, 'WAKHID NUR MUHAMMAD', '161710237', 'OTOMOTIF', 'XIITKR3'),
(143, 'YAHYA ALI MUDZAKY', '161710238', 'OTOMOTIF', 'XIITKR3'),
(144, 'ABDUL AZIZ', '161710239', 'OTOMOTIF', 'XIITKR4'),
(145, 'ACHMAD SOFYAN ALI', '161710240', 'OTOMOTIF', 'XIITKR4'),
(146, 'AHMAD AKIP BASSA', '161710241', 'OTOMOTIF', 'XIITKR4'),
(147, 'AHMAD HANIF', '161710242', 'OTOMOTIF', 'XIITKR4'),
(148, 'AKBAR BUCHORI', '161710243', 'OTOMOTIF', 'XIITKR4'),
(149, 'ANDHIKA DHAVA ANGGRIAWAN', '161710244', 'OTOMOTIF', 'XIITKR4'),
(150, 'ANDI PRAYOGA', '161710245', 'OTOMOTIF', 'XIITKR4'),
(151, 'ANGGA WAHYU SUGIHARTO', '161710246', 'OTOMOTIF', 'XIITKR4'),
(152, 'ANNAS FITRIA RAHMADI', '161710247', 'OTOMOTIF', 'XIITKR4'),
(153, 'ARIF NUGROHO', '161710248', 'OTOMOTIF', 'XIITKR4'),
(154, 'DIKY PERMANA', '161710249', 'OTOMOTIF', 'XIITKR4'),
(155, 'FATHUR RAHMAN', '161710251', 'OTOMOTIF', 'XIITKR4'),
(156, 'FERDIAN EKA SYAHPUTRA', '161710252', 'OTOMOTIF', 'XIITKR4'),
(157, 'GILANG ANANDA SUPARDAN', '161710253', 'OTOMOTIF', 'XIITKR4'),
(158, 'IMMANUEL TINDAON', '161710254', 'OTOMOTIF', 'XIITKR4'),
(159, 'JAMALUDIN', '161710256', 'OTOMOTIF', 'XIITKR4'),
(160, 'KRESNA TRI NUR YUSUF', '161710257', 'OTOMOTIF', 'XIITKR4'),
(161, 'MAHFUD AJI PANGESTU', '161710258', 'OTOMOTIF', 'XIITKR4'),
(162, 'MAIVALIANDRI PRATAMA', '161710259', 'OTOMOTIF', 'XIITKR4'),
(163, 'MUHAMMAD ARIF FADILA', '161710261', 'OTOMOTIF', 'XIITKR4'),
(164, 'MUHAMMAD RAVI MAWARDY', '161710262', 'OTOMOTIF', 'XIITKR4'),
(165, 'MUHAMMAD RIZKI PRASETYO', '161710263', 'OTOMOTIF', 'XIITKR4'),
(166, 'NOVIAN BAGASKARA', '161710264', 'OTOMOTIF', 'XIITKR4'),
(167, 'PIKRAM ADITIA', '161710265', 'OTOMOTIF', 'XIITKR4'),
(168, 'RACHMAT NURFAUZI', '161710266', 'OTOMOTIF', 'XIITKR4'),
(169, 'RAHMAT HIDAYAT', '161710267', 'OTOMOTIF', 'XIITKR4'),
(170, 'RAIHAN FATURRAHMAN', '161710268', 'OTOMOTIF', 'XIITKR4'),
(171, 'RAIHAN FIRDAUS', '161710269', 'OTOMOTIF', 'XIITKR4'),
(172, 'REIHAN WAHYU NUGROHO', '161710270', 'OTOMOTIF', 'XIITKR4'),
(173, 'RIO FEBRIAN MAULANA', '161710271', 'OTOMOTIF', 'XIITKR4'),
(174, 'RIVALDO ANNUR ADI PRATAMA', '161710272', 'OTOMOTIF', 'XIITKR4'),
(175, 'RYAN FIKRI FATURRAHMAN', '161710273', 'OTOMOTIF', 'XIITKR4'),
(176, 'SULTAN ATHALLA RAHMAN', '161710274', 'OTOMOTIF', 'XIITKR4'),
(177, 'TAUFIK KURNIAWAN JAMIL', '161710275', 'OTOMOTIF', 'XIITKR4'),
(178, 'WAHYU PRAKOSO', '161710276', 'OTOMOTIF', 'XIITKR4'),
(179, 'YUSRAN HIDAYAT', '161710277', 'OTOMOTIF', 'XIITKR4'),
(180, 'ZACKY AL BAEHAKI', '161710278', 'OTOMOTIF', 'XIITKR4'),
(181, 'AHMAR ABYADH DWI PRAYOGA', '161710280', 'OTOMOTIF', 'XIITKR5'),
(182, 'ALDI MASQUR INSANU', '161710281', 'OTOMOTIF', 'XIITKR5'),
(183, 'ALIF FIRMANSYAH', '161710282', 'OTOMOTIF', 'XIITKR5'),
(184, 'ANDI YASIN HISYAM FADHOLI', '161710283', 'OTOMOTIF', 'XIITKR5'),
(185, 'ANDRIANSYAH SAPUTRA', '161710284', 'OTOMOTIF', 'XIITKR5'),
(186, 'ANGGHI PRATAMA', '161710285', 'OTOMOTIF', 'XIITKR5'),
(187, 'ARYO PRINGGADANI', '161710286', 'OTOMOTIF', 'XIITKR5'),
(188, 'AVIFFUDDIN HIDAYATULLAH', '161710287', 'OTOMOTIF', 'XIITKR5'),
(189, 'BAGUS HERNOWO', '161710288', 'OTOMOTIF', 'XIITKR5'),
(190, 'BASTIAR', '161710289', 'OTOMOTIF', 'XIITKR5'),
(191, 'BUDI HARYONO', '161710291', 'OTOMOTIF', 'XIITKR5'),
(192, 'DEA SUSI NURAINI', '161710308', 'OTOMOTIF', 'XIITKR5'),
(193, 'DIMAS BUDI UTOMO', '161710292', 'OTOMOTIF', 'XIITKR5'),
(194, 'FIGO YOGA BRILLIAN', '161710293', 'OTOMOTIF', 'XIITKR5'),
(195, 'IMAM DWI IRIANTO', '161710295', 'OTOMOTIF', 'XIITKR5'),
(196, 'M HAFIZ AWALUDDIN A', '161710297', 'OTOMOTIF', 'XIITKR5'),
(197, 'MUHAMAD RIFQI RAMDANI', '161710300', 'OTOMOTIF', 'XIITKR5'),
(198, 'MUHAMMAD ADRIAN MAULANA', '161710298', 'OTOMOTIF', 'XIITKR5'),
(199, 'MUHAMMAD DAFFA ISKANDAR', '161710302', 'OTOMOTIF', 'XIITKR5'),
(200, 'MUHAMMAD DWI PRAYOGI', '161710303', 'OTOMOTIF', 'XIITKR5'),
(201, 'MUHAMMAD DZIKRI ARAFFI', '161710304', 'OTOMOTIF', 'XIITKR5'),
(202, 'MUHAMMAD FIKRI SEPTIANDI', '161710296', 'OTOMOTIF', 'XIITKR5'),
(203, 'MUHAMMAD HARI ARAFAH', '161710305', 'OTOMOTIF', 'XIITKR5'),
(204, 'MUHAMMAD IQBAL PRIATAMA', '161710306', 'OTOMOTIF', 'XIITKR5'),
(205, 'MUHAMMAD MAULANA', '161710299', 'OTOMOTIF', 'XIITKR5'),
(206, 'NAUFAL ABDUL GOFAR', '161710307', 'OTOMOTIF', 'XIITKR5'),
(207, 'RAFLI MAULANA', '161710310', 'OTOMOTIF', 'XIITKR5'),
(208, 'RAMARA DEVA', '161710311', 'OTOMOTIF', 'XIITKR5'),
(209, 'REZA PAHLAWAN', '161710312', 'OTOMOTIF', 'XIITKR5'),
(210, 'RIZKI ANGGA MAULANA', '161710313', 'OTOMOTIF', 'XIITKR5'),
(211, 'RIZKY RAMADHAN', '161710314', 'OTOMOTIF', 'XIITKR5'),
(212, 'ROHMAT SAEPULLOH', '161710315', 'OTOMOTIF', 'XIITKR5'),
(213, 'STENLY PUTRA HERYANTO', '161710316', 'OTOMOTIF', 'XIITKR5'),
(214, 'TEDY ANDRIYANSAH', '161710317', 'OTOMOTIF', 'XIITKR5'),
(215, 'YOGA AGUSTRIANTO', '161710318', 'OTOMOTIF', 'XIITKR5'),
(216, 'ABDUL KHAFID EKA YULIANSYAH', '161710319', 'OTOMOTIF', 'XIITKR6'),
(217, 'AKMAL HIBATULLAH', '161710321', 'OTOMOTIF', 'XIITKR6'),
(218, 'ALDI ALFIANSYAH', '161710322', 'OTOMOTIF', 'XIITKR6'),
(219, 'ALFA RISKI DARMAWAN', '161710323', 'OTOMOTIF', 'XIITKR6'),
(220, 'AMIRUL MUKMININ', '161710324', 'OTOMOTIF', 'XIITKR6'),
(221, 'ANANDA RIZKI IMANTO', '161710325', 'OTOMOTIF', 'XIITKR6'),
(222, 'BAYU SENO AJI', '161710326', 'OTOMOTIF', 'XIITKR6'),
(223, 'BILLY RAMADHAN ARI SANDI', '161710327', 'OTOMOTIF', 'XIITKR6'),
(224, 'CHAYUBARROKA TAQWA ARBRILLA', '161710328', 'OTOMOTIF', 'XIITKR6'),
(225, 'DEFRI KENEDI', '161710329', 'OTOMOTIF', 'XIITKR6'),
(226, 'EKO PRASETYO', '161710330', 'OTOMOTIF', 'XIITKR6'),
(227, 'FAHRUL BAGUS SANTOSO', '161710331', 'OTOMOTIF', 'XIITKR6'),
(228, 'FERY ARDIANSYAH', '161710332', 'OTOMOTIF', 'XIITKR6'),
(229, 'HANDY AZIZ', '161710333', 'OTOMOTIF', 'XIITKR6'),
(230, 'INDRA MAULANA', '161710334', 'OTOMOTIF', 'XIITKR6'),
(231, 'KELVIN HIDAYAT T.', '161710335', 'OTOMOTIF', 'XIITKR6'),
(232, 'MOHAMAD SOLKHAN YAZID', '161710337', 'OTOMOTIF', 'XIITKR6'),
(233, 'MUHAMAD IFANTRI RAMADAN', '161710339', 'OTOMOTIF', 'XIITKR6'),
(234, 'MUHAMAD KHAFI', '161710340', 'OTOMOTIF', 'XIITKR6'),
(235, 'MUHAMAD RIZKI RAMADHAN', '161710345', 'OTOMOTIF', 'XIITKR6'),
(236, 'MUHAMMAD ANDI SYAIFUDIN', '161710343', 'OTOMOTIF', 'XIITKR6'),
(237, 'MUHAMMAD RICKY DWI SEPTIAWAN', '161710344', 'OTOMOTIF', 'XIITKR6'),
(238, 'MUHAMMAD SAPRENDI NOVIANA', '161710341', 'OTOMOTIF', 'XIITKR6'),
(239, 'MUHAMMAD SYAIFUL', '161710338', 'OTOMOTIF', 'XIITKR6'),
(240, 'MUHAMMAD SYAIFUL SIDIK', '161710342', 'OTOMOTIF', 'XIITKR6'),
(241, 'MUHAMMAD WILDAN AZIS', '161710346', 'OTOMOTIF', 'XIITKR6'),
(242, 'NOVERIKA RIZKI NURCHOLIF', '161710347', 'OTOMOTIF', 'XIITKR6'),
(243, 'OZON', '161710348', 'OTOMOTIF', 'XIITKR6'),
(244, 'RAHMAT SUPRAYOGA', '161710349', 'OTOMOTIF', 'XIITKR6'),
(245, 'RAMA WILMAN ARDIANSYAH', '161710350', 'OTOMOTIF', 'XIITKR6'),
(246, 'REKA ADITAMA', '161710351', 'OTOMOTIF', 'XIITKR6'),
(247, 'RICO PRADANA PUTRA', '161710352', 'OTOMOTIF', 'XIITKR6'),
(248, 'RISCO GILANG PRATAMA', '161710353', 'OTOMOTIF', 'XIITKR6'),
(249, 'RIZAL EFFENDI', '161710354', 'OTOMOTIF', 'XIITKR6'),
(250, 'RIZKI MUSTOFA PULUNGAN', '161710355', 'OTOMOTIF', 'XIITKR6'),
(251, 'ROY RIZKY GILANG PRADANA', '161710356', 'OTOMOTIF', 'XIITKR6'),
(252, 'SALSABANA MAYDI PUTRA', '161710357', 'OTOMOTIF', 'XIITKR6'),
(253, 'WISNU ERYANTO', '161710358', 'OTOMOTIF', 'XIITKR6'),
(254, 'AFIF NUR AFANDI', '161710001', 'LISTRIK', 'XIITITL1'),
(255, 'ALDI PANGESTU', '161710005', 'LISTRIK', 'XIITITL1'),
(256, 'AMAR SABIILA ROSYAD', '161710002', 'LISTRIK', 'XIITITL1'),
(257, 'ANHARY AZHAR PODUNGGE', '161710003', 'LISTRIK', 'XIITITL1'),
(258, 'ARYA DWI ANGGARA', '161710004', 'LISTRIK', 'XIITITL1'),
(259, 'CANDRA KURNIAWAN', '161710006', 'LISTRIK', 'XIITITL1'),
(260, 'DHIMAS HADI KUSUMA', '161710007', 'LISTRIK', 'XIITITL1'),
(261, 'DICKY ANDRIAN', '161710008', 'LISTRIK', 'XIITITL1'),
(262, 'DIMAS PUFARDANDI', '161710009', 'LISTRIK', 'XIITITL1'),
(263, 'FAISHAL ACHMAD NOVANTO', '161710010', 'LISTRIK', 'XIITITL1'),
(264, 'FAKHRI AKBAR RAMADHAN', '161710011', 'LISTRIK', 'XIITITL1'),
(265, 'FAUZAN AZHAR ROSYADI', '161710012', 'LISTRIK', 'XIITITL1'),
(266, 'FAZRYANSYAH', '161710013', 'LISTRIK', 'XIITITL1'),
(267, 'FEBRYAN SETYAJI', '161710014', 'LISTRIK', 'XIITITL1'),
(268, 'FEDRIAN PANCA PRATAMA', '161710015', 'LISTRIK', 'XIITITL1'),
(269, 'FIRDZA MUFTHI QORYASYA', '161710016', 'LISTRIK', 'XIITITL1'),
(270, 'HAFIZH KUMARA WAHYU KUSUMA', '161710017', 'LISTRIK', 'XIITITL1'),
(271, 'HAMDAN SUBIYANTORO', '161710018', 'LISTRIK', 'XIITITL1'),
(272, 'HENDRA BAYU KRISTANTO', '161710019', 'LISTRIK', 'XIITITL1'),
(273, 'HILMY FATURRAHMAN', '161710020', 'LISTRIK', 'XIITITL1'),
(274, 'M. RIZKY MAULANA WAHYU', '161710021', 'LISTRIK', 'XIITITL1'),
(275, 'MUHAMAD AL SYAHRONI FADILAH', '161710023', 'LISTRIK', 'XIITITL1'),
(276, 'MOHAMMAD FAQIH COMMANDINI', '161710025', 'LISTRIK', 'XIITITL1'),
(277, 'MUHAMMAD KHADAFI', '161710026', 'LISTRIK', 'XIITITL1'),
(278, 'MUHAMMAD ROFIQ HIDAYAT', '161710027', 'LISTRIK', 'XIITITL1'),
(279, 'MUHAMMAD SALMAN AL-MUYASSAR', '161710028', 'LISTRIK', 'XIITITL1'),
(280, 'OZI MURZEKI', '161710029', 'LISTRIK', 'XIITITL1'),
(281, 'REZA FAHRUL AZIZ', '161710030', 'LISTRIK', 'XIITITL1'),
(282, 'REZA OKTA HIDAYAT', '161710031', 'LISTRIK', 'XIITITL1'),
(283, 'RINALDY YAKUB SURYANTORO', '161710032', 'LISTRIK', 'XIITITL1'),
(284, 'RIVAI MAHDI ZEIN', '161710033', 'LISTRIK', 'XIITITL1'),
(285, 'RIZAL AJI SAPUTRO', '161710034', 'LISTRIK', 'XIITITL1'),
(286, 'TAUFIQ KURAHMAN', '161710036', 'LISTRIK', 'XIITITL1'),
(287, 'USMAN BUDIANTO', '161710037', 'LISTRIK', 'XIITITL1'),
(288, 'WAHYU PRASETYO', '161710038', 'LISTRIK', 'XIITITL1'),
(289, 'YUSTIYO ARIYADI MANDALA PUTRA', '161710040', 'LISTRIK', 'XIITITL1'),
(290, 'ACHMAD ARYA WIRADENTA', '161710041', 'LISTRIK', 'XIITITL2'),
(291, 'ACHMAD FADILAH', '161710042', 'LISTRIK', 'XIITITL2'),
(292, 'ADITYA ARI PRADANA', '161710043', 'LISTRIK', 'XIITITL2'),
(293, 'AFRIJAL ARDIANSYAH', '161710044', 'LISTRIK', 'XIITITL2'),
(294, 'AHMAD AZIZ NUR HUDA', '161710045', 'LISTRIK', 'XIITITL2'),
(295, 'AHMAD AZWAR', '161710046', 'LISTRIK', 'XIITITL2'),
(296, 'AHMAD FAUZAN', '161710047', 'LISTRIK', 'XIITITL2'),
(297, 'AHMAD RIZAL PRALANGGA', '161710048', 'LISTRIK', 'XIITITL2'),
(298, 'ANDI AGUSTA ARIYANTO', '161710049', 'LISTRIK', 'XIITITL2'),
(299, 'ARDIYANTO', '161710051', 'LISTRIK', 'XIITITL2'),
(300, 'ARI HIDAYATULLOH', '161710052', 'LISTRIK', 'XIITITL2'),
(301, 'ARI PUTRA DINICAHYO', '161710053', 'LISTRIK', 'XIITITL2'),
(302, 'BAGAS YOGA KURNIAWAN', '161710054', 'LISTRIK', 'XIITITL2'),
(303, 'BAYU DWI PRASETIO', '161710055', 'LISTRIK', 'XIITITL2'),
(304, 'DANY FAUZAN', '161710056', 'LISTRIK', 'XIITITL2'),
(305, 'DHANI ILHAM ABDILAH', '161710057', 'LISTRIK', 'XIITITL2'),
(306, 'DIAN ALIF FERDINATA', '161710058', 'LISTRIK', 'XIITITL2'),
(307, 'EADALLY MOHAMMAD DAFID', '161710059', 'LISTRIK', 'XIITITL2'),
(308, 'FAADIL KHUSNUZAN', '161710060', 'LISTRIK', 'XIITITL2'),
(309, 'FAHRI ALIF YUWANTO', '161710061', 'LISTRIK', 'XIITITL2'),
(310, 'FARDHAN FERDIANSYAH SULING', '161710062', 'LISTRIK', 'XIITITL2'),
(311, 'FARKHAN AHMAD NABAWI', '161710063', 'LISTRIK', 'XIITITL2'),
(312, 'GUNTUR SETIA ADI', '161710064', 'LISTRIK', 'XIITITL2'),
(313, 'HENDRI ARBIYANTO', '161710065', 'LISTRIK', 'XIITITL2'),
(314, 'IHSAN RIYADMOKO', '161710066', 'LISTRIK', 'XIITITL2'),
(315, 'MAULANA ALFARIDZI', '161710067', 'LISTRIK', 'XIITITL2'),
(316, 'MUHAMMAD DAVID AFIANTO', '161710068', 'LISTRIK', 'XIITITL2'),
(317, 'MUHAMMAD IMAM GHOZALY', '161710069', 'LISTRIK', 'XIITITL2'),
(318, 'MUHAMMAD RYAN ALMEYDA', '161710070', 'LISTRIK', 'XIITITL2'),
(319, 'MUHAMMAD THOLHAH SYAMSUDIN', '161710072', 'LISTRIK', 'XIITITL2'),
(320, 'MUHSI ALFIAN', '161710073', 'LISTRIK', 'XIITITL2'),
(321, 'PRABOWO SUKOCO', '161710074', 'LISTRIK', 'XIITITL2'),
(322, 'RAJA HANDOKO', '161710075', 'LISTRIK', 'XIITITL2'),
(323, 'RENDY CAHYA PERDANA', '161710076', 'LISTRIK', 'XIITITL2'),
(324, 'ROIHAN ALI ABDURRAHMAN', '161710077', 'LISTRIK', 'XIITITL2'),
(325, 'VALEN ACHLORELLA SAPUTRA', '161710079', 'LISTRIK', 'XIITITL2'),
(326, 'MUHAMMAD FIQH SETIAWAN', '151610063', 'LISTRIK', 'XIITITL2'),
(327, 'ADAM MALIK', '161710359', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(328, 'ADITYA ADRIANSYAH RANTI', '161710360', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(329, 'ADNAN MAJID', '161710361', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(330, 'AHMAD AL FARIZI', '161710362', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(331, 'ALIEF RAMADHAN', '161710364', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(332, 'ANTON PUTRA PRATAMA', '161710366', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(333, 'ARIF MUHAMMAD RIZAL', '161710367', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(334, 'ARIS YULIANTO', '161710368', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(335, 'ARYANDHIKA ARRASYID', '161710369', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(336, 'BIMO BAGUS BAGASKORO', '161710371', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(337, 'FAWZI AFDILLAH', '161710372', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(338, 'FAYAKUN ILHAM PRADANA', '161710373', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(339, 'FIKRI AHMAD RAMADHAN', '161710374', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(340, 'M. BADRU ALIF FIQRI', '161710375', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(341, 'MOCH. FAHMI MAULANA', '161710378', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(342, 'MUHAMMAD FARHAN ABDUL BARRI MUHARAM', '161710379', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(343, 'MUHAMMAD REYNALDI BAIHAQI', '161710377', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(344, 'MUHAMMAD ZAHRAN SILALAHI', '161710381', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(345, 'PRAMUDITA WAHYU RAHMADANI', '161710382', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(346, 'PRAMUDYA APRIANSYAH', '161710383', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(347, 'RACHMAD MEGANTARA SIDIQ', '161710384', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(348, 'RIVANDA ADI HERIYANTO', '161710385', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(349, 'SENDI SAPUTRA', '161710386', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(350, 'YOGI MUHARI', '161710387', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(351, 'YUDHA BEKTI PRATAMA', '161710388', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(352, 'YUSRIL ALQORRIB', '161710389', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(353, 'ZAEEF ALVIN MAULANA', '161710390', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1'),
(354, 'ABI MUHAMMAD FAUZAN', '161710391', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(355, 'ACHMAD SODIKIN', '161710392', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(356, 'ADZRA YANDRIZA', '161710393', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(357, 'AGUNG TIRTAYASA KUSUMA', '161710394', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(358, 'AHMAD DWIKHALDI RIFAI', '161710395', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(359, 'AKBAR DWI VIRGIAWAN', '161710396', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(360, 'ALFITO DWINATA', '161710397', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(361, 'ANDIKA PRASETIO', '161710398', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(362, 'AULIA DWI SAFITRI', '161710399', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(363, 'DAMAR IMAM SATRIO', '161710400', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(364, 'FARRAS AJI SUPRAYITNO', '161710401', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(365, 'FIRGIAWAN MOHAMMAD AGAMSYAH', '161710402', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(366, 'HERLAMBANG FUJA ANANTAMA', '161710403', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(367, 'JAYNKA TIRTA RAMADHAN', '161710404', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(368, 'MAULANA ALI MUDDIN', '161710409', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(369, 'MUH YUSUF RAHIM', '161710411', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(370, 'MUHAMAD RAIHAN', '161710405', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(371, 'MUHAMAD RIZKY FADILAH', '161710406', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(372, 'MUHAMAD TAUFIK ISMAIL', '161710410', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(373, 'MUHAMMAD ANWAR RAIS', '161710412', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(374, 'MUHAMMAD ARIF KURNIAWAN', '161710407', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(375, 'MUHAMMAD RISKI', '161710413', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(376, 'RAKADITYA ANDI RYOTAMA', '161710414', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(377, 'RIDWAN ADJITAMA', '161710415', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(378, 'RIFKA MAULIDA HASANAH', '161710416', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(379, 'SIMON PETRUS', '161710417', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(380, 'TEGAR WIBISONO', '161710418', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(381, 'WAISAL RIANTO SAPUTRA', '161710419', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(382, 'WILIYANTO RAMADAN', '161710420', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(383, 'WISNU NUGROHO PAMUNGKAS', '161710421', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(384, 'WISNU NURALIM', '161710422', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL2'),
(385, 'ADITYA RIZKY ARIWINATA', '161710423', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(386, 'AFDHEL MUHAMMAD DWIWANGKORO', '161710424', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(387, 'AJIE PERDANA', '161710425', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(388, 'ALDIANSYAH DWIPUTRA', '161710427', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(389, 'ALIF AKBAR PERMANA', '161710428', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(390, 'BAYU ASTRIO DHI YAHUDIN', '161710430', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(391, 'CAESAR MUFLIH ASYRAF', '161710431', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(392, 'DAFFA TAMA RAMADANI', '161710432', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(393, 'FARIZ IKHSAN FALAQI', '161710433', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(394, 'FATHIAH AZZAHRAH', '161710434', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(395, 'FERY DARMAWAN', '161710435', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(396, 'IBNU HANAPI', '161710436', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(397, 'IDHAM KHALID', '161710437', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(398, 'ILHAM SAEFUR ROHMAN', '161710438', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(399, 'ISMAIL', '161710439', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(400, 'MAULANA WIBISONO', '161710441', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(401, 'MOCH DAFFA WAHYU PRADANA', '161710442', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(402, 'MOCHAMAD ANUGRAH', '161710443', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(403, 'MUHAMAD IZZUDIN ROSADI', '161710444', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(404, 'MUHAMAD RIFKI FARIZA', '161710445', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(405, 'MUHAMMAD FILA ALFARISKI', '161710446', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(406, 'MUHAMMAD HAIKAL FADLY', '161710440', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(407, 'MUHAMMAD RAFLIANSYAH', '161710447', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(408, 'MUHAMMAD RAYHAN MEDDYANTO', '161710448', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(409, 'MUHAMMAD TAUFIKUR RAHMAN', '161710449', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(410, 'PRASETIO', '161710450', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(411, 'SEPTIAN ADITYA PRASETYO', '161710451', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(412, 'SURYA EFENDI', '161710452', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(413, 'TRISTAN ARTYAN ALIFMUQSITH', '161710453', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(414, 'YOSUA ARJUNA', '161710454', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL3'),
(419, 'demo1', '12345', 'REKAYASA PERANGKAT LUNAK', 'XIIRPL1');

--
-- Trigger `m_siswa`
--
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
(189, 19, 10, 1, '', '', '<p>Prinsip pengukuran alat ukur mekanik dengan cara mencari perbedaan antara dua tanda adalah....</p>\r\n', '#####<p>vernier Caliper</p>\r\n', '#####<p>Mistar Baja</p>\r\n', '#####<p>Fuller Guage</p>\r\n', '#####<p>Dial Guage</p>\r\n', '#####<p>Micrometer</p>\r\n', 'A', '2019-01-11 08:12:41', 0, 0, 19),
(190, 19, 10, 1, '', '', '<p>Jika berputar satu kali, inner sleeve bergerak sebanyak satu ulir. Jika jarak ulir ialah 1 mm, inner sleeve bergerak 2 mm dan seterusnya. Ini meruoakan metode pengukuran pada alat ukur. . .</p>\r\n', '#####<p>vernier Caliper</p>\r\n', '#####<p>Mistar Baja</p>\r\n', '#####<p>Fuller Guage</p>\r\n', '#####<p>Dial Guage</p>\r\n', '#####<p>Micrometer</p>\r\n', 'E', '2019-01-11 08:12:41', 0, 0, 19),
(191, 19, 10, 1, '', '', '<p>Alat ukur mekanik yang digunakan untuk mengukur kebengkokan poros, kesejajaran dan kerataan adalah....</p>\r\n', '#####<p>vernier Caliper</p>\r\n', '#####<p>Mistar Baja</p>\r\n', '#####<p>Fuller Guage</p>\r\n', '#####<p>Dial Guage</p>\r\n', '#####<p>Micrometer</p>\r\n', 'D', '2019-01-11 08:12:41', 0, 0, 19),
(192, 19, 10, 1, 'gambar_soal_192.png', 'image/png', '<p>Pengukuran pada gambar disamping menggunakan alat ukur. . . .</p>\r\n', '#####<p>vernier Caliper</p>\r\n', '#####<p>Mistar Baja</p>\r\n', '#####<p>Fuller Guage</p>\r\n', '#####<p>Dial Guage</p>\r\n', '#####<p>Micrometer</p>\r\n', 'C', '2019-01-11 08:12:41', 0, 0, 19),
(193, 19, 10, 1, 'gambar_soal_193.png', 'image/png', '<p>Gambar di samping menunjukan cara. . .</p>\r\n', '#####<p>memeriksa tanda &quot;0&quot;</p>\r\n', '#####<p>Menyetel titik &quot;0&quot;</p>\r\n', '#####<p>Pemeriksaan Pengukuran</p>\r\n', '#####<p>Membaca hasil pengukuran</p>\r\n', '#####<p>Prinsip pengukuran</p>\r\n', 'B', '2019-01-11 08:12:41', 0, 0, 19),
(194, 19, 10, 1, 'gambar_soal_194.png', 'image/png', '<p>Bagian komponen micrometer yang di tunjukan oleh nomor 2 pada gambar diatas adalah....</p>\r\n', '#####<p>Spindel</p>\r\n', '#####<p>Inner Sleeve</p>\r\n', '#####<p>Ratcher Stopper</p>\r\n', '#####<p>Thimble</p>\r\n', '#####<p>Outer sleeve</p>\r\n', 'A', '2019-01-11 08:12:41', 0, 0, 19),
(195, 19, 10, 1, 'gambar_soal_195.png', 'image/png', '<p>Bagian komponen micrometer yang di tunjukan oleh gambar nomor 6 adalah....</p>\r\n', '#####<p>Spindel</p>\r\n', '#####<p>Inner Sleeve</p>\r\n', '#####<p>Ratcher Stopper</p>\r\n', '#####<p>Thimble</p>\r\n', '#####<p>Outer sleeve</p>\r\n', 'E', '2019-01-11 08:12:41', 0, 0, 19),
(196, 19, 10, 1, 'gambar_soal_196.png', 'image/png', '<p>Bagian komponen micrometer yang di tunjukan oleh gambar nomor 4 adalah...</p>\r\n', '#####<p>Spindel</p>\r\n', '#####<p>Inner Sleeve</p>\r\n', '#####<p>Ratcher Stopper</p>\r\n', '#####<p>Thimble</p>\r\n', '#####<p>Outer sleeve</p>\r\n', 'D', '2019-01-11 08:12:41', 0, 0, 19),
(197, 19, 10, 1, 'gambar_soal_197.png', 'image/png', '<p>Hasil pembacaan pengukuran pada gambar berikut ini adalah...</p>\r\n', '#####<p>32,4 mm</p>\r\n', '#####<p>32,6 mm</p>\r\n', '#####<p>32,8 mm</p>\r\n', '#####<p>32,10 mm</p>\r\n', '#####<p>32,00 mm</p>\r\n', 'C', '2019-01-11 08:12:41', 0, 0, 19),
(198, 19, 10, 1, 'gambar_soal_198.png', 'image/png', '<p>Hasil pembacaan pengukuran pada gambar berikut ini adalah...</p>\r\n', '#####<p>75,4 mm</p>\r\n', '#####<p>75,6 mm</p>\r\n', '#####<p>75,8 mm</p>\r\n', '#####<p>75,10 mm</p>\r\n', '#####<p>75,00 mm</p>\r\n', 'B', '2019-01-11 08:12:41', 0, 0, 19),
(199, 19, 10, 1, 'gambar_soal_199.png', 'image/png', '<p>Hasil pembacaan pengukuran pada gambar berikut ini adalah...</p>\r\n', '#####<p>27,8 mm</p>\r\n', '#####<p>27,6 mm</p>\r\n', '#####<p>27,4 mm</p>\r\n', '#####<p>27,2 mm</p>\r\n', '#####<p>27,0 mm</p>\r\n', 'A', '2019-01-11 08:12:41', 0, 0, 19),
(200, 19, 10, 1, 'gambar_soal_200.png', 'image/png', '<p>Hasil pembacaan pengukuran pada gambar berikut ini adalah...</p>\r\n', '#####<p>2,00 mm</p>\r\n', '#####<p>2,2 mm</p>\r\n', '#####<p>2,52 mm</p>\r\n', '#####<p>2,70 mm</p>\r\n', '#####<p>2,20 mm</p>\r\n', 'E', '2019-01-11 08:12:41', 0, 0, 19),
(201, 19, 10, 1, 'gambar_soal_201.png', 'image/png', '<p>Hasil pembacaan pengukuran pada gambar berikut ini adalah...</p>\r\n', '#####<p>3,37 mm</p>\r\n', '#####<p>3,87 mm</p>\r\n', '#####<p>3,33 mm</p>\r\n', '#####<p>3,83 mm</p>\r\n', '#####<p>3.82 mm</p>\r\n', 'D', '2019-01-11 08:12:41', 0, 0, 19),
(202, 19, 10, 1, 'gambar_soal_202.png', 'image/png', '<p>Hasil pembacaan pengukuran pada gambar berikut ini adalah...</p>\r\n', '#####<p>5,46 mm</p>\r\n', '#####<p>5,96 mm</p>\r\n', '#####<p>4,46 mm</p>\r\n', '#####<p>4,96 mm</p>\r\n', '#####<p>4,54 mm</p>\r\n', 'D', '2019-01-11 08:12:41', 0, 0, 19),
(203, 19, 10, 1, '', '', '<p>Untuk mengukur tinggi suatu alat atau bahan maka dapat digunakan alat ukur standart yaitu &hellip;</p>\r\n', '#####<p>Guage blok</p>\r\n', '#####<p>Height guage</p>\r\n', '#####<p>Dial indikator</p>\r\n', '#####<p>Length bar</p>\r\n', '#####<p>Batang ukur</p>\r\n', 'B', '2019-01-11 08:12:41', 0, 0, 20),
(204, 19, 10, 1, '', '', '<p>Alat ukur yang digunakan untuk mengetahui kesejajaran poros engkol adalah &hellip;</p>\r\n', '#####<p>Guage blok</p>\r\n', '#####<p>Height guage</p>\r\n', '#####<p>Dial indikator</p>\r\n', '#####<p>Length bar</p>\r\n', '#####<p>caliper guage</p>\r\n', 'D', '2019-01-11 08:12:41', 0, 0, 20),
(205, 19, 10, 1, '', '', '<p>Alat untuk mengukur kerenggangan platina pada distributor mesin adalah &hellip;</p>\r\n', '#####<p>Guage blok</p>\r\n', '#####<p>vernier caliper</p>\r\n', '#####<p>Kaliber</p>\r\n', '#####<p>Caliper guage</p>\r\n', '#####<p>Fuller guage</p>\r\n', 'E', '2019-01-11 08:12:41', 0, 0, 19),
(206, 19, 10, 1, '', '', '<p>Alat ukur yang dilengkapi dengan measuring point dan dapat bergerak bebas adalah &hellip;</p>\r\n', '#####<p>vernier Caliper</p>\r\n', '#####<p>Small hole guage</p>\r\n', '#####<p>Dial indikator</p>\r\n', '#####<p>Bore guage</p>\r\n', '#####<p>Telescoping guage</p>\r\n', 'E', '2019-01-11 08:12:41', 0, 0, 20),
(207, 19, 10, 1, '', '', '<p>Alat bantu yang digunakan untuk mengukur kelurusan poros engkol dengan dial indicator adalah . . .</p>\r\n', '#####<p>Mistar baja</p>\r\n', '#####<p>Mistar gesek</p>\r\n', '#####<p>Blok ukur</p>\r\n', '#####<p>Blok V</p>\r\n', '#####<p>Geoge blok</p>\r\n', 'D', '2019-01-11 08:12:41', 0, 0, 17),
(208, 19, 10, 1, '', '', '<p>Gauge beam lock merupakan salah satu dari bagian alat ukur.....</p>\r\n', '#####<p>Dial guage</p>\r\n', '#####<p>Caliver Guage</p>\r\n', '#####<p>Cylinder guage</p>\r\n', '#####<p>Mistar baja</p>\r\n', '#####<p>Micrometer</p>\r\n', 'E', '2019-01-11 08:12:41', 0, 0, 19),
(209, 19, 10, 1, '', '', '<p>Bahan logam dikelompokan menjadi . .</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####<p>5</p>\r\n', '#####<p>6</p>\r\n', 'A', '2019-01-11 08:12:41', 0, 0, 16),
(210, 19, 10, 1, '', '', '<p>Besi,baja termasuk jenis logam . .</p>\r\n', '#####<p>Timah</p>\r\n', '#####<p>Logam non fero</p>\r\n', '#####<p>Logam ferro</p>\r\n', '#####<p>Tembaga</p>\r\n', '#####<p>Timbal tanah</p>\r\n', 'C', '2019-01-11 08:12:41', 0, 0, 16),
(211, 19, 10, 1, '', '', '<p>Emas perak dan timah putih termasuk jenis logam . . .</p>\r\n', '#####<p>Timah</p>\r\n', '#####<p>Tembaga</p>\r\n', '#####<p>Logam ferro</p>\r\n', '#####<p>Logam non ferro</p>\r\n', '#####<p>Timbal putih</p>\r\n', 'B', '2019-01-11 08:12:41', 0, 0, 16),
(212, 19, 10, 1, '', '', '<p>Unsur kimia yang mempunyai unsur kuat , liat, keras, dan mampu penghantaran listrik disebut</p>\r\n', '#####<p>Logam</p>\r\n', '#####<p>Besi</p>\r\n', '#####<p>Perkakas</p>\r\n', '#####<p>Baja</p>\r\n', '#####<p>karbon</p>\r\n', 'E', '2019-01-11 08:12:41', 0, 0, 16),
(213, 19, 10, 1, '', '', '<p>Kekerasan suatu bahan jika menahan .beban dinamakan . . .</p>\r\n', '#####<p>Kekerasan</p>\r\n', '#####<p>Elastisitas</p>\r\n', '#####<p>Kekakuan</p>\r\n', '#####<p>Plastisitas</p>\r\n', '#####<p>Kelelahan logam</p>\r\n', 'C', '2019-01-11 08:12:41', 0, 0, 16),
(214, 19, 10, 1, '', '', '<p>Suatu bahan menerima beban yang berganti dengan tegangan maksimum pada setiap pembebanan disebut . .</p>\r\n', '#####<p>Kekerasan</p>\r\n', '#####<p>Elastisitas</p>\r\n', '#####<p>Kekakuan</p>\r\n', '#####<p>Plastisitas</p>\r\n', '#####<p>Kelelahan logam</p>\r\n', 'E', '2019-01-11 08:12:41', 0, 0, 16),
(215, 19, 10, 1, '', '', '<p>Suatu bahan menerima beban bentuk setelah diberi beban disebut . . .</p>\r\n', '#####<p>Kekerasan</p>\r\n', '#####<p>Elastisitas</p>\r\n', '#####<p>Kekakuan</p>\r\n', '#####<p>Plastisitas</p>\r\n', '#####<p>Kelelahan logam</p>\r\n', 'B', '2019-01-11 08:12:41', 0, 0, 16),
(216, 19, 10, 1, '', '', '<p>Suatu bahan padat jika mengalami perubahan tanpa mengalami perubahan bentuk disebut</p>\r\n', '#####<p>Kekerasan</p>\r\n', '#####<p>Plastisitas</p>\r\n', '#####<p>Kekakuan</p>\r\n', '#####<p>Aiastisitas</p>\r\n', '#####<p>Kelelahan logam</p>\r\n', 'B', '2019-01-11 08:12:41', 0, 0, 16),
(217, 19, 10, 1, '', '', '<p>Kemampuan bahan kembali kebentuk semula setelah menerima perubahan akibat perubahan bentuk disebut</p>\r\n', '#####<p>Kekerasan</p>\r\n', '#####<p>Elastisitas</p>\r\n', '#####<p>Kekakuan</p>\r\n', '#####<p>Plastisitas</p>\r\n', '#####<p>Kelelahan logam</p>\r\n', 'D', '2019-01-11 08:12:41', 0, 0, 16),
(218, 19, 10, 1, '', '', '<p>Jenis material logam ferro sering disebut . .</p>\r\n', '#####<p>Besi baja</p>\r\n', '#####<p>Timah</p>\r\n', '#####<p>Besi karbon</p>\r\n', '#####<p>Emas</p>\r\n', '#####<p>Tembaga</p>\r\n', 'C', '2019-01-11 08:12:41', 0, 0, 16),
(219, 19, 10, 1, '', '', '<p>Unsur yang termasuk dalam logam ferro adalah . .</p>\r\n', '#####<p>Fe</p>\r\n', '#####<p>Fe dan C</p>\r\n', '#####<p>Fe1</p>\r\n', '#####<p>Fe2</p>\r\n', '#####<p>Fe dan Fe</p>\r\n', 'B', '2019-01-11 08:12:41', 0, 0, 16),
(220, 19, 10, 1, '', '', '<p>Jenis material besi tempa mempunyai kadar besi murni sebesar . .</p>\r\n', '#####<p>0.69</p>\r\n', '#####<p>0.79</p>\r\n', '#####<p>0.89</p>\r\n', '#####<p>0.99</p>\r\n', '#####<p>1</p>\r\n', 'D', '2019-01-11 08:12:41', 0, 0, 16),
(221, 19, 10, 1, '', '', '<p>Material besi tuang mempunyai kadar atau kandungan karbon dan besi sebasar . .</p>\r\n', '#####<p>0.01</p>\r\n', '#####<p>0.02</p>\r\n', '#####<p>0.03</p>\r\n', '#####<p>0.04</p>\r\n', '#####<p>0.05</p>\r\n', 'D', '2019-01-11 08:12:41', 0, 0, 16),
(222, 19, 10, 1, '', '', '<p>Baja lunak mempunyai kandungan campuran berupa . .</p>\r\n', '#####<p>Besi dengan karbon</p>\r\n', '#####<p>Tembaga dengan perak</p>\r\n', '#####<p>Besi murni</p>\r\n', '#####<p>Tembaga dengan karbon</p>\r\n', '#####<p>Besi dengan tembaga</p>\r\n', 'A', '2019-01-11 08:12:41', 0, 0, 16),
(223, 19, 10, 1, '', '', '<p>Jenis material logam yang dapat ditempa dan disepuh adalah . ..</p>\r\n', '#####<p>Baja Karbon tinggi</p>\r\n', '#####<p>Besi tempa</p>\r\n', '#####<p>Besi tuang</p>\r\n', '#####<p>Baja karbon sedang</p>\r\n', '#####<p>Baja karbon lunak</p>\r\n', 'A', '2019-01-11 08:12:41', 0, 0, 16),
(224, 19, 10, 1, '', '', '<p>Suatu benda yang dapat ditentukan besaranya disebut . .</p>\r\n', '#####<p>Besaran</p>\r\n', '#####<p>Turunan</p>\r\n', '#####<p>Vektor</p>\r\n', '#####<p>Skalar</p>\r\n', '#####<p>Satuan</p>\r\n', 'A', '2019-01-11 08:12:41', 0, 0, 17),
(225, 19, 10, 1, '', '', '<p>Besaran ditentukan berdasarkan satuan adalah . .</p>\r\n', '#####<p>Besaran</p>\r\n', '#####<p>Turunan</p>\r\n', '#####<p>Vektor</p>\r\n', '#####<p>Skalar</p>\r\n', '#####<p>Satuan</p>\r\n', 'B', '2019-01-11 08:12:41', 0, 0, 17),
(226, 19, 10, 1, '', '', '<p>Massa merupakan jenis besaran yang digunakan pada &hellip;&hellip;..</p>\r\n', '#####<p>Pokok</p>\r\n', '#####<p>Turunan</p>\r\n', '#####<p>Vektor</p>\r\n', '#####<p>Skalar</p>\r\n', '#####<p>Satuan</p>\r\n', 'B', '2019-01-11 08:12:41', 0, 0, 17),
(227, 19, 10, 1, '', '', '<p>Mol merupakan jenis besaran yang digunakan pada &hellip;&hellip;.</p>\r\n', '#####<p>Besaran</p>\r\n', '#####<p>Turunan</p>\r\n', '#####<p>Vektor</p>\r\n', '#####<p>Skalar</p>\r\n', '#####<p>Satuan</p>\r\n', 'C', '2019-01-11 08:12:41', 0, 0, 17),
(228, 19, 10, 1, '', '', '<p>Suhu atau temperature merupakan jenis besaran yang terdapat pada &hellip;&hellip;.</p>\r\n', '#####<p>Besaran</p>\r\n', '#####<p>Turunan</p>\r\n', '#####<p>Vektor</p>\r\n', '#####<p>Skalar</p>\r\n', '#####<p>Satuan</p>\r\n', 'E', '2019-01-11 08:12:41', 0, 0, 17),
(229, 19, 9, 1, 'gambar_soal_229.png', 'image/png', '', 'gja_229.png#####', 'gjb_229.png#####', 'gjc_229.png#####', 'gjd_229.png#####', 'gje_229.png#####', 'C', '2019-01-12 12:46:12', 0, 0, 35),
(230, 19, 9, 1, 'gambar_soal_230.png', 'image/png', '', 'gja_230.png#####', 'gjb_230.png#####', 'gjc_230.png#####', 'gjd_230.png#####', 'gje_230.png#####', 'A', '2019-01-12 12:46:12', 0, 0, 35),
(231, 19, 9, 1, 'gambar_soal_231.png', 'image/png', '', 'gja_231.png#####', 'gjb_231.png#####', 'gjc_231.png#####', 'gjd_231.png#####', 'gje_231.png#####', 'D', '2019-01-12 12:46:12', 0, 0, 35),
(232, 19, 9, 1, 'gambar_soal_232.png', 'image/png', '', 'gja_232.png#####', 'gjb_232.png#####', 'gjc_232.png#####', 'gjd_232.png#####', 'gje_232.png#####', 'A', '2019-01-12 12:46:12', 0, 0, 57),
(233, 19, 9, 1, 'gambar_soal_233.png', 'image/png', '', 'gja_233.png#####', 'gjb_233.png#####', 'gjc_233.png#####', 'gjd_233.png#####', 'gje_233.png#####', 'D', '2019-01-12 12:46:12', 0, 0, 48),
(234, 19, 9, 1, 'gambar_soal_234.png', 'image/png', '', 'gja_234.png#####', 'gjb_234.png#####', 'gjc_234.png#####', 'gjd_234.png#####', 'gje_234.png#####', 'D', '2019-01-12 12:46:12', 0, 0, 39),
(235, 19, 9, 1, 'gambar_soal_235.png', 'image/png', '', 'gja_235.png#####', 'gjb_235.png#####', 'gjc_235.png#####', 'gjd_235.png#####', 'gje_235.png#####', 'C', '2019-01-12 12:46:12', 0, 0, 48),
(236, 19, 9, 1, 'gambar_soal_236.png', 'image/png', '', 'gja_236.png#####', 'gjb_236.png#####', 'gjc_236.png#####', 'gjd_236.png#####', 'gje_236.png#####', 'C', '2019-01-12 12:46:12', 0, 0, 38),
(237, 19, 9, 1, 'gambar_soal_237.png', 'image/png', '', '#####<p>40</p>\r\n', '#####<p>44</p>\r\n', '#####<p>50</p>\r\n', '#####<p>56</p>\r\n', '#####<p>60</p>\r\n', 'E', '2019-01-12 12:46:12', 0, 0, 39),
(238, 19, 9, 1, 'gambar_soal_238.png', 'image/png', '', '#####<p>12</p>\r\n', '#####<p>16</p>\r\n', '#####<p>28</p>\r\n', '#####<p>40</p>\r\n', '#####<p>44</p>\r\n', 'D', '2019-01-12 12:46:12', 0, 0, 44),
(239, 19, 9, 1, 'gambar_soal_239.png', 'image/png', '', 'gja_239.png#####', 'gjb_239.png#####', 'gjc_239.png#####', 'gjd_239.png#####', 'gje_239.png#####', 'B', '2019-01-12 12:46:12', 0, 0, 44),
(240, 19, 9, 1, 'gambar_soal_240.png', 'image/png', '', '#####<p>-38</p>\r\n', '#####<p>8</p>\r\n', '#####<p>24</p>\r\n', '#####<p>27</p>\r\n', '#####<p>29</p>\r\n', 'C', '2019-01-12 12:46:12', 0, 0, 44),
(241, 19, 9, 1, 'gambar_soal_241.png', 'image/png', '', 'gja_241.png#####', 'gjb_241.png#####', 'gjc_241.png#####', 'gjd_241.png#####', 'gje_241.png#####', 'C', '2019-01-12 12:46:12', 0, 0, 44),
(242, 19, 9, 1, 'gambar_soal_242.png', 'image/png', '', '#####<p>16 cm</p>\r\n', '#####<p>17 cm</p>\r\n', '#####<p>18 cm</p>\r\n', '#####<p>20 cm</p>\r\n', '#####<p>21 cm</p>\r\n', 'B', '2019-01-12 12:46:12', 0, 0, 46),
(243, 19, 9, 1, 'gambar_soal_243.png', 'image/png', '', 'gja_243.png#####', 'gjb_243.png#####', 'gjc_243.png#####', 'gjd_243.png#####', 'gje_243.png#####', 'A', '2019-01-12 12:46:12', 0, 0, 46),
(244, 19, 9, 1, 'gambar_soal_244.png', 'image/png', '', 'gja_244.png#####', 'gjb_244.png#####', 'gjc_244.png#####', 'gjd_244.png#####', 'gje_244.png#####', 'E', '2019-01-12 12:46:12', 0, 0, 43),
(245, 19, 9, 1, 'gambar_soal_245.png', 'image/png', '', '#####<p>2x + 3y &ndash; 5 = 0</p>\r\n', '#####<p>2x &ndash; 3y + 5 = 0</p>\r\n', '#####<p>3x &ndash; 2y +5 = 0</p>\r\n', '#####<p>2y + 3x &ndash; 5 = 0</p>\r\n', '#####<p>&ndash;2y &ndash; 3x &ndash; 5 = 0</p>\r\n', 'E', '2019-01-12 12:46:12', 0, 0, 59),
(246, 19, 9, 1, 'gambar_soal_246.png', 'image/png', '', 'gja_246.PNG#####', 'gjb_246.PNG#####', 'gjc_246.PNG#####', 'gjd_246.PNG#####', 'gje_246.PNG#####', 'A', '2019-01-12 12:46:12', 0, 0, 50),
(247, 19, 9, 1, 'gambar_soal_247.png', 'image/png', '', '#####<p>Un = -4n + 2</p>\r\n', '#####<p>Un = 4n &ndash; 10</p>\r\n', '#####<p>Un = -18 + 4n</p>\r\n', '#####<p>Un = -10 &ndash; 4</p>\r\n', '#####<p>Un = 10 &ndash; 4n</p>\r\n', 'C', '2019-01-12 12:46:12', 0, 0, 40),
(248, 19, 9, 1, 'gambar_soal_248.png', 'image/png', '', '#####<p>23100000</p>\r\n', '#####<p>36300000</p>\r\n', '#####<p>36500000</p>\r\n', '#####<p>37200000</p>\r\n', '#####<p>72600000</p>\r\n', 'B', '2019-01-12 12:46:12', 0, 0, 40),
(249, 19, 9, 1, 'gambar_soal_249.png', 'image/png', '', '#####<p>35</p>\r\n', '#####<p>40</p>\r\n', '#####<p>42</p>\r\n', '#####<p>45</p>\r\n', '#####<p>48</p>\r\n', 'B', '2019-01-12 12:46:12', 0, 0, 41),
(250, 19, 9, 1, 'gambar_soal_250.png', 'image/png', '', '#####<p>1190</p>\r\n', '#####<p>1090</p>\r\n', '#####<p>695</p>\r\n', '#####<p>595</p>\r\n', '#####<p>559</p>\r\n', 'D', '2019-01-12 12:46:12', 0, 0, 51),
(251, 19, 9, 1, 'gambar_soal_251.png', 'image/png', '', '#####<p>5x + y &ndash; 26 = 0</p>\r\n', '#####<p>5x &ndash; y &ndash; 26 = 0</p>\r\n', '#####<p>5x &ndash;y + 26 = 0</p>\r\n', '#####<p>5x + y + 26 = 0</p>\r\n', '#####<p>. x &ndash; 5y &ndash; 26 = 0</p>\r\n', 'B', '2019-01-12 12:46:12', 0, 0, 49),
(252, 19, 9, 1, 'gambar_soal_252.png', 'image/png', '', '#####<p>57, 0</p>\r\n', '#####<p>57, 5</p>\r\n', '#####<p>57, 8</p>\r\n', '#####<p>58, 0</p>\r\n', '#####<p>58, 2</p>\r\n', 'B', '2019-01-12 12:46:12', 0, 0, 52),
(253, 19, 9, 1, 'gambar_soal_253.png', 'image/png', '', '#####<p>1.71</p>\r\n', '#####<p>1.75</p>\r\n', '#####<p>1.82</p>\r\n', '#####<p>1.85</p>\r\n', '#####<p>1.91</p>\r\n', 'A', '2019-01-12 12:46:12', 0, 0, 52),
(254, 19, 9, 1, 'gambar_soal_254.png', 'image/png', '', 'gja_254.png#####', 'gjb_254.png#####', 'gjc_254.png#####', 'gjd_254.png#####', 'gje_254.png#####', 'A', '2019-01-12 12:46:12', 0, 0, 54),
(255, 19, 9, 1, 'gambar_soal_255.png', 'image/png', '', '#####<p>&ndash; 25.(2x + 7)&ndash;2</p>\r\n', '#####<p>&ndash; 17.(2x + 7)&ndash;2</p>\r\n', '#####<p>11.(2x + 7)&ndash;2</p>\r\n', '#####<p>20.(2x + 7)&ndash;2</p>\r\n', '#####<p>25.(2x + 7)&ndash;2</p>\r\n', 'E', '2019-01-12 12:46:12', 0, 0, 55),
(256, 19, 9, 1, 'gambar_soal_256.png', 'image/png', '', '#####<p>x &lt; 1 atau x &gt; 2</p>\r\n', '#####<p>x &lt; -2 atau x &gt; -1</p>\r\n', '#####<p>x &lt; 1 atau x &gt; -2</p>\r\n', '#####<p>-1 &lt; x &lt; 2</p>\r\n', '#####<p>1 &lt; x &lt; 2</p>\r\n', 'A', '2019-01-12 12:46:12', 0, 0, 56),
(257, 19, 9, 1, 'gambar_soal_257.png', 'image/png', '', 'gja_257.png#####', 'gjb_257.png#####', 'gjc_257.png#####', 'gjd_257.png#####', 'gje_257.png#####', 'A', '2019-01-12 12:46:12', 0, 0, 57),
(258, 19, 9, 1, 'gambar_soal_258.png', 'image/png', '', 'gja_258.png#####', 'gjb_258.png#####', 'gjc_258.png#####', 'gjd_258.png#####', 'gje_258.png#####', 'E', '2019-01-12 12:46:12', 0, 0, 59),
(259, 19, 9, 1, 'gambar_soal_259.png', 'image/png', '', 'gja_259.png#####', 'gjb_259.png#####', 'gjc_259.png#####', 'gjd_259.png#####', 'gje_259.png#####', 'C', '2019-01-12 12:46:12', 0, 0, 54),
(260, 19, 9, 1, 'gambar_soal_260.png', 'image/png', '', 'gja_260.png#####', 'gjb_260.png#####', 'gjc_260.png#####', 'gjd_260.png#####', 'gje_260.png#####', 'D', '2019-01-12 12:46:12', 0, 0, 42),
(261, 19, 9, 1, 'gambar_soal_261.png', 'image/png', '', 'gja_261.png#####', 'gjb_261.png#####', 'gjc_261.png#####', 'gjd_261.png#####', 'gje_261.png#####', 'C', '2019-01-12 12:46:12', 0, 0, 51),
(262, 19, 9, 1, 'gambar_soal_262.png', 'image/png', '', '#####<p>68.84</p>\r\n', '#####<p>69.34</p>\r\n', '#####<p>69.95</p>\r\n', '#####<p>70.45</p>\r\n', '#####<p>70.95</p>\r\n', 'A', '2019-01-12 12:46:12', 0, 0, 53),
(263, 19, 9, 1, 'gambar_soal_263.png', 'image/png', '', '#####<p>(2, -13)</p>\r\n', '#####<p>(1, -6)</p>\r\n', '#####<p>(-1, 14)</p>\r\n', '#####<p>(-1, 15)</p>\r\n', '#####<p>(-2, 3)</p>\r\n', 'C', '2019-01-12 12:46:12', 0, 0, 56),
(264, 19, 8, 1, 'gambar_soal_264.mp3', 'audio/mp3', '<p>PART I Directions: For each question, you will see a picture in test book and you will hear for short statements. The statements will be spoken just one time. They will not be printed in your test book, so you must listen carefully to understand what the speaker says. When you hear the four statements, look at the picture in your test book and choose the statement that best describe what you see in the picture. Then, on your answer sheet, find the number of the question and mark your answer</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://115.124.76.242/aplikasi-evaluasi-siswa/upload/soal_gambar/soal1.png\" style=\"height:231px; width:354px\" /></p>\r\n', '#####', '#####', '#####', '#####', '#####<p>.</p>\r\n', 'C', '2019-01-12 13:36:02', 0, 0, 30),
(265, 19, 8, 1, 'gambar_soal_265.mp3', 'audio/mp3', '<p>PART I Directions: For each question, you will see a picture in test book and you will hear for short statements. The statements will be spoken just one time. They will not be printed in your test book, so you must listen carefully to understand what the speaker says. When you hear the four statements, look at the picture in your test book and choose the statement that best describe what you see in the picture. Then, on your answer sheet, find the number of the question and mark your answer.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/aplikasi-evaluasi-siswa/upload/soal_gambar/soal2.png\" style=\"height:194px; width:350px\" /></p>\r\n', '#####', '#####', '#####', '#####', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 30),
(266, 19, 8, 1, 'gambar_soal_266.mp3', 'audio/mp3', '<p>PART I Directions: For each question, you will see a picture in test book and you will hear for short statements. The statements will be spoken just one time. They will not be printed in your test book, so you must listen carefully to understand what the speaker says. When you hear the four statements, look at the picture in your test book and choose the statement that best describe what you see in the picture. Then, on your answer sheet, find the number of the question and mark your answer.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/aplikasi-evaluasi-siswa/upload/soal_gambar/soal3.png\" style=\"height:195px; width:347px\" /></p>\r\n', '#####', '#####', '#####', '#####', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 30),
(267, 19, 8, 1, 'gambar_soal_267.mp3', 'audio/mp3', '<p>PART II Directions: In this part of the test, you will hear a question spoken in English. The questions and the responses will be spoken just one time. They will not be printed in your test book, so you must listen carefully to understand what the speakers say. You are to choose the best response to each question. Now listen to a sample question. You will hear : Good morning, John. How are you? You will also hear : A. I am fine, thank you B. Im in the living room. C. My name is John. The best response to the question How are you? is choice (A), I am fine, thank you. Therefore, you should choose answer (A). Mark your answer on your answer sheet.</p>\r\n', '#####', '#####', '#####', '#####', '#####<p>.</p>\r\n', 'C', '2019-01-12 13:36:02', 0, 0, 30),
(268, 19, 8, 1, 'gambar_soal_268.mp3', 'audio/mp3', '<p>PART II Directions: In this part of the test, you will hear a question spoken in English. The questions and the responses will be spoken just one time. They will not be printed in your test book, so you must listen carefully to understand what the speakers say. You are to choose the best response to each question. Now listen to a sample question. You will hear : Good morning, John. How are you? You will also hear : A. I am fine, thank you B. Im in the living room. C. My name is John. The best response to the question How are you? is choice (A), I am fine, thank you. Therefore, you should choose answer (A). Mark your answer on your answer sheet.</p>\r\n', '#####', '#####', '#####', '#####', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 30),
(269, 19, 8, 1, 'gambar_soal_269.mp3', 'audio/mp3', '<p>PART II Directions: In this part of the test, you will hear a question spoken in English. The questions and the responses will be spoken just one time. They will not be printed in your test book, so you must listen carefully to understand what the speakers say. You are to choose the best response to each question. Now listen to a sample question. You will hear : Good morning, John. How are you? You will also hear : A. I am fine, thank you B. Im in the living room. C. My name is John. The best response to the question How are you? is choice (A), I am fine, thank you. Therefore, you should choose answer (A). Mark your answer on your answer sheet.</p>\r\n', '#####', '#####', '#####', '#####', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 30),
(270, 19, 8, 1, 'gambar_soal_270.mp3', 'audio/mp3', '<p>PART II Directions: In this part of the test, you will hear a question spoken in English. The questions and the responses will be spoken just one time. They will not be printed in your test book, so you must listen carefully to understand what the speakers say. You are to choose the best response to each question. Now listen to a sample question. You will hear : Good morning, John. How are you? You will also hear : A. I am fine, thank you B. Im in the living room. C. My name is John. The best response to the question How are you? is choice (A), I am fine, thank you. Therefore, you should choose answer (A). Mark your answer on your answer sheet.</p>\r\n', '#####', '#####', '#####', '#####', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 30),
(271, 19, 8, 1, 'gambar_soal_271.mp3', 'audio/mp3', '<p>PART III Directions: In this part of the test, you will hear several short conversations between two people. The conversations will not be printed in your test book. You will hear the conversations only once, so you must listen carefully to understand what the speakers say. In your test book, you will read a question about each conversation. The questions will be followed by four answers. You are to choose the best answer to each question and mark it on your answer sheet.</p>\r\n\r\n<p>Who is complaining?</p>\r\n', '#####<p>The boss</p>\r\n', '#####<p>The temporary secretary.</p>\r\n', '#####<p>The office doctor</p>\r\n', '#####<p>The sick secretary</p>\r\n', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 32),
(272, 19, 8, 1, 'gambar_soal_272.mp3', 'audio/mp3', '<p>PART III Directions: In this part of the test, you will hear several short conversations between two people. The conversations will not be printed in your test book. You will hear the conversations only once, so you must listen carefully to understand what the speakers say. In your test book, you will read a question about each conversation. The questions will be followed by four answers. You are to choose the best answer to each question and mark it on your answer sheet.</p>\r\n\r\n<p>What has been taken?</p>\r\n', '#####<p>Paper supplies</p>\r\n', '#####<p>Chemicals</p>\r\n', '#####<p>Trade secrets</p>\r\n', '#####<p>Money</p>\r\n', '#####<p>.</p>\r\n', 'D', '2019-01-12 13:36:02', 0, 0, 32),
(273, 19, 8, 1, 'gambar_soal_273.mp3', 'audio/mp3', '<p>PART III Directions: In this part of the test, you will hear several short conversations between two people. The conversations will not be printed in your test book. You will hear the conversations only once, so you must listen carefully to understand what the speakers say. In your test book, you will read a question about each conversation. The questions will be followed by four answers. You are to choose the best answer to each question and mark it on your answer sheet.</p>\r\n\r\n<p>When did the woman&#39;s father start the business?</p>\r\n', '#####<p>After he finished school.</p>\r\n', '#####<p>After he served in the army</p>\r\n', '#####<p>When he came to this country.</p>\r\n', '#####<p>During the war.</p>\r\n', '#####<p>.</p>\r\n', 'C', '2019-01-12 13:36:02', 0, 0, 32),
(274, 19, 8, 1, 'gambar_soal_274.mp3', 'audio/mp3', '<p>PART III Directions: In this part of the test, you will hear several short conversations between two people. The conversations will not be printed in your test book. You will hear the conversations only once, so you must listen carefully to understand what the speakers say. In your test book, you will read a question about each conversation. The questions will be followed by four answers. You are to choose the best answer to each question and mark it on your answer sheet.</p>\r\n\r\n<p>What is the nature of the visit?</p>\r\n', '#####<p>Business</p>\r\n', '#####<p>Tourism</p>\r\n', '#####<p>Education</p>\r\n', '#####<p>Personal</p>\r\n', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 32),
(275, 19, 8, 1, 'gambar_soal_275.mp3', 'audio/mp3', '<p>PART IV Directions: In this part of the test, you will hear several short talks. Each will be spoken just one time. They will not be printed in your test book, so you must listen carefully to understand and remember what is said. In your test book, you will read two or more questions about each short talk. The questions will be followed by four answers. You are to choose the best answer to each question and mark it on your answer sheet.</p>\r\n', '#####<p>(A) In the mornings.</p>\r\n', '#####<p>(B) In the afternoons. .</p>\r\n', '#####<p>(C) In the evenings.</p>\r\n', '#####<p>(D) On weekends.</p>\r\n', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 26),
(276, 19, 8, 1, 'gambar_soal_276.mp3', 'audio/mp3', '<p>PART IV Directions: In this part of the test, you will hear several short talks. Each will be spoken just one time. They will not be printed in your test book, so you must listen carefully to understand and remember what is said. In your test book, you will read two or more questions about each short talk. The questions will be followed by four answers. You are to choose the best answer to each question and mark it on your answer sheet.</p>\r\n', '#####<p>(A) A radio.</p>\r\n', '#####<p>(B) An umbrella.</p>\r\n', '#####<p>(C) A roll.</p>\r\n', '#####<p>(D) A bus.</p>\r\n', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 26),
(277, 19, 8, 1, 'gambar_soal_277.mp3', 'audio/mp3', '<p>PART IV Directions: In this part of the test, you will hear several short talks. Each will be spoken just one time. They will not be printed in your test book, so you must listen carefully to understand and remember what is said. In your test book, you will read two or more questions about each short talk. The questions will be followed by four answers. You are to choose the best answer to each question and mark it on your answer sheet.</p>\r\n', '#####<p>(A) Schoolchildren.</p>\r\n', '#####<p>(B) A flier.</p>\r\n', '#####<p>(C) Two residents.</p>\r\n', '#####<p>(D) Two reporters</p>\r\n', '#####<p>.</p>\r\n', 'C', '2019-01-12 13:36:02', 0, 0, 26),
(278, 19, 8, 1, 'gambar_soal_278.mp3', 'audio/mp3', '<p>PART IV Directions: In this part of the test, you will hear several short talks. Each will be spoken just one time. They will not be printed in your test book, so you must listen carefully to understand and remember what is said. In your test book, you will read two or more questions about each short talk. The questions will be followed by four answers. You are to choose the best answer to each question and mark it on your answer sheet.</p>\r\n', '#####<p>(A) Some fliers were identified.</p>\r\n', '#####<p>(B) Spaceships were sighted.</p>\r\n', '#####<p>(C) Two men flew in space.</p>\r\n', '#####<p>(D) An investigation took place</p>\r\n', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 26),
(279, 19, 8, 1, '', '', '<p>This text is for questions number 16 to 18.</p>\r\n\r\n<p>Sweden is a very large country in Northern Europe. Every year tourists come from all over the world to visit Sweden&rsquo;s cities to see the interesting sights and enjoy the outdoors. A tourist planning a trip to Sweden can choose various activities to do. People who enjoy city life can visit Stockholm, Sweden&rsquo;s capital. Stockholm is a beautiful city of islands. In Stockholm, tourists can visit its many beautiful old castles and churches. They can shop, enjoy the art, or see a movie or a play. Tourists who enjoy outdoor lifestyle can find plenty to see and do in Sweden. Forests cover 50 percent of the land and are home to many wild animals, such as bears, elks, foxes, and reindeers. There are 96.000 lakes in Sweden. In north, there is a long range of tall mountains. Adventurous travellers may want to explore the beautiful wilderness that Sweden has to offer. There are several different kinds of lodging in Sweden. Travellers can stay at luxurious hotels with many guest rooms, or they can choose to stay at small country inns, where they may be served home-cooked breakfast. Those who want to save money and enjoy nature can stay at campsites and sleep outdoors under the trees in a sleeping bag.</p>\r\n\r\n<p>Why does the writer compose this passage?</p>\r\n', '#####<p>To give information about Sweden</p>\r\n', '#####<p>To persuade readers to visit Sweden</p>\r\n', '#####<p>To explain about the weather in Sweden</p>\r\n', '#####<p>To influence people to come to Sweden</p>\r\n', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 26),
(280, 19, 8, 1, '', '', '<p>This text is for questions number 16 to 18.</p>\r\n\r\n<p>Sweden is a very large country in Northern Europe. Every year tourists come from all over the world to visit Sweden&rsquo;s cities to see the interesting sights and enjoy the outdoors. A tourist planning a trip to Sweden can choose various activities to do. People who enjoy city life can visit Stockholm, Sweden&rsquo;s capital. Stockholm is a beautiful city of islands. In Stockholm, tourists can visit its many beautiful old castles and churches. They can shop, enjoy the art, or see a movie or a play. Tourists who enjoy outdoor lifestyle can find plenty to see and do in Sweden. Forests cover 50 percent of the land and are home to many wild animals, such as bears, elks, foxes, and reindeers. There are 96.000 lakes in Sweden. In north, there is a long range of tall mountains. Adventurous travellers may want to explore the beautiful wilderness that Sweden has to offer. There are several different kinds of lodging in Sweden. Travellers can stay at luxurious hotels with many guest rooms, or they can choose to stay at small country inns, where they may be served home-cooked breakfast. Those who want to save money and enjoy nature can stay at campsites and sleep outdoors under the trees in a sleeping bag.</p>\r\n\r\n<p>What does the writer think about Sweden?</p>\r\n', '#####<p>Stockholm is a perfect place to enjoy nature.</p>\r\n', '#####<p>Wild animals inhabit the long range of mountain.</p>\r\n', '#####<p>All hotel will provide guest with home-cooked breakfast.</p>\r\n', '#####<p>We could not sleep under the trees in a sleeping bag in Sweden.</p>\r\n', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 26),
(281, 19, 8, 1, '', '', '<p>This text is for questions number 16 to 18.</p>\r\n\r\n<p>Sweden is a very large country in Northern Europe. Every year tourists come from all over the world to visit Sweden&rsquo;s cities to see the interesting sights and enjoy the outdoors. A tourist planning a trip to Sweden can choose various activities to do. People who enjoy city life can visit Stockholm, Sweden&rsquo;s capital. Stockholm is a beautiful city of islands. In Stockholm, tourists can visit its many beautiful old castles and churches. They can shop, enjoy the art, or see a movie or a play. Tourists who enjoy outdoor lifestyle can find plenty to see and do in Sweden. Forests cover 50 percent of the land and are home to many wild animals, such as bears, elks, foxes, and reindeers. There are 96.000 lakes in Sweden. In north, there is a long range of tall mountains. Adventurous travellers may want to explore the beautiful wilderness that Sweden has to offer. There are several different kinds of lodging in Sweden. Travellers can stay at luxurious hotels with many guest rooms, or they can choose to stay at small country inns, where they may be served home-cooked breakfast. Those who want to save money and enjoy nature can stay at campsites and sleep outdoors under the trees in a sleeping bag.</p>\r\n\r\n<p>&ldquo;Adventurous travellers will want to explore ...&rdquo; (paragraph 3). The &quot;<strong><em>Adventurous&quot;&nbsp;</em></strong>word means &hellip;.</p>\r\n', '#####<p>audacious</p>\r\n', '#####<p>hazardous</p>\r\n', '#####<p>dangerous</p>\r\n', '#####<p>courageous</p>\r\n', '#####<p>.</p>\r\n', 'D', '2019-01-12 13:36:02', 0, 0, 26),
(282, 19, 8, 1, '', '', '<p>Donald John Trump, Sr. (born June 14, 1946) is an American businessperson and media personality. He is the chairman and president of The Trump Organization and the founder of Trump Entertainment Resorts. Trump&#39;s career, branding efforts, personal life, wealth, and outspoken manner have made him famous throughout the country. Since 2015, he is also the front-running candidate for the Republican nomination for President of the United States in the 2016 election. Trump is a native of New York City and a son of Fred Trump, who inspired him to enter real estate development. After two years at Fordham University and while studying at Wharton School of the University of Pennsylvania, Trump worked for his father&#39;s firm, Elizabeth Trump &amp; Son. Upon graduating in 1968 he joined the company, and in 1971 was given control, renaming the company &quot;The Trump Organization&quot;. Source from www.wikipedia.org</p>\r\n\r\n<p>Which statement is NOT TRUE according to text?</p>\r\n', '#####<p>Trump is a native of Alaska.</p>\r\n', '#####<p>Trump is a native of New York City.</p>\r\n', '#####<p>He is the chairman of The Trump Organization.</p>\r\n', '#####<p>He renamed the company &ldquo;The Trump Organization&rdquo;.</p>\r\n', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 34),
(283, 19, 8, 1, '', '', '<p>Dear Mr. Fairburn,</p>\r\n\r\n<p>Responding to your advertisement in last Tuesday&rsquo;s Guardian newspaper for a trainee accounts manager, please find enclosed my CV. I am interested in the job advertised because your company is well known as a world leader in creating innovative products.</p>\r\n\r\n<p>As a recent graduate, I am well aware that I have much to learn and it is exactly this kind of challenging environment that I am seeking. You will also see from my CV that I am a person who result oriented. The achievements that I mostly proud about are raising over &pound;15,000 for a local charity and finishing the London Marathon.</p>\r\n\r\n<p>Regarding other requirements, I believe I am a suitable candidate for the position because:</p>\r\n\r\n<ul>\r\n	<li>I hold a degree in Economic</li>\r\n	<li>I am flexible about working hours</li>\r\n	<li>I have good organisational skills</li>\r\n</ul>\r\n\r\n<p>I am also available for interview at any time convenient to you. Please don&rsquo;t hesitate to contact me at any time by phone or in writing if you have further questions.</p>\r\n\r\n<p>Yours sincerely,</p>\r\n\r\n<p>Philip Morrissey</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>What is the reason Philip Morrissey wrote this letter?</p>\r\n', '#####<p>To inform about a job vacancy to Mr. Fairburn</p>\r\n', '#####<p>To put on an advertisement in Guardian newspaper</p>\r\n', '#####<p>To promote and raising fund for the London Marathon</p>\r\n', '#####<p>To apply for a position as a trainee accounts manager</p>\r\n', '#####<p>.</p>\r\n', 'D', '2019-01-12 13:36:02', 0, 0, 28),
(284, 19, 8, 1, '', '', '<p>Dear Mr. Fairburn,</p>\r\n\r\n<p>Responding to your advertisement in last Tuesday&rsquo;s Guardian newspaper for a trainee accounts manager, please find enclosed my CV. I am interested in the job advertised because your company is well known as a world leader in creating innovative products.</p>\r\n\r\n<p>As a recent graduate, I am well aware that I have much to learn and it is exactly this kind of challenging environment that I am seeking. You will also see from my CV that I am a person who result oriented. The achievements that I mostly proud about are raising over &pound;15,000 for a local charity and finishing the London Marathon.</p>\r\n\r\n<p>Regarding other requirements, I believe I am a suitable candidate for the position because:</p>\r\n\r\n<ul>\r\n	<li>I hold a degree in Economic</li>\r\n	<li>I am flexible about working hours</li>\r\n	<li>I have good organisational skills</li>\r\n</ul>\r\n\r\n<p>I am also available for interview at any time convenient to you. Please don&rsquo;t hesitate to contact me at any time by phone or in writing if you have further questions.</p>\r\n\r\n<p>Yours sincerely,</p>\r\n\r\n<p>Philip Morrissey</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>What will Mr. Fairburn do after reading the letter?</p>\r\n', '#####<p>Giving Philip a job that he wants</p>\r\n', '#####<p>Asking Philip to join the marathon</p>\r\n', '#####<p>Training Philip as new an account manager</p>\r\n', '#####<p>Giving Philip an interview</p>\r\n', '#####<p>.</p>\r\n', 'D', '2019-01-12 13:36:02', 0, 0, 28),
(285, 19, 8, 1, '', '', '<p>Dear Mr. Fairburn,</p>\r\n\r\n<p>Responding to your advertisement in last Tuesday&rsquo;s Guardian newspaper for a trainee accounts manager, please find enclosed my CV. I am interested in the job advertised because your company is well known as a world leader in creating innovative products.</p>\r\n\r\n<p>As a recent graduate, I am well aware that I have much to learn and it is exactly this kind of challenging environment that I am seeking. You will also see from my CV that I am a person who result oriented. The achievements that I mostly proud about are raising over &pound;15,000 for a local charity and finishing the London Marathon.</p>\r\n\r\n<p>Regarding other requirements, I believe I am a suitable candidate for the position because:</p>\r\n\r\n<ul>\r\n	<li>I hold a degree in Economic</li>\r\n	<li>I am flexible about working hours</li>\r\n	<li>I have good organisational skills</li>\r\n</ul>\r\n\r\n<p>I am also available for interview at any time convenient to you. Please don&rsquo;t hesitate to contact me at any time by phone or in writing if you have further questions.</p>\r\n\r\n<p>Yours sincerely,</p>\r\n\r\n<p>Philip Morrissey</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;I am flexible about working hours &quot;</p>\r\n\r\n<p>From this sentence, we know that Philip Morrissey &hellip;.</p>\r\n', '#####<p>is willing to work overtime</p>\r\n', '#####<p>has a very flexible type of body</p>\r\n', '#####<p>enjoy working very much</p>\r\n', '#####<p>has a certain working hours</p>\r\n', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 28),
(286, 19, 8, 1, '', '', '<p>This text is for questions number 23 - 25</p>\r\n\r\n<p>1. Remove the shredder from its cartoon and unwind the cord to its full length.</p>\r\n\r\n<p>2. Place its waste bin on a firm and stable surface in up right position.</p>\r\n\r\n<p>3. Take the main unit by holding each side and put it on top of its waste bin. 4. Make sure the function switch is in the OFF position.</p>\r\n\r\n<p>5. Connect the plug to the 220 &ndash; 240 VA.</p>\r\n\r\n<p>6. To use auto remote turn the function switch to AUTO.</p>\r\n\r\n<p>7. Put the paper into the input slot, the micro-switch in the input slot will then indicate the machine to start shredding the paper.</p>\r\n\r\n<p>8. Once all the paper has been shredded it will stop automatically.</p>\r\n\r\n<p>Who would likely read this manual is likely the manual intended for?</p>\r\n', '#####<p>Mechanic</p>\r\n', '#####<p>Housewife</p>\r\n', '#####<p>Driver</p>\r\n', '#####<p>Office worker</p>\r\n', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 31),
(287, 19, 8, 1, '', '', '<p>This text is for questions number 23 - 25</p>\r\n\r\n<p>1. Remove the shredder from its cartoon and unwind the cord to its full length.</p>\r\n\r\n<p>2. Place its waste bin on a firm and stable surface in up right position.</p>\r\n\r\n<p>3. Take the main unit by holding each side and put it on top of its waste bin. 4. Make sure the function switch is in the OFF position.</p>\r\n\r\n<p>5. Connect the plug to the 220 &ndash; 240 VA.</p>\r\n\r\n<p>6. To use auto remote turn the function switch to AUTO.</p>\r\n\r\n<p>7. Put the paper into the input slot, the micro-switch in the input slot will then indicate the machine to start shredding the paper.</p>\r\n\r\n<p>8. Once all the paper has been shredded it will stop automatically.</p>\r\n\r\n<p>What should we do before connecting the plug?</p>\r\n', '#####<p>Put it onto the waste bin.</p>\r\n', '#####<p>Unwind the cord to its full length.</p>\r\n', '#####<p>Make sure the function switch is off.</p>\r\n', '#####<p>Remove the shredder from its cartoon.</p>\r\n', '#####<p>.</p>\r\n', 'C', '2019-01-12 13:36:02', 0, 0, 31),
(288, 19, 8, 1, '', '', '<p>This text is for questions number 23 - 25</p>\r\n\r\n<p>1. Remove the shredder from its cartoon and unwind the cord to its full length.</p>\r\n\r\n<p>2. Place its waste bin on a firm and stable surface in up right position.</p>\r\n\r\n<p>3. Take the main unit by holding each side and put it on top of its waste bin. 4. Make sure the function switch is in the OFF position.</p>\r\n\r\n<p>5. Connect the plug to the 220 &ndash; 240 VA.</p>\r\n\r\n<p>6. To use auto remote turn the function switch to AUTO.</p>\r\n\r\n<p>7. Put the paper into the input slot, the micro-switch in the input slot will then indicate the machine to start shredding the paper.</p>\r\n\r\n<p>8. Once all the paper has been shredded it will stop automatically.</p>\r\n\r\n<p>&ldquo;Remove the shredder from its cartoon and&nbsp; <em>unwind</em><em>&nbsp;</em>the cord &hellip;&rdquo; (step 1) The &quot;<em>unwind&quot;</em><em>&nbsp;</em> has the similar meaning with ....</p>\r\n', '#####<p>unwrap</p>\r\n', '#####<p>strain</p>\r\n', '#####<p>lead</p>\r\n', '#####<p>unfasten</p>\r\n', '#####<p>.</p>\r\n', 'D', '2019-01-12 13:36:02', 0, 0, 31),
(289, 19, 8, 1, '', '', '<p>Andre : What do you usually do in the evening?</p>\r\n\r\n<p>Cindy : I arrive at home at 4 p.m. After having a bath, I read my favorite book while listening to the radio. Then, I have dinner with my family and do my assignments</p>\r\n\r\n<p>From the dialogue, we can conclude that Cindy ....</p>\r\n', '#####<p>A. usually reads a book in the evening</p>\r\n', '#####<p>B. has dinner as soon as she gets home</p>\r\n', '#####<p>C. listens to the radio while having a bath</p>\r\n', '#####<p>D. does her assignments while having dinner</p>\r\n', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 23),
(290, 19, 8, 1, '', '', '<p>Hans : What does your father do?</p>\r\n\r\n<p>Nita : He&rsquo;s a teacher. He&rsquo;s quite passionate in his profession.</p>\r\n\r\n<p>Hans : How long has he been teaching? Nita : More than fifteen years, I guess.</p>\r\n\r\n<p>Hans : He must be very full of dedication.</p>\r\n\r\n<p>What does Nita say about her father?...</p>\r\n', '#####<p>He is a dedicated teacher.</p>\r\n', '#####<p>He really loves his job</p>\r\n', '#####<p>He is an old teacher</p>\r\n', '#####<p>He dislikes teaching</p>\r\n', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 23),
(291, 19, 8, 1, '', '', '<p>Boy : Some of our friends will join the concert tomorrow. Would you like to go with me?</p>\r\n\r\n<p>Sinta : &hellip; It will be very interesting. I need to refresh my mind this time.</p>\r\n\r\n<p>The suitable expression to complete the dialogue is &hellip;</p>\r\n', '#####<p>I&rsquo;d love to but I don&rsquo;t think I could come</p>\r\n', '#####<p>I&rsquo;m really sorry. I already have my own plan</p>\r\n', '#####<p>Well, I&rsquo;m not sure</p>\r\n', '#####<p>What&rsquo;s a great idea!</p>\r\n', '#####<p>.</p>\r\n', 'D', '2019-01-12 13:36:02', 0, 0, 25),
(292, 19, 8, 1, '', '', '<p>Harry : This room is so hot? Did you turned off the air conditioner?</p>\r\n\r\n<p>Widia : No, it&rsquo;s on. I think it might be broken.</p>\r\n\r\n<p>Harry : I don&rsquo;t think so. I remember that we bought the same brand and type; and mine is working well. Maybe your air conditioner needs to be cleaned.</p>\r\n\r\n<p>Widia : I think you&rsquo;re right. It was more than six months ago since the last time I got it cleaned.</p>\r\n\r\n<p>Harry : You&rsquo;d better do that soon before it&rsquo;s getting worse.</p>\r\n\r\n<p>Widia : Thanks for your suggestion. I will do that this weekend.</p>\r\n\r\n<p>What are they talking about?</p>\r\n', '#####<p>the weather</p>\r\n', '#####<p>the air conditioner</p>\r\n', '#####<p>the electrician</p>\r\n', '#####<p>the air conditioner brand</p>\r\n', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 23),
(293, 19, 8, 1, '', '', '<p>Dito : This book is only Rp.1,500, I want to buy it. Sony : Yes, &hellip;..it&rsquo;s cheap enough for us.</p>\r\n', '#####<p>I agree with you</p>\r\n', '#####<p>I don&rsquo;t think so</p>\r\n', '#####<p>I disagree</p>\r\n', '#####<p>I am not with you</p>\r\n', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 27),
(294, 19, 8, 1, '', '', '<p>Waiter : Excuse me, Sir! ....? Angga : Yes, sure. I&rsquo;d like a glass of vanilla milkshake with strawberry ice cream on it.</p>\r\n', '#####<p>Do you want to bring some food.</p>\r\n', '#####<p>What would you like to order.</p>\r\n', '#####<p>What would you like to eat.</p>\r\n', '#####<p>Shall I get you the menu.</p>\r\n', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 23),
(295, 19, 8, 1, '', '', '<p>Jane : I often come late to work because my old car frequently breaks down. Vincent : If I were you, ....</p>\r\n', '#####<p>I will repair it myself</p>\r\n', '#####<p>I would buy a new one</p>\r\n', '#####<p>I will take it to a mechanic</p>\r\n', '#####<p>I would have bought a new one</p>\r\n', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 32);
INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `file`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`, `jml_benar`, `jml_salah`, `id_kd`) VALUES
(296, 19, 8, 1, '', '', '<p>John : Will you come to the seminar tomorrow morning? Marry : Yes, of course. But, &hellip; I must drop by the office. John : What&rsquo;s going on? Marry : I left some important documents there. John : Okay, see you tomorrow at the seminar.</p>\r\n', '#####<p>I may not go</p>\r\n', '#####<p>I can&rsquo;t be there</p>\r\n', '#####<p>I must arrive on time</p>\r\n', '#####<p>I will probably come late</p>\r\n', '#####<p>.</p>\r\n', 'D', '2019-01-12 13:36:02', 0, 0, 25),
(297, 19, 8, 1, '', '', '<p>Sherly : Have you finished with the magazine yet ? Shaun : &hellip;&hellip;&hellip;&hellip;, but it will not take too long</p>\r\n', '#####<p>Yes, it is quite expensive</p>\r\n', '#####<p>Yes, I love the cover</p>\r\n', '#####<p>No, I&rsquo;m still reading it</p>\r\n', '#####<p>I have read the article</p>\r\n', '#####<p>.</p>\r\n', 'C', '2019-01-12 13:36:02', 0, 0, 29),
(298, 19, 8, 1, '', '', '<p>Neni : You look nice! ............... Fajrin : Thank you.</p>\r\n', '#####<p>That&rsquo;s the worst dress I&rsquo;ve ever seen.</p>\r\n', '#####<p>I&rsquo;ve never seen such a beautiful dress before!</p>\r\n', '#####<p>You must be worried about that!</p>\r\n', '#####<p>That dress is bad!</p>\r\n', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 24),
(299, 19, 8, 1, '', '', '<p>Harris : That bridge looks firm and solid. Tamara : Yes. .... in 1903. I heard my great grandfather took part in the construction.</p>\r\n', '#####<p>It was built</p>\r\n', '#####<p>It was building</p>\r\n', '#####<p>It is restored</p>\r\n', '#####<p>It will be renovated</p>\r\n', '#####<p>.</p>\r\n', 'A', '2019-01-12 13:36:02', 0, 0, 24),
(300, 19, 8, 1, '', '', '<p>Winny : When did you come back from the job training program in Bangkok? Fanny : I just arrived yesterday Winny : &hellip;. Fanny : Oh, yes. I enjoyed everything there, especially the training</p>\r\n', '#####<p>Will you enjoy the training?</p>\r\n', '#####<p>Did you have a great time?</p>\r\n', '#####<p>Are you going to attend a training?</p>\r\n', '#####<p>Do you plan to go back?</p>\r\n', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 29),
(301, 19, 8, 1, '', '', '<p>For questions 38 to 40, complete the following text with the words provided. As our company &hellip;(38)&hellip;. new products and processes, health, safety and environmental considerations are a priority. We are committed to operating our manufacturing plants and research facilities &hellip;(39)&hellip; a manner that protects the environment and safeguards the health and safety of all people. We will continue to allocate money to &hellip;(40)&hellip; existing facilities as new safety information brought to light</p>\r\n', '#####<p>to plan</p>\r\n', '#####<p>plan</p>\r\n', '#####<p>plans</p>\r\n', '#####<p>planned</p>\r\n', '#####<p>.</p>\r\n', 'C', '2019-01-12 13:36:02', 0, 0, 33),
(302, 19, 8, 1, '', '', '<p>For questions 38 to 40, complete the following text with the words provided. As our company &hellip;(38)&hellip;. new products and processes, health, safety and environmental considerations are a priority. We are committed to operating our manufacturing plants and research facilities &hellip;(39)&hellip; a manner that protects the environment and safeguards the health and safety of all people. We will continue to allocate money to &hellip;(40)&hellip; existing facilities as new safety information brought to light</p>\r\n', '#####<p>of</p>\r\n', '#####<p>from</p>\r\n', '#####<p>in</p>\r\n', '#####<p>to</p>\r\n', '#####<p>.</p>\r\n', 'B', '2019-01-12 13:36:02', 0, 0, 33),
(303, 19, 8, 1, '', '', '<p>For questions 38 to 40, complete the following text with the words provided. As our company &hellip;(38)&hellip;. new products and processes, health, safety and environmental considerations are a priority. We are committed to operating our manufacturing plants and research facilities &hellip;(39)&hellip; a manner that protects the environment and safeguards the health and safety of all people. We will continue to allocate money to &hellip;(40)&hellip; existing facilities as new safety information brought to light</p>\r\n', '#####<p>improving</p>\r\n', '#####<p>improvement</p>\r\n', '#####<p>improved</p>\r\n', '#####<p>improve</p>\r\n', '#####<p>.</p>\r\n', 'D', '2019-01-12 13:36:02', 0, 0, 33),
(304, 19, 11, 1, '', '', 'Tag HTML yang digunakan untuk menyisipkan gambar adalah...', '#####<img>', '#####<src>', '#####<jpg>', '#####<image>', '#####<source>', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(305, 19, 11, 1, '', '', 'Tag HTML yang digunakan untuk memformat huruf/teks adalah...', '#####<font>', '#####<img>', '#####<table>', '#####<style>', '#####<marquee>', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(306, 19, 11, 1, '', '', 'Membuat link atau tautan ke halaman website lainnya yang benar adalah...', '#####<a haref=”www.google.com” target=”_blank”>', '#####<a name=”www.w3scools.com” target=”_self”>W3 Schools</a>', '#####<a href=”www.smktarunabangsa.sch.id”  target=”_blank”> SMK Taruna Bangsa', '#####<a href=”www.smktarunabangsa.sch.id”  target=”_blank”>SMK Taruna Bangsa</a>', '#####<a url=”www.smktarunabangsa.sch.id”  target=”_blank”>SMK Taruna Bangsa</a>', 'D', '2019-01-12 15:22:05', 0, 0, 0),
(307, 19, 11, 1, '', '', 'Tag <br> berfungsi untuk…', '#####Menebalkan huruf', '#####Memberikan warna pada huruf', '#####Membuat huruf miring', '#####Menambahkan Spasi', '#####Membuat baris baru', 'E', '2019-01-12 15:22:05', 0, 0, 0),
(308, 19, 11, 1, '', '', 'Attribut yang digunakan untuk menyatukan kolom pada tabel adalah…', '#####cellpadding', '#####border', '#####rowspan', '#####cellspacing', '#####colspan', 'E', '2019-01-12 15:22:05', 0, 0, 0),
(309, 19, 11, 1, '', '', 'Tag <td> pada tabel untuk membentuk…', '#####baris', '#####kolom', '#####cell', '#####space', '#####border', 'B', '2019-01-12 15:22:05', 0, 0, 0),
(310, 19, 11, 1, '', '', 'Didalam sebauh tabel, baris dibentuk dengan tag...', '#####<tr></tr>', '#####<td></td>', '#####<tb></tb>', '#####<br></br>', '#####<th></th>', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(311, 19, 11, 1, '', '', 'Tipe Perintah <td valign=”top”> Isi sel </td> berarti...', '#####Isi sel dalam baris menjadi rata atas', '#####Isi sel dalam kolom menjadi rata tengah', '#####Isi sel dalam kolom menjadi  rata atas', '#####Isi sel dalam baris menjadi rata bawah', '#####Isi sel dalam kolom menjadi rata bawa', 'C', '2019-01-12 15:22:05', 0, 0, 0),
(312, 19, 11, 1, '', '', 'Perintah CSS dibawah ini untuk memberikan bayangan pada tabel maupun elemen lainnya adalah...', '#####style=”border:1px solid green”', '#####style=”box-shadow:1px dotted black”', '#####style=”border-radius:1px”', '#####style=”box-shadow:3px 3px 2px black”', '#####style=”shadow-box:2px 2px 2px black”', 'D', '2019-01-12 15:22:05', 0, 0, 0),
(313, 19, 11, 1, '', '', 'Attribut face pada tag <font> untuk menentukan...', '#####warna teks', '#####ukuran teks', '#####jenis huruf     ', '#####posisi teks', '#####ketebalan huruf', 'C', '2019-01-12 15:22:05', 0, 0, 0),
(314, 19, 11, 1, '', '', 'Attribut yang digunakan untuk memasukan bahasa CSS adalah…', '#####<body>', '#####vface', '#####<font>', '#####style', '#####<script>', 'D', '2019-01-12 15:22:05', 0, 0, 0),
(315, 19, 11, 1, '', '', 'Untuk menentukan subtitle paragraph (heading) pada halaman web menggunakan tag…', '#####<h3>', '#####<br>', '#####<font>', '#####<b>', '#####<title>', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(316, 19, 11, 1, '', '', 'Yang  paling dibutuhkan dalam sistem komputer dan saling berhubungan adalah ?', '#####Floppydisk, Game port, dan Software', '#####Videocard, bus mice, dan faxboard', '#####Hardware, power supply dan serial port', '#####Hardware, Software, Brainware', '#####Motherboard , Hardisk dan Modem', 'D', '2019-01-12 15:22:05', 0, 0, 0),
(317, 19, 11, 1, '', '', 'CPU memiliki dua bagian fungsi operasional yaitu ALU dan CU, fungsi ALU adalah…', '#####Pusat pengolahan data', '#####Pengontrol kerja computer', '#####Penambah kecepatan compute', '#####Mempercepat boot', '#####Mempercepat proses copy data', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(318, 19, 11, 1, '', '', ' Gelang statis yang digunakan pada waktu merakit komputer berfungsi ....', '#####Mempermudah perakitan komputer', '#####Mempercepat perakitan komputer', '#####Menetralisir listrik statis di tubuh perakit', '#####Meningkatkan daya focus dalam perakitan', '#####Memperindah komputer', 'C', '2019-01-12 15:22:05', 0, 0, 0),
(319, 19, 11, 1, '', '', ' Menginstal Sistem Operasi Windows sebaiknya menggunakan file system…', '#####NTFS', '#####Ext3', '#####FAT16', '#####Swap', '#####Ext2FS', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(320, 19, 11, 1, '', '', ' Pengertian proses booting adalah …', '#####proses yang terjadi selama menggunakan komputer', '#####menggunakan aplikasi/software tertentu pada komputer', '#####peristiwa yang terjadi untuk memulai operasi dasar sebuah komputer', '#####peristiwa yang terjadi untuk mengakhiri operasi dasar sebuah computer', '#####proses dimana komputer mengalami kerusakan', 'C', '2019-01-12 15:22:05', 0, 0, 0),
(321, 19, 11, 1, 'gambar_soal_321.png', 'image/png', '<p>Perhatikan Gambar dibawah ini!</p>\r\n', '#####<p>Slot RAM</p>\r\n', '#####<p>PCI 2.0</p>\r\n', '#####<p>PCI Express x16</p>\r\n', '#####<p>PCI Express x1</p>\r\n', '#####<p>Slot SATA</p>\r\n', 'C', '2019-01-12 15:22:05', 0, 0, 0),
(322, 19, 11, 1, '', '', 'Karakteristik dari Entity atau relationship, yang menyediakan penjelasan detail tentang entity atau relationship tersebut disebut dengan..', '#####Entitas', '#####Normalisasi', '#####Atribut', '#####Key', '#####Sistem', 'C', '2019-01-12 15:22:05', 0, 0, 0),
(323, 19, 11, 1, '', '', 'Kumpulan data yang terorganisir, disimpan dalam suatu komputer menggunakan metode tertentu sehingga dapat menghasilkan suatu informasi, pengertian dari …', '#####Database', '#####File', '#####Sistem', '#####Data', '#####Entitas', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(324, 19, 11, 1, '', '', ' Simbol dari ERD yang menunjukan kunci atribut adalah…', '#####Isinya Gambar', '#####Isinya Gambar', '#####Isinya Gambar', '#####Isinya Gambar', '#####Isinya Gambar', 'B', '2019-01-12 15:22:05', 0, 0, 0),
(325, 19, 11, 1, '', '', 'Pada DBMS untuk melakukan permintaan data yang kita inginkan dilakukan dengan bahasa…', '#####SQL', '#####HTML', '#####PHP', '#####C#', '#####SAP', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(326, 19, 11, 1, '', '', 'Istilah lain dari atribut adalah…', '#####Record', '#####File', '#####Field', '#####Entitas', '#####Page', 'C', '2019-01-12 15:22:05', 0, 0, 0),
(327, 19, 11, 1, 'gambar_soal_327.png', 'image/png', '<p>Perhatikan gambar berikut!</p>\r\n', '#####<p>Spiral</p>\r\n', '#####<p>Prototype</p>\r\n', '#####<p>Waterfall</p>\r\n', '#####<p>Iteratif</p>\r\n', '#####<p>Increment</p>\r\n', 'C', '2019-01-12 15:22:05', 0, 0, 0),
(328, 19, 11, 1, '', '', 'Yang tidak termasuk karakteristik PL adalah...', '#####User', '#####Maintability', '#####Long life time', '#####Efficiency', '#####Usability', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(329, 19, 11, 1, '', '', 'DFD (Data Flow Diagram) merupakan pemodelan yang menjelaskan…', '#####Aliran data dalam sistem yang berinteraksi dengan entitas luar', '#####Struktur data yang mengalir pada system', '#####Struktur data base', '#####Hubungan atau relasi antar entitas', '#####Aktifitas dan prilaku sistem', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(330, 19, 11, 1, '', '', 'Penulisan untuk pembuatan tampilan tabel yang yang salah adalah ?', '#####Isinya Gambar', '#####Isinya Gambar', '#####Isinya Gambar', '#####Isinya Gambar', '#####Isinya Gambar', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(331, 19, 11, 1, '', '', 'Fungsi POST pada bahasa PHP berfungsi untuk…', '#####Mengirimkan variabel ke suatu halaman', '#####Mengirimkan variabel ke url halaman web', '#####Mengirimkan variabel ke dalam form', '#####Mengambil variabel yang dikirimkan oleh form', '#####Mengambil variabel yang dikirmkan melalui link url', 'D', '2019-01-12 15:22:05', 0, 0, 0),
(332, 19, 11, 1, '', '', 'Manakah yang menyatakan sintak penulisan dari  insert adalah…', '#####Insert into nama_table(field1,field2..field N) value(‘nilai field1’,nilai field2’,..,field N)', '#####Insert into nama_table(field1,field2..field N) values(‘nilai field1’,’nilai field2’,..,’field N’)', '#####Insert into nama_table (nilai field1,nilai field2,..,field N) Where field1=’niliaField’', '#####Insert into nama_table (field1,field2..field N)', '#####Insert into (field1,field2..field N) values(‘nilai field1’,nilai field2’,..,field N)', 'B', '2019-01-12 15:22:05', 0, 0, 0),
(333, 19, 11, 1, '', '', 'Pencarian, pengolahan dan manipulasi database dengan menggunakan bahasa tertentu disebut…', '#####Insert', '#####Query', '#####Search', '#####Connection', '#####Manipulation', 'B', '2019-01-12 15:22:05', 0, 0, 0),
(334, 19, 11, 1, '', '', 'Perangkat tambahan yang digunakan pada komputer agar dapat terhubung dengan jaringan adalah…', '#####Sound Card', '#####Ethernet Card', '#####Video Card', '#####SIM Card', '#####IP Address', 'B', '2019-01-12 15:22:05', 0, 0, 0),
(335, 19, 11, 1, 'gambar_soal_335.png', 'image/png', '<p>Perhatikan script PHP dibawah ini!</p>\r\n', '#####<p>tandacinta</p>\r\n', '#####<p>andacinta</p>\r\n', '#####<p>andaci</p>\r\n', '#####<p>tandaci</p>\r\n', '#####<p>andaci</p>\r\n', 'C', '2019-01-12 15:22:05', 0, 0, 0),
(336, 19, 11, 1, '', '', 'Ciri khas dalam pemrograman berbasis OOP adalah adanya…', '#####Value', '#####String', '#####Fungsi', '#####Variabel', '#####Class & Fungsi', 'E', '2019-01-12 15:22:05', 0, 0, 0),
(337, 19, 11, 1, '', '', 'Agar variable yang ada pada suatu class tidak dapat diakses oleh class lain harus menggunakan…', '#####Public', '#####Private', '#####Singl', '#####Protected', '#####Function', 'B', '2019-01-12 15:22:05', 0, 0, 0),
(338, 19, 11, 1, '', '', 'Line (20, 50, 420, 110); Code disamping merupakan code dari....', '#####Ellipse (Lingkaran)', '#####Segitiga', '#####Garis', '#####Persegi Panjang', '#####Trapesium', 'C', '2019-01-12 15:22:05', 0, 0, 0),
(339, 19, 11, 1, '', '', 'Gambar yang ukurannya dapat diperbesar ataupun diperkecil dan tidak mengalami penurunan kualitas yang dapat dibuka oleh aplikasi tertentu adalah jenis gambar…', '#####Bitmap', '#####Raster', '#####Vector', '#####JPG', '#####Portable', 'C', '2019-01-12 15:22:05', 0, 0, 0),
(340, 19, 11, 1, '', '', 'Manakah rumus untuk membuat lingkarann yang benar.....', '#####Ellipse (x, y, width, height)', '#####Ellipse (y, x, width, height)', '#####Ellipse (x, y, height, width)', '#####Ellipse (y, x, height, width)', '#####Ellipse (height, width, x, y)', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(341, 19, 11, 1, '', '', 'Pembungkusan variable dan method dalam sebuah obyek yang terlindungi serta menyediakan interface untuk mengakses variabel tersebut adalah pengertian dari…', '#####Polymorphisme', '#####Objek', '#####Class', '#####Encapsulation', '#####Method', 'D', '2019-01-12 15:22:05', 0, 0, 0),
(342, 19, 11, 1, '', '', 'Berikut ini adalah script PHP mengimplementasikan OOP yang benar adalah…', '#####Isinya Gambar', '#####Isinya Gambar', '#####Isinya Gambar', '#####Isinya Gambar', '#####Isinya Gambar', 'A', '2019-01-12 15:22:05', 0, 0, 0),
(343, 19, 11, 1, 'gambar_soal_343.png', 'image/png', '<p>Perhatikan script berikut ini!</p>\r\n', '#####<p>1 2 3 4 5 6 7 8 9</p>\r\n', '#####<p>0 1 2 3 4 5 6 7 8 9</p>\r\n', '#####<p>0 1 3 5 7 9</p>\r\n', '#####<p>2 4 6 8 10</p>\r\n', '#####<p>0 2 4 6 8</p>\r\n', 'E', '2019-01-12 15:22:05', 0, 0, 0),
(344, 19, 7, 1, '', '', '<p>Bacalah teks berikut! &quot;Perilaku prososial anak tidak datang dengan sendirinya, melainkan diperoleh dari proses belajar yang panjang. Proses belajar di sini tidak hanya yang dilakukan di bangku sekolah tetapi justru yang lebih penting adalah yang diperolehnya dari didikan orang tuanya. Pada masa anak-anak, orang tua merupakan sarana proses sosialisasi yang utama. Sosialisasi terjadi melalui perbuatan orang tua yang menunjukkan penerimaan, kehangatan, dan kasih sayang sebagai contoh dari wujud perilaku anak. Peran orang tua dalam mengasuh, membimbing, mendidik, mengawasi, memberi perhatian, dan menjadi contoh yang baik bagi anak akan membentuk perilaku prososialnya.&quot; Ide pokok tekt tersebut adalah</p>\r\n', '#####<p>pembentukan perilaku sosial</p>\r\n', '#####<p>mempelajari proses perilaku anak</p>\r\n', '#####<p>peran orang tua dalam mendidik anak</p>\r\n', '#####<p>proses perilaku prososial anak</p>\r\n', '#####<p>pola didik orang tua terhadap anak</p>\r\n', 'D', '2019-01-14 07:06:54', 50, 185, 99),
(345, 19, 7, 1, '', '', '<p>Bacalah teks berikut! &quot;Menurut hukum internasional, negara pesisir memiliki hak maritim &ndash; termasuk kewenangan untuk mengeksplorasi dan mengeksploitasi sumber daya alam &ndash; sejauh 200 mil laut atau 370 kilometer dari pantainya. Namun, zona ekonomi eksklusif ini dapat menjadi sumber sengketa di wilayah seperti Laut Tiongkok Selatan, tempat banyak negara terletak berdekatan.&quot; Makna istilah eksplorasi dan eksploitasi pada teks tersebut adalah ....</p>\r\n', '#####<p>penjajakan, penelitian</p>\r\n', '#####<p>penjajakan, pengusahaan</p>\r\n', '#####<p>pengusahaan, pendayagunaan</p>\r\n', '#####<p>penelitian, perencanaan</p>\r\n', '#####<p>pengusahaan, penjajakan</p>\r\n', 'B', '2019-01-14 07:06:54', 37, 198, 99),
(346, 19, 7, 1, '', '', '<p>Bacalah teks berikut! Pesan di online shop Pemesan: &ldquo;Mbak, saya boleh pesen?&rdquo; Penjual: &ldquo;Boleh mas, mau pesen apa dan berapa jumlahnya?&rdquo; Pemesan: &ldquo;Oh, enggak kok saya enggak mau pesen barang &hellip;&rdquo; Penjual: &ldquo;Terus pesan apa mas?&rdquo; Pemesan: &ldquo;Saya cuma mau pesen, &hellip; jaga kesehatan, jangan lupa makan dan inget sholat lima waktu ya ...&rdquo; Penjual : ???????? Interpretasi kita terhadap teks tersebut adalah ....</p>\r\n', '#####<p>pembeli yang memesan barang untuk penjual</p>\r\n', '#####<p>kesigapan penjual dalam menyiapkan pesanan pembeli</p>\r\n', '#####<p>penjual yang tidak mempunyai katalog barang yang dijual</p>\r\n', '#####<p>penjual yang kebingungan dengan apa yang dipesan pembeli</p>\r\n', '#####<p>pembeli yang kebingungan dengan barang yang akan dipesan</p>\r\n', 'D', '2019-01-14 07:06:54', 121, 114, 99),
(347, 19, 7, 1, '', '', '<p>Bacalah teks berikut! &quot;Kabar bohong atau hoax menjadi ancaman serius bagi keutuhan negara. Seperti dipahami, informasi di sekitar kita dipenuhi dengan kebohongan, ujaran kebencian dan fitnah. [....] Media sosial seperti facebook misalnya, dijadikan tempat menyebarkan fitnah , kebohongan. Pada titik ekstrem, berita hoax sudah menjadi alat mengadu domba kompenen anak bangsa, sehingga menciptakan kegaduhan di masyarakat. Stop penyebaran berita yang tidak benar.&quot; Kalimat yang tepat untuk mengisi bagian rumpang teks tersebut adalah ...</p>\r\n', '#####<p>Hoax memenuhi ruang dunia maya.</p>\r\n', '#####<p>Hoax berita bohong yang harus dihentikan.</p>\r\n', '#####<p>Kita harus mengenali informasi yang tidak benar</p>\r\n', '#####<p>Bersikap bijak dalam menerima berita yang belum jelas</p>\r\n', '#####<p>Pikirkan kembali sebelum mengirim berita yang belum tentu benar.</p>\r\n', 'A', '2019-01-14 07:06:54', 173, 62, 99),
(348, 19, 7, 1, '', '', '<p>Bacalah teks berikut! &ldquo;Sumber daya manusia yang handal sangat dibutuhkan oleh kalangan dunia usaha dan industri di dunia. Namun, SDM handal itu tidak bisa disiapkan hanya dari sekolah, tapi harus dikolaborasikan melalui hubungan yang erat dengan dunia industri karena merekalah yang akan menilai handal tidaknya SDM dari siswa tamatan sekolah kejuruan khususnya di bidang engineering (permesinan). Engineering sekarang ini diharapkan memiliki peranan yang sangat penting di tengah masyarakat&rdquo; Simpulan teks tersebut adalah...</p>\r\n', '#####<p>sekolah menghasilkan SDM handal</p>\r\n', '#####<p>tamatan sekolah kejuruan harus handal</p>\r\n', '#####<p>engineering sangat berperan bagi masyarakat</p>\r\n', '#####<p>dunia usaha dan industri membutuhkan SDM yang handal</p>\r\n', '#####<p>kerja sama sekolah dan industri hasilkan SDM handal</p>\r\n', 'C', '2019-01-14 07:06:54', 23, 212, 99),
(349, 19, 7, 1, '', '', '<p>Bacalah teks berikut ! Gagasan pokok: Penyelamatan terumbu karang Gagasan penjelas: (1) Pengertian terumbu karang (2) Manfaat terumbu karang bagi lingkungan (3) Penyebab rusaknya terumbu karang (4) Akibat rusaknya terumbu karang (5) Pemanfaatan terumbu karang untuk souvenir (6) Teknik menyelam di antara terumbu karang Gagasan penjelas yang tidak sesuai dengan gagasan utama ditandai dengan nomor ....</p>\r\n', '#####<p>(1), (3)</p>\r\n', '#####<p>(2). (4)</p>\r\n', '#####<p>(3), (5)</p>\r\n', '#####<p>(4), (5)</p>\r\n', '#####<p>(5), (6)</p>\r\n', 'E', '2019-01-14 07:06:54', 101, 134, 99),
(350, 19, 7, 1, '', '', '<p>Bacalah teks berikut ! (1) Di gang itulah kami dahulu bermain-main. (2) Kaus yang tak pernah kupakai lagi sejak aku kena seruduk sapi bantuan presiden itu. (3) Di gang itu, di belakang kawasan pasar ikan, terletak rumah orang tua Taripol, di mana dia lahir dan besar. (4) Kuurai masa lalu satu per satu, selembar kaus merah tergantung di dinding. (5) Kini dia memberi nama buruk pada gang itu, merusak kenangan indah masa bocah kami. (Andrea Hirata: Sirkus Pohon) Urutan kalimat-kalimat kutipan novel tersebut yang tepat adalah ....</p>\r\n', '#####<p>(1), (3), (5), (4), (2)</p>\r\n', '#####<p>(1), (3), (2), (4), (5)</p>\r\n', '#####<p>(3), (1), (5), (4), (2)</p>\r\n', '#####<p>(3), (5), (4), (2), (1)</p>\r\n', '#####<p>(4), (2), (3), (1), (5)</p>\r\n', 'E', '2019-01-14 07:06:54', 47, 188, 98),
(351, 19, 7, 1, '', '', '<p>Cermatilah teks berikut ! Viasti : Mohon maaf Riska, apakah tidak salah penilaian Riska terhadap saya. Bukankah saya ini tergolong kawan baru yang bergabung dalam usahamu ini belum lama. Bukankan ada kawan yang lebih lama bekerja sama denganmu. Riska : Saya meminta kamu untuk menjadi penanggung jawab usaha saya di tempat lain tidak ada kaitannya dengan teman lama atau baru, tetapi saya melihatnya dari kinerja kamu. Disiplin, tanggung jawab, tekun, dan santun. Jadi, tolong bantu saya. Viasti : Baiklah, jika itu alasanmu. Semoga saya bisa mengemban amanah ini. Isi dialog tersebut adalah adalah ....</p>\r\n', '#####<p>Riska yang tak mampu menjalani usahanya</p>\r\n', '#####<p>Riska yang banyak berharap pertolongan temannya</p>\r\n', '#####<p>kesanggupan Viasti mengembangkan usaha temannya</p>\r\n', '#####<p>Riska yang merasa bertanggung jawab atas kinerja temannya</p>\r\n', '#####<p>Viasti yang merasa tidak etis jika menolak tawaran temannya</p>\r\n', 'B', '2019-01-14 07:06:54', 27, 208, 96),
(352, 19, 7, 1, '', '', '<p>Bacalah teks berikut ! Seketika demam panggungku lenyap waktu kulihat Dinda dan Azizah tak henti bertepuk tangan, Instalatur ternganga sampai tak bisa menganga lagi. Pipit dan Yubi menunjuk-nunjukku, paman mereka yang hebat ini. Ayah memandangku sambil mengangguk-angguk, mungkin baru menyadari bahwa keadaanku tidaklah seperti yang dibayangkannya. Bahwa mustahil pertunjukkan fantastik yang dilihatnya bisa dicapai tanpa latihan gigih. Bahwa ternyata aku bisa juga bekerja keras, berdisiplin, menjaga komitmen, dan punya tekad. (Andrea Hirata: Sirkus Pohon) Amanat kutipan novel tersebut adalah ....</p>\r\n', '#####<p>berprestasilah agar mendapat pujian</p>\r\n', '#####<p>janganlah menertawakan kesuksesan orang lain</p>\r\n', '#####<p>bersenang-senanglah jika sudah mendapat kesuksesan</p>\r\n', '#####<p>bekerja keraslah dengan disiplin agar bisa meraih kesuksesan</p>\r\n', '#####<p>perbanyaklah tampil di atas panggung agar tidak demam panggung</p>\r\n', 'D', '2019-01-14 07:06:54', 183, 52, 96),
(353, 19, 7, 1, '', '', '<p>Bacalah kutipan novel berikut! Aku melangkah pelan meninggalkan pekarangan sambil menenteng beberapa plastik kresek. Sampai di pinggir jalan aku menoleh ke belakang untuk kali terakhir. Mereka melambai-lambai dari beranda. (Andrea Hirata: Sirkus Pohon) Majas yang terdapat dalam kutipan novel tersebut adalah ....</p>\r\n', '#####<p>klimaks</p>\r\n', '#####<p>metafora</p>\r\n', '#####<p>pleonasme</p>\r\n', '#####<p>hiperbola</p>\r\n', '#####<p>personifikasi</p>\r\n', 'C', '2019-01-14 07:06:54', 23, 212, 96),
(354, 19, 7, 1, '', '', '<p>Bacalah teks berikut ! Tahu-tahu Bang Nduk, pemilik warung Kupi Kuli yang kampungan minta ampun itu, telah memakai kaus polo dengan kerah berdiri juga. Rambutnya yang semula kusut bergumpal-gumpal macam pukat habis diterjang buaya, dipotong pendek tipis, ditaklukkan dengan likat minyak rambut Tancho hijau, lalu di-mohawk-kan. (Andrea Hirata: Sirkus Pohon) Unsur intrinsik yang dominan dalam kutipan novel tersebut adalah ....</p>\r\n', '#####<p>Alur</p>\r\n', '#####<p>Tema</p>\r\n', '#####<p>Cara bercerita</p>\r\n', '#####<p>Latar</p>\r\n', '#####<p>Penokohan</p>\r\n', 'E', '2019-01-14 07:06:54', 82, 153, 95),
(355, 19, 7, 1, '', '', '<p>Bacalah teks berikut ! Zadi semakin semangat dalam belajar. Semangat itu datangnya dari sahabatnya Satria yang senantiasa memotivasinya bahwa belakang parang pun kalau diasah tajam juga. Hal ini terbukti dengan nilai yang selalu kompeten untuk setiap ulangan yang dihadapinya. Proyek yang menjadi tugas utama untuk kenaikan kelas juga ia kerjakan dengan penuh ketekunan. Makna peribahasa pada kalimat yang bercetak miring dalam teks tersebut adalah ....</p>\r\n', '#####<p>jika tidak ingin bodoh, kita harus rajin belajar</p>\r\n', '#####<p>orang bodoh kalau mau belajar akan pandai juga</p>\r\n', '#####<p>orang malas akan tetap malas walaupun sudah belajar</p>\r\n', '#####<p>rajin belajar membuat orang menjadi bertambah pandai</p>\r\n', '#####<p>orang bodoh selalu mengalami kesulitan dalam belajar</p>\r\n', 'B', '2019-01-14 07:06:54', 105, 130, 98),
(356, 19, 7, 1, '', '', '<p>Bacalah kutipan novel berikut! Berada dalam sebuah jarak, terbentang Laut Jawa sebagai pemisah, Tegar tak dapat melerai hatinya yang tak karuan terhadap Tara. Kini semua dapat diendapkannya dan dia dapat bersikap tenang, melihat khayalan dalam kenyataan, mengubah kerinduan menjadi kebijakan, bahwa apa yang dirasakannya, belum tentu dirasakan Tara. (Andrea Hirata: Sirkus Pohon) Watak tokoh Tegar dalam kutipan novel tersebut adalah ....</p>\r\n', '#####<p>Penyayang</p>\r\n', '#####<p>Peramah</p>\r\n', '#####<p>Emosional</p>\r\n', '#####<p>Pengecut</p>\r\n', '#####<p>Bijaksana</p>\r\n', 'E', '2019-01-14 07:06:54', 81, 154, 95),
(357, 19, 7, 1, '', '', '<p>Cermati kutipan novel berikut! Pukul 23.30 malam. Dengan hati-hati, Asma meletakkan kamera DSLR yang lensanya baru dia bersihkan di sisi ranjang, lalu membuka netbook, Sekar sudah menghilang dari monitor. Masih ada waktu. Gadis itu meraih netbook dan dengan cepat jemari lentiknya mengetik sebuah nama. Beberapa link tentang Ashima dan Yunnan muncul. Asma menelusuri satu per satu sebelum mengklik sebuah website yang sepertinya terlihat lebih informatif. Ashima, apakah yang memberi gadis itu kekuatan untuk mempercayakan hatinya hanya pada Ahei? Berakhir bahagiakah kisah cinta mereka? Penginapan sederhana yang AC-nya terlalu dingin membuat Asma merapatkan jaket. Kedua mata gadis itu masih merayapi layar netbook, sebelum kemudian menarik napas. (Assalamualaikum Beijing karya Asma Nadia) Latar tempat yang terdapat dalam kutipan novel tersebut adalah ....</p>\r\n', '#####<p>Ruang tamu</p>\r\n', '#####<p>Ruang kerja</p>\r\n', '#####<p>Serambi penginapan</p>\r\n', '#####<p>Kamar tidur</p>\r\n', '#####<p>Ruang komputer</p>\r\n', 'D', '2019-01-14 07:06:54', 133, 102, 95),
(358, 19, 7, 1, '', '', '<p>Cermati kutipan cerpen berikut! Sebagai anak pertama, sudah sejak kecil aku hidup seadanya dan bekerja keras. Kedua adikku menjadi tanggung jawabku membiayai pendidikannya sampai sarjana. Aku kuliah sambil bekerja. Honorku kugunakan untuk biaya kuliahku dan adikku-adikku. Aku bertekad kalau aku dan kedua adikku bisa jadi sarjana. Masa remajaku memang penuh aktivitas dan kadang terasa melelahkan. Namun, ibuku telah mengajariku dan mencontohkan untuk bersikap lapang dada dalam kehidupan. Makna ungkapan lapang dada dalam kutipan cerpen tersebut adalah &hellip;.</p>\r\n', '#####<p>Sayang</p>\r\n', '#####<p>Santun</p>\r\n', '#####<p>Mandiri</p>\r\n', '#####<p>Sabar</p>\r\n', '#####<p>Optimistis</p>\r\n', 'D', '2019-01-14 07:06:54', 189, 46, 95),
(359, 19, 7, 1, '', '', '<p>Cermati kutipan cerpen berikut! Sejak dulu, Makaji tidak pernah keberatan membantu keluarga mana saja yang hendak menggelar pesta, tak peduli apakah tuan rumah hajatan itu orang terpandang yang tamunya membludak atau orang biasa yang hanya sanggup menggelar syukuran seadanya. Makaji tak pilih kasih, meski ia satu-satunya juru masak yang masih tersisa di Lareh Panjang. Di usia senja, ia masih tangguh menahan kantuk, tangannya tetap gesit meracik bumbu, masih kuat ia berjaga semalam suntuk. Unsur ekstrinsik yang terdapat pada kutipan cerita pendek tersebut adalah &hellip;.</p>\r\n', '#####<p>Estetika</p>\r\n', '#####<p>Sosial</p>\r\n', '#####<p>Budaya</p>\r\n', '#####<p>Politik</p>\r\n', '#####<p>Ekonomi</p>\r\n', 'B', '2019-01-14 07:06:54', 143, 92, 95),
(360, 19, 7, 1, '', '', '<p>Cermati kutipan teks drama berikut! Fitri: Maaf ya, Ki nanti malam aku sudah ada janji dengan Afi. Jadi, engga bisa ke rumahmu. Azki: O, ya? Ya sudah tidak apa-apa kok. Eh, tapi sepertinya kamu sedang senang nih? Fitri: Iya, Ki, aku memang sedang senang sekali. (sambil senyum-senyum) Azki: Kenapa? Ada apa? Memang kamu menang undian satu miliar, ya? Fitri: Undian? Bukan. Aku senang karena nilai raporku bagus dan ini berarti aku jadi dibelikan laptop baru oleh ayahku. Inti kutipan drama tersebut adalah ....</p>\r\n', '#####<p>Fitri berbahagia karena mendapat undian berhadiah</p>\r\n', '#####<p>Fitri merasa bahagia karena nilai rapornya bagus</p>\r\n', '#####<p>Fitri merasa bahagia karena telah dibelikan laptop</p>\r\n', '#####<p>Kebahagiaan Fitri karena dihadiahkan laptop oleh ayahnya</p>\r\n', '#####<p>Kebahagiaan Fitri saat mendapat hadiah</p>\r\n', 'B', '2019-01-14 07:06:54', 156, 79, 97),
(361, 19, 7, 1, '', '', '<p>Cermati kutipan cerpen berikut! Ambillah satu demi satu dan pelan-pelan. Tidak perlu engkau berebut karena semuanya telah diatur. Mana untukmu dan mana untuk yang lain, itu sudah ada jatahnya masing-masing. Tuhan sudah menata dan membagi dengan sangat baik. Semua orang akan mendapatkan kebahagiaan, walaupun dengan bentuk yang tidak sama. Nilai pendidikan pada kutian cerpen tersebut adalah ...</p>\r\n', '#####<p>Jangan memaksa orang lain supaya memiliki kesamaan denganmu.</p>\r\n', '#####<p>Yakinlah bahwa semua orang akan mendapatkan kebahagiaan yang sama.</p>\r\n', '#####<p>Hendaklah mengambil barang miliknya dengan pelan-pelan.</p>\r\n', '#####<p>Jangan mengambil barang milik orang lain.</p>\r\n', '#####<p>Sebaiknya menunggu saja jatah pemberian orang lain</p>\r\n', 'B', '2019-01-14 07:06:54', 128, 107, 95),
(362, 19, 7, 1, '', '', '<p>Cermati teks berikut! Teks 1 Apalah tanda kerang berisi Bila direbus kulitnya merekah Apalah tanda orang berbudi Bila bergaul suka merendah Teks 2 Berkatalah dengan sopan Jagalah setiap ucapan Agar engkau menjadi idaman Setiap orang merasa nyaman Perbedaan dua teks tersebut adalah &hellip;</p>\r\n', '#####<p>Teks 1 bersajak a-b-a-b Teks 2 bersajak a-a-a-a</p>\r\n', '#####<p>Teks 1 bersajak sama Teks 2 bersajak silang</p>\r\n', '#####<p>Teks 1 dua larik pertama isi Teks 2 dua larik pertama sampiran</p>\r\n', '#####<p>Teks 1 tidak mempunyai sampiran Teks 2 ada sampiran</p>\r\n', '#####<p>Teks 1 rima akhir sama Teks 2 rima akhir berbeda</p>\r\n', 'A', '2019-01-14 07:06:54', 108, 127, 95),
(363, 19, 7, 1, '', '', '<p>Cermati teks berikut! Kalau kamu mencari berita Jangan baca berita basi [&hellip;] Jangan cari cinta imitasi Larik yang tepat untuk melengkapi pantun tersebut adalah &hellip;.</p>\r\n', '#####<p>Kalau cinta memang utama</p>\r\n', '#####<p>Kalau cinta memang buta</p>\r\n', '#####<p>Kalau kamu membaca berita</p>\r\n', '#####<p>Kalau kamu mau meminta</p>\r\n', '#####<p>Kalau kamu mencari cinta</p>\r\n', 'E', '2019-01-14 07:06:54', 144, 91, 95),
(364, 19, 7, 1, '', '', '<p>Cermati pantun berikut! Minyak habis api meredup Anak kecil bermain dadu Bila datang cobaan hidup Kepada Tuhan kita mengadu Tema pantun tersebut adalah &hellip;.</p>\r\n', '#####<p>Lingkungan</p>\r\n', '#####<p>Kebudayaan</p>\r\n', '#####<p>Pendidikan</p>\r\n', '#####<p>Percintaan</p>\r\n', '#####<p>Persahabatan</p>\r\n', 'C', '2019-01-14 07:06:54', 177, 58, 95),
(365, 19, 7, 1, '', '', '<p>Cermati kutipan cerpen berikut! Sejenak Makaji diam mendengar tawaran Azrial. Tabiat orang tua memang selalu begitu, walau terasa semanis gula, tak bakal langsung direguknya, meski sepahit empedu tidak pula buru-buru dimuntahkannya, mesti matang ia menimbang. Makaji memang sudah lama menunggu ajakan seperti itu. Orang tua mana yang tak ingin berkumpul dengan anaknya di hari tua? Dan kini, gayung telah bersambut, sekali saja ia mengangguk, Azrial akan segera memboyongnya ke rantau. Makaji tetap akan mempunyai kesibukan di Jakarta, ia akan jadi juru masak di rumah makan milik anaknya sendiri. Cara pengarang bercerita dalam teks tersebut adalah dengan menggunakan &hellip;.</p>\r\n', '#####<p>sudut pandang orang kedua pelaku utama</p>\r\n', '#####<p>sudut pandang orang ketiga pelaku utama</p>\r\n', '#####<p>sudut pandang orang pertama pelaku utama</p>\r\n', '#####<p>sudut pandang orang kedua pelaku utama</p>\r\n', '#####<p>sudut pandang orang ketiga pelaku sampingan</p>\r\n', 'B', '2019-01-14 07:06:54', 50, 185, 95),
(366, 19, 7, 1, '', '', '<p>Cermati kutipan ulasan film berikut! Film &ldquo;Perahu Kertas 1&rdquo; terdapat salah satu bagian konflik yang terkesan menarik sementara bagian lainnya terasa datar akibat konflik yang muncul dari sisi kehidupan pribadi masing-masing karakter terlalu banyak yang pada akhirnya justru memecah perhatian penonton. Film ini terbagi menjadi dua seksi sehingga membuat penonton harus menunggu seksi berikutnya. Akhir ceritanya pun kurang jelas dan masih menggantung. Kutipan ulasan film tersebut berisi tentang ....</p>\r\n', '#####<p>deskripsi film</p>\r\n', '#####<p>kelemahan film</p>\r\n', '#####<p>simpulan film</p>\r\n', '#####<p>keunggulan film</p>\r\n', '#####<p>sinopsis film</p>\r\n', 'B', '2019-01-14 07:06:54', 94, 141, 96),
(367, 19, 7, 1, '', '', '<p>Cermati teks berikut! (1) Cerita film &ldquo;5 Elang&rdquo; sangat mudah dicerna. (2) Film ini sangat cocok untuk keluarga maupun anak-anak karena ceritanya mudah dipahami. (3) Film ini mengajarkan budaya cinta lingkungan seperti saat Rusdi berkata, &ldquo; Maaf, kertasnya kecil penghematan buat pohon&rdquo;. (4) Akting pemain cukup apik dan natural. (5) Film ini dibintangi oleh anggota Coboy Junior yang menjadi daya tarik tersendiri bagi penggemarnya. Kalimat simpleks dalam teks tersebut ditandai dengan nomor &hellip;.</p>\r\n', '#####<p>1</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####<p>5</p>\r\n', 'A', '2019-01-14 07:06:54', 57, 178, 96),
(368, 19, 7, 1, '', '', '<p>Cermati teks berikut! (1) Salah satu program siswa kelas XI SMK adalah Praktek Kerja Lapangan. (2) Program ini merupakan bagian dari Program Sistem Ganda (PSG). (3) Kualitas dan kompetensi siswa dapat dilihat dari PKL. (4) Program ini diharapkan dapat meningkatkan kuantitas lulusan SMK yang akan diserap di perusahaan. (5) Persentase keterserapan lulusan di perusahaan pun secara otomatis akan meningkat. Kata tidak baku dalam teks tersebut terdapat dalam kalimat nomor &hellip;.</p>\r\n', '#####<p>1</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####<p>5</p>\r\n', 'A', '2019-01-14 07:06:54', 20, 215, 99),
(369, 19, 7, 1, '', '', '<p>Cermati teks berikut! (1) Manfaat kegiatan ekstrakurikuler banyak sekali. (2) Kita bisa mendapatkan aneka ilmu yang bermafaat. (3) Dalam setiap ekstrakurikuler yang dipilih tentu ada dasar-dasar ilmunya.(4) Sebut saja, kegiatan ekstrakurikuler yang berkaitan dengan pelajaran fisika, matematika, dan bahasa inggris.(5) Bila kegiatan ekstrakurikuler di bawah bimbingan guru yang tepat, kegiatan tersebut bisa menjadi wadah yang tepat bagi para siswa dalam mengembangkan bakat dan kemampuannya. Kata yang penulisannya tidak sesuai dengan ejaan bahasa Indonesia dalam teks tersebut ditandai dengan nomor &hellip;.</p>\r\n', '#####<p>1</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####<p>5</p>\r\n', 'C', '2019-01-14 07:06:54', 28, 207, 99),
(370, 19, 7, 1, '', '', '<p>Cermati teks berikut! 1. Sejak zaman dahulu, nenek moyang kita telah mengenal tanaman lidah buaya lengkap dengan manfaatnya. Manfaat tumbuhan yang bernama Latin aloe vera ini tidak hanya sebagai penyubur rambut, namun juga bermanfaat bagi kesehatan tubuh. Lidah buaya [&hellip;] gunakan untuk mengobati luka bakar dan luka karena cedera Pronomina (kata ganti) yang tepat untuk melengkapi teks tersebut adalah &hellip;.</p>\r\n', '#####<p>Iya</p>\r\n', '#####<p>Saya</p>\r\n', '#####<p>Kamu</p>\r\n', '#####<p>Kita</p>\r\n', '#####<p>Mereka</p>\r\n', 'D', '2019-01-14 07:06:54', 39, 196, 99),
(371, 19, 7, 1, '', '', '<p>Cermati kalimat-kalimat berikut! (1) Agar kita dapat mengembangkan minat dan bakat dalam kegiatan ektrakurikuler, kita dapat memilihnya sesuai dengan kemampuan yang kita miliki. (2) Jalani kegiatan ektrakurikuler tersebut dan terima konsekuensinya dengan hati ikhlas karena ini pilihan kita sehingga kita belajar bertanggung jawab. (3) Setelah memilih, tentukan target atau titik acuan yang membuat kita termotivasi dan antusias untuk mengikuti kegiatan ektrakurikuler tersebut. (4) Jangan lupa pintar-pintar mengatur waktu antara kegiatan akademis dan kegiatan ektrakurikuler yang kita jalani. Kalimat-kalimat tersebut akan menjadi paragraf yang padu bila disusun dengan urutan &hellip;.</p>\r\n', '#####<p>(1), (3), (2), (4)</p>\r\n', '#####<p>(3), (4), (2), (1)</p>\r\n', '#####<p>(4), (1), (2), (3)</p>\r\n', '#####<p>(2), (3), (4), (1)</p>\r\n', '#####<p>(4), (3), (1), (2)</p>\r\n', 'A', '2019-01-14 07:06:54', 168, 67, 99),
(372, 19, 7, 1, '', '', '<p>Cermati teks berikut! Penghargaan Nobel dianugerahkan setiap tahun kepada ilmuwan yang telah melakukan penelitian luar biasa. Penghargaan diberikan kepada orang yang menemukan teknik atau peralatan yang baru, atau telah melakukan kontribusi luar biasa bagi masyarakat. Saat ini Hadiah Nobel dianggap sebagai penghargaan tertinggi bagi orang yang mempunyai jasa besar kepada dunia. Ringkasan teks tersebut yang tepat adalah &hellip;.</p>\r\n', '#####<p>Hadiah Nobel diberikan kepada orang yang ahli di bidang teknik yang berkontribusi kepada masyarakat dan ilmuwan yang berjasa kepada masyarakat/dunia.</p>\r\n', '#####<p>Hadiah Nobel dianggap sebagai penghargaan tertinggi bagi orang yang mempunyai jasa besar kepada dunia dalam bidang teknik yang diberikan setiap tahun.</p>\r\n', '#####<p>Setiap tahun Penghargaan Nobel dianugerahkan kepada ilmuwan yang telah berkontribusi kepada ahli di bidang teknik atau peralatan baru atau kepada dunia.</p>\r\n', '#####<p>Penghargaan Nobel dianugerahkan setiap tahun kepada ilmuwan yang telah melakukan penelitian luar biasa di bidang teknik atau peralatan baru atau berkontribusi kepada dunia.</p>\r\n', '#####<p>Penghargaan Nobel dianugerahkan setiap tahun kepada ilmuwan yang telah melakukan penelitian di bidang teknik atau peralatan yang menguntungkan masyarakat.</p>\r\n', 'D', '2019-01-14 07:06:54', 55, 180, 99),
(373, 19, 7, 1, '', '', '<p>Cermati teks berikut! Salah satu alternatif bertanam dengan lahan sempit adalah dengan tabulampot. [&hellip;] dengan tabulampot sangat sederhana, yaitu dengan menanamnya di dalam kantung plastik saja. Praktisnya dapat menanam sayuran yang kita senangi. Dengan [&hellip;] sayuran di dalam tabulampot, uang belanja dapat dihemat. Tabulampot juga dapat digunakan sebagai hiasan rumah agar tampak rindang. Kata bentukan yang tepat untuk melengkapi teks tersebut adalah &hellip;.</p>\r\n', '#####<p>menanam, menanami</p>\r\n', '#####<p>bertanam, ditanam</p>\r\n', '#####<p>penanaman, menanam</p>\r\n', '#####<p>menanami, ditanamkan</p>\r\n', '#####<p>menanami, ditanami</p>\r\n', 'C', '2019-01-14 07:06:54', 82, 153, 99),
(374, 19, 7, 1, '', '', '<p>Cermati teks berikut! Wisata [ ... ] menjadi salah satu pilihan menarik ketika berlibur di Provinsi Kalimantan Tengah.Wisatawan dapat mencicipi masakan kepala ikan baung yang besarnya seukuran buah kelapa muda. Selain memiliki berbagai makanan [ ... ] yang nikmat dan lezat, provinsi ini memiliki tempat yang menarik yang wajib dikunjungi wisatawan, salah satunya adalah Jalan Yos Sudarso. Istilah yang tepat untuk melengkapi teks tersebut adalah ....</p>\r\n', '#####<p>Kuliner, Khas</p>\r\n', '#####<p>Mancanegara, Khas</p>\r\n', '#####<p>Mancanegara, Unik</p>\r\n', '#####<p>Destinasi, Khas</p>\r\n', '#####<p>Kuliner, Unik</p>\r\n', 'A', '2019-01-14 07:06:54', 186, 49, 99),
(375, 19, 7, 1, '', '', '<p>Cermati teks berikut! Masalah seputar lingkungan hidup selalu terdengar mengemuka. Kejadian demi kejadian yang dialami di dalam negeri telah memberi dampak yang sangat besar sekali. Tidak sedikit kerugian yang dialami, termasuk nyawa manusia. Perbaikan kalimat tidak efektif yang terdapat dalam teks tersebut adalah ....</p>\r\n', '#####<p>Kejadian demi kejadian yang dirasakan di dalam negeri telah memberi dampak yang sangat besar sekali</p>\r\n', '#####<p>Kejadian demi kejadian yang dialami di dalam negeri telah memberi pengaruh yang sangat besar sekali</p>\r\n', '#####<p>Kejadian-kejadian yang dialami di dalam negeri telah memberi dampak yang sangat besar sekali</p>\r\n', '#####<p>Kejadian demi kejadian yang dialami di dalam negeri telah memberi dampak yang sangat besar</p>\r\n', '#####<p>Untuk kejadian demi kejadian yang dialami di dalam negeri telah memberi dampak yang besar sekali</p>\r\n', 'D', '2019-01-14 07:06:54', 108, 127, 99),
(376, 19, 7, 1, '', '', '<p>Cermati teks berikut! Dalam seni drama dikenal istilah mimik dan pantomim. Mimik adalah gerakan raut muka, seperti mengernyitkan alis, melotot, tersenyum, cemberut, dan sebagainya. Pantomim adalah gerakan anggota tubuh. Kedua jenis gerakan tersebut merupakan ekspresi pikiran dan perasaan si pembicara. Sinonim kata ekspresi pada teks tersebut adalah ....</p>\r\n', '#####<p>Penceritaan</p>\r\n', '#####<p>Pengungkapan</p>\r\n', '#####<p>Perincian</p>\r\n', '#####<p>Penjelasan</p>\r\n', '#####<p>pengukuhan</p>\r\n', 'B', '2019-01-14 07:06:54', 188, 47, 99),
(377, 19, 7, 1, '', '', '<p>Cermati teks berikut! Pola hidup sehat yang dimulai dengan pola makan yang baik olahraga teratur dan istirahat yang cukup diterapkan mulai dari diri kita masing masing kata ayah kepada kami. Penggunaan tanda baca yang tepat untuk teks tersebut adalah ...</p>\r\n', '#####<p>&ldquo;Pola hidup sehat yang dimulai dengan pola makan yang baik, olahraga teratur dan istirahat yang cukup, diterapkan mulai dari diri kita masing-masing,&rdquo; kata ayah kepada kami.</p>\r\n', '#####<p>&ldquo;Pola hidup sehat yang dimulai dengan pola makan yang baik, olahraga teratur, dan istirahat yang cukup diterapkan mulai dari diri kita masing-masing,&rdquo; kata ayah kepada kami.</p>\r\n', '#####<p>&ldquo;Pola hidup sehat yang dimulai dengan pola makan yang baik, olahraga teratur, dan istirahat yang cukup diterapkan mulai dari diri kita masing-masing.&rdquo; kata ayah kepada kami.</p>\r\n', '#####<p>&ldquo;Pola hidup sehat yang dimulai dengan pola makan yang baik, olahraga teratur, dan istirahat yang cukup diterapkan mulai dari diri kita masing, masing!&rdquo; kata ayah kepada kami.</p>\r\n', '#####<p>&ldquo;Pola hidup sehat yang dimulai dengan pola makan yang baik, olahraga teratur dan istirahat yang cukup diterapkan mulai dari diri kita masing-masing.&rdquo; kata ayah kepada kami.</p>\r\n', 'B', '2019-01-14 07:06:54', 35, 200, 99),
(378, 19, 7, 1, '', '', '<p>Cermati teks berikut! Pemerintah Provinsi Sumatra Utara bersama Kementerian Pariwisata menggelar kembali Festival Danau Toba (FDT) 2015. Diharapkan FDT ini mampu menjadi sarana promosi efektif objek wisata Danau Toba. Kegiatan FDT juga diharapkan mengangkat kembali popularitas Danau Toba sebagai destinasi wisata dunia berbasis geopark. Tanggapan logis terhadap isi teks tersebut yang tepat adalah &hellip;.</p>\r\n', '#####<p>FDT adalah program Pemerintah Daerah Sumatra Utara untuk meningkatkan perikanan daerah Sumatra Utara, terutama wilayah Danau Toba</p>\r\n', '#####<p>Kegiatan FDT harus didukung karena kegiatan ini dapat membantu pemerintah untuk meningkatkan jumlah wisatawan asing berkunjung ke Indonesia</p>\r\n', '#####<p>Kegiatan FDT adalah program Pemerintah Daerah Sumatra Utara untuk meningkatkan jumlah tenaga kerja asing di Indonesia</p>\r\n', '#####<p>Setelah selesai mengikuti FDT, semua peserta akan dijadikan duta pariwisata dunia untuk memperkenalkan Indonesia</p>\r\n', '#####<p>FDT memang harus didukung karena kegiatan ini dapat membantu pemerintah untuk meningkatkan perindustrian Indonesia</p>\r\n', 'B', '2019-01-14 07:06:54', 133, 102, 99),
(379, 19, 7, 1, '', '', '<p>Bacalah tekt berikut! (1) Kabut asap yang melanda wilayah Indonesia disebabkan kebakaran hutan. (2) Ada anggapan bahwa kebakaran ini disengaja oleh pihak-pihak tertentu. (3) Hutan sengaja dibakar untuk memperluas lahan sawit. (4) Perluasan lahan ini digunakan untuk keperluan pribadi. (5) Untuk menanggulangi kebakaran hutan ini, Pemerintah sudah melakukan berbagai upaya, di antaranya menindak perusahaan-perusahaan yang terbukti terlibat dalam kebakaran hutan. Kalimat yang menyatakan hubungan akibat-sebab pada teks tersebut ditandai dengan nomor ....</p>\r\n', '#####<p>1</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####<p>5</p>\r\n', 'A', '2019-01-14 07:06:54', 92, 143, 99),
(380, 19, 7, 1, 'gambar_soal_380.png', 'image/png', '<p>Cermati tabel berikut! Tabel Pengunjung Perpustakaan SMK Nusantara</p>\r\n', '#####<p>Kenaikan jumlah pengunjung paling banyak dari TKJ.</p>\r\n', '#####<p>Kenaikan jumlah pengunjung dari TITL dan TP sama</p>\r\n', '#####<p>Kenaikan jumlah pengunjung paling sedikit dari TKR.</p>\r\n', '#####<p>Jumlah pengunjung dari TP mengalami penurunan.</p>\r\n', '#####<p>Tahun 2016 jumlah pengunjung dari TGB paling banyak</p>\r\n', 'A', '2019-01-14 07:06:54', 128, 107, 99),
(381, 19, 7, 1, '', '', '<p>Cermati teks berikut! (1)Prospek pemasaran komoditas buah-buahan di dalam negeri cukup cerah. (2) Potensi pengembangannya pun cukup besar. (3) Di pasar dalam negeri permintaan buah-buahan cenderung terus meningkat. (4) Hal ini karena meningkatnya kesadaran masyarakat akan pentingnya mengonsumsi buah-buahan. (5) Dengan demikian, mengonsumsi buah-buahan dapat membuat badan sehat Kalimat sumbang yang terdapat pada teks tersebut ditandai dengan nomor ....</p>\r\n', '#####<p>1</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####<p>5</p>\r\n', 'E', '2019-01-14 07:06:54', 88, 147, 99),
(382, 19, 7, 1, '', '', '<p>Cermati data buku berikut! Judul Buku : Sepotong Hati yang Baru Penulis : Tere Liye Penerbit/Tahun : Mahaka Publishing/ 2016 Kota : Jakarta Penggunaan tanda baca yang tepat dalam daftar pustaka berdasarkan data tersebut adalah ...</p>\r\n', '#####<p>Liye, Tere. 2016, Sepotong Hati yang Baru, Jakarta: Mahaka Publishing.</p>\r\n', '#####<p>Liye, Tere. 2016. Sepotong Hati yang Baru. Jakarta: Mahaka Publishing.</p>\r\n', '#####<p>Liye, Tere, 2016, Sepotong Hati yang Baru, Jakarta, Mahaka Publishing</p>\r\n', '#####<p>Liye, Tere. 2016. Sepotong Hati yang Baru: Jakarta. Mahaka Publishing</p>\r\n', '#####<p>Liye, Tere, 2016. Sepotong Hati yang Baru. Jakarta; Mahaka Publishing.</p>\r\n', 'B', '2019-01-14 07:06:54', 163, 72, 99),
(383, 19, 7, 1, '', '', '<p>Cermati teks berikut! (1) Air terjun Grojogan Sewu berada di lokasi 1000 meter di atas permukaan laut. (2) Air terjun Grojongan Sewu memiliki ketinggian 81 meter. (3) Obyek wisata ini berada di provinsi Jawa Tengah. (4) Berwisata ke Grojogan Sewu sebenarnya dikhususkan bagi Anda yang ingin sepenuhnya menikmati keindahan air terjun. (5) Banyak orang menganggap bahwa Grojogan Sewu merupakan konsep ekowisata. Kalimat opini pada teks tersebut ditandai dengan nomor ....</p>\r\n', '#####<p>(1), (2)</p>\r\n', '#####<p>(2), (3)</p>\r\n', '#####<p>(3), (4)</p>\r\n', '#####<p>(3), (5)</p>\r\n', '#####<p>(4), (5)</p>\r\n', 'E', '2019-01-14 07:06:54', 154, 81, 97);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_soal_essay`
--

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

CREATE TABLE `tr_guru_mapel` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(7, 19, 7),
(8, 19, 8),
(9, 19, 9),
(10, 19, 10),
(11, 19, 11),
(12, 19, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_tes`
--

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
(11, 19, 7, 'Pretes USBN 2019 XIIRPL1', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'CMXFT', 'XIIRPL1'),
(12, 19, 7, 'Pretes USBN 2019 XIIRPL2', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'RVQDU', 'XIIRPL2'),
(13, 19, 7, 'Pretes USBN 2019 XIIRPL3', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'TWOTM', 'XIIRPL3'),
(14, 19, 7, 'Pretes USBN 2019 XIIAV1', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'JCYCH', 'XIIAV1'),
(15, 19, 7, 'Pretes USBN 2019 XIITITL1', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'KJTEF', 'XIITITL1'),
(16, 19, 7, 'Pretes USBN 2019 XIITITL2', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'QEIBS', 'XIITITL2'),
(17, 19, 7, 'Pretes USBN 2019 XIITKR1', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'RAMAS', 'XIITKR1'),
(18, 19, 7, 'Pretes USBN 2019 XIITKR2', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'CSOCL', 'XIITKR2'),
(19, 19, 7, 'Pretes USBN 2019 XIITKR3', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'QQAIR', 'XIITKR3'),
(20, 19, 7, 'Pretes USBN 2019 XIITKR4', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'VHBKB', 'XIITKR4'),
(21, 19, 7, 'Pretes USBN 2019 XIITKR5', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'RAPHQ', 'XIITKR5'),
(22, 19, 7, 'Pretes USBN 2019 XIITKR6', 40, 120, 'acak', '', '2019-01-14 08:00:00', '2019-01-14 11:00:00', 'GGFNQ', 'XIITKR6'),
(23, 19, 8, 'coba', 40, 120, 'set', '', '2019-01-14 08:00:00', '2019-01-14 12:00:00', 'OCCNP', 'XIIRPL1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_ikut_ujian`
--

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
(74, 16, 318, '378,377,348,367,374,373,381,372,375,371,345,359,344,383,349,358,354,370,353,364,360,357,351,346,382,352,363,365,361,350,376,356,355,366,380,368,347,362,379,369', '378:B:N,377:C:N,348:E:N,367:A:N,374:D:N,373:C:N,381:E:N,372:E:N,375:A:N,371:A:N,345:D:N,359:B:N,344:C:N,383:E:N,349:D:N,358:D:N,354:A:N,370:E:N,353:B:N,364:C:N,360:B:N,357:D:N,351:C:N,346:D:N,382:B:N,352:D:N,363:E:N,365:B:N,361:B:N,350:D:N,376:B:N,356:E:N,355:D:N,366:B:N,380:A:N,368:E:N,347:D:N,362:A:N,379:A:N,369:B:N', 23, '57.50', '57.50', '2019-01-14 09:14:23', '2019-01-14 11:14:23', 'N'),
(75, 16, 325, '348,349,363,350,355,366,373,382,376,383,353,367,381,352,358,359,369,379,368,357,351,375,361,380,364,354,378,347,372,356,365,344,374,346,345,370,371,377,362,360', '348:C:N,349:E:N,363:C:N,350:C:N,355:D:N,366:B:N,373:C:N,382:B:N,376:B:N,383:E:N,353:B:N,367:C:N,381:E:N,352:D:N,358:D:N,359:B:N,369:D:N,379:A:N,368:C:N,357:D:N,351:E:N,375:B:N,361:B:N,380:C:N,364:C:N,354:E:N,378:D:N,347:A:N,372:D:N,356:A:N,365:C:N,344:E:N,374:A:N,346:B:N,345:A:N,370:E:N,371:A:N,377:C:N,362:A:N,360:E:N', 21, '52.50', '52.50', '2019-01-14 09:14:29', '2019-01-14 11:14:29', 'N'),
(76, 11, 343, '373,358,348,349,377,367,383,368,350,354,374,352,365,356,363,376,346,353,359,345,347,369,379,351,378,360,370,381,355,366,375,364,362,382,380,344,361,357,371,372', '373:C:N,358:D:N,348:D:N,349:E:N,377:C:N,367:C:N,383:E:N,368:E:N,350:C:N,354:A:N,374:A:N,352:D:N,365:E:N,356:E:N,363:E:N,376:B:N,346:B:N,353:B:N,359:B:N,345:A:N,347:E:N,369:D:N,379:C:N,351:B:N,378:B:N,360:B:N,370:E:N,381:E:N,355:D:N,366:B:N,375:D:N,364:C:N,362:A:N,382:B:N,380:C:N,344:D:N,361:D:N,357:D:N,371:A:N,372:C:N', 22, '55.00', '55.00', '2019-01-14 09:14:47', '2019-01-14 11:14:47', 'N'),
(77, 16, 323, '369,372,350,379,376,358,370,357,354,363,365,351,381,378,367,382,371,364,366,355,375,374,359,353,368,346,360,373,362,377,361,356,347,348,345,380,349,383,344,352', '379:A:N,376:B:N,364:D:N,382:D:N,374:A:N,383:E:N,366:B:N,363:E:N,369:B:N,359:B:N,370:D:N,357:C:N,355:B:N,345:B:N,377:C:N,351:C:N,380:A:N,349:E:N,344:D:N,381:E:N,361:D:N,346:D:N,358:D:N,373:A:N,365:B:N,375:A:N,356:D:N,360:B:N,347:A:N,371:A:N,368:A:N,354:A:N,372:A:N,350:E:N,362:A:N,352:D:N,353:E:N,378::N,367::N,348::N', 24, '60.00', '60.00', '2019-01-14 09:14:48', '2019-01-14 11:14:48', 'N'),
(78, 16, 323, '379,376,364,382,374,383,366,363,369,359,370,357,355,345,377,351,380,349,344,381,361,346,358,373,365,375,356,360,347,371,368,354,372,350,362,352,353,378,367,348', '379:A:N,376:B:N,364:D:N,382:D:N,374:A:N,383:E:N,366:B:N,363:E:N,369:B:N,359:B:N,370:D:N,357:C:N,355:B:N,345:B:N,377:C:N,351:C:N,380:A:N,349:E:N,344:D:N,381:E:N,361:D:N,346:D:N,358:D:N,373:A:N,365:B:N,375:A:N,356:D:N,360:B:N,347:A:N,371:A:N,368:A:N,354:A:N,372:A:N,350:E:N,362:A:N,352:D:N,353:E:N,378::N,367::N,348::N', 24, '60.00', '60.00', '2019-01-14 09:14:48', '2019-01-14 11:14:48', 'N'),
(79, 11, 334, '358,350,370,382,375,378,347,361,354,353,344,374,380,352,356,355,346,368,372,349,366,373,359,365,345,381,377,360,379,367,348,357,376,383,364,369,363,351,362,371', '358:D:N,350:E:N,370:E:N,382:C:N,375:D:N,378:B:N,347:A:N,361:D:N,354:A:N,353:E:N,344:E:N,374:A:N,380:A:N,352:D:N,356:E:N,355:B:N,346:D:N,368:C:N,372:D:N,349:E:N,366:A:N,373:C:N,359:C:N,365:B:N,345:D:N,381:B:N,377:C:N,360:B:N,379:C:N,367:A:N,348:D:N,357:D:N,376:B:N,383:E:N,364:B:N,369:A:N,363:C:N,351:E:N,362:A:N,371:D:N', 21, '52.50', '52.50', '2019-01-14 09:14:50', '2019-01-14 11:14:50', 'N'),
(80, 16, 317, '377,367,361,355,381,373,374,372,357,366,363,371,382,376,346,365,370,351,375,364,362,345,353,348,378,358,347,360,383,356,349,359,369,344,368,380,350,352,379,354', '377:B:N,367:C:N,361:B:N,355:D:N,381:E:N,373:A:N,374:A:N,372:D:N,357:D:N,366:C:N,363:E:N,371:A:N,382:C:N,376:B:N,346:D:N,365:A:N,370:E:N,351:D:N,375:C:N,364:D:N,362:E:N,345:E:N,353:E:N,348:D:N,378:B:N,358:D:N,347:A:N,360:B:N,383:E:N,356:E:N,349:D:N,359:E:N,369:D:N,344:C:N,368:B:N,380:A:N,350:A:N,352:A:N,379:A:N,354:A:N', 18, '45.00', '45.00', '2019-01-14 09:14:57', '2019-01-14 11:14:57', 'N'),
(81, 11, 330, '375,379,378,359,377,370,371,364,346,349,360,374,383,363,352,372,355,376,347,357,366,356,344,362,365,353,358,373,348,369,381,345,351,361,354,350,368,367,382,380', '375:C:N,379:A:N,378:B:N,359:B:N,377:B:N,370:E:N,371:A:N,364:C:N,346:D:N,349:C:N,360:D:N,374:A:N,383:E:N,363:E:N,352:D:N,372:D:N,355:B:N,376:B:N,347:A:N,357:C:N,366:A:N,356:A:N,344:D:N,362:D:N,365:B:N,353:D:N,358:D:N,373:C:N,348:D:N,369:D:N,381:B:N,345:C:N,351:C:N,361:B:N,354:A:N,350:B:N,368:B:N,367:E:N,382:D:N,380:A:N', 21, '52.50', '52.50', '2019-01-14 09:15:01', '2019-01-14 11:15:01', 'N'),
(82, 11, 339, '367,370,373,348,366,365,374,382,351,360,376,359,377,357,355,363,352,358,347,356,361,369,380,371,354,345,379,372,381,344,375,353,362,349,383,346,364,368,350,378', '367:D:N,370:E:N,373:C:N,348:C:N,366:C:N,365::Y,374:A:N,382:B:N,351:B:N,360:D:N,376:B:N,359:E:N,377:B:N,357:C:N,355:B:N,363:E:N,352:A:N,358::N,347:A:N,356:C:N,361:B:N,369:A:N,380:A:N,371:B:N,354:E:N,345:B:N,379:A:N,372:E:N,381:E:N,344:D:N,375:E:N,353:E:N,362:C:N,349:B:N,383:B:N,346:B:N,364::N,368::N,350::N,378::N', 17, '42.50', '42.50', '2019-01-14 09:15:07', '2019-01-14 11:15:07', 'N'),
(83, 16, 321, '347,373,358,355,364,346,363,381,382,365,352,369,374,360,349,356,348,370,378,350,376,372,383,351,371,380,345,379,354,377,344,368,367,353,359,375,361,357,366,362', '347:A:N,373:A:N,358:D:N,355:B:N,364:C:N,346:D:N,363:E:N,381:B:N,382:B:N,365:E:N,352:D:N,369:C:N,374:A:N,360:B:N,349:E:N,356:E:N,348:D:N,370:E:N,378:E:N,350:C:N,376:B:N,372:D:N,383:E:N,351:C:N,371:A:N,380:A:N,345:D:N,379:A:N,354:A:N,377:E:N,344:D:N,368:E:N,367:A:N,353:C:N,359:B:N,375:C:N,361:B:N,357:C:N,366:B:N,362:E:N', 25, '62.50', '62.50', '2019-01-14 09:15:21', '2019-01-14 11:15:21', 'N'),
(84, 16, 312, '375,348,346,351,381,377,359,367,370,347,357,366,353,345,382,383,349,358,369,373,374,364,344,363,376,360,371,361,365,380,354,362,355,350,378,379,372,352,356,368', '375:B:N,348:D:N,346:B:N,351:E:N,381:B:N,377:A:N,359:B:N,367:D:N,370:E:N,347:A:N,357:D:N,366:C:N,353:E:N,345:D:N,382:A:N,383:D:N,349:E:N,358:D:N,369:B:N,373:C:N,374:B:N,364:A:N,344:C:N,363:E:N,376:B:N,360:E:N,371:A:N,361:A:N,365:D:N,380:E:N,354:A:N,362:A:N,355:D:N,350:D:N,378:B:N,379:A:N,372:C:N,352:D:N,356:B:N,368::N', 14, '35.00', '35.00', '2019-01-14 09:15:23', '2019-01-14 11:15:23', 'N'),
(85, 11, 329, '353,364,348,363,362,373,361,344,345,383,375,347,370,376,378,369,351,381,371,356,346,354,379,380,359,349,352,350,377,368,367,360,357,372,382,374,355,366,358,365', '353:B:N,364:C:N,348:E:N,363:E:N,362:A:N,373:A:N,361:B:N,344:D:N,345:A:N,383:B:N,375:B:N,347:A:N,370:E:N,376:B:N,378:B:N,369:D:N,351:C:N,381:D:N,371:A:N,356:E:N,346:D:N,354:A:N,379:E:N,380:A:N,359:B:N,349:C:N,352:D:N,350:C:N,377:A:N,368:C:N,367:C:N,360:B:N,357:C:N,372:D:N,382:B:N,374:B:N,355:D:N,366:B:N,358:D:N,365:B:N', 20, '50.00', '50.00', '2019-01-14 09:15:26', '2019-01-14 11:15:26', 'N'),
(86, 16, 309, '344,375,352,372,366,359,380,353,381,365,357,348,360,373,362,371,346,351,361,383,368,363,379,355,356,376,382,374,378,369,370,347,350,349,367,364,358,354,345,377', '344:C:N,375:D:N,352:D:N,372:E:N,366:C:N,359:B:N,380:C:N,353:A:N,381:E:N,365:C:N,357:D:N,348:E:N,360:B:N,373:B:N,362:A:N,371:A:N,346:B:N,351:C:N,361:D:N,383:E:N,368:B:N,363:E:N,379:A:N,355:B:N,356:A:N,376:B:N,382:B:N,374:A:N,378:B:N,369:B:N,370:E:N,347:A:N,350:B:N,349:A:N,367:D:N,364:C:N,358:D:N,354:A:N,345:E:N,377:D:N', 19, '47.50', '47.50', '2019-01-14 09:15:35', '2019-01-14 11:15:35', 'N'),
(87, 16, 320, '354,358,383,362,346,373,351,377,371,366,357,350,364,345,369,361,355,375,367,363,359,379,347,370,356,349,348,374,344,365,360,352,376,353,372,380,368,381,382,378', '354:E:N,358:D:N,383:A:N,362:E:Y,346:D:N,373:A:N,351:C:N,377:D:N,371:E:N,366:B:N,357:D:N,350:C:N,364:A:N,345:D:N,369:D:N,361:B:N,355:A:N,375:B:N,367:C:N,363:A:N,359:B:N,379:C:N,347:B:N,370:B:N,356:A:N,349:E:N,348:D:N,374:B:N,344:A:N,365:C:N,360:A:N,352:E:N,376:B:N,353:D:N,372:A:N,380:D:N,368:C:N,381:E:N,382:C:N,378:B:N', 11, '27.50', '27.50', '2019-01-14 09:15:37', '2019-01-14 11:15:37', 'N'),
(88, 11, 331, '377,361,348,380,367,352,371,368,351,353,346,381,355,373,364,366,360,358,382,354,350,370,378,369,383,344,365,363,375,347,362,359,345,376,357,349,372,374,379,356', '', 4, '10.00', '10.00', '2019-01-14 09:15:40', '2019-01-14 11:15:40', 'N'),
(89, 11, 332, '362,348,361,357,355,368,374,373,375,345,382,346,356,378,370,383,354,376,371,380,372,351,381,344,358,352,353,350,379,369,364,347,360,365,366,359,367,377,349,363', '362:A:N,348:B:N,361:C:N,357:C:N,355:A:N,368:E:N,374:A:N,373:E:N,375:D:N,345:E:N,382:B:N,346:E:N,356:A:N,378:B:N,370:D:N,383:E:N,354:E:N,376:B:N,371:C:N,380:D:N,372:D:N,351:C:N,381::N,344:D:N,358:C:N,352:D:N,353:E:N,350::N,379:E:N,369:E:N,364::N,347::N,360::N,365::N,366::N,359::N,367::N,377::N,349::N,363::N', 0, '0.00', '0.00', '2019-01-14 09:15:41', '2019-01-14 11:15:41', 'Y'),
(90, 16, 322, '374,367,372,381,360,370,352,358,350,380,345,351,363,369,365,379,348,366,371,364,354,382,353,375,357,356,383,377,347,346,362,361,355,373,349,368,376,359,378,344', '374:A:N,367:C:N,372:B:N,381:B:N,360:B:N,370:E:N,352:D:N,358:D:N,350:E:N,380:A:N,345:D:N,351:C:N,363:E:N,369:B:N,365:B:N,379:C:N,348:D:N,366:B:N,371:A:N,364:C:N,354:A:N,382:B:N,353:D:N,375:D:N,357:D:N,356:A:N,383:E:N,377:C:N,347:A:N,346:B:N,362:A:N,361:B:N,355:B:N,373:C:N,349:E:N,368:B:N,376:B:N,359:B:N,378:B:N,344:A:N', 24, '60.00', '60.00', '2019-01-14 09:16:01', '2019-01-14 11:16:01', 'N'),
(91, 11, 344, '367,372,353,371,344,347,346,355,378,354,382,345,380,375,348,356,350,363,369,360,370,349,379,365,359,357,361,368,352,374,373,366,376,364,351,381,362,358,377,383', '367:C:N,372:C:N,353:B:N,371:A:N,344:A:N,347:B:N,346:E:N,355:B:N,378:A:N,354:E:N,382:B:N,345:D:N,380:A:N,375:C:N,348:D:N,356:E:N,350:B:N,363:E:N,369:B:N,360:D:N,370:E:N,349:E:N,379:C:N,365:A:N,359:B:N,357:D:N,361:B:N,368:E:N,352:D:N,374:A:N,373:C:N,366:D:N,376:B:N,364:C:N,351:C:N,381:B:N,362:E:N,358:D:N,377:C:N,383:E:N', 18, '45.00', '45.00', '2019-01-14 09:16:11', '2019-01-14 11:16:11', 'N'),
(92, 16, 311, '348,346,351,362,360,356,353,354,376,349,365,359,371,367,368,373,375,366,358,363,352,378,355,347,372,382,361,383,344,369,377,379,345,381,380,374,364,350,370,357', '348:E:N,346:D:N,351:C:N,362:A:N,360:D:N,356:A:N,353:E:N,354:E:N,376:B:N,349:E:N,365:B:N,359:B:N,371:A:N,367:A:N,368:B:N,373:C:N,375:D:N,366:B:N,358:D:N,363:E:N,352:D:N,378:B:N,355:D:N,347:A:N,372:D:N,382:B:N,361:D:N,383:E:N,344:A:N,369:D:N,377:C:N,379:A:N,345:B:N,381:E:N,380:C:N,374:A:N,364:A:N,350:C:N,370:E:N,357:D:N', 25, '62.50', '62.50', '2019-01-14 09:16:19', '2019-01-14 11:16:19', 'N'),
(93, 16, 316, '378,367,376,350,374,356,372,381,345,363,349,382,377,366,371,344,347,352,368,359,379,365,354,362,353,364,383,357,348,358,375,361,355,351,370,369,380,373,360,346', '378:B:N,367:A:N,376:B:N,350:C:N,374:B:N,356:E:N,372:D:N,381:A:N,345:D:N,363:A:N,349:B:N,382:E:N,377:A:N,366:E:N,371:A:N,344:E:N,347:E:N,352:A:N,368:D:N,359:C:N,379:A:N,365:A:N,354:C:N,362::Y,353::Y,364:C:N,383:A:N,357:D:N,348:B:N,358:A:N,375:C:N,361:B:N,355:B:N,351:B:N,370:B:N,369:D:N,380:E:N,373:E:N,360:B:N,346:A:N', 0, '0.00', '0.00', '2019-01-14 09:16:28', '2019-01-14 11:16:28', 'Y'),
(94, 11, 335, '359,376,371,367,372,356,370,357,353,354,350,382,379,352,380,365,378,364,373,375,346,348,358,349,355,360,363,366,374,345,351,344,381,362,368,377,383,361,347,369', '359:B:N,376:B:N,371:A:N,367:A:N,372:D:N,356:E:N,370:E:N,357:D:N,353:A:N,354:A:N,350:B:N,382:B:N,379:C:N,352:D:N,380:A:N,365:B:N,378:B:N,364:C:N,373:A:N,375:D:N,346:D:N,348:E:N,358:D:N,349:E:N,355:D:N,360:B:N,363:E:N,366:B:N,374:A:N,345:D:N,351:C:N,344:D:N,381:B:N,362:A:N,368:E:N,377:E:N,383:E:N,361:D:N,347:A:N,369:B:N', 25, '62.50', '62.50', '2019-01-14 09:16:30', '2019-01-14 11:16:30', 'N'),
(95, 11, 333, '349,364,373,375,369,360,383,366,380,370,359,362,365,344,354,381,363,356,368,351,350,348,347,352,353,358,355,378,371,345,346,376,372,377,379,374,361,357,367,382', '349:E:N,364:C:N,373:C:N,375:C:N,369:D:N,360:B:N,383:E:N,366:B:N,380:C:N,370:E:N,359:B:N,362:E:N,365:B:N,344:A:N,354:A:N,381:E:N,363:E:N,356:E:N,368:E:N,351:C:N,350:C:N,348:E:N,347:A:N,352:D:N,353:C:N,358:D:N,355:D:N,378:B:N,371:A:N,345:D:N,346:D:N,376:B:N,372:D:N,377:C:N,379:A:N,374:A:N,361:B:N,357:C:N,367:D:N,382:B:N', 23, '57.50', '57.50', '2019-01-14 09:16:32', '2019-01-14 11:16:32', 'N'),
(96, 16, 313, '346,362,373,355,380,370,357,358,348,349,371,361,347,363,367,366,350,369,359,352,375,383,379,365,377,351,376,345,353,364,368,360,372,382,381,354,378,356,374,344', '', 1, '100.00', '0.00', '2019-01-14 09:16:39', '2019-01-14 11:16:39', 'N'),
(97, 16, 308, '347,359,355,372,376,346,371,350,360,375,380,369,366,362,353,363,374,382,383,379,351,377,352,357,349,381,348,356,361,367,364,354,370,345,378,373,368,365,358,344', '347:A:N,359:E:N,355:D:N,372:B:N,376:B:N,346:D:N,371:A:N,350:C:N,360:B:N,375:B:N,380:A:N,369:B:N,366:B:N,362:B:N,353:E:N,363:E:N,374:A:N,382:B:N,383:E:N,379:A:N,351:B:N,377:E:N,352:D:N,357:D:N,349:C:N,381:A:N,348:D:N,356:C:N,361:B:N,367:C:N,364:C:N,354:E:N,370:E:N,345:C:N,378:A:N,373:B:N,368:D:N,365:C:N,358:D:N,344:A:N', 19, '47.50', '47.50', '2019-01-14 09:16:39', '2019-01-14 11:16:39', 'N'),
(98, 16, 326, '370,344,373,354,360,369,383,346,368,379,376,378,355,363,356,364,375,353,377,362,345,380,351,374,349,371,382,381,347,348,367,365,357,366,358,350,359,372,361,352', '370:E:N,344:C:N,373:A:N,354:A:N,360:B:N,369:B:N,383:E:N,346:D:N,368:B:N,379:E:N,376:B:N,378:A:N,355:D:N,363:C:N,356:E:N,364:C:N,375:D:N,353:D:N,377:A:N,362:A:N,345:D:N,380:A:N,351:C:N,374:A:N,349:E:N,371:A:N,382:B:N,381:D:N,347:B:N,348:D:N,367:A:N,365:B:N,357:D:N,366:B:N,358:D:N,350:E:N,359:C:N,372:A:N,361:D:N,352:A:N', 19, '47.50', '47.50', '2019-01-14 09:16:41', '2019-01-14 11:16:41', 'N'),
(99, 16, 314, '363,366,374,375,362,370,376,354,380,372,378,346,377,353,349,357,382,345,352,369,368,344,383,355,356,351,371,347,373,361,367,381,358,365,359,360,348,350,379,364', '', 1, '100.00', '0.00', '2019-01-14 09:16:42', '2019-01-14 11:16:42', 'N'),
(100, 11, 336, '358,348,368,357,382,369,350,378,356,355,371,352,377,353,380,364,347,345,344,370,374,383,354,349,365,381,351,372,379,359,346,376,363,360,361,375,362,373,366,367', '358:D:N,348:D:N,368:B:N,357:D:N,382:B:N,369:B:N,350:E:N,378:B:N,356:A:N,355:A:N,371:A:N,352:D:N,377:C:N,353:D:N,380:A:N,364:C:N,347:E:N,345:D:N,344:D:N,370:E:N,374:D:N,383:E:N,354:A:N,349:E:N,365:B:N,381:D:N,351:B:N,372:C:N,379:C:N,359:B:N,346:D:N,376:B:N,363:E:N,360:B:N,361:D:N,375:D:N,362:A:N,373:C:N,366:B:N,367:A:N', 24, '60.00', '60.00', '2019-01-14 09:16:44', '2019-01-14 11:16:44', 'N'),
(101, 11, 328, '349,360,345,354,366,356,368,369,371,346,363,367,362,382,383,357,380,347,348,364,365,373,381,350,376,358,370,344,374,352,372,375,378,359,353,355,351,361,377,379', '', 1, '100.00', '0.00', '2019-01-14 09:16:45', '2019-01-14 11:16:45', 'N'),
(102, 11, 346, '360,370,375,369,361,368,358,383,378,362,357,352,376,381,349,377,350,380,372,366,379,364,359,382,365,353,367,356,354,355,363,348,373,371,351,344,374,347,345,346', '', 0, '0.00', '0.00', '2019-01-14 09:16:46', '2019-01-14 11:16:46', 'Y'),
(103, 11, 345, '364,359,366,351,354,376,378,382,348,372,374,355,346,361,344,360,377,352,350,347,380,353,367,362,363,349,369,345,365,358,381,356,383,373,357,375,379,370,368,371', '364:A:N,359:B:N,366:A:N,351:E:N,354:A:N,376:D:N,378:B:N,382:B:N,348:C:N,372:D:N,374:A:N,355:D:N,346:D:N,361:B:N,344:C:N,360:B:N,377:B:N,352:D:N,350:E:N,347:A:N,380:A:N,353:E:N,367:B:N,362:E:N,363:D:N,349:E:N,369:D:N,345:C:N,365:C:N,358:D:N,381:A:N,356:A:N,383:E:N,373:A:N,357:D:N,375:C:N,379:A:N,370:D:N,368:B:N,371:A:Y', 21, '52.50', '52.50', '2019-01-14 09:17:10', '2019-01-14 11:17:10', 'N'),
(104, 11, 340, '367,345,358,368,360,356,362,363,380,376,350,359,374,351,366,369,375,364,354,381,353,365,344,379,371,347,382,349,352,373,355,372,348,357,370,346,383,378,377,361', '367:C:N,345:B:N,358:E:N,368:D:N,360:B:N,356:A:N,362:B:N,363:B:N,380:A:N,376:B:N,350:C:N,359:B:N,374:A:N,351:A:N,366:B:N,369:D:N,375:A:N,364:C:N,354:E:N,381:B:N,353:E:N,365:C:N,344:C:N,379:D:N,371:C:N,347:A:N,382:E:N,349:A:N,352:D:N,373:C:N,355:A:N,372:B:N,348:D:N,357:D:N,370:E:N,346:D:N,383:A:N,378:B:N,377:A:N,361:B:N', 16, '40.00', '40.00', '2019-01-14 09:17:25', '2019-01-14 11:17:25', 'N'),
(105, 16, 319, '348,357,350,381,376,365,359,367,383,354,345,375,347,344,366,362,374,378,346,360,379,349,358,361,377,352,371,369,356,355,370,382,372,353,380,373,351,363,364,368', '348:E:N,357:E:N,350:C:N,381:C:N,376:D:N,365:E:N,359:D:N,367:C:N,383:D:N,354:E:N,345:C:N,375:B:N,347:A:N,344:D:N,366:B:N,362:E:N,374:A:N,378:B:N,346:D:N,360:B:N,379:B:N,349:C:N,358:A:N,361:B:N,377:B:N,352:B:N,371:C:N,369:D:N,356:A:N,355:B:N,370:D:N,382:A:N,372:B:N,353:A:N,380:A:N,373:E:N,351:A:N,363:B:N,364:C:N,368:A:N', 15, '37.50', '37.50', '2019-01-14 09:17:31', '2019-01-14 11:17:31', 'N'),
(106, 11, 342, '374,382,367,362,352,364,366,354,373,380,371,356,345,359,383,349,365,344,348,375,351,369,358,378,350,363,353,346,347,376,355,360,357,361,381,372,368,377,370,379', '374:A:N,382:B:N,367:A:N,362:A:N,352:D:N,364:C:N,366:B:N,354:E:N,373:C:N,380:A:N,371:A:N,356:A:N,345:C:N,359:B:N,383:E:N,349:C:N,365:B:N,344:A:N,348:D:N,375:C:N,351:C:N,369:B:N,358:D:N,378:B:N,350:C:N,363:C:N,353:C:N,346:B:N,347:A:N,376:B:N,355:B:N,360:B:N,357:D:N,361:B:N,381:E:N,372:B:N,368:E:N,377::N,370::N,379::N', 0, '0.00', '0.00', '2019-01-14 09:18:20', '2019-01-14 11:18:20', 'Y'),
(107, 16, 307, '349,350,348,347,351,346,354,374,370,352,363,381,357,358,375,360,377,353,382,359,355,372,366,371,369,365,368,373,345,378,376,364,344,380,367,383,356,361,362,379', '349:E:N,350:C:N,348:D:N,347:A:N,351:C:N,346:D:N,354:E:N,374:A:N,370:E:N,352:D:N,363:E:N,381:D:N,357:C:N,358:D:N,375:C:N,360:B:N,377:D:N,353:C:N,382:B:N,359:E:N,355:B:N,372:B:N,366:C:N,371:A:N,369:D:N,365:E:N,368:A:N,373:A:N,345:B:N,378:B:N,376:B:N,364:C:N,344:A:N,380:C:N,367:D:N,383:E:N,356:C:N,361:B:N,362:D:N,379:C:N', 20, '50.00', '50.00', '2019-01-14 09:19:02', '2019-01-14 11:19:02', 'N'),
(108, 16, 315, '349,368,379,367,348,366,356,375,377,365,347,351,346,359,371,352,372,345,383,363,344,358,378,354,355,373,370,353,360,376,382,361,380,364,381,350,369,357,362,374', '349:E:N,368:E:N,379:A:N,367::N,348:C:N,366:B:N,356:E:N,375:A:N,377:A:N,365:A:N,347:E:N,351:B:N,346:B:N,359:A:N,371:A:N,352:D:N,372:D:N,345:C:N,383:B:N,363:E:N,344:C:N,358:D:N,378:B:N,354:E:N,355:B:N,373:C:N,370:D:N,353::N,360:B:N,376:B:N,382:B:N,361:B:N,380:A:N,364:A:N,381:D:N,350:A:N,369::N,357::N,362::N,374::N', 0, '0.00', '0.00', '2019-01-14 09:19:34', '2019-01-14 11:19:34', 'Y'),
(109, 15, 266, '369,357,350,377,374,370,356,352,348,361,364,363,359,344,379,353,375,362,351,382,365,381,346,354,355,349,347,371,373,368,366,360,358,372,378,367,345,380,383,376', '369:D:N,357:D:N,350:B:N,377:A:N,374:A:N,370:C:N,356:E:N,352:D:N,348:E:N,361:D:N,364:C:N,363:B:N,359:B:N,344:A:N,379:A:N,353:B:N,375:A:N,362:C:N,351:D:N,382:A:N,365:C:N,381:A:N,346:B:N,354:C:N,355:B:N,349:C:N,347:B:N,371:A:N,373:B:N,368:E:N,366:B:N,360:B:N,358:D:N,372:E:N,378:B:N,367:E:N,345:B:N,380:A:N,383:C:N,376::N', 0, '0.00', '0.00', '2019-01-14 09:21:04', '2019-01-14 11:21:04', 'Y'),
(110, 15, 283, '348,355,350,366,357,347,380,345,358,351,379,359,349,373,372,382,368,356,361,370,363,352,371,378,362,354,346,353,344,367,381,383,374,377,375,376,364,360,369,365', '348:E:N,355:B:N,350:A:N,366:B:N,357:D:N,347:A:N,380:A:N,345:D:N,358:D:N,351:C:N,379:E:N,359:B:N,349:E:N,373:B:N,372:D:N,382:B:N,368:D:N,356:C:N,361:B:N,370:D:N,363:E:N,352:D:N,371:D:N,378:A:N,362:C:N,354:C:N,346:C:N,353:A:N,344:D:N,367:B:N,381:D:N,383:C:N,374:E:N,377:A:N,375:E:N,376:A:N,364:C:N,360:A:N,369:B:N,365:E:N', 16, '40.00', '40.00', '2019-01-14 09:21:31', '2019-01-14 11:21:31', 'N'),
(111, 15, 275, '376,351,355,353,367,374,363,371,383,346,381,369,375,348,359,362,377,345,379,372,365,373,378,361,380,349,350,368,344,357,358,366,360,364,356,382,370,352,354,347', '', 23, '57.50', '57.50', '2019-01-14 09:21:33', '2019-01-14 11:21:33', 'N'),
(112, 15, 282, '349,379,358,347,367,366,368,376,371,346,375,372,378,344,365,383,357,362,377,355,381,354,356,369,373,360,359,353,351,364,380,363,350,348,382,352,370,374,345,361', '349:E:N,379:E:N,358:A:N,347:A:N,367:B:N,366:B:N,368:D:N,376:D:N,371:A:N,346:E:N,375:D:N,372:C:N,378:D:N,344:B:N,365:B:N,383:E:N,357::N,362::N,377::N,355::N,381::N,354::N,356::N,369::N,373::N,360::N,359::N,353::N,351::N,364::N,380::N,363::N,350::N,348::N,382::N,352::N,370::N,374::N,345::N,361::N', 0, '0.00', '0.00', '2019-01-14 09:21:34', '2019-01-14 11:21:34', 'Y'),
(113, 15, 281, '361,376,369,378,357,348,354,379,366,360,383,375,352,351,345,362,356,359,353,371,377,350,381,373,365,367,370,382,372,358,355,347,380,374,364,363,368,346,344,349', '361:B:N,376:B:N,369:C:N,378:B:N,357:C:N,348:C:N,354:E:N,379:A:N,366:B:N,360:B:N,383:E:N,375:D:N,352:D:N,351:D:N,345:C:N,362:A:N,356:E:N,359:B:N,353:E:N,371:A:N,377:C:N,350:B:N,381:B:N,373:C:N,365:C:N,367:D:N,370:D:N,382:B:N,372:E:N,358:D:N,355:D:N,347:A:N,380:A:N,374:A:N,364:A:N,363:E:N,368:C:N,346:D:N,344:C:N,349:E:N', 26, '65.00', '65.00', '2019-01-14 09:21:38', '2019-01-14 11:21:38', 'N'),
(114, 16, 310, '362,372,355,371,381,346,379,354,361,375,369,353,363,350,360,345,370,368,357,352,383,356,366,380,359,377,367,374,347,376,349,351,348,378,358,364,373,344,382,365', '362::N,372:B:N,355:B:N,371:A:N,381:E:N,346:B:N,379:A:N,354:E:N,361:B:N,375:C:N,369:B:N,353:C:N,363:E:N,350:C:N,360:B:N,345:D:N,370:D:N,368:B:N,357:D:N,352:D:N,383:E:N,356:A:N,366:B:N,380:A:N,359:B:N,377:B:N,367:A:N,374:A:N,347:A:N,376:B:N,349:C:N,351:C:N,348:D:N,378::Y,358:D:N,364:C:N,373:C:N,344:C:N,382:B:N,365:B:N', 25, '62.50', '62.50', '2019-01-14 09:21:51', '2019-01-14 11:21:51', 'N'),
(115, 15, 284, '344,366,374,364,348,349,359,345,347,377,352,351,382,367,378,368,355,370,350,358,353,383,354,372,376,357,365,369,360,371,379,373,362,380,363,356,375,381,346,361', '344:C:N,366:A:N,374:A:N,364:C:N,348:E:N,349:D:N,359:B:N,345:D:N,347:A:N,377:A:N,352:D:N,351:C:N,382:B:N,367:E:N,378:A:N,368:B:N,355:A:N,370:E:N,350:E:N,358:D:N,353:B:N,383:C:N,354:E:N,372:A:N,376:B:N,357:D:N,365:C:N,369:E:N,360:D:N,371:A:N,379:E:N,373:A:N,362:B:N,380:A:N,363:B:N,356:E:N,375:D:N,381:E:N,346:D:N,361:B:N', 18, '45.00', '45.00', '2019-01-14 09:22:03', '2019-01-14 11:22:03', 'N'),
(116, 15, 269, '374,378,349,348,347,350,363,346,357,381,345,382,344,377,351,365,359,352,379,354,373,367,370,375,356,369,355,361,376,383,368,372,362,380,371,366,353,364,358,360', '374:A:N,378:E:N,349:E:N,348:E:N,347:A:N,350:C:N,363:E:N,346:D:N,357:C:N,381:E:N,345:B:N,382:B:N,344:D:N,377:E:N,351:C:N,365:B:N,359:B:N,352:D:N,379:A:N,354:E:N,373:C:N,367:B:N,370:E:N,375:C:N,356:E:N,369:C:N,355:D:N,361:D:N,376:B:N,383:E:N,368:E:N,372:D:N,362:A:N,380:A:N,371:A:N,366:B:N,353:E:N,364:C:N,358:D:N,360:B:N', 0, '0.00', '0.00', '2019-01-14 09:22:23', '2019-01-14 11:22:23', 'Y'),
(117, 15, 279, '361,360,377,359,347,355,358,345,381,349,350,383,367,344,374,376,351,346,382,372,354,366,364,369,356,353,371,363,368,380,375,357,378,352,379,373,365,348,370,362', '361:B:N,360:D:N,377:C:N,359:B:N,347:A:N,355:B:N,358:D:N,345:C:N,381:E:N,349:E:N,350:E:N,383:E:N,367:A:N,344:C:N,374:A:N,376:B:N,351:C:N,346:B:N,382:B:N,372:D:N,354:E:N,366:B:N,364:C:N,369:D:N,356:E:N,353:D:N,371:A:N,363:E:N,368:A:N,380:C:N,375:C:N,357:D:N,378:B:N,352:D:N,379:C:N,373:B:N,365:E:N,348:E:N,370:D:N,362:A:N', 26, '65.00', '65.00', '2019-01-14 09:22:26', '2019-01-14 11:22:26', 'N'),
(118, 15, 256, '380,363,364,382,377,356,349,367,350,353,378,358,365,352,351,345,368,369,383,359,361,357,379,375,360,344,374,355,381,362,376,366,370,348,371,373,372,347,346,354', '380:C:N,363:E:N,364:C:N,382:B:N,377:A:N,356:C:N,349:C:N,367:C:N,350:C:N,353:E:N,378:E:N,358:D:N,365:B:N,352:D:N,351:B:N,345:A:N,368:B:N,369:D:N,383:E:N,359:B:N,361:D:N,357:D:N,379:A:N,375:B:N,360:B:N,344:C:N,374:A:N,355:B:N,381:B:N,362:A:N,376:B:N,366:B:N,370:E:N,348:E:N,371:A:N,373:A:N,372:E:N,347:A:N,346:D:N,354:E:N', 21, '52.50', '52.50', '2019-01-14 09:22:48', '2019-01-14 11:22:48', 'N'),
(119, 12, 251, '357,371,380,375,359,378,349,355,372,344,363,351,366,362,374,368,364,361,354,345,346,356,360,350,376,377,381,358,348,352,373,347,367,365,379,353,383,382,369,370', '357:D:N,371:E:N,380:A:N,375:D:N,359:B:N,378:B:N,349:E:N,355:D:N,372:A:N,344:C:N,363:E:N,351:C:N,366:B:N,362:A:N,374:A:N,368:E:N,364:B:N,361:B:N,354:A:N,345:D:N,346:D:N,356:A:N,360:B:N,350:E:N,376:B:N,377:E:N,381:B:N,358:D:N,348:E:N,352:D:N,373:C:N,347::N,367::N,365::N,379::N,353::N,383::N,382::N,369::N,370::N', 0, '0.00', '0.00', '2019-01-14 09:22:53', '2019-01-14 11:22:53', 'Y'),
(120, 15, 280, '361,378,381,360,349,376,352,353,368,382,355,367,372,347,356,354,370,345,344,350,375,358,377,365,379,348,374,359,346,363,366,351,371,383,357,373,362,380,364,369', '361:D:N,378:A:N,381:E:N,360:D:N,349:B:N,376:B:N,352:D:N,353:D:N,368:D:N,382:E:N,355:A:N,367:C:N,372:A:N,347:D:N,356:E:N,354:D:N,370:D:N,345:D:N,344:C:N,350:C:N,375:A:N,358:E:N,377:C:N,365:B:N,379:B:N,348:E:N,374:A:N,359:A:N,346:E:N,363:A:N,366:B:N,351:C:N,371::N,383::N,357::N,373::N,362::N,380::N,364::N,369::N', 0, '0.00', '0.00', '2019-01-14 09:22:54', '2019-01-14 11:22:54', 'Y'),
(121, 15, 287, '349,383,368,370,345,357,360,378,344,367,352,379,374,375,369,361,353,355,381,372,354,377,358,346,362,380,366,364,382,348,365,350,359,347,376,351,363,371,356,373', '349:D:N,383:E:N,368:C:N,370:E:N,345:C:N,357:D:N,360:D:N,378:B:N,344:C:N,367:A:N,352:D:N,379:A:N,374:A:N,375:C:N,369:B:N,361:D:N,353::Y,355:B:N,381:E:N,372:D:N,354:A:N,377:C:N,358:D:N,346:E:N,362:A:N,380:A:N,366:B:N,364:C:N,382:E:N,348:D:N,365:A:N,350:C:N,359:B:N,347:C:N,376:B:N,351:D:N,363:E:N,371::N,356::N,373::N', 0, '0.00', '0.00', '2019-01-14 09:23:04', '2019-01-14 11:23:04', 'Y'),
(122, 22, 252, '372,348,349,347,374,358,345,375,378,363,360,352,379,353,370,383,377,356,350,361,355,366,344,362,346,367,354,357,351,364,380,368,371,376,381,373,369,365,382,359', '372:D:N,348:E:N,349:E:N,347:D:N,374:A:N,358:D:N,345:C:N,375:A:N,378:B:N,363:E:N,360:D:N,352:D:N,379:B:N,353:D:N,370:E:N,383:E:N,377:C:N,356:A:N,350:E:N,361:B:N,355:B:N,366:B:N,344:C:N,362:A:N,346:D:N,367:A:N,354:E:N,357:D:N,351:E:N,364:A:N,380:A:N,368:B:N,371:A:N,376:B:N,381:B:N,373:B:N,369:B:N,365:E:N,382:B:N,359::N', 0, '0.00', '0.00', '2019-01-14 09:23:06', '2019-01-14 11:23:06', 'Y'),
(123, 15, 270, '375,349,378,371,383,357,364,358,350,380,346,359,382,352,344,362,373,354,381,374,356,347,379,351,377,353,368,355,348,360,372,369,366,367,363,345,370,361,376,365', '375:B:N,349:C:N,378:B:N,371:D:N,383:E:N,357:C:N,364:B:N,358:C:N,350:A:N,380:A:N,346:B:N,359:E:N,382:B:N,352:B:N,344:D:N,362:E:N,373:A:N,354:C:N,381:D:N,374:A:N,356:E:N,347:A:N,379:A:N,351:A:N,377:B:N,353:E:N,368:D:N,355:B:N,348:D:N,360:D:N,372:A:N,369:D:N,366:C:N,367::N,363::N,345::N,370::N,361::N,376::N,365::N', 0, '0.00', '0.00', '2019-01-14 09:23:10', '2019-01-14 11:23:10', 'Y'),
(124, 11, 257, '374,379,377,344,369,382,353,358,380,345,363,368,359,373,360,351,383,367,357,348,364,376,354,365,372,378,370,366,352,355,381,356,350,361,347,349,346,371,375,362', '', 1, '100.00', '0.00', '2019-01-14 09:23:12', '2019-01-14 11:23:12', 'N'),
(125, 15, 285, '355,369,383,375,370,377,380,354,365,356,374,346,362,379,358,357,352,376,351,363,345,378,372,348,353,350,361,349,364,359,371,360,373,344,381,366,347,367,382,368', '355:B:N,369:C:N,383:A:N,375:B:N,370::N,377::N,380::N,354::N,365::N,356::N,374::N,346::N,362::N,379::N,358::N,357::N,352::N,376::N,351::N,363::N,345::N,378::N,372::N,348::N,353::N,350::N,361::N,349::N,364::N,359::N,371::N,360::N,373::N,344::N,381::N,366::N,347::N,367::N,382::N,368::N', 0, '0.00', '0.00', '2019-01-14 09:23:22', '2019-01-14 11:23:22', 'Y'),
(126, 22, 253, '356,357,358,373,359,351,352,350,367,370,381,378,353,363,360,362,345,355,344,365,383,347,374,364,346,379,376,354,369,368,348,366,377,349,371,380,372,375,382,361', '356:C:N,357:D:N,358:D:N,373:A:N,359:E:N,351:D:N,352:D:N,350:E:N,367:E:N,370:D:N,381:E:N,378:B:N,353:B:N,363:E:N,360:B:N,362:A:N,345:A:N,355:A:N,344:E:N,365:C:N,383:E:N,347:D:N,374:B:N,364:A:N,346:B:N,379:E:N,376:C:N,354:A:N,369:E:N,368:D:N,348:A:N,366:B:N,377:A:N,349:E:N,371:A:N,380:A:N,372:A:N,375:A:N,382:E:N,361::N', 0, '0.00', '0.00', '2019-01-14 09:23:23', '2019-01-14 11:23:23', 'Y'),
(127, 15, 264, '357,374,365,377,373,352,372,355,369,371,350,360,370,363,361,347,368,381,366,346,378,359,380,356,354,349,375,362,345,353,344,367,348,383,376,364,379,382,358,351', '357:B:N,374:A:N,365:A:N,377:E:N,373:A:N,352:D:N,372:D:N,355:B:N,369:B:N,371:A:N,350:E:N,360:B:N,370:E:N,363:E:N,361:D:N,347:A:N,368:D:N,381:B:N,366:B:N,346:B:N,378:B:N,359:B:N,380:A:N,356:E:N,354:A:N,349:E:N,375:B:N,362:A:N,345:E:N,353:E:N,344:C:N,367:A:N,348:E:N,383:E:N,376:B:N,364:C:N,379:A:N,382:B:N,358:D:N,351::N', 0, '0.00', '0.00', '2019-01-14 09:23:34', '2019-01-14 11:23:34', 'Y'),
(128, 11, 277, '378,351,363,346,367,355,360,383,364,344,379,372,349,381,345,361,366,375,362,347,368,356,373,370,371,358,365,382,376,354,359,374,352,350,353,348,369,377,357,380', '378:B:N,351:B:N,363:A:N,346:D:N,367:B:N,355:A:N,360:B:N,383:D:N,364:C:N,344:C:N,379:E:N,372:A:N,349:E:N,381:E:N,345:C:N,361:D:N,366:B:N,375:E:N,362:D:N,347:B:N,368:E:N,356:E:N,373:C:N,370:D:N,371:B:N,358:E:N,365:B:N,382:C:N,376:D:N,354:A:N,359:C:N,374:B:N,352:D:N,350:C:N,353:E:N,348:E:N,369:C:N,377:B:N,357:C:N,380::N', 0, '0.00', '0.00', '2019-01-14 09:23:36', '2019-01-14 11:23:36', 'Y'),
(129, 15, 272, '376,355,363,359,360,345,366,378,356,368,369,350,353,374,361,375,348,365,357,379,358,351,372,382,380,373,354,377,346,381,364,344,349,370,371,367,352,362,347,383', '376:B:N,355:A:N,363:E:N,359:B:N,360:B:N,345:A:N,366:B:N,378:B:N,356:C:N,368:E:N,369:B:N,350:E:N,353:E:N,374:E:N,361:D:N,375:C:N,348:D:N,365:A:N,357:C:N,379:A:N,358:D:N,351:D:N,372:A:N,382:B:N,380:A:N,373:A:N,354:C:N,377:B:N,346:D:N,381:E:N,364:C:N,344:E:N,349:C:N,370:D:N,371:B:N,367::N,352:D:N,362:A:N,347:A:N,383::N', 0, '0.00', '0.00', '2019-01-14 09:23:43', '2019-01-14 11:23:43', 'Y'),
(130, 15, 267, '354,381,359,372,376,377,347,369,356,382,373,344,371,352,353,350,357,348,358,363,374,351,375,362,349,380,346,370,355,365,378,367,361,360,383,364,368,345,379,366', '354:A:N,381:A:N,359:B:N,372:A:N,376:B:N,377:C:N,347:A:N,369:A:N,356:A:N,382:A:N,373:C:N,344:D:N,371:C:N,352:D:N,353:A:N,350:B:N,357:D:N,348:E:N,358:E:N,363:E:N,374:A:N,351:C:N,375:C:N,362:A:N,349:D:N,380:C:N,346:D:N,370:E:N,355::N,365::N,378:A:N,367:C:N,361:D:N,360:B:N,383:E:N,364:C:N,368::N,345::N,379::N,366::N', 0, '0.00', '0.00', '2019-01-14 09:23:47', '2019-01-14 11:23:47', 'Y'),
(131, 15, 259, '379,352,362,375,380,356,371,350,383,353,355,357,351,365,369,366,372,373,364,382,361,344,349,359,346,377,345,358,381,367,370,360,348,374,347,378,363,368,354,376', '379:A:N,352:D:N,362:A:N,375:D:N,380:C:N,356:C:N,371:A:N,350:C:N,383:E:N,353:E:N,355:D:N,357:C:N,351:C:N,365:C:N,369:C:N,366:B:N,372:B:N,373:A:N,364:C:N,382::N,361:B:N,344:C:N,349:E:N,359:B:N,346:D:N,377:A:N,345:C:N,358:D:N,381:E:N,367:E:N,370:E:N,360:B:N,348::N,374::N,347::N,378::N,363::N,368::N,354::N,376::N', 0, '0.00', '0.00', '2019-01-14 09:23:50', '2019-01-14 11:23:50', 'Y'),
(132, 15, 268, '361,382,346,344,379,358,352,362,367,356,364,378,351,359,345,381,376,354,348,353,360,374,349,371,355,357,377,363,383,380,372,373,350,370,375,368,369,347,365,366', '361:A:N,382:B:N,346:E:N,344:C:N,379:A:N,358:D:N,352:D:N,362:D:N,367:B:N,356:E:N,364:B:N,378:B:N,351:E:N,359:B:N,345:D:N,381:D:N,376:D:N,354:E:N,348:D:N,353:D:N,360:D:N,374:A:N,349:E:N,371:E:N,355:B:N,357:B:N,377:A:N,363:C:N,383:E:N,380:A:N,372:A:N,373:E:N,350:C:N,370:E:N,375:D:N,368:D:N,369:C:N,347:A:N,365:B:N,366:B:N', 0, '0.00', '0.00', '2019-01-14 09:23:54', '2019-01-14 11:23:54', 'Y'),
(133, 22, 250, '371,375,379,354,380,355,347,353,350,376,374,361,360,364,368,345,382,366,377,357,346,372,378,370,383,367,369,373,381,356,349,348,358,352,351,363,362,359,344,365', '371:D:N,375:A:N,379:C:N,354:E:N,380:A:N,355:A:N,347:D:N,353::N,350:C:N,376:B:N,374:A:N,361:D:N,360:B:N,364:A:N,368:E:N,345:A:N,382:B:N,366:B:N,377:C:N,357:D:N,346:D:N,372:D:N,378:B:N,370:D:N,383:A:N,367:E:N,369:E:N,373:C:N,381:C:N,356:E:N,349:D:N,348:D:N,358:D:N,352:D:N,351::N,363::N,362::N,359::N,344::N,365::N', 0, '0.00', '0.00', '2019-01-14 09:24:04', '2019-01-14 11:24:04', 'Y'),
(134, 15, 261, '363,351,376,382,352,371,348,360,381,354,362,364,345,374,377,372,349,355,367,369,365,353,346,379,380,368,356,366,358,375,350,357,344,373,370,361,378,347,383,359', '363:A:N,351:A:N,376:A:N,382:A:N,352:D:N,371:A:N,348:C:N,360:B:N,381:C:N,354:A:N,362:A:N,364:E:N,345:D:N,374:A:N,377:E:N,372:A:N,349:E:N,355:A:N,367:B:N,369:B:N,365:A:N,353:E:N,346:D:N,379:A:N,380:A:N,368:E:N,356:E:N,366:B:N,358:A:N,375:A:N,350:C:N,357:D:N,344:C:N,373:E:N,370:B:N,361:A:N,378:A:N,347:C:N,383:E:N,359::N', 0, '0.00', '0.00', '2019-01-14 09:24:18', '2019-01-14 11:24:18', 'Y'),
(135, 15, 258, '351,362,358,354,373,349,360,368,363,383,344,370,382,374,346,371,361,367,381,348,380,376,350,345,352,378,347,379,355,357,377,366,372,375,359,364,365,369,356,353', '351:B:N,362:A:N,358:D:N,354:E:N,373:A:N,349:D:N,360:B:N,368:C:N,363:E:N,383:A:N,344:E:N,370:E:N,382:B:N,374:A:N,346:D:N,371:A:N,361:A:N,367:A:N,381:B:N,348:E:N,380:A:N,376:B:N,350:C:N,345:A:N,352:D:N,378:D:N,347:A:N,379:A:N,355:B:N,357:E:N,377::N,366:B:N,372:B:N,375:C:N,359:B:N,364:C:N,365:B:N,369:B:N,356:E:N,353::N', 0, '0.00', '0.00', '2019-01-14 09:24:21', '2019-01-14 11:24:21', 'Y'),
(136, 15, 271, '345,370,369,371,362,378,368,372,356,349,355,353,357,383,360,365,376,352,364,377,375,344,366,346,373,374,350,358,367,380,361,348,381,359,351,363,347,382,354,379', '345:A:N,370:E:N,369:A:N,371:A:N,362:E:N,378:B:N,368:E:N,372:E:N,356::N,349:E:N,355:B:N,353:A:N,357:D:N,383:A:N,360:B:N,365:A:N,376:B:N,352:D:N,364:C:N,377:C:N,375:D:N,344:A:N,366:B:N,346:E:N,373:A:N,374:A:N,350:C:N,358:D:N,367:E:N,380:A:N,361:B:N,348:D:N,381:B:N,359:E:N,351:C:N,363:E:N,347:A:N,382:B:N,354:E:N,379:A:N', 19, '47.50', '47.50', '2019-01-14 09:24:42', '2019-01-14 11:24:42', 'N'),
(137, 15, 286, '363,350,378,382,352,370,353,373,365,362,355,374,357,369,377,348,358,380,354,383,368,344,376,351,372,379,367,349,346,347,375,364,359,345,371,366,360,361,356,381', '363:E:N,350:C:N,378:B:N,382:A:N,352:B:N,370:D:N,353:A:N,373:C:N,365:D:N,362:C:N,355:C:N,374:A:N,357:C:N,369:D:N,377:C:N,348:C:N,358:D:N,380:A:N,354:D:N,383:B:N,368:B:N,344:E:N,376:B:N,351:D:N,372:B:N,379:B:N,367:C:N,349:A:N,346:D:N,347:E:N,375:C:N,364:C:N,359:E:N,345:A:N,371:A:N,366:B:N,360:B:N,361:D:N,356:A:N,381:B:N', 14, '35.00', '35.00', '2019-01-14 09:24:44', '2019-01-14 11:24:44', 'N'),
(138, 15, 254, '358,376,362,345,369,349,381,363,375,365,366,346,354,383,360,378,361,357,355,364,374,368,367,370,350,359,377,344,352,356,379,353,373,380,382,347,351,372,348,371', '358:E:N,376:E:N,362:A:N,345:E:N,369:D:N,349:A:N,381:A:N,363:C:N,375:A:N,365:C:N,366:E:N,346:D:N,354:D:N,383:B:N,360:E:N,378:B:N,361:C:N,357:D:N,355:A:N,364:A:N,374:A:N,368:A:N,367:B:N,370:A:N,350:A:N,359:B:N,377:A:N,344:C:N,352:B:N,356:B:N,379:A:N,353:B:N,373:A:N,380:B:N,382:B:N,347:A:N,351::N,372:B:N,348:A:N,371::N', 0, '0.00', '0.00', '2019-01-14 09:24:47', '2019-01-14 11:24:47', 'Y'),
(139, 15, 274, '348,381,345,360,349,361,351,371,372,354,370,346,363,366,374,382,368,383,358,367,359,356,376,353,362,357,373,355,365,369,364,350,380,344,352,377,379,375,378,347', '348:D:N,381:D:N,345:D:N,360:D:N,349:E:N,361:B:N,351:C:N,371:E:N,372:E:N,354:A:N,370:E:N,346:D:N,363:E:N,366:C:N,374:A:N,382:E:N,368:A:N,383:A:N,358:D:N,367:E:N,359:E:N,356:E:N,376:B:N,353:D:N,362:E:N,357:D:N,373:C:N,355:B:N,365:C:N,369:D:N,364:C:N,350:E:N,380:A:N,344:E:N,352:B:N,377:C:N,379:E:N,375:D:N,378::N,347::N', 0, '0.00', '0.00', '2019-01-14 09:24:53', '2019-01-14 11:24:53', 'Y'),
(140, 15, 276, '351,379,361,380,368,348,358,381,344,376,383,365,362,371,357,367,360,352,354,363,369,378,346,373,372,356,347,359,382,350,345,353,370,355,366,374,364,375,349,377', '351:C:N,379:A:N,361:B:N,380:C:N,368:E:N,348:D:N,358:D:N,381:A:N,344:C:N,376:B:N,383:A:N,365:A:N,362:A:N,371:A:N,357:D:N,367:C:N,360:B:N,352:D:N,354:E:N,363:E:N,369:A:N,378:B:N,346:D:N,373:C:N,372:D:N,356:A:N,347:E:N,359:B:N,382:E:N,350:C:N,345:D:N,353:E:N,370:B:N,355:A:N,366:B:N,374:A:N,364:C:N,375:D:N,349::N,377::N', 0, '0.00', '0.00', '2019-01-14 09:25:53', '2019-01-14 11:25:53', 'Y'),
(141, 15, 263, '383,348,373,356,375,379,349,368,361,370,371,355,369,382,352,351,380,358,363,364,377,366,346,354,367,357,376,350,372,362,359,374,378,347,344,353,360,345,381,365', '383:E:N,348:D:N,373:C:N,356:C:N,375:D:N,379:A:N,349:C:N,368:B:N,361:B:N,370:E:N,371:E:N,355:A:N,369:D:N,382:E:N,352:D:N,351:D:N,380:A:N,358:A:N,363:A:N,364:D:N,377:A:N,366:B:N,346:D:N,354:C:N,367:E:N,357:C:N,376:B:N,350:D:N,372:C:N,362:A:N,359:B:N,374:A:N,378:A:N,347:A:N,344:B:N,353:B:N,360:B:N,345:D:N,381:D:N,365:B:N', 0, '0.00', '0.00', '2019-01-14 09:26:32', '2019-01-14 11:26:32', 'Y'),
(142, 15, 273, '366,344,345,381,350,358,379,360,371,365,346,349,355,368,375,383,376,348,363,362,369,374,354,372,378,352,380,373,353,364,377,367,359,361,347,370,382,356,351,357', '366:C:N,344:C:N,345:D:N,381:D:N,350:E:N,358:D:N,379:C:N,360:D:N,371:E:N,365:C:N,346::N,349::N,355::N,368::N,375::N,383::N,376::N,348::N,363::N,362::N,369::N,374::N,354::N,372::N,378::N,352::N,380::N,373::N,353::N,364::N,377::N,367::N,359::N,361::N,347::N,370::N,382::N,356::N,351::N,357::N', 0, '0.00', '0.00', '2019-01-14 09:31:23', '2019-01-14 11:31:23', 'Y'),
(143, 21, 212, '375,374,380,368,366,378,347,354,356,367,372,350,382,373,360,370,362,357,379,352,348,369,353,361,359,355,363,351,381,345,371,365,377,358,383,346,344,364,376,349', '375:C:Y,374:A:N,380:A:N,368:E:N,366:B:N,378:B:N,347:E:N,354:E:N,356:E:N,367:A:N,372:B:N,350:B:N,382:B:N,373:C:N,360:B:N,370:D:N,362:A:N,357::N,379::N,352::N,348::N,369::N,353::N,361::N,359::N,355::N,363::N,351::N,381::N,345::N,371::N,365::N,377::N,358::N,383::N,346::N,344::N,364::N,376::N,349::N', 0, '0.00', '0.00', '2019-01-14 09:32:02', '2019-01-14 11:32:02', 'Y'),
(144, 22, 227, '362,375,372,364,380,376,373,369,383,366,348,381,360,356,361,377,359,382,370,346,354,357,347,353,358,379,371,374,350,367,344,355,352,351,378,363,368,365,349,345', '362:A:N,375:D:N,372:D:N,364:C:N,380:C:N,376:B:N,373:C:N,369:B:N,383:E:N,366:B:N,348:E:N,381:E:N,360:B:N,356:E:N,361:B:N,377:C:N,359:B:N,382:B:N,370:D:N,346:D:N,354:E:N,357:D:N,347:A:N,353:D:N,358:D:N,379:A:N,371:A:N,374:A:N,350:C:N,367:A:N,344:D:N,355:D:N,352:D:N,351:C:N,378:B:N,363:E:N,368:A:N,365:E:N,349:E:N,345::N', 0, '0.00', '0.00', '2019-01-14 09:37:04', '2019-01-14 11:37:04', 'Y'),
(145, 22, 247, '383,354,353,355,352,344,376,363,351,350,375,356,349,366,364,374,380,381,378,369,361,359,362,358,347,371,370,382,357,379,367,368,360,365,346,345,372,377,348,373', '383:A:N,354:E:N,353:D:N,355:B:N,352:D:N,344:C:N,376:B:N,363:E:N,351:D:N,350:D:N,375:D:N,356:E:N,349::N,366::N,364::N,374::N,380::N,381::N,378::N,369::N,361::N,359::N,362::N,358::N,347::N,371::N,370::N,382::N,357::N,379::N,367::N,368::N,360::N,365::N,346::N,345::N,372::N,377::N,348::N,373::N', 0, '0.00', '0.00', '2019-01-14 09:37:30', '2019-01-14 11:37:30', 'Y'),
(146, 22, 223, '371,359,354,348,382,372,344,353,380,345,365,358,377,360,379,375,347,349,357,361,363,352,346,350,373,362,374,356,364,383,378,376,351,366,381,367,368,369,355,370', '371:B:N,359:B:N,354:A:N,348:C:N,382:C:N,372:B:N,344:C:N,353:A:N,380:D:N,345:C:N,365:B:N,358:D:N,377:B:N,360:C:N,379:C:N,375:B:N,347:C:N,349:C:N,357:D:N,361:A:N,363:C:N,352:D:N,346::N,350::N,373::N,362::N,374::N,356::N,364::N,383::N,378::N,376::N,351::N,366::N,381::N,367::N,368::N,369::N,355::N,370::N', 7, '17.50', '17.50', '2019-01-14 09:38:59', '2019-01-14 11:38:59', 'N'),
(147, 22, 231, '346,357,347,371,361,354,362,344,375,374,352,369,368,363,376,359,382,351,370,348,372,356,378,349,380,381,367,366,345,383,355,360,379,350,377,365,373,358,364,353', '346:D:N,357:E:N,347:A:N,371:A:N,361:B:N,354:E:N,362:A:N,344:A:N,375:C:Y,374:A:N,352:D:N,369:B:N,368:E:N,363:E:N,376:B:N,359:B:N,382:B:N,351:D:N,370:E:N,348:E:N,372:A:N,356:E:N,378:B:N,349:A:N,380:A:N,381:E:N,367:A:N,366:B:N,345:D:N,383:E:N,355:B:N,360:B:N,379::N,350::N,377::N,365::N,373::N,358::N,364::N,353::N', 0, '0.00', '0.00', '2019-01-14 09:39:04', '2019-01-14 11:39:04', 'Y'),
(148, 22, 243, '350,349,380,351,348,362,374,352,365,383,355,369,372,346,367,357,345,347,356,371,353,382,360,361,377,358,344,375,359,370,376,378,381,379,363,368,354,364,366,373', '350:B:N,349:A:N,380:A:N,351:B:N,348:D:N,362:A:N,374:A:N,352:D:N,365:D:N,383:B:N,355:D:N,369:B:N,372:B:N,346:D:N,367:B:N,357:C:N,345:D:N,347:A:N,356:B:N,371:A:N,353:E:N,382:E:N,360:A:N,361:B:N,377:B:N,358:A:N,344:C:N,375:B:N,359:E:N,370:E:N,376:C:N,378:C:N,381:B:N,379:B:N,363:B:N,368:C:N,354:E:N,364:E:N,366:A:N,373::N', 11, '27.50', '27.50', '2019-01-14 09:39:07', '2019-01-14 11:39:07', 'N'),
(149, 22, 216, '349,382,359,373,370,368,366,351,352,347,362,357,355,376,353,360,379,365,361,377,346,374,383,344,350,378,380,356,354,348,381,371,358,375,369,367,345,364,372,363', '349:E:N,382:E:N,359::N,373::N,370::N,368::N,366::N,351::N,352::N,347::N,362::N,357::N,355::N,376::N,353::N,360::N,379::N,365::N,361::N,377::N,346::N,374::N,383::N,344::N,350::N,378::N,380::N,356::N,354::N,348::N,381::N,371::N,358::N,375::N,369::N,367::N,345::N,364::N,372::N,363::N', 0, '0.00', '0.00', '2019-01-14 09:39:08', '2019-01-14 11:39:08', 'Y'),
(150, 22, 242, '377,368,374,360,373,358,369,355,365,353,352,367,363,376,371,351,354,349,346,364,359,350,344,347,382,380,362,381,357,361,366,372,345,348,356,375,379,383,378,370', '377:A:N,368:E:N,374:A:N,360:B:N,373:A:N,358:D:N,369:B:N,355:B:N,365:A:N,353:B:N,352:D:N,367:A:N,363:E:N,376:B:N,371:B:N,351:D:N,354:E:N,349:E:N,346:D:N,364:C:N,359:B:N,350:C:N,344:C:N,347:A:N,382:B:N,380:A:N,362:A:N,381:E:N,357:D:N,361::N,366::N,372::N,345::N,348::N,356::N,375::N,379::N,383::N,378::N,370::N', 0, '0.00', '0.00', '2019-01-14 09:39:09', '2019-01-14 11:39:09', 'Y'),
(151, 22, 238, '382,355,349,354,353,374,364,379,365,346,361,369,350,375,381,358,373,359,362,352,368,345,363,371,366,377,376,348,347,351,344,370,357,360,378,383,380,372,367,356', '382:E:N,355:D:N,349:E:N,354::N,353::N,374::N,364::N,379::N,365::N,346::N,361::N,369::N,350::N,375::N,381::N,358::N,373::N,359::N,362::N,352::N,368::N,345::N,363::N,371::N,366::N,377::N,376::N,348::N,347::N,351::N,344::N,370::N,357::N,360::N,378::N,383::N,380::N,372::N,367::N,356::N', 0, '0.00', '0.00', '2019-01-14 09:39:10', '2019-01-14 11:39:10', 'Y'),
(152, 22, 232, '379,367,370,359,375,353,347,380,344,356,364,362,346,352,360,383,372,382,357,361,350,369,368,381,349,366,354,365,376,358,371,345,351,363,348,355,373,374,377,378', '379:A:N,367:C:N,370:E:N,359:B:N,375:B:N,353:D:N,347:B:N,380:C:N,344:A:N,356:A:N,364:C:Y,362:A:N,346:E:N,352::N,360::N,383::N,372::N,382::N,357::N,361::N,350::N,369::N,368::N,381::N,349::N,366::N,354::N,365::N,376::N,358::N,371::N,345::N,351::N,363::N,348::N,355::N,373::N,374::N,377::N,378::N', 0, '0.00', '0.00', '2019-01-14 09:39:13', '2019-01-14 11:39:13', 'Y'),
(153, 22, 222, '357,355,365,380,362,344,372,381,367,368,356,347,353,366,378,358,375,364,354,377,379,369,348,360,361,383,345,346,373,374,350,352,359,351,371,382,349,370,376,363', '357:D:N,355:D:N,365:D:N,380:E:N,362:D:N,344:A:N,372:B:N,381:B:N,367:E:N,368:A:N,356:E:N,347:E:N,353:A:N,366:B:N,378:B:N,358:D:N,375:C:N,364:C:N,354:E:Y,377:C:N,379:C:N,369:D:N,348::N,360::N,361::N,383::N,345::N,346::N,373::N,374::N,350::N,352::N,359::N,351::N,371::N,382::N,349::N,370::N,376::N,363::N', 8, '20.00', '20.00', '2019-01-14 09:39:33', '2019-01-14 11:39:33', 'N'),
(154, 22, 230, '354,375,359,374,363,378,344,360,367,379,353,365,364,362,355,366,352,373,380,346,350,348,370,361,351,349,368,381,371,372,369,358,345,356,357,377,383,347,382,376', '354:B:N,375:B:N,359:C:N,374:D:N,363:E:N,378:A:N,344:E:N,360:A:N,367:E:N,379:B:N,353:B:Y,365:E:N,364:A:N,362:A:N,355:B:N,366:C:N,352:A:N,373:E:N,380:A:N,346:B:N,350:A:N,348:D:N,370:B:N,361:B:N,351:E:N,349:C:N,368:C:N,381:B:N,371:A:N,372:B:N,369:E:N,358:D:N,345:D:N,356:A:N,357:A:N,377:B:N,383:A:N,347:C:N,382:B:N,376:C:N', 9, '22.50', '22.50', '2019-01-14 09:39:37', '2019-01-14 11:39:37', 'N'),
(155, 22, 236, '372,381,368,367,354,369,357,346,344,375,347,371,350,366,374,364,383,345,361,376,348,355,358,378,373,353,362,382,359,360,379,365,370,356,352,351,380,349,377,363', '372:C:N,381:C:N,368:C:N,367:E:N,354:A:N,369:D:N,357:D:N,346:D:N,344:E:N,375:C:N,347:E:N,371:E:N,350:A:N,366:B:N,374:B:N,364:E:N,383:D:N,345:D:N,361:B:N,376:B:N,348:E:N,355:E:N,358:D:N,378:E:N,373:A:N,353:E:N,362:D:N,382:B:N,359:A:N,360:B:N,379:B:N,365:D:N,370:D:N,356::N,352::N,351::N,380::N,349::N,377::N,363::N', 0, '0.00', '0.00', '2019-01-14 09:39:43', '2019-01-14 11:39:43', 'Y'),
(156, 22, 240, '353,348,374,354,370,367,364,368,378,375,372,366,349,362,359,369,347,357,381,382,351,380,345,346,363,361,377,355,376,344,356,352,371,373,350,358,383,360,365,379', '353::N,348:D:N,374:D:N,354:E:N,370:D:N,367:D:N,364:D:N,368:C:N,378:D:N,375:C:N,372::N,366:A:N,349:E:N,362:D:N,359:B:N,369:B:N,347:A:N,357:D:N,381:E:N,382:B:N,351:C:N,380:A:N,345::N,346:B:N,363:B:N,361:A:N,377::N,355::N,376::N,344::N,356::N,352::N,371::N,373::N,350::N,358::N,383::N,360::N,365::N,379::N', 0, '0.00', '0.00', '2019-01-14 09:39:55', '2019-01-14 11:39:55', 'Y'),
(157, 22, 244, '372,376,359,355,381,365,356,370,361,358,382,348,347,352,377,350,349,366,360,379,380,374,368,363,373,378,371,357,354,367,346,369,364,362,383,345,351,344,353,375', '372::N,376:B:N,359:B:N,355:B:N,381:A:N,365:A:N,356:E:N,370:B:N,361:B:N,358:D:N,382:B:N,348:E:N,347:D:N,352:D:N,377:C:N,350:C:N,349:E:N,366:B:N,360:B:N,379:A:N,380:A:N,374:D:N,368:A:N,363:E:N,373:A:N,378:B:N,371:C:N,357:D:N,354:E:N,367:E:N,346:D:N,369:D:N,364::N,362::N,383::N,345::N,351::N,344::N,353::N,375::N', 0, '0.00', '0.00', '2019-01-14 09:39:57', '2019-01-14 11:39:57', 'Y'),
(158, 22, 218, '353,372,373,351,358,377,356,362,374,363,383,348,382,360,357,364,370,367,361,379,366,354,347,345,375,368,380,371,344,365,350,376,352,381,369,346,359,378,355,349', '353:A:Y,372:C:N,373:E:N,351:E:N,358:D:N,377:E:N,356:E:N,362:C:N,374:D:N,363:E:N,383:D:N,348:D:N,382:B:N,360:D:N,357:C:N,364:C:N,370:B:N,367:C:N,361:A:N,379:C:N,366::N,354:A:N,347:C:N,345::N,375::N,368::N,380::N,371::N,344::N,365::N,350::N,376::N,352::N,381::N,369::N,346::N,359::N,378::N,355::N,349::N', 5, '12.50', '12.50', '2019-01-14 09:40:14', '2019-01-14 11:40:14', 'N'),
(159, 22, 248, '359,375,369,376,352,380,373,356,353,377,381,349,371,345,355,346,366,360,344,370,362,350,358,354,357,363,374,351,365,364,379,347,367,378,383,368,382,361,348,372', '359::Y,375:D:N,369::Y,376:A:N,352:D:N,380:C:N,373:C:N,356:E:N,353::N,377::N,381::N,349::N,371::N,345::N,355::N,346::N,366::N,360::N,344::N,370::N,362::N,350::N,358::N,354::N,357::N,363::N,374::N,351::N,365::N,364::N,379::N,347::N,367::N,378::N,383::N,368::N,382::N,361::N,348::N,372::N', 0, '0.00', '0.00', '2019-01-14 09:40:17', '2019-01-14 11:40:17', 'Y'),
(160, 22, 224, '352,383,360,372,374,344,351,366,380,379,382,367,357,345,381,346,370,369,348,355,365,353,350,349,361,375,368,378,373,358,376,354,359,364,371,347,363,362,356,377', '352:D:N,383:E:N,360:B:N,372:D:Y,374:A:N,344:A:N,351:B:N,366:B:N,380:A:N,379:A:N,382:B:N,367:A:Y,357:D:N,345:D:N,381:B:N,346::N,370::N,369::N,348::N,355::N,365::N,353::N,350::N,349::N,361::N,375::N,368::N,378::N,373::N,358::N,376::N,354::N,359::N,364::N,371::N,347::N,363::N,362::N,356::N,377::N', 0, '0.00', '0.00', '2019-01-14 09:40:19', '2019-01-14 11:40:19', 'Y'),
(161, 22, 234, '347,378,373,380,364,375,356,352,349,374,367,346,355,351,379,363,382,354,368,361,350,344,345,372,359,370,360,371,366,365,348,353,376,362,358,369,357,377,383,381', '347:A:N,378:B:N,373:A:N,380:A:N,364:D:N,375:C:N,356:E:N,352:D:N,349:E:N,374:D:N,367:D:N,346:D:N,355:B:N,351:C:N,379:A:N,363:E:N,382:B:N,354:E:N,368::N,361::N,350::N,344::N,345::N,372::N,359::N,370::N,360::N,371::N,366::N,365::N,348::N,353::N,376::N,362::N,358::N,369::N,357::N,377::N,383::N,381::N', 0, '0.00', '0.00', '2019-01-14 09:40:37', '2019-01-14 11:40:37', 'Y'),
(162, 22, 246, '376,361,381,358,378,360,355,371,379,344,375,369,363,356,383,380,352,365,347,348,374,354,377,346,359,382,350,351,364,372,353,349,368,366,367,373,362,370,357,345', '376:B:N,361:B:N,381:B:N,358:D:N,378:B:N,360:B:N,355:B:N,371:C:N,379:B:N,344:A:N,375:D:N,369:A:N,363:B:N,356:E:N,383:E:N,380:A:N,352:D:N,365:C:N,347:D:N,348:D:N,374:A:N,354:E:N,377:C:N,346:D:N,359:B:N,382:B:N,350:D:N,351:D:N,364:B:N,372:E:N,353:E:N,349:A:N,368:E:N,366:B:N,367:D:N,373:C:N,362:A:N,370:E:N,357:C:N,345:D:N', 0, '0.00', '0.00', '2019-01-14 09:41:09', '2019-01-14 11:41:09', 'Y'),
(163, 22, 233, '364,372,356,368,351,381,349,378,377,382,346,379,355,344,350,375,357,370,373,352,363,354,367,358,366,371,376,359,374,369,347,365,353,360,380,362,383,361,345,348', '364::N,372:A:N,356:E:N,368:E:N,351:B:N,381:D:N,349:C:N,378:D:N,377:C:N,382:B:N,346:D:N,379:A:N,355:B:N,344:C:N,350:B:N,375:C:N,357:C:N,370:E:N,373:A:N,352:D:N,363:B:N,354:E:N,367:A:N,358:D:N,366:D:N,371:A:N,376:B:N,359:E:N,374:A:N,369:D:N,347:A:N,365:C:N,353:E:N,360:D:N,380:A:N,362::N,383::N,361::N,345::N,348::N', 5, '12.50', '12.50', '2019-01-14 09:41:40', '2019-01-14 11:41:40', 'N'),
(164, 22, 221, '360,358,345,353,352,347,361,363,376,378,367,346,381,379,370,365,383,356,357,377,374,364,359,371,344,373,350,355,362,366,375,380,351,369,349,348,382,368,372,354', '360:B:N,358:E:N,345:B:N,353::Y,352:D:N,347:A:N,361:A:N,363:E:N,376:B:N,378:D:N,367:A:N,346:D:N,381:B:N,379:A:N,370:E:N,365:B:N,383:E:N,356:A:N,357:D:N,377:E:N,374:A:N,364:C:N,359:B:N,371:A:N,344::N,373:A:N,350:E:N,355:B:N,362::N,366:B:N,375:C:N,380:A:N,351:C:N,369:B:N,349:E:N,348:E:N,382::N,368::N,372::N,354::N', 0, '0.00', '0.00', '2019-01-14 09:41:56', '2019-01-14 11:41:56', 'Y'),
(165, 22, 239, '370,369,368,381,372,346,379,352,373,359,348,361,380,362,349,347,351,360,375,374,382,366,377,355,363,357,345,367,364,365,371,378,376,350,383,354,353,358,344,356', '370:E:N,369:B:N,368:C:N,381:E:N,372:D:N,346:D:N,379:A:N,352:D:N,373:C:N,359:B:N,348:D:N,361:B:N,380:A:N,362:D:N,349:C:N,347:C:N,351:E:N,360:B:N,375::N,374::N,382::N,366::N,377::N,355::N,363::N,357::N,345::N,367::N,364::N,365::N,371::N,378::N,376::N,350::N,383::N,354::N,353::N,358::N,344::N,356::N', 10, '25.00', '25.00', '2019-01-14 09:42:01', '2019-01-14 11:42:01', 'N');
INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(166, 15, 495, '369,362,368,356,367,366,381,375,350,355,377,378,372,348,365,351,352,360,374,357,383,347,345,354,364,344,361,358,379,382,349,371,380,346,373,376,359,363,370,353', '', 0, '0.00', '0.00', '2019-01-14 09:42:02', '2019-01-14 11:42:02', 'Y'),
(167, 22, 245, '350,380,372,364,382,373,371,345,346,368,351,369,377,360,379,367,376,353,349,363,366,378,347,374,348,354,365,370,358,362,344,356,381,357,375,383,359,355,361,352', '', 0, '0.00', '0.00', '2019-01-14 09:42:24', '2019-01-14 11:42:24', 'Y'),
(168, 22, 237, '362,364,352,346,382,345,347,369,370,358,365,366,348,349,380,379,371,377,355,375,344,354,378,376,363,372,381,374,383,360,357,353,367,350,361,356,359,368,351,373', '362:C:N,364:E:N,352:D:N,346:D:N,382:B:N,345:C:N,347:A:N,369:E:N,370:E:N,358:D:N,365:A:N,366:B:N,348:C:N,349:C:N,380:A:N,379::N,371::N,377::N,355::N,375::N,344::N,354::N,378::N,376::N,363::N,372::N,381::N,374::N,383::N,360::N,357::N,353::N,367::N,350::N,361::N,356::N,359::N,368::N,351::N,373::N', 0, '0.00', '0.00', '2019-01-14 09:42:34', '2019-01-14 11:42:34', 'Y'),
(169, 22, 217, '371,344,369,359,355,362,383,365,350,376,347,351,358,381,364,360,345,370,357,363,354,374,368,367,361,378,348,356,375,379,372,366,382,377,353,349,346,380,352,373', '371:E:N,344:C:N,369:D:N,359:B:N,355:B:N,362:A:N,383:E:N,365:C:N,350:E:N,376:B:N,347:A:N,351:C:N,358:D:N,381:B:N,364:B:Y,360::N,345::N,370::N,357::N,363::N,354::N,374::N,368::N,367::N,361::N,378::N,348::N,356::N,375::N,379::N,372::N,366::N,382::N,377::N,353::N,349::N,346::N,380::N,352::N,373::N', 0, '0.00', '0.00', '2019-01-14 09:43:00', '2019-01-14 11:43:00', 'Y'),
(170, 22, 225, '352,365,347,361,358,370,362,381,348,369,372,367,383,344,349,373,353,380,359,382,357,355,363,378,366,374,350,346,356,375,371,360,364,351,376,377,345,354,368,379', '352:C:N,365:A:N,347:E:N,361:A:N,358:D:N,370:E:N,362:A:N,381::N,348::N,369::N,372::N,367::N,383::N,344::N,349::N,373::N,353::N,380::N,359::N,382::N,357::N,355::N,363::N,378::N,366::N,374::N,350::N,346::N,356::N,375::N,371::N,360::N,364::N,351::N,376::N,377::N,345::N,354::N,368::N,379::N', 0, '0.00', '0.00', '2019-01-14 09:43:40', '2019-01-14 11:43:40', 'Y'),
(171, 21, 219, '383,380,346,357,372,364,369,370,350,347,378,361,374,354,348,368,373,359,365,376,375,344,382,363,371,366,356,353,352,345,355,358,379,367,349,351,362,360,381,377', '383::N,380::N,346::N,357::N,372::N,364::N,369::N,370::N,350::N,347::N,378::N,361::N,374::N,354::N,348::N,368::N,373::N,359::N,365::N,376::N,375::N,344::N,382::N,363::N,371::N,366::N,356::N,353::N,352::N,345::N,355::N,358::N,379::N,367::N,349::N,351::N,362::N,360::N,381::N,377::N', 0, '0.00', '0.00', '2019-01-14 09:43:51', '2019-01-14 11:43:51', 'Y'),
(172, 21, 194, '351,365,374,358,344,354,364,352,376,356,373,371,360,350,370,381,378,359,347,357,372,345,368,375,361,348,366,377,363,362,383,382,346,369,379,349,367,380,355,353', '351:C:N,365:E:N,374:A:N,358:D:N,344:C:N,354:E:N,364:E:N,352:D:N,376:B:N,356:E:N,373:A:N,371:A:N,360:D:N,350:C:N,370:E:N,381:E:N,378:B:N,359:B:N,347:A:N,357:D:N,372:D:N,345:A:N,368:E:N,375:A:N,361:B:N,348:A:N,366:D:N,377:B:N,363:D:N,362:A:N,383:D:N,382:D:N,346:C:N,369:A:N,379:B:N,349:A:N,367:A:N,380:B:N,355:E:N,353::N', 16, '40.00', '40.00', '2019-01-14 09:44:17', '2019-01-14 11:44:17', 'N'),
(173, 15, 209, '370,381,380,345,382,348,349,371,358,373,377,355,361,378,350,351,359,346,353,383,360,354,367,364,366,376,375,363,356,344,369,372,379,365,374,368,357,362,347,352', '370:B:N,381:C:N,380:A:N,345:C:N,382:E:N,348:E:N,349:D:N,371:D:N,358::N,373::N,377::N,355::N,361::N,378::N,350::N,351::N,359::N,346::N,353::N,383::N,360::N,354::N,367::N,364::N,366::N,376::N,375::N,363::N,356::N,344::N,369::N,372::N,379::N,365::N,374::N,368::N,357::N,362::N,347::N,352::N', 0, '0.00', '0.00', '2019-01-14 09:44:21', '2019-01-14 11:44:21', 'Y'),
(174, 21, 215, '352,382,351,356,360,350,346,381,365,370,372,376,373,366,359,357,347,348,375,368,358,354,364,380,344,374,379,361,355,369,383,345,349,367,378,363,353,377,362,371', '352:D:N,382:B:N,351:B:N,356:A:N,360:B:N,350:D:N,346:D:N,381:A:N,365:A:N,370:E:N,372:D:N,376::N,373::N,366::N,359::N,357::N,347::N,348::N,375::N,368::N,358::N,354::N,364::N,380::N,344::N,374::N,379::N,361::N,355::N,369::N,383::N,345::N,349::N,367::N,378::N,363::N,353::N,377::N,362::N,371::N', 0, '0.00', '0.00', '2019-01-14 09:44:56', '2019-01-14 11:44:56', 'Y'),
(175, 12, 228, '352,354,365,383,378,348,353,370,373,364,346,358,381,380,377,374,347,356,357,355,382,351,349,366,372,371,360,350,363,379,361,369,362,376,344,359,368,367,345,375', '352::N,354::N,365::N,383::N,378::N,348::N,353::N,370::N,373::N,364::N,346::N,358::N,381::N,380::N,377::N,374::N,347::N,356::N,357::N,355::N,382::N,351::N,349::N,366::N,372::N,371::N,360::N,350::N,363::N,379::N,361::N,369::N,362::N,376::N,344::N,359::N,368::N,367::N,345::N,375::N', 0, '0.00', '0.00', '2019-01-14 09:45:06', '2019-01-14 11:45:06', 'Y'),
(176, 21, 214, '363,350,370,352,365,356,383,351,357,369,349,378,345,371,368,376,360,353,346,359,374,367,362,382,344,379,355,372,373,364,348,380,381,358,361,375,354,347,366,377', '363:B:N,350:E:N,370:B:N,352:D:N,365:B:N,356:C:N,383:E:N,351:D:N,357:E:N,369:D:N,349:B:N,378:A:N,345:C:N,371:D:N,368:D:N,376:B:N,360:B:N,353:E:N,346:D:N,359:B:N,374:A:N,367:B:N,362:E:N,382:B:N,344:C:N,379:C:N,355:B:N,372:A:N,373:B:N,364:A:N,348:D:N,380:E:N,381:C:N,358:D:N,361:D:N,375:E:N,354:C:N,347:E:N,366::N,377::N', 0, '0.00', '0.00', '2019-01-14 09:45:21', '2019-01-14 11:45:21', 'Y'),
(177, 21, 213, '353,382,347,357,362,349,380,351,366,358,377,379,348,370,355,344,346,356,359,352,374,383,360,354,350,369,361,364,367,345,368,381,373,365,375,372,371,378,376,363', '353:A:N,382:B:N,347:E:N,357:D:N,362:B:N,349:C:N,380:A:N,351:D:N,366:C:N,358:D:N,377:B:N,379:E:N,348:E:N,370:D:N,355:B:N,344:A:N,346:D:N,356:A:N,359:C:N,352:D:N,374:D:N,383:A:N,360:B:N,354:C:N,350::N,369::N,361::N,364::N,367::N,345::N,368::N,381::N,373::N,365::N,375::N,372::N,371::N,378::N,376::N,363::N', 10, '25.00', '25.00', '2019-01-14 09:45:26', '2019-01-14 11:45:26', 'N'),
(178, 16, 299, '377,380,344,376,374,357,352,365,366,364,355,345,351,371,373,358,367,361,382,375,381,362,379,363,368,359,347,354,383,356,350,369,348,349,353,360,346,372,370,378', '377:C:N,380:A:N,344:D:N,376:B:N,374:A:N,357:C:N,352:D:N,365:B:N,366:C:N,364:C:N,355:B:N,345:C:N,351:D:N,371:C:N,373:E:N,358:D:N,367:A:N,361:B:N,382:B:N,375:D:N,381:E:N,362:D:N,379:E:N,363:E:N,368:C:N,359:A:N,347:A:N,354:E:N,383:E:N,356:A:N,350:C:N,369:D:N,348:A:N,349:E:N,353:A:N,360:B:N,346:D:N,372:A:N,370:D:N,378:A:N', 22, '55.00', '55.00', '2019-01-14 09:45:45', '2019-01-14 11:45:45', 'N'),
(179, 21, 211, '347,363,368,369,377,367,381,380,358,349,348,356,373,361,360,351,354,371,353,375,370,383,382,357,350,374,376,352,378,366,362,364,355,372,359,344,365,345,379,346', '347:E:N,363:E:N,368:A:N,369:D:N,377:C:N,367:E:N,381:A:N,380:E:N,358:D:N,349:E:N,348:E:N,356:C:N,373:B:N,361:A:N,360:D:N,351:C:N,354:E:N,371:E:N,353:E:N,375::N,370::N,383::N,382::N,357::N,350::N,374::N,376::N,352::N,378::N,366::N,362::N,364::N,355::N,372::N,359::N,344::N,365::N,345::N,379::N,346::N', 0, '0.00', '0.00', '2019-01-14 09:46:24', '2019-01-14 11:46:24', 'Y'),
(180, 12, 235, '381,349,374,358,352,367,368,350,362,359,355,378,348,364,380,369,346,354,372,365,366,347,375,371,383,377,376,379,353,357,361,370,344,363,360,356,373,382,351,345', '381:E:N,349:B:N,374:A:N,358:E:N,352:B:N,367:B:N,368:A:N,350:A:N,362:C:N,359::N,355::N,378::N,348::N,364::N,380::N,369::N,346::N,354::N,372::N,365::N,366::N,347::N,375::N,371::N,383::N,377::N,376::N,379::N,353::N,357::N,361::N,370::N,344::N,363::N,360::N,356::N,373::N,382::N,351::N,345::N', 0, '0.00', '0.00', '2019-01-14 09:47:37', '2019-01-14 11:47:37', 'Y'),
(181, 16, 292, '365,367,378,377,379,371,344,374,372,366,347,381,383,375,348,346,354,351,350,357,380,356,370,373,382,368,364,349,363,361,355,345,376,353,352,369,358,360,359,362', '365:E:N,367:C:N,378:B:N,377:C:N,379:C:N,371:B:N,344:D:N,374:A:N,372:C:N,366:A:N,347:A:N,381:D:N,383:E:N,375:A:N,348:E:N,346:D:N,354:A:N,351:C:N,350:A:N,357:C:N,380:A:N,356:E:N,370:D:N,373:C:N,382:D:N,368:E:N,364:C:N,349:A:N,363:B:N,361:B:N,355:D:N,345:D:N,376:B:N,353:A:N,352:D:N,369:C:N,358:D:N,360:D:N,359:A:N,362:A:N', 17, '42.50', '42.50', '2019-01-14 09:48:04', '2019-01-14 11:48:04', 'N'),
(182, 16, 293, '357,356,362,373,365,347,364,381,372,363,346,360,370,353,352,367,374,350,351,355,377,371,380,345,378,354,379,369,349,359,344,348,383,368,382,376,375,358,366,361', '357:B:N,356:A:N,362:D:N,373:D:N,365:B:N,347:B:N,364:B:N,381:D:N,372:A:N,363:E:N,346:C:N,360::N,370::N,353::N,352::N,367::N,374::N,350::N,351::N,355::N,377::N,371::N,380::N,345::N,378::N,354::N,379::N,369::N,349::N,359::N,344::N,348::N,383::N,368::N,382::N,376::N,375::N,358::N,366::N,361::N', 0, '0.00', '0.00', '2019-01-14 09:48:13', '2019-01-14 11:48:13', 'Y'),
(183, 16, 300, '370,365,349,375,366,346,372,357,379,371,373,377,376,353,362,348,360,364,345,355,351,380,368,354,358,383,350,347,367,381,378,382,344,363,369,361,352,359,374,356', '370:D:Y,365:A:N,349:D:N,375:B:N,366:B:N,346:D:N,372:D:N,357:D:N,379:C:N,371:A:N,373:B:N,377:B:N,376:B:N,353:E:N,362:B:N,348:C:N,360:D:N,364::N,345::N,355::N,351::N,380::N,368::N,354::N,358::N,383::N,350::N,347::N,367::N,381::N,378::N,382::N,344::N,363::N,369::N,361::N,352::N,359::N,374::N,356::N', 0, '0.00', '0.00', '2019-01-14 09:49:29', '2019-01-14 11:49:29', 'Y'),
(184, 11, 302, '377,382,361,365,374,357,375,380,368,364,354,372,378,346,349,363,376,367,381,379,383,359,355,358,347,352,362,344,366,356,351,371,350,353,348,373,370,360,369,345', '', 12, '30.00', '30.00', '2019-01-14 09:49:48', '2019-01-14 11:49:48', 'N'),
(185, 16, 291, '353,348,345,351,368,372,347,378,382,380,346,360,366,359,376,367,375,383,344,354,370,363,374,381,356,379,369,371,364,350,357,352,362,361,355,377,365,373,349,358', '353:A:N,348:D:N,345:D:N,351:B:N,368:E:N,372:D:N,347:B:N,378:B:N,382:A:N,380:A:N,346:D:N,360:B:N,366:B:N,359:E:N,376:B:N,367:B:N,375:B:N,383:D:N,344:C:N,354:A:N,370:E:N,363::N,374::N,381::N,356::N,379::N,369::N,371::N,364::N,350::N,357::N,352::N,362::N,361::N,355::N,377::N,365::N,373::N,349::N,358::N', 0, '0.00', '0.00', '2019-01-14 09:50:19', '2019-01-14 11:50:19', 'Y'),
(186, 16, 298, '344,363,351,348,349,346,370,375,355,362,356,354,350,358,377,353,373,365,372,345,380,364,379,352,347,368,366,371,357,367,374,382,378,361,359,369,360,381,383,376', '344:D:N,363:E:N,351:C:N,348:D:N,349:E:N,346:D:N,370:D:N,375:D:N,355:B:N,362::N,356:D:N,354:E:N,350:E:N,358:A:N,377:B:N,353:D:N,373:C:N,365:B:N,372:E:N,345:C:N,380:C:N,364:A:N,379:C:N,352:D:N,347:D:N,368:E:N,366:D:N,371:C:N,357:B:N,367:D:N,374:C:N,382:E:N,378:E:N,361:A:N,359:A:N,369:D:N,360:E:N,381:C:N,383:A:N,376:C:N', 13, '32.50', '32.50', '2019-01-14 09:50:36', '2019-01-14 11:50:36', 'N'),
(187, 21, 183, '354,369,381,382,364,357,375,383,359,352,378,366,356,347,374,371,350,358,362,363,351,377,348,372,344,349,373,360,361,353,368,380,376,346,355,370,365,345,379,367', '354:A:N,369:B:N,381:B:N,382:B:N,364:C:N,357:D:N,375:E:N,383:B:N,359:C:N,352:C:N,378:D:N,366:A:N,356:D:N,347:C:N,374:E:N,371:D:N,350:C:N,358:C:N,362:E:N,363:A:N,351:A:N,377:B:N,348:D:N,372:E:N,344:E:N,349:C:N,373:C:N,360:D:N,361:E:N,353:A:N,368:B:N,380:A:N,376:B:N,346:A:N,355:C:N,370:E:N,365:A:N,345:B:N,379:C:N,367:C:Y', 8, '20.00', '20.00', '2019-01-14 09:51:21', '2019-01-14 11:51:21', 'N'),
(188, 16, 296, '376,353,356,381,345,377,350,374,355,373,361,354,375,360,362,380,368,352,370,364,346,366,358,365,372,382,378,369,344,367,359,383,347,379,363,348,357,349,371,351', '376:D:N,353:A:N,356::N,381:B:N,345:A:N,377:C:N,350:C:N,374:A:N,355:A:N,373:A:N,361:B:N,354:E:N,375:D:N,360:B:N,362:D:N,380:C:N,368:E:N,352:D:N,370:B:N,364:B:N,346:A:N,366:B:N,358:D:N,365:D:N,372:A:N,382:A:N,378:A:N,369:D:N,344:B:N,367:C:N,359::N,383::N,347::N,379::N,363::N,348::N,357::N,349::N,371::N,351::N', 0, '0.00', '0.00', '2019-01-14 09:53:21', '2019-01-14 11:53:21', 'Y'),
(189, 16, 295, '382,355,371,375,360,364,357,348,368,362,354,365,379,372,351,358,346,374,377,347,367,383,378,381,345,370,353,356,361,350,363,373,344,366,359,380,376,352,349,369', '382::N,355::N,371::N,375::N,360::N,364::N,357::N,348::N,368::N,362::N,354::N,365::N,379::N,372::N,351::N,358::N,346::N,374::N,377::N,347::N,367::N,383::N,378::N,381::N,345::N,370::N,353::N,356::N,361::N,350::N,363::N,373::N,344::N,366::N,359::N,380::N,376::N,352::N,349::N,369::N', 0, '0.00', '0.00', '2019-01-14 09:53:48', '2019-01-14 11:53:48', 'Y'),
(190, 16, 290, '382,347,371,366,367,365,352,379,356,364,361,370,363,359,368,350,345,353,351,374,369,355,349,372,357,358,376,383,380,348,354,344,381,375,378,362,346,373,360,377', '382:A:N,347:D:N,371:A:N,366:D:N,367:B:N,365:A:N,352:D:N,379:A:N,356:E:N,364:C:N,361:B:N,370:B:N,363:E:N,359:E:N,368:E:N,350:A:N,345:A:N,353:A:N,351:D:N,374:A:N,369:B:N,355:A:N,349:D:N,372:E:N,357:C:N,358:D:N,376:B:N,383:A:N,380:A:N,348:C:N,354:C:N,344:C:N,381:D:N,375:C:N,378:B:N,362:D:N,346:D:N,373:A:N,360:C:N,377:B:N', 8, '20.00', '20.00', '2019-01-14 09:54:46', '2019-01-14 11:54:46', 'N'),
(191, 16, 294, '372,355,346,359,365,349,345,363,369,358,377,368,376,356,357,380,383,374,370,378,364,360,371,361,367,375,382,366,379,381,347,350,362,351,373,348,352,353,344,354', '372:D:N,355:D:N,346:D:N,359:A:N,365:B:N,349:E:N,345:A:N,363:E:N,369:D:N,358:D:N,377:C:N,368:B:N,376:B:N,356:A:N,357::N,380::N,383::N,374::N,370::N,378::N,364::N,360::N,371::N,361::N,367::N,375::N,382::N,366::N,379::N,381::N,347::N,350::N,362::N,351::N,373::N,348::N,352::N,353::N,344::N,354::N', 0, '0.00', '0.00', '2019-01-14 09:54:46', '2019-01-14 11:54:46', 'Y'),
(192, 16, 303, '369,379,375,345,354,348,351,367,371,381,355,378,361,370,380,373,383,374,363,359,346,347,366,344,372,382,364,353,377,376,352,349,358,368,356,362,357,365,350,360', '369:C:N,379:A:N,375:C:N,345:D:N,354:E:N,348:D:N,351:E:N,367:C:N,371:A:N,381:C:N,355:A:N,378:B:N,361:B:N,370:E:N,380:A:N,373:A:N,383::N,374::N,363::N,359::N,346::N,347::N,366::N,344::N,372::N,382::N,364::N,353::N,377::N,376::N,352::N,349::N,358::N,368::N,356::N,362::N,357::N,365::N,350::N,360::N', 0, '0.00', '0.00', '2019-01-14 09:55:18', '2019-01-14 11:55:18', 'Y'),
(193, 16, 302, '346,370,379,383,367,362,369,381,352,376,358,356,351,355,380,359,382,366,375,371,354,344,361,348,350,360,378,364,377,357,347,345,363,353,374,349,368,365,373,372', '346::N,370:E:N,379:A:N,383:E:N,367:C:N,362:D:N,369:C:N,381:B:N,352:D:N,376:B:N,358:D:N,356:E:N,351:D:N,355:D:N,380:C:N,359:B:N,382:E:N,366:A:N,375:C:N,371:A:N,354:B:N,344:D:N,361:B:N,348:E:N,350:A:N,360:B:N,378:C:N,364:A:N,377:E:N,357:E:N,347:C:N,345:C:N,363:D:N,353:A:N,374:C:N,349:E:N,368:B:N,365:D:N,373:A:N,372:D:N', 14, '35.00', '35.00', '2019-01-14 09:55:35', '2019-01-14 11:55:35', 'N'),
(194, 16, 297, '377,361,353,369,366,351,368,365,371,359,375,381,350,346,378,372,373,382,363,376,354,357,345,355,356,349,360,347,379,358,348,383,370,367,352,374,362,380,344,364', '', 4, '10.00', '10.00', '2019-01-14 09:56:44', '2019-01-14 11:56:44', 'N'),
(195, 21, 210, '377,355,360,353,362,372,381,349,367,347,383,359,352,344,345,363,365,371,376,357,354,366,361,379,364,358,373,370,350,375,368,380,374,382,348,346,351,378,356,369', '377:E:N,355:B:N,360:B:N,353:B:N,362:A:N,372:B:N,381:E:N,349:E:N,367:A:N,347:A:N,383:E:N,359:B:N,352:D:N,344:D:N,345:E:N,363:E:N,365:E:N,371:A:N,376:B:N,357:C:N,354:C:N,366:C:N,361:D:N,379:A:N,364:C:N,358:E:N,373:A:N,370:E:N,350:C:N,375:D:N,368:E:N,380:A:N,374:A:N,382:B:N,348:D:N,346:D:N,351:D:N,378:A:N,356:A:N,369:D:N', 21, '52.50', '52.50', '2019-01-14 09:57:57', '2019-01-14 11:57:57', 'N'),
(196, 21, 188, '371,382,344,361,365,362,373,345,374,369,353,366,381,354,376,363,383,364,379,351,375,357,348,346,356,347,370,380,360,368,372,350,378,367,359,355,358,349,352,377', '371:C:N,382:C:N,344:D:N,361:B:N,365:A:N,362:E:N,373:C:N,345:D:N,374:A:N,369:A:N,353:B:N,366:A:N,381:D:N,354:E:N,376:D:N,363:E:N,383:A:N,364:A:N,379:A:N,351::N,375::N,357::N,348::N,346::N,356::N,347::N,370::N,380::N,360::N,368::N,372::N,350::N,378::N,367::N,359::N,355::N,358::N,349::N,352::N,377::N', 0, '0.00', '0.00', '2019-01-14 09:58:11', '2019-01-14 11:58:11', 'Y'),
(197, 16, 306, '349,376,379,351,350,359,363,354,355,368,383,373,378,360,366,348,367,361,347,364,377,382,365,381,370,357,375,362,371,352,358,346,356,369,353,345,344,380,372,374', '', 0, '0.00', '0.00', '2019-01-14 09:59:58', '2019-01-14 11:59:58', 'Y'),
(198, 16, 301, '374,361,357,344,381,345,348,365,356,373,370,359,351,346,376,378,350,375,362,355,364,372,380,352,371,363,382,358,377,369,360,366,354,368,347,367,383,353,349,379', '374::N,361::N,357::N,344::N,381::N,345::N,348::N,365::N,356::N,373::N,370::N,359::N,351::N,346::N,376::N,378::N,350::N,375::N,362::N,355::N,364::N,372::N,380::N,352::N,371::N,363::N,382::N,358::N,377::N,369::N,360::N,366::N,354::N,368::N,347::N,367::N,383::N,353::N,349::N,379::N', 0, '0.00', '0.00', '2019-01-14 10:00:18', '2019-01-14 12:00:18', 'Y'),
(199, 13, 412, '360,363,371,382,380,376,370,366,354,348,377,373,358,357,361,364,375,356,345,381,369,350,359,355,362,374,346,365,349,353,368,347,367,344,372,383,352,351,378,379', '360:A:N,363:E:N,371:A:N,382:D:N,380:A:N,376:B:N,370:E:N,366:E:N,354:E:N,348:D:N,377:A:N,373::N,358::N,357::N,361::N,364::N,375::N,356::N,345::N,381::N,369::N,350::N,359::N,355::N,362::N,374::N,346::N,365::N,349::N,353::N,368::N,347::N,367::N,344::N,372::N,383::N,352::N,351::N,378::N,379::N', 5, '12.50', '12.50', '2019-01-14 10:00:38', '2019-01-14 12:00:38', 'N'),
(200, 13, 392, '348,369,373,362,357,366,383,355,381,368,364,351,360,363,350,382,365,378,345,349,375,352,379,370,380,358,359,376,371,356,367,354,344,361,372,346,377,353,347,374', '348:D:N,369:C:N,373:C:N,362:A:N,357:D:N,366:B:N,383:E:N,355:B:N,381:E:N,368:E:N,364:A:N,351:B:N,360:B:N,363:E:N,350:B:N,382:B:N,365:B:N,378:B:N,345:A:N,349:E:N,375:C:N,352:D:N,379:A:N,370:E:N,380::N,358::N,359::N,376::N,371::N,356::N,367::N,354::N,344::N,361::N,372::N,346::N,377::N,353::N,347::N,374::N', 0, '0.00', '0.00', '2019-01-14 10:00:42', '2019-01-14 12:00:42', 'Y'),
(201, 13, 396, '348,353,367,381,355,375,365,379,354,350,363,380,352,346,382,374,357,369,370,347,345,377,383,378,368,376,358,364,372,360,356,371,361,351,373,349,344,366,359,362', '348:E:N,353:B:N,367:A:N,381:C:N,355:A:N,375:D:N,365:C:N,379:C:N,354:E:N,350:C:N,363:E:N,380:B:N,352:D:N,346:D:N,382:B:N,374:A:N,357:D:N,369:B:N,370:E:N,347:A:N,345:C:N,377:C:N,383:E:N,378:B:N,368:A:N,376:B:N,358:D:N,364:D:N,372:D:N,360::N,356::N,371::N,361::N,351::N,373::N,349::N,344::N,366::N,359::N,362::N', 0, '0.00', '0.00', '2019-01-14 10:00:58', '2019-01-14 12:00:58', 'Y'),
(202, 22, 249, '359,349,362,354,378,351,346,375,348,365,368,371,355,356,380,353,367,373,364,360,361,370,377,376,381,366,374,379,363,344,357,369,350,358,345,372,347,352,382,383', '359:A:N,349:E:N,362:D:N,354:D:N,378:A:N,351:E:N,346:A:N,375:C:N,348:B:N,365:A:N,368:B:N,371:B:N,355:A:N,356:E:N,380:C:N,353:D:N,367:C:N,373:B:N,364:C:N,360:B:N,361:A:N,370:C:N,377:A:N,376:D:N,381:B:N,366:E:N,374:C:N,379:B:N,363:A:N,344:B:N,357:D:N,369:A:N,350:C:N,358:B:N,345:E:N,372:C:N,347:C:N,352:A:N,382:C:N,383:B:N', 5, '12.50', '12.50', '2019-01-14 10:01:02', '2019-01-14 12:01:02', 'N'),
(203, 13, 395, '364,350,381,363,368,359,383,367,362,369,349,357,371,355,378,344,382,361,345,358,380,372,376,377,354,370,356,366,379,373,348,347,360,374,353,351,352,346,375,365', '364:E:N,350::Y,381:B:N,363:A:N,368:E:N,359:A:N,383:E:N,367:D:N,362:D:N,369:E:N,349:A:N,357:A:N,371::N,355::N,378::N,344::N,382::N,361::N,345::N,358::N,380::N,372::N,376::N,377::N,354::N,370::N,356::N,366::N,379::N,373::N,348::N,347::N,360::N,374::N,353::N,351::N,352::N,346::N,375::N,365::N', 1, '2.50', '2.50', '2019-01-14 10:02:37', '2019-01-14 12:02:37', 'N'),
(204, 13, 403, '361,373,375,363,364,354,351,353,356,379,357,383,382,355,365,348,367,360,371,372,366,380,368,344,350,359,358,369,347,345,381,349,376,346,362,374,377,370,352,378', '361:D:N,373:A:N,375:A:N,363:A:N,364:C:N,354:E:N,351:E:N,353:D:N,356::N,379::N,357::N,383::N,382::N,355::N,365::N,348::N,367::N,360::N,371::N,372::N,366::N,380::N,368::N,344::N,350::N,359::N,358::N,369::N,347::N,345::N,381::N,349::N,376::N,346::N,362::N,374::N,377::N,370::N,352::N,378::N', 2, '5.00', '5.00', '2019-01-14 10:02:38', '2019-01-14 12:02:38', 'N'),
(205, 13, 400, '350,361,355,347,381,365,360,371,375,349,359,345,364,348,358,379,346,374,353,357,354,373,369,351,380,368,382,378,376,363,362,372,383,352,367,366,356,344,377,370', '350:D:N,361:B:N,355:B:N,347:C:N,381:D:N,365:B:N,360:B:N,371:C:N,375:B:N,349:E:N,359:B:N,345:B:N,364:C:N,348:B:N,358:C:N,379:C:N,346:D:N,374:A:N,353:D:N,357:C:N,354:E:N,373:C:N,369:C:N,351:D:N,380:D:N,368:C:N,382:D:N,378:E:N,376::N,363:D:N,362::N,372:E:N,383:B:N,352:E:N,367:C:N,366:C:N,356:C:N,344:C:N,377:D:N,370:A:N', 13, '32.50', '32.50', '2019-01-14 10:03:13', '2019-01-14 12:03:13', 'N'),
(206, 13, 401, '358,373,374,381,353,347,357,375,370,345,352,369,368,348,344,349,372,378,361,376,355,356,366,382,365,383,346,377,360,359,367,350,362,379,364,363,380,351,371,354', '358:D:N,373:C:N,374:A:N,381:B:N,353:A:N,347:A:N,357:C:N,375:A:N,370:B:N,345:A:N,352:C:N,369:D:N,368:C:N,348:D:N,344:A:N,349:D:N,372:B:N,378:D:N,361:E:N,376:A:N,355:C:N,356:B:N,366:D:N,382:B:N,365:B:N,383:D:N,346:A:N,377:E:N,360:A:N,359:C:N,367:A:N,350:B:N,362:D:N,379:E:N,364:A:N,363:B:N,380:E:N,351:A:N,371:E:N,354:D:N', 7, '17.50', '17.50', '2019-01-14 10:03:48', '2019-01-14 12:03:48', 'N'),
(207, 13, 388, '369,356,345,370,362,357,371,363,351,380,348,344,383,376,355,346,382,365,349,367,373,375,360,366,372,364,381,358,359,353,368,350,361,379,374,352,347,354,378,377', '369:D:N,356:A:N,345:A:N,370:E:N,362:A:N,357:B:N,371:E:N,363:E:N,351:A:N,380:A:N,348:D:N,344:A:N,383:C:N,376::N,355::N,346::N,382::N,365::N,349::N,367::N,373::N,375::N,360::N,366::N,372::N,364::N,381::N,358::N,359::N,353::N,368::N,350::N,361::N,379::N,374::N,352::N,347::N,354::N,378::N,377::N', 3, '7.50', '7.50', '2019-01-14 10:04:45', '2019-01-14 12:04:45', 'N'),
(208, 13, 402, '365,362,366,371,354,380,356,360,373,355,352,372,344,378,353,350,367,375,374,349,382,381,345,348,383,363,379,351,370,377,376,368,369,357,347,358,361,346,359,364', '365:B:N,362:A:N,366::N,371::N,354::N,380::N,356::N,360::N,373::N,355::N,352::N,372::N,344::N,378::N,353::N,350::N,367::N,375::N,374::N,349::N,382::N,381::N,345::N,348::N,383::N,363::N,379::N,351::N,370::N,377::N,376::N,368::N,369::N,357::N,347::N,358::N,361::N,346::N,359::N,364::N', 0, '0.00', '0.00', '2019-01-14 10:04:47', '2019-01-14 12:04:47', 'Y'),
(209, 13, 391, '354,373,380,364,355,360,376,377,351,366,379,362,357,359,378,348,352,371,365,350,367,356,374,375,381,344,353,361,349,345,347,346,370,358,383,368,369,372,382,363', '354:E:N,373:B:N,380:A:N,364::N,355::N,360::N,376::N,377::N,351::N,366::N,379::N,362::N,357::N,359::N,378::N,348::N,352::N,371::N,365::N,350::N,367::N,356::N,374::N,375::N,381::N,344::N,353::N,361::N,349::N,345::N,347::N,346::N,370::N,358::N,383::N,368::N,369::N,372::N,382::N,363::N', 0, '0.00', '0.00', '2019-01-14 10:05:01', '2019-01-14 12:05:01', 'Y'),
(210, 13, 394, '350,365,378,381,344,354,369,374,347,362,382,356,364,349,363,366,371,346,355,376,377,361,358,348,368,379,353,357,352,345,370,372,360,359,373,351,367,380,383,375', '350:A:N,365:A:N,378:B:N,381:B:N,344:C:N,354:E:N,369:B:N,374:A:N,347:D:N,362:A:N,382:B:N,356:A:N,364:E:N,349:E:N,363:E:N,366::N,371::N,346::N,355::N,376::N,377::N,361::N,358::N,348::N,368::N,379::N,353::N,357::N,352::N,345::N,370::N,372::N,360::N,359::N,373::N,351::N,367::N,380::N,383::N,375::N', 0, '0.00', '0.00', '2019-01-14 10:05:05', '2019-01-14 12:05:05', 'Y'),
(211, 13, 404, '356,380,377,366,354,379,374,371,358,357,355,359,375,353,373,376,368,347,383,350,351,365,346,348,370,349,344,367,345,361,382,381,362,364,378,363,360,352,369,372', '356:C:N,380:A:N,377:C:N,366:B:N,354:E:N,379:A:N,374:E:N,371:C:N,358:D:N,357:D:N,355:D:N,359:E:N,375:C:N,353:E:N,373:E:N,376:B:N,368:B:N,347:D:N,383:A:N,350:C:N,351:A:N,365:B:N,346:B:N,348:E:N,370:E:N,349:D:N,344:C:N,367:A:N,345:C:N,361:A:N,382:B:N,381:A:N,362:A:N,364:D:N,378:C:N,363:E:N,360:B:N,352:A:N,369::N,372::N', 0, '0.00', '0.00', '2019-01-14 10:05:06', '2019-01-14 12:05:06', 'Y'),
(212, 13, 398, '379,348,355,349,383,367,359,368,350,351,361,353,360,381,347,357,374,358,373,362,376,352,345,346,370,365,380,377,371,372,375,354,366,378,382,344,364,369,363,356', '379:B:N,348:D:N,355:B:N,349:E:N,383:B:N,367:D:N,359:B:N,368:D:N,350::N,351::N,361::N,353::N,360::N,381::N,347::N,357::N,374::N,358::N,373::N,362::N,376::N,352::N,345::N,346::N,370::N,365::N,380::N,377::N,371::N,372::N,375::N,354::N,366::N,378::N,382::N,344::N,364::N,369::N,363::N,356::N', 0, '0.00', '0.00', '2019-01-14 10:06:15', '2019-01-14 12:06:15', 'Y'),
(213, 11, 341, '380,372,373,376,361,367,346,375,344,382,349,370,374,359,366,371,354,379,348,353,365,358,383,355,352,364,362,356,357,377,381,351,368,350,363,345,378,347,369,360', '380:A:N,372:B:N,373:C:N,376:B:N,361:B:N,367:C:N,346:B:N,375:E:N,344:C:N,382:D:N,349:B:N,370:B:N,374:C:N,359:D:N,366:B:N,371:A:N,354:A:N,379:B:N,348:C:N,353:B:N,365:D:N,358:B:N,383:C:N,355:D:N,352:C:N,364:C:N,362:D:N,356:A:N,357:B:N,377:D:N,381:B:N,351:E:N,368:C:N,350:B:N,363:B:N,345:B:N,378:E:N,347:C:N,369:C:N,360:D:N', 10, '25.00', '25.00', '2019-01-14 10:06:56', '2019-01-14 12:06:56', 'N'),
(214, 16, 304, '359,374,360,372,353,344,365,363,371,354,361,357,369,348,351,345,358,366,346,350,352,380,376,367,378,368,381,370,356,355,364,375,382,379,349,373,347,383,362,377', '359:A:N,374:E:N,360:B:N,372:D:N,353:B:N,344:C:N,365:A:N,363:B:N,371:C:N,354:E:N,361:A:N,357:D:N,369:B:N,348:E:N,351:C:N,345:A:N,358:D:N,366:B:N,346:D:N,350:C:N,352:D:N,380:A:N,376:D:N,367:D:N,378:A:N,368:E:N,381::N,370::N,356::N,355::N,364::N,375::N,382::N,379::N,349::N,373::N,347::N,383::N,362::N,377::N', 0, '0.00', '0.00', '2019-01-14 10:08:03', '2019-01-14 12:08:03', 'Y'),
(215, 22, 226, '377,380,344,382,369,348,370,358,349,362,373,372,366,374,351,371,350,383,360,352,353,378,379,355,376,364,357,346,356,381,359,368,345,365,347,375,361,367,363,354', '377:C:N,380:A:N,344:A:N,382:B:N,369:D:N,348:D:N,370:E:N,358:D:N,349:A:N,362:A:N,373:C:N,372:B:N,366:B:N,374:E:N,351:C:N,371:A:N,350:C:N,383:E:N,360::N,352::N,353::N,378::N,379::N,355::N,376::N,364::N,357::N,346::N,356::N,381::N,359::N,368::N,345::N,365::N,347::N,375::N,361::N,367::N,363::N,354::N', 0, '0.00', '0.00', '2019-01-14 10:08:18', '2019-01-14 12:08:18', 'Y'),
(216, 13, 389, '376,349,350,352,382,369,370,368,373,377,351,380,379,356,347,367,355,378,371,354,374,361,357,381,360,345,346,365,353,348,344,359,364,366,362,363,358,375,383,372', '376::N,349::N,350::N,352::N,382::N,369::N,370::N,368::N,373::N,377::N,351::N,380::N,379::N,356::N,347::N,367::N,355::N,378::N,371::N,354::N,374::N,361::N,357::N,381::N,360::N,345::N,346::N,365::N,353::N,348::N,344::N,359::N,364::N,366::N,362::N,363::N,358::N,375::N,383::N,372::N', 0, '0.00', '0.00', '2019-01-14 10:08:40', '2019-01-14 12:08:40', 'Y'),
(217, 13, 397, '361,351,369,352,356,368,373,359,357,353,382,367,363,345,380,365,381,378,375,346,370,374,347,350,344,376,360,366,355,348,358,379,372,349,362,364,354,377,371,383', '361:B:N,351:B:N,369:D:N,352:D:N,356:C:N,368:D:N,373:A:N,359:A:N,357::N,353::N,382::N,367::N,363::N,345::N,380::N,365::N,381::N,378::N,375::N,346::N,370::N,374::N,347::N,350::N,344::N,376::N,360::N,366::N,355::N,348::N,358::N,379::N,372::N,349::N,362::N,364::N,354::N,377::N,371::N,383::N', 0, '0.00', '0.00', '2019-01-14 10:10:39', '2019-01-14 12:10:39', 'Y'),
(219, 13, 410, '358,364,375,346,380,379,353,372,352,378,344,354,381,361,351,348,345,365,360,357,369,368,355,347,366,376,377,367,350,382,383,349,370,373,359,362,374,371,363,356', '', 8, '20.00', '20.00', '2019-01-14 10:12:31', '2019-01-14 12:12:31', 'N'),
(220, 13, 393, '365,366,360,367,362,370,357,382,369,350,368,345,364,346,377,375,373,372,380,344,353,379,348,358,354,356,376,355,381,378,351,374,347,383,359,349,361,363,352,371', '365:E:N,366:B:N,360:B:N,367:C:N,362::N,370::N,357::N,382::N,369::N,350::N,368::N,345::N,364::N,346::N,377::N,375::N,373::N,372::N,380::N,344::N,353::N,379::N,348::N,358::N,354::N,356::N,376::N,355::N,381::N,378::N,351::N,374::N,347::N,383::N,359::N,349::N,361::N,363::N,352::N,371::N', 2, '5.00', '5.00', '2019-01-14 10:13:31', '2019-01-14 12:13:31', 'N'),
(221, 13, 406, '370,378,353,344,365,369,363,359,376,373,382,347,377,357,364,379,361,372,380,348,381,354,368,352,358,383,366,356,355,374,350,371,362,375,345,349,367,351,360,346', '370:D:N,378:A:N,353:A:N,344:B:N,365:C:N,369:D:N,363:B:N,359:B:N,376:D:N,373:B:N,382:A:N,347:C:N,377:B:N,357:B:N,364:C:N,379:B:N,361:B:N,372:C:N,380:B:N,348:C:N,381:A:N,354:E:N,368:D:N,352:D:N,358:E:N,383:C:N,366:C:N,356::N,355::N,374::N,350::N,371::N,362::N,375::N,345::N,349::N,367::N,351::N,360::N,346::N', 8, '20.00', '20.00', '2019-01-14 10:14:47', '2019-01-14 12:14:47', 'N'),
(222, 13, 387, '366,376,350,362,379,356,351,369,372,359,345,361,383,353,374,381,355,349,367,368,382,380,377,358,357,363,360,375,370,344,364,354,348,346,378,352,347,365,373,371', '366::N,376::N,350::N,362::N,379::N,356::N,351::N,369::N,372::N,359::N,345::N,361::N,383::N,353::N,374::N,381::N,355::N,349::N,367::N,368::N,382::N,380::N,377::N,358::N,357::N,363::N,360::N,375::N,370::N,344::N,364::N,354::N,348::N,346::N,378::N,352::N,347::N,365::N,373::N,371::N', 0, '0.00', '0.00', '2019-01-14 10:17:47', '2019-01-14 12:17:47', 'Y'),
(223, 16, 305, '383,373,372,364,374,356,381,380,375,344,352,351,355,370,382,350,371,347,358,346,362,353,349,360,379,365,345,367,377,369,368,357,354,348,361,376,363,366,378,359', '383:E:N,373:C:N,372:D:N,364:C:N,374:D:N,356:B:N,381:C:N,380:C:N,375:A:N,344:E:N,352:D:N,351:B:N,355:A:N,370:E:N,382:D:N,350:A:N,371:C:N,347:C:N,358:B:N,346:A:N,362:C:N,353:A:N,349:A:N,360:B:N,379:A:N,365:C:N,345:B:N,367:A:N,377:D:N,369:B:N,368:E:N,357:B:N,354:D:N,348::N,361::N,376::N,363::N,366::N,378::N,359::N', 0, '0.00', '0.00', '2019-01-14 10:21:14', '2019-01-14 12:21:14', 'Y'),
(224, 23, 419, '264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303', '264::Y,265::N,266::N,267::N,268::N,269::N,270::N,271::N,272::N,273::N,274::N,275::N,276::N,277::N,278::N,279::N,280::N,281::N,282::N,283::Y,284::N,285::N,286::N,287::N,288::N,289::N,290::N,291::N,292::N,293::N,294::N,295::N,296::N,297::N,298::N,299::N,300::N,301::N,302::N,303::N', 0, '0.00', '0.00', '2019-01-14 10:48:50', '2019-01-14 12:48:50', 'Y');

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
  MODIFY `id_kd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT untuk tabel `m_guru`
--
ALTER TABLE `m_guru`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- AUTO_INCREMENT untuk tabel `m_soal`
--
ALTER TABLE `m_soal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT untuk tabel `m_soal_essay`
--
ALTER TABLE `m_soal_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
