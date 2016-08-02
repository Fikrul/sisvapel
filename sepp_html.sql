-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2016 at 10:02 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u916513631_rk`
--

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE IF NOT EXISTS `berkas` (
  `no_berkas` varchar(10) NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `broadcast`
--

CREATE TABLE IF NOT EXISTS `broadcast` (
  `id_broadcast` int(20) NOT NULL,
  `to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `judul` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8_unicode_ci NOT NULL,
  `file_bc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disposisi`
--

CREATE TABLE IF NOT EXISTS `disposisi` (
  `no_urut` int(5) NOT NULL,
  `no_agenda` varchar(10) NOT NULL,
  `prioritas` varchar(500) NOT NULL,
  `no_surat` int(11) NOT NULL,
  `tanggal_disposisi` date NOT NULL,
  `penerima_disposisi` varchar(50) NOT NULL,
  `isi_disposisi` varchar(500) NOT NULL,
  `pengirim_disposisi` varchar(50) NOT NULL,
  `kode_isi_disposisi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disposisi`
--

INSERT INTO `disposisi` (`no_urut`, `no_agenda`, `prioritas`, `no_surat`, `tanggal_disposisi`, `penerima_disposisi`, `isi_disposisi`, `pengirim_disposisi`, `kode_isi_disposisi`) VALUES
(0, '1', '["penting","segera"]', 1, '2016-04-25', 'Kamu', 'Undangan', 'Saya', 0);

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE IF NOT EXISTS `divisi` (
  `id_divisi` varchar(5) NOT NULL,
  `nama_divisi` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kode_surat`
--

CREATE TABLE IF NOT EXISTS `kode_surat` (
  `id_kode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE IF NOT EXISTS `kontak` (
  `id_kontak` int(10) NOT NULL,
  `nama` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `nomor_hp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `alamat_email` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `instansi_fakultas` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `jabatan` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`login_id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `level` int(1) NOT NULL,
  `status` int(5) NOT NULL,
  `userGroup` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `pass`, `level`, `status`, `userGroup`) VALUES
(14, 'admin', 'd54185b71f614c30a396ac4bc44d3269', 'sc', 1, 0, 0),
(23, 'user', 'd54185b71f614c30a396ac4bc44d3269', 'sc', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `memo`
--

CREATE TABLE IF NOT EXISTS `memo` (
`id_memo` int(11) NOT NULL,
  `url` varchar(50) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `perihal` varchar(254) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `memo`
--

INSERT INTO `memo` (`id_memo`, `url`, `pengirim`, `penerima`, `perihal`, `tanggal`) VALUES
(1, '', 'admin', '', 'siswa3.jpg', '2016-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `meta_suratkeluar`
--

CREATE TABLE IF NOT EXISTS `meta_suratkeluar` (
  `no_surat` varchar(10) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `judul_surat` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meta_suratkeluar`
--

INSERT INTO `meta_suratkeluar` (`no_surat`, `nama_penerima`, `judul_surat`, `tanggal`, `catatan`, `keterangan`) VALUES
('1', 'Ketua Jurusan Teknik Informatika', 'Undangan', '2016-04-25', 'ini catatan surat keluar', 'ini keterangan surat keluar');

-- --------------------------------------------------------

--
-- Table structure for table `meta_suratmasuk`
--

CREATE TABLE IF NOT EXISTS `meta_suratmasuk` (
  `no_surat` varchar(20) NOT NULL,
  `nama_pengirim` varchar(50) NOT NULL,
  `judul_surat` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meta_suratmasuk`
--

INSERT INTO `meta_suratmasuk` (`no_surat`, `nama_pengirim`, `judul_surat`, `tanggal`, `catatan`, `keterangan`) VALUES
('1', 'BAA', 'Undangan', '2016-04-25', 'ini adalah catatan', 'ini adalah keterangan');

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE IF NOT EXISTS `notifikasi` (
  `id_notifikasi` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `judul` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penerima_surat_in`
--

CREATE TABLE IF NOT EXISTS `penerima_surat_in` (
`id_penerima_surat_in` int(11) NOT NULL,
  `penerima_surat_in` varchar(50) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `penerima_surat_in`
--

INSERT INTO `penerima_surat_in` (`id_penerima_surat_in`, `penerima_surat_in`) VALUES
(1, 'Dosen Teknik Informatika'),
(2, 'Kabag. Perlengkapan');

-- --------------------------------------------------------

--
-- Table structure for table `perihal_surat_in`
--

CREATE TABLE IF NOT EXISTS `perihal_surat_in` (
`id_perihal` int(11) NOT NULL,
  `perihal` varchar(40) NOT NULL,
  `keterangan` varchar(40) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `perihal_surat_in`
--

INSERT INTO `perihal_surat_in` (`id_perihal`, `perihal`, `keterangan`) VALUES
(1, 'Undangan Rapat', 'Surat untuk menghadiri rapat'),
(2, 'Permohonan', 'Surat tentang permohonan');

-- --------------------------------------------------------

--
-- Table structure for table `surat_ekspedisi`
--

CREATE TABLE IF NOT EXISTS `surat_ekspedisi` (
`id_ekspedisi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `surat_expedisi`
--

CREATE TABLE IF NOT EXISTS `surat_expedisi` (
`id_expedisi` int(20) NOT NULL,
  `nomor` int(11) NOT NULL,
  `nama` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pengirim` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `penerima` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `konfirmasi` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `surat_expedisi`
--

INSERT INTO `surat_expedisi` (`id_expedisi`, `nomor`, `nama`, `pengirim`, `penerima`, `tanggal`, `konfirmasi`) VALUES
(1, 872, 'hs', 'kjshk', 'jsfk', '2016-05-19', 'Diambil');

-- --------------------------------------------------------

--
-- Table structure for table `surat_internal`
--

CREATE TABLE IF NOT EXISTS `surat_internal` (
`id_surat_in` int(11) NOT NULL,
  `no_surat_in` varchar(30) NOT NULL,
  `id_perihal` int(11) NOT NULL,
  `lampiran` varchar(30) NOT NULL,
  `id_penerima_surat_in` int(11) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `waktu_surat` time NOT NULL,
  `isi_surat` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `surat_internal`
--

INSERT INTO `surat_internal` (`id_surat_in`, `no_surat_in`, `id_perihal`, `lampiran`, `id_penerima_surat_in`, `tanggal_surat`, `waktu_surat`, `isi_surat`) VALUES
(9, 'E.6.d/90/FT-IF/UMM/III/2016', 1, '', 1, '2016-01-01', '02:00:00', 'dknasjdhasjkdhasjkd'),
(12, 'E.6.d/91/FT-IF/UMM/III/2016', 2, '', 2, '2016-03-02', '01:00:00', 'sdlsihflaslvalshdilasjlicasnlnqwien'),
(13, 'E.6.d/92/FT-IF/UMM/III/2016', 2, '', 2, '2016-02-02', '13:02:00', 'asmdklasdkljadjlasjdaskdjasklcnlkas');

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE IF NOT EXISTS `surat_keluar` (
  `no_urut` int(5) NOT NULL,
  `no_berkas` varchar(10) DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `perihal` varchar(50) NOT NULL,
  `tgl_terima` date DEFAULT NULL,
  `berkas` text,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`no_urut`, `no_berkas`, `tujuan`, `perihal`, `tgl_terima`, `berkas`, `status`) VALUES
(1, '1', 'Ketua Jurusan Teknik Informatika', 'Undangan', '2016-04-25', NULL, ''),
(2, 'E.2.a', 'Sembarang', 'Survei', '2015-11-30', '', 'Perlu');

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE IF NOT EXISTS `surat_masuk` (
  `no_urut` int(5) NOT NULL,
  `no_berkas` varchar(10) DEFAULT NULL,
  `pengirim` varchar(100) NOT NULL,
  `tgl_surat` date DEFAULT NULL,
  `no_surat` int(5) NOT NULL,
  `perihal` varchar(150) DEFAULT NULL,
  `berkas` text,
  `status` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`no_urut`, `no_berkas`, `pengirim`, `tgl_surat`, `no_surat`, `perihal`, `berkas`, `status`) VALUES
(1, '1', '', '2016-04-25', 0, 'Undangan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tls_surat`
--

CREATE TABLE IF NOT EXISTS `tls_surat` (
  `id_bls` varchar(5) NOT NULL,
  `no_berkas` varchar(10) DEFAULT NULL,
  `no_urut` int(5) DEFAULT NULL,
  `id_divisi` varchar(5) DEFAULT NULL,
  `kampus` varchar(5) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `lampiran` varchar(3) DEFAULT NULL,
  `perihal` varchar(50) DEFAULT NULL,
  `tujuan` varchar(200) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tembusan` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id_user` int(11) NOT NULL,
  `privilege` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `jabatan_user` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `validasi_sk`
--

CREATE TABLE IF NOT EXISTS `validasi_sk` (
  `no_urut` int(11) DEFAULT NULL,
  `status_validasi` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `validasi_sm`
--

CREATE TABLE IF NOT EXISTS `validasi_sm` (
  `no_urut` int(5) DEFAULT NULL,
  `status_validasi` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
 ADD PRIMARY KEY (`no_berkas`);

--
-- Indexes for table `disposisi`
--
ALTER TABLE `disposisi`
 ADD PRIMARY KEY (`no_urut`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
 ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `memo`
--
ALTER TABLE `memo`
 ADD PRIMARY KEY (`id_memo`);

--
-- Indexes for table `penerima_surat_in`
--
ALTER TABLE `penerima_surat_in`
 ADD PRIMARY KEY (`id_penerima_surat_in`);

--
-- Indexes for table `perihal_surat_in`
--
ALTER TABLE `perihal_surat_in`
 ADD PRIMARY KEY (`id_perihal`);

--
-- Indexes for table `surat_ekspedisi`
--
ALTER TABLE `surat_ekspedisi`
 ADD PRIMARY KEY (`id_ekspedisi`);

--
-- Indexes for table `surat_expedisi`
--
ALTER TABLE `surat_expedisi`
 ADD PRIMARY KEY (`id_expedisi`);

--
-- Indexes for table `surat_internal`
--
ALTER TABLE `surat_internal`
 ADD PRIMARY KEY (`id_surat_in`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
 ADD PRIMARY KEY (`no_urut`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
 ADD PRIMARY KEY (`no_urut`);

--
-- Indexes for table `tls_surat`
--
ALTER TABLE `tls_surat`
 ADD PRIMARY KEY (`id_bls`), ADD KEY `fk_berkas` (`no_berkas`), ADD KEY `fk_divisi` (`id_divisi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `validasi_sk`
--
ALTER TABLE `validasi_sk`
 ADD KEY `fk_no_urut_keluar` (`no_urut`);

--
-- Indexes for table `validasi_sm`
--
ALTER TABLE `validasi_sm`
 ADD KEY `fk_no_urut_masuk` (`no_urut`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `login_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `memo`
--
ALTER TABLE `memo`
MODIFY `id_memo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `penerima_surat_in`
--
ALTER TABLE `penerima_surat_in`
MODIFY `id_penerima_surat_in` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `perihal_surat_in`
--
ALTER TABLE `perihal_surat_in`
MODIFY `id_perihal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `surat_ekspedisi`
--
ALTER TABLE `surat_ekspedisi`
MODIFY `id_ekspedisi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `surat_expedisi`
--
ALTER TABLE `surat_expedisi`
MODIFY `id_expedisi` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `surat_internal`
--
ALTER TABLE `surat_internal`
MODIFY `id_surat_in` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
