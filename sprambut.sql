-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2023 at 09:54 AM
-- Server version: 8.0.33
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sprambut`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int NOT NULL,
  `kode_gejala` varchar(20) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`) VALUES
(4, 'B01', 'Adanya rasa gatal dan serpihan berwarna putih'),
(22, 'B02', 'Kulit kepala atau rambut yang berminyak'),
(23, 'B03', 'Stres psikologis'),
(24, 'B04', 'Banyak rambut yang terlepas ketika sedang keramas atau menyisir rambut'),
(25, 'B05', 'Kepadatan rambut berkurang, sehingga rambut terlihat semakin menipis'),
(26, 'B06', 'Rambut mudah patah pada ujungnya'),
(27, 'B07', 'Adanya kecenderungan mengalami kebotakan dalam garis keturunan'),
(28, 'B08', 'Pengelupasan pada kulit kepala'),
(29, 'B09', 'Adanya infeksi jamur di kulit kepala'),
(30, 'B10', 'Adanya radang pada kelenjar folikel rambu'),
(31, 'B11', 'Adanya benjolan kecil berwarna putih pada akar rambut disertai rasa nyeri dan rambut yang rontok'),
(32, 'B12', 'Adanya kemerahan di kulit kepala yang berbentuk sirkular'),
(33, 'B13', 'Permukaan luar rambut sering terasa seperti panas'),
(34, 'B14', 'Rambut tampak bercabang'),
(35, 'B15', 'Rambut mudah kusut'),
(36, 'B16', 'Rambut terlihat kusam dan kasar'),
(37, 'B17', 'Warna rambut terlihat kusam'),
(38, 'B18', 'Kulit kepala lengket dan berminyak'),
(39, 'B19', 'Pori-pori lebih besar dan mudah kotor'),
(40, 'B20', 'Rambut terlihat basah dan lengket');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('Admin','Dokter','User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', 'admin', 'Admin'),
(11, 'Irul Marpoyah', 'user', 'user', 'User'),
(12, 'dr. Asal Kuliah, SpAK', 'dokter', 'dokter', 'Dokter'),
(14, 'Joni', 'user2', 'user2', 'User'),
(15, 'Jono', 'user3', 'user3', 'User'),
(16, 'Keke', 'user3', 'user3', 'User'),
(17, 'Gunawan', 'user4', 'user4', 'User'),
(18, 'Tri', 'user5', 'user5', 'User'),
(19, 'Sari', 'user6', 'user6', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int NOT NULL,
  `kode_penyakit` varchar(20) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`, `deskripsi`, `solusi`) VALUES
(1, 'P01', 'Melanoma', 'Penyakit melanoma disebabkan oleh radiasi sinar matahari yang berlebihan. Sinar UV matahari yang menembus kulit membakar dan menghancurkan sel-sel pigmen, menciptakan sel-sel kanker yang mudah menyebar.', 'Melanoma susah diobati, tetapi penyakitnya bisa dicegah. Satu-satunya cara mencegah melanoma adalah dengan selalu menggunakan sunscreen sebelum pergi keluar rumah.'),
(2, 'P02', 'Kudis', 'Gejala dan penyebab penyakit kudis tidak jauh dengan kurap. Orang-orang yang tinggal di lingkungan kumuh lebih rentan terserang penyakit kudis karena banyaknya bakteri yang berterbangan di udara.', 'Apabila kamu mengidap penyakit kudis, hindari kontak fisik dengan keluarga atau teman-teman dekat karena penyakitnya bisa menular.'),
(3, 'P03', 'Kurap', 'Kurap merupakan salah satu macam penyakit kulit yang sering diderita banyak orang. Penyebab kurap adalah jamur atau bakteri yang menempel pada lapisan kulit luar.', 'Karena disebabkan oleh kamur, cara mengobati kurap yang paling ampuh adalah dengan menjaga kebersihan diri. Mandi sehari dua kali, dan oleskan salep anti jamur pada area kulit yang terpapar kurap tiga kali sehari.'),
(4, 'P04', 'Herpes', 'Jenis-jenis penyakit kulit yang dialami banyak orang berikutnya adalah herpes. Herpes adalah penyakit kulit yang disebabkan oleh virus HSV. Virusnya menyerang lapisan kulit luar dan dalam, membuatnya meradang sampai akhirnya melepuh.', 'Obat herpes yang diberikan dokter biasanya berupa salep khusus dan antibiotik.'),
(5, 'P05', 'Bisul', 'Saking sakitnya, terkadang bisa menyebabkan sakit kepala. Bisul disebabkan oleh kondisi kulit kotor yang terpapar bakteri stafilokokus aureus. Bakteri stafilokokus aureus menutup kelenjar keringan dan menimbunnya di dalam kulit, sehingga muncul benjolan merah yang terasa perih.', 'Mengompres bisul dengan air hangat 4 kali sehari bisa mengempeskan benjolan. Namun, agar bisul benar-benar hilang, kamu membutuhkan sabun atau salep antiseptik yang mampu mencairkan nanah dari dalam.'),
(6, 'P06', 'Jerawat', 'Jerawat memang tidak separang jenis penyakit kulit lainnya. Namun, proses penyembuhan permasalahan kulit ini cukup sulit dan memerlukan waktu yang lama. Cara menghilangkan jerawat harus dimulai dari kerajinan diri sendiri.', 'Kamu harus rutin merawat kulit dan menjaga kebersihannya. Jika tidak, sebum, kotoran, dan minyak yang menempel pada permukaan kulit luar bisa menyumbat pori-pori dan menyebabkan munculnya jerawat.'),
(7, 'P07', 'Eksim', 'Eksim merupakan satu dari puluhan macam penyakit kulit yang disebabkan oleh reaksi alergi. Reaksi alergi yang dimaksud bisa disebabkan oleh makanan, obat-obatan, sampai produk kosmetik. Eksim juga bisa disebabkan oleh horman tubuh yang tidak stabil dan cuaca panas.', 'Penyakit eksim bisa dihindari dengan menjaga kebersihan tubuh dan menghindari jenis alergi yang kita miliki. Untuk obat, sayangnya penyakit kulit ini tidak bisa disembuhi di rumah. Obat yang kamu butuhkan hanya bisa didapatkan di apotek, seperti kortikosteroid, antibiotik, atau antihistamin yang juga harus disarankan oleh dokter kulit.');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int NOT NULL,
  `id_pengguna` int NOT NULL,
  `id_penyakit` int DEFAULT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_pengguna`, `id_penyakit`, `tanggal`) VALUES
