-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2022 at 04:57 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE IF NOT EXISTS `tb_level` (
`id_level` int(11) NOT NULL,
  `nama_level` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `nama_level`) VALUES
(1, 'Administrator'),
(2, 'Waiter'),
(3, 'Kasir'),
(4, 'Owner'),
(5, 'Pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_masakan`
--

CREATE TABLE IF NOT EXISTS `tb_masakan` (
`id_masakan` int(11) NOT NULL,
  `nama_masakan` varchar(150) NOT NULL,
  `harga` varchar(150) NOT NULL,
  `stok` int(11) NOT NULL,
  `status_masakan` varchar(150) NOT NULL,
  `gambar_masakan` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_masakan`
--

INSERT INTO `tb_masakan` (`id_masakan`, `nama_masakan`, `harga`, `stok`, `status_masakan`, `gambar_masakan`) VALUES
(22, 'Tuna', '70000', 192, 'tersedia', 'Tuna.jpg'),
(23, 'momar', '35000', 208, 'tersedia', 'momar.jpg'),
(25, 'lele', '10000', 46, 'tersedia', 'lele.jpg'),
(27, 'ekor kuning', '15000', 99, 'tersedia', 'ekor kuning.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE IF NOT EXISTS `tb_order` (
`id_order` int(11) NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `id_pengunjung` int(11) NOT NULL,
  `waktu_pesan` datetime NOT NULL,
  `no_meja` int(11) NOT NULL,
  `total_harga` varchar(150) NOT NULL,
  `uang_bayar` varchar(150) DEFAULT NULL,
  `uang_kembali` varchar(150) DEFAULT NULL,
  `status_order` varchar(150) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `id_admin`, `id_pengunjung`, `waktu_pesan`, `no_meja`, `total_harga`, `uang_bayar`, `uang_kembali`, `status_order`, `alamat`) VALUES
(52, 1, 1, '2022-12-29 17:25:23', 0, '35000', '35000', '0', 'sudah bayar', 'asdfasdfa'),
(53, 1, 1, '2022-12-29 18:14:49', 0, '45000', '45000', '0', 'sudah bayar', 'pal'),
(56, 1, 16, '2022-12-29 22:55:05', 0, '45000', '45000', '0', 'sudah bayar', 'Kp Palsigunung Rt004 Rw 03 Tugu Cimanggis Depok 16');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan`
--

CREATE TABLE IF NOT EXISTS `tb_pesan` (
`id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) DEFAULT NULL,
  `id_masakan` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `status_pesan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesan`
--

INSERT INTO `tb_pesan` (`id_pesan`, `id_user`, `id_order`, `id_masakan`, `jumlah`, `status_pesan`) VALUES
(133, 1, 52, 23, 1, 'sudah'),
(142, 20, 0, 25, 0, ''),
(143, 1, 53, 23, 1, 'sudah'),
(144, 1, 53, 25, 1, 'sudah'),
(146, 16, 56, 23, 1, 'sudah'),
(147, 16, 56, 25, 1, 'sudah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stok`
--

CREATE TABLE IF NOT EXISTS `tb_stok` (
`id_stok` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `jumlah_terjual` int(11) DEFAULT NULL,
  `status_cetak` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_stok`
--

INSERT INTO `tb_stok` (`id_stok`, `id_pesan`, `jumlah_terjual`, `status_cetak`) VALUES
(1, 46, 1, 'belum cetak'),
(2, 47, 2, 'belum cetak'),
(3, 48, 2, 'belum cetak'),
(4, 49, 1, 'belum cetak'),
(5, 50, 2, 'belum cetak'),
(6, 51, 0, 'belum cetak'),
(7, 52, 0, 'belum cetak'),
(8, 53, 0, 'belum cetak'),
(9, 54, 0, 'belum cetak'),
(10, 55, 0, 'belum cetak'),
(11, 56, 2, 'belum cetak'),
(12, 57, 1, 'belum cetak'),
(13, 58, 6, 'belum cetak'),
(14, 59, 1, 'belum cetak'),
(15, 60, 1, 'belum cetak'),
(16, 61, 0, 'belum cetak'),
(17, 62, 0, 'belum cetak'),
(18, 63, 0, 'belum cetak'),
(19, 64, 3, 'belum cetak'),
(20, 65, 2, 'belum cetak'),
(21, 66, 2, 'belum cetak'),
(22, 65, 2, 'belum cetak'),
(23, 66, 2, 'belum cetak'),
(24, 66, 2, 'belum cetak'),
(25, 67, 1, 'belum cetak'),
(26, 68, 1, 'belum cetak'),
(27, 69, 2, 'belum cetak'),
(28, 70, 1, 'belum cetak'),
(29, 71, 1, 'belum cetak'),
(30, 66, 2, 'belum cetak'),
(31, 67, 1, 'belum cetak'),
(32, 68, 1, 'belum cetak'),
(33, 69, 0, 'belum cetak'),
(34, 70, 1, 'belum cetak'),
(35, 71, 1, 'belum cetak'),
(36, 72, 1, 'belum cetak'),
(37, 73, 1, 'belum cetak'),
(38, 74, 1, 'belum cetak'),
(39, 75, 1, 'belum cetak'),
(40, 76, 1, 'belum cetak'),
(41, 77, 1, 'belum cetak'),
(42, 78, 1, 'belum cetak'),
(43, 79, 1, 'belum cetak'),
(44, 80, 1, 'belum cetak'),
(45, 81, 1, 'belum cetak'),
(46, 82, 1, 'belum cetak'),
(47, 83, 1, 'belum cetak'),
(48, 84, 1, 'belum cetak'),
(49, 85, 2, 'belum cetak'),
(50, 86, 3, 'belum cetak'),
(51, 87, 1, 'belum cetak'),
(52, 88, 1, 'belum cetak'),
(53, 89, 2, 'belum cetak'),
(54, 90, 2, 'belum cetak'),
(55, 91, 0, 'belum cetak'),
(56, 92, 0, 'belum cetak'),
(57, 93, 0, 'belum cetak'),
(58, 94, 0, 'belum cetak'),
(59, 95, 1, 'belum cetak'),
(60, 96, 1, 'belum cetak'),
(61, 97, 1, 'belum cetak'),
(62, 98, 1, 'belum cetak'),
(63, 99, 1, 'belum cetak'),
(64, 100, 1, 'belum cetak'),
(65, 101, 1, 'belum cetak'),
(66, 102, 1, 'belum cetak'),
(67, 103, 1, 'belum cetak'),
(68, 104, 0, 'belum cetak'),
(69, 103, 1, 'belum cetak'),
(70, 104, 0, 'belum cetak'),
(71, 105, 0, 'belum cetak'),
(72, 106, 1, 'belum cetak'),
(73, 107, 0, 'belum cetak'),
(74, 108, 0, 'belum cetak'),
(75, 109, 0, 'belum cetak'),
(76, 110, 0, 'belum cetak'),
(77, 111, 0, 'belum cetak'),
(78, 112, 0, 'belum cetak'),
(79, 113, 0, 'belum cetak'),
(80, 114, 0, 'belum cetak'),
(81, 115, 0, 'belum cetak'),
(82, 116, 0, 'belum cetak'),
(83, 117, 0, 'belum cetak'),
(84, 118, 0, 'belum cetak'),
(85, 119, 0, 'belum cetak'),
(86, 120, 0, 'belum cetak'),
(87, 121, 1, 'belum cetak'),
(88, 122, 1, 'belum cetak'),
(89, 123, 1, 'belum cetak'),
(90, 124, 0, 'belum cetak'),
(91, 125, 1, 'belum cetak'),
(92, 126, 1, 'belum cetak'),
(93, 127, 1, 'belum cetak'),
(94, 128, 1, 'belum cetak'),
(95, 129, 1, 'belum cetak'),
(96, 130, 1, 'belum cetak'),
(97, 131, 1, 'belum cetak'),
(98, 132, 1, 'belum cetak'),
(99, 133, 1, 'belum cetak'),
(100, 134, 1, 'belum cetak'),
(101, 135, 0, 'belum cetak'),
(102, 136, 0, 'belum cetak'),
(103, 137, -100, 'belum cetak'),
(104, 138, -134, 'belum cetak'),
(105, 139, -1, 'belum cetak'),
(106, 140, 0, 'belum cetak'),
(107, 141, 0, 'belum cetak'),
(108, 142, 0, 'belum cetak'),
(109, 143, 1, 'belum cetak'),
(110, 144, 1, 'belum cetak'),
(111, 145, 1, 'belum cetak'),
(112, 146, 1, 'belum cetak'),
(113, 147, 1, 'belum cetak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
`id_user` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nama_user` varchar(150) NOT NULL,
  `id_level` int(11) NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_user`, `id_level`, `status`) VALUES
(1, 'admin', '123', 'Hendrik Setiawan', 1, 'aktif'),
(6, 'hendro', '123', 'Hendro', 2, 'aktif'),
(7, 'fitri', '123', 'Fitri', 3, 'aktif'),
(8, 'slamet', '123', 'Slamet', 4, 'aktif'),
(9, 'sugiastutik', '123', 'Sugiastutik', 4, 'aktif'),
(15, 'bima123', '123', 'Bima', 5, 'aktif'),
(16, 'aldyo', '123', 'aldyo', 5, 'aktif'),
(18, 'nadya', '123', 'Nadya', 5, 'aktif'),
(20, 'yes', 'yes', 'yes', 5, 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
 ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
 ADD PRIMARY KEY (`id_masakan`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
 ADD PRIMARY KEY (`id_order`), ADD KEY `id_admin` (`id_admin`), ADD KEY `id_pengunjung` (`id_pengunjung`);

--
-- Indexes for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
 ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `tb_stok`
--
ALTER TABLE `tb_stok`
 ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
 ADD PRIMARY KEY (`id_user`), ADD UNIQUE KEY `username` (`username`), ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `tb_stok`
--
ALTER TABLE `tb_stok`
MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