(7, 11, 2, '2020-09-25'),
(8, 11, NULL, '2020-09-25'),
(9, 11, 2, '2020-09-25'),
(10, 11, NULL, '2020-09-25'),
(11, 11, 1, '2020-09-25'),
(12, 11, NULL, '2020-09-25'),
(13, 11, 1, '2020-09-25'),
(14, 11, 2, '2020-09-25'),
(15, 11, NULL, '2020-09-25'),
(16, 11, NULL, '2020-09-25'),
(17, 11, NULL, '2020-09-25'),
(18, 11, NULL, '2020-09-25'),
(19, 11, NULL, '2020-09-25'),
(20, 11, 1, '2020-09-25'),
(21, 11, 3, '2020-09-25'),
(26, 11, 3, '2020-09-25'),
(27, 11, 3, '2020-09-25'),
(28, 11, 1, '2020-09-25'),
(29, 11, 1, '2020-09-25'),
(30, 11, 1, '2020-09-25'),
(31, 11, NULL, '2020-09-25'),
(32, 11, 1, '2020-09-25'),
(33, 11, 1, '2020-09-25'),
(34, 11, 1, '2020-09-25'),
(35, 11, NULL, '2020-09-25'),
(36, 11, NULL, '2020-09-25'),
(37, 11, NULL, '2020-09-25'),
(38, 11, 1, '2020-09-25'),
(39, 11, 1, '2020-09-25'),
(40, 11, NULL, '2020-09-25'),
(41, 15, 1, '2020-09-25'),
(42, 15, 2, '2020-09-25'),
(43, 17, 1, '2020-09-25'),
(44, 17, 7, '2020-09-25');

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id_rule` int NOT NULL,
  `id_penyakit` int NOT NULL,
  `id_gejala` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `id_penyakit`, `id_gejala`) VALUES
(37, 1, 4),
(40, 2, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_rule`),
  ADD KEY `id_penyakit` (`id_penyakit`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id_rule` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE;

--
-- Constraints for table `rule`
--
ALTER TABLE `rule`
  ADD CONSTRAINT `rule_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE,
  ADD CONSTRAINT `rule_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
