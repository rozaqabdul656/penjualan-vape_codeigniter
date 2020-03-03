-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 02:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inven`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses_menu`
--

CREATE TABLE `akses_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_menu`
--

INSERT INTO `akses_menu` (`id`, `role_id`, `menu_id`) VALUES
(2, 4, 0),
(5, 1, 1),
(6, 2, 2),
(16, 1, 6),
(17, 2, 6),
(23, 1, 3),
(24, 2, 3),
(27, 1, 4),
(28, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `barcode` varchar(15) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `kategori` varchar(128) NOT NULL,
  `harga_beli` bigint(11) NOT NULL,
  `harga_jual` bigint(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `id_suplier` int(11) DEFAULT NULL,
  `kode_penjualan` varchar(50) DEFAULT NULL,
  `kode_pembelian` varchar(50) DEFAULT NULL,
  `exp_date` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `barcode`, `nama_barang`, `gambar`, `kategori`, `harga_beli`, `harga_jual`, `profit`, `stok`, `satuan`, `id_cabang`, `keterangan`, `id_suplier`, `kode_penjualan`, `kode_pembelian`, `exp_date`) VALUES
(1, '899529666958', 'Mod', 'default.png', 'Alat', 500, 600, 100, 7, 'unt', 1, '', 1, '', 'PSN0038141', ''),
(2, '899529648077', 'Liquid Rasa Strawberry', 'default.png', 'Cairan', 250, 6, 5, 14, 'btl', 1, 'asdasd', 1, 'PJ001', 'PSN0038141', '22-02-2020'),
(3, '899529670069', 'Liquid', 'c1f16047235c70842307a2761ba85751.jpg', 'Cairan', 10, 30, 20, 0, 'btl', 1, '', NULL, '', '', ''),
(4, '899529673233', 'Asep update', 'default.png', 'Alat', 10, 30, 20, 0, 'btl', 1, '', NULL, '', '', ''),
(5, '899529644965', 'UDIN', '6be93eec2080f5453e8f0432b9b66178.jpg', 'Alat', 10, 30, 20, 0, 'btl', 1, '', NULL, '', '', ''),
(6, '899529675969', 'UDIN', '0c70643ec8b1c679546b43e5bb108aae.jpg', 'Alat', 10, 30, 20, 0, 'unt', 1, '', NULL, '', '', ''),
(7, '899529679925', 'Jakarta', 'd28f3b34b2eafc9d9ed19b2f516c7091.jpg', 'Alat', 10, 100, 0, 0, 'btl', 1, '', NULL, '', '', ''),
(8, '899529689182', 'asdasdasddas', '873a9396c0f8e55ce4da4ad1064f8cd1.jpg', 'Alat', 2147483647, 10, 0, 0, 'btl', 1, '', NULL, '', '', ''),
(9, '899529659060', 'cek2', 'a1e6caf8032f8dea5986c893117211e7.jpg', 'Alat', 210000000, 2, 0, 0, 'btl', 1, '', NULL, '', '', ''),
(10, '899529666758', 'cek3', 'd3b596d481f246d3682bec44778ea6ea.jpg', 'Alat', 10000, 30, 20, 0, 'btl', 1, '', NULL, '', '', ''),
(11, '899529618456', 'cek5', '548b4716880d07ed71b1278ff1af066c.jpg', 'Alat', 10000, 50000, 40, 0, 'btl', 1, '', NULL, '', '', ''),
(12, '899529671634', 'ceklast', 'e36f460df0cca40fd0c8490fb6f32764.jpg', 'Alat', 10000, 30000, 20000, 0, 'unt', 1, '', NULL, '', '', ''),
(13, '', 'asdasdas', 'default.png', 'Alat', 10000, 10000, 0, 20000, 'btl', 2, '', 1, '', 'PSN0018737', NULL),
(14, '', 'eeeeeeeeeeeeeeeweee', 'default.png', 'Alat', 100000000, 10000, -99990000, 2000000, 'btl', 2, '', 1, '', 'PSN0018737', NULL),
(15, '', 'cekcekcek', 'default.png', 'Alat', 10000, 10000, 0, 1000000000, 'btl', 2, '', 1, '', 'PSN0018737', NULL),
(16, '', 'cekmasu', 'default.png', 'Alat', 1000000, 10000, -990000, 10000000, 'btl', 2, '', 1, '', 'PSN0018737', NULL),
(17, '', 'barang', 'default.png', 'Alat', 100000, 10000, -90000, 100000, 'btl', 2, '', 1, '', 'PSN0018737', NULL),
(18, '', 'vap', 'default.png', 'Alat', 100000, 2000, -98000, 2, 'btl', 2, '', 1, '', 'PSN0075236', NULL),
(19, '899529619156', 'ceklast', 'e24a34f490ece5f124b9eb00329c6a35.jpg', 'Alat', 100, 30, 29, 0, 'unt', 2, '', NULL, '', '', ''),
(20, '899529613244', 'Cekcek', '5d448100b68cbe7333a55813b0e8f713.jpg', 'Cairan', 15000, 30000, 15000, 0, 'unt', 1, '', NULL, '', '', ''),
(21, '', 'jkjk', 'default.png', 'Alat', 100000, 1200000, 1100000, 1, 'btl', 1, '', 1, '', 'PSN007622', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_cabang`
--

CREATE TABLE `data_cabang` (
  `id` int(11) NOT NULL,
  `nama_cabang` varchar(128) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_cabang`
--

INSERT INTO `data_cabang` (`id`, `nama_cabang`, `alamat`, `jumlah_barang`) VALUES
(1, 'Cabang Utama', 'Jl. Raya Kerobokan, Kerobokan Kaja, Kec. Kuta Utara, Kabupaten Badung, Bali 80361', 14),
(2, 'Cabang 2', 'Jlan Indonesia', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_hutang`
--

CREATE TABLE `data_hutang` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `tanggal` varchar(128) NOT NULL,
  `kode` varchar(128) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `total_hutang` int(11) NOT NULL,
  `sisa_hutang` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `bukti` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isi_pesanan_barang`
--

CREATE TABLE `isi_pesanan_barang` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `stok_sekarang` int(11) NOT NULL,
  `stok_pesan` int(11) NOT NULL,
  `stok_terima` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `total_beli` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `id_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isi_stok_opname`
--

CREATE TABLE `isi_stok_opname` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `stok_aplikasi` int(11) NOT NULL,
  `stok_fisik` int(11) NOT NULL,
  `selisih_total` int(11) NOT NULL,
  `selisih_harga` int(11) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isi_stok_opname`
--

INSERT INTO `isi_stok_opname` (`id`, `kode`, `id_barang`, `nama`, `stok_aplikasi`, `stok_fisik`, `selisih_total`, `selisih_harga`, `id_cabang`, `status`) VALUES
(1, 'SON0034724', 1, 'Mod', 9, 5, -4, -2400, 1, 1),
(2, 'SON0034724', 2, 'Liquid Rasa Strawberry', 18, 10, -8, -48, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`id`, `nama_kategori`) VALUES
(1, 'Alat'),
(2, 'Cairan');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `barcode` varchar(50) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `harga_total` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu`) VALUES
(1, 'Superadmin'),
(2, 'Admin'),
(3, 'Cetak'),
(4, 'Export'),
(6, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_cicilan`
--

CREATE TABLE `pembayaran_cicilan` (
  `id` int(11) NOT NULL,
  `id_cicilan` varchar(50) NOT NULL,
  `id_pembelian` varchar(50) NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `sisa_cicilan` int(11) NOT NULL,
  `uang` int(11) NOT NULL,
  `sisa_cicilan_akhir` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_hutang`
--

CREATE TABLE `pembayaran_hutang` (
  `id` int(11) NOT NULL,
  `kode` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `tanggal` varchar(128) NOT NULL,
  `sisa_hutang` int(11) NOT NULL,
  `uang` int(11) NOT NULL,
  `sisa_hutang_akhir` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_umum`
--

CREATE TABLE `pengaturan_umum` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `pemilik` varchar(255) NOT NULL,
  `alamat_perusahaan` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_barang`
--

CREATE TABLE `pesanan_barang` (
  `id` int(50) NOT NULL,
  `kode` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `suplier` varchar(128) DEFAULT NULL,
  `tempat` varchar(128) NOT NULL,
  `tanggal_pesan` varchar(50) NOT NULL,
  `tanggal_terima` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `jenis_pesanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan_barang`
--

INSERT INTO `pesanan_barang` (`id`, `kode`, `nama`, `suplier`, `tempat`, `tanggal_pesan`, `tanggal_terima`, `status`, `jenis_pesanan`) VALUES
(1, 'PSN0038141', 'Data barang awal', 'SUP001', '1', '20-02-2020', '20-02-2020', 1, 2),
(2, 'PSN0034965', 'UDIN', 'SUP001', '1', '21-02-2020', '', 1, 1),
(3, 'PSN0018737', 'Tambah', 'SUP001', '2', '22-02-2020', '22-02-2020', 1, 2),
(4, 'PSN0075236', 'Jakarta', 'SUP001', '2', '18-02-2020', '20-02-2020', 1, 2),
(5, 'PSN0099150', 'Ucok', 'SUP001', '1', '05-02-2020', '', 0, 2),
(6, 'PSN0041713', 'ASEP', 'SUP001', '1', '22-01-2020', '', 0, 2),
(7, 'PSN006901', 'Asep update', 'SUP001', '1', '02/04/2020', '', 0, 2),
(8, 'PSN0092575', 'Jakarta', 'SUP001', '1', '20-02-2020', '', 0, 2),
(9, 'PSN0029591', 'Asep update g', 'SUP001', '1', '18-02-2020', '', 0, 2),
(10, 'PSN0054708', 'Asep update', 'SUP001', '1', '20-02-2020', '', 0, 2),
(11, 'PSN0027480', 'Ucok', 'SUP001', '1', '12-02-2020', '', 0, 2),
(12, 'PSN0065466', 'Asep update', 'SUP001', '1', '20-02-2020', '', 0, 2),
(13, 'PSN007622', 'Asep update', 'SUP001', '1', '18-02-2020', '22-02-2020', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_manual`
--

CREATE TABLE `pesanan_manual` (
  `id` int(11) NOT NULL,
  `kode` varchar(128) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_total` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan_manual`
--

INSERT INTO `pesanan_manual` (`id`, `kode`, `nama_barang`, `kategori`, `satuan`, `harga_beli`, `jumlah`, `harga_total`, `id_user`, `id_cabang`) VALUES
(1, 'PSN0038141', 'Mod', 'Alat', 'unt', 500000, 10, 5000000, 110, 1),
(2, 'PSN0038141', 'Liquid Rasa Strawberry', 'Cairan', 'btl', 250000, 20, 5000000, 110, 1),
(3, 'PSN0018737', 'asdasdas', 'Alat', 'btl', 10000, 20000, 200000000, 1, 1),
(4, 'PSN0018737', 'eeeeeeeeeeeeeeeweee', 'Alat', 'btl', 100000000, 2000000, 2147483647, 1, 1),
(5, 'PSN0018737', 'cekcekcek', 'Alat', 'btl', 10000, 1000000000, 2147483647, 1, 1),
(6, 'PSN0018737', 'cekmasu', 'Alat', 'btl', 1000000, 10000000, 2147483647, 1, 1),
(7, 'PSN0018737', 'barang', 'Alat', 'btl', 100000, 100000, 2147483647, 1, 1),
(8, 'PSN0075236', 'vap', 'Alat', 'btl', 100000, 2, 200000, 1, 1),
(9, 'PSN0099150', 'inasda', 'Alat', 'btl', 1000000, 1, 1000000, 1, 1),
(10, 'PSN0041713', 'asd', 'Alat', 'btl', 10000, 1, 10000, 1, 1),
(11, 'PSN006901', 'cek', 'Alat', 'btl', 10000, 1, 10000, 1, 1),
(12, 'PSN0092575', 'cek', 'Alat', 'btl', 10000, 1, 10000, 1, 1),
(13, 'PSN0029591', 'hahah', 'Alat', 'btl', 10000, 1, 10000, 1, 1),
(14, 'PSN0054708', 'hja', 'Alat', 'btl', 100000, 1, 100000, 1, 1),
(15, 'PSN0027480', 'ggg', 'Alat', 'btl', 1000, 1, 1000, 1, 1),
(16, 'PSN0065466', 'ssss', 'Alat', 'btl', 10000, 1, 10000, 1, 1),
(17, 'PSN007622', 'jkjk', 'Alat', 'btl', 100000, 1, 100000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pengeluaran`
--

CREATE TABLE `riwayat_pengeluaran` (
  `id` int(11) NOT NULL,
  `kode_pesanan` varchar(128) DEFAULT NULL,
  `id_cabang` int(11) NOT NULL,
  `total_pengeluaran` int(11) NOT NULL,
  `tanggal_ind` date NOT NULL,
  `bulan_ind` varchar(50) NOT NULL,
  `single_bulan` varchar(10) NOT NULL,
  `single_tahun` int(11) NOT NULL,
  `bukti_pengeluaran` varchar(255) NOT NULL,
  `status_bukti` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `jenis` int(11) NOT NULL,
  `hari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat_pengeluaran`
--

INSERT INTO `riwayat_pengeluaran` (`id`, `kode_pesanan`, `id_cabang`, `total_pengeluaran`, `tanggal_ind`, `bulan_ind`, `single_bulan`, `single_tahun`, `bukti_pengeluaran`, `status_bukti`, `catatan`, `jenis`, `hari`) VALUES
(1, 'PSN0038141', 1, 10000000, '2020-02-13', '02-2020', '02', 2020, '0aa3c8c5c3af836e84dd4423188bfc55.jpg', 2, '', 0, 4),
(2, 'PSN0018737', 2, 2147483647, '2020-02-14', '02-2020', '02', 2020, 'asdadasdsa.jpg', 1, '', 0, 6),
(3, 'PSN0075236', 2, 200000, '2020-02-16', '03-2020', '03', 2020, '', 1, '', 0, 6),
(4, 'PSN0099150', 1, 1000000, '0000-00-00', '02-2020', '02', 2020, '', 0, '', 0, 3),
(5, 'PSN0041713', 1, 10000, '0000-00-00', '02-2020', '02', 2020, '', 0, '', 0, 3),
(6, 'PSN006901', 1, 10000, '0000-00-00', '02-2020', '02', 2020, '', 0, '', 0, 3),
(7, 'PSN0092575', 1, 10000, '2020-02-14', '02-2020', '02', 2020, '', 0, '', 0, 3),
(8, 'PSN0029591', 1, 10000, '0000-00-00', '02-2020', '02', 2020, '', 0, '', 0, 3),
(9, 'PSN0054708', 1, 100000, '0000-00-00', '02-2020', '02', 2020, '', 0, '', 0, 3),
(10, 'PSN0027480', 1, 1000, '0000-00-00', '02-2020', '02', 2020, '', 0, '', 0, 3),
(11, 'PSN007622', 1, 100, '2020-02-19', '02-2020', '02', 2020, '', 1, '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_penjualan`
--

CREATE TABLE `riwayat_penjualan` (
  `id` int(11) NOT NULL,
  `id_pembelian` varchar(128) NOT NULL,
  `id_pembayaran_cicilan` varchar(50) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `id_keranjang` int(11) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `total_pembayaran` bigint(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `tanggal_ind` date NOT NULL,
  `bulan_ind` varchar(50) NOT NULL,
  `single_bulan` varchar(10) NOT NULL,
  `single_tahun` int(11) NOT NULL,
  `uang` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `pendapatan` int(11) NOT NULL,
  `hari` int(11) NOT NULL,
  `metode_bayar` varchar(50) NOT NULL,
  `status_utang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat_penjualan`
--

INSERT INTO `riwayat_penjualan` (`id`, `id_pembelian`, `id_pembayaran_cicilan`, `id_user`, `id_keranjang`, `id_cabang`, `total_pembayaran`, `tanggal`, `tanggal_ind`, `bulan_ind`, `single_bulan`, `single_tahun`, `uang`, `kembalian`, `pendapatan`, `hari`, `metode_bayar`, `status_utang`) VALUES
(1, 'JBR20022087998', '', '', 8046, 1, 612, '24-02-2020 16:01:56', '2020-02-24', '02-2020', '02', 2020, 2000, 1388, 110, 4, 'tunai', 0),
(2, 'JBR2102208197', '', '', 1551, 1, 600, '01-02-2020 00:18:28', '2020-02-01', '02-2020', '02', 2020, 100000, 99400, 100, 5, 'tunai', 0),
(3, 'JBR22022061675', '', '', 4895, 1, 600, '22-02-2020 17:29:14', '2020-02-22', '01-2020', '01', 2020, 10000, 9400, 100, 6, 'tunai', 0),
(4, 'JBR19022017125', '', '', 8831, 1, 60000000, '21-02-2020 23:28:25', '2020-02-21', '02-2020', '02', 2020, 10000, 9994, 5, 3, 'tunai', 0),
(5, 'JBR19022018261', '', '', 1451, 1, 6, '20-02-2020 23:35:02', '2020-02-20', '02-2020', '02', 2020, 100000, 99994, 5, 3, 'tunai', 0),
(6, 'JBR19022073072', '', '', 6063, 1, 6, '19-02-2020 23:37:52', '2020-02-19', '02-2020', '02', 2020, 10000, 9994, 5, 3, 'tunai', 0),
(7, 'JBR2202204710', '', '', 4566, 1, 6, '22-02-2020 14:24:53', '2020-02-22', '02-2020', '02', 2020, 100000, 99994, 5, 6, 'tunai', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role`) VALUES
(1, 'Super Admin'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `satuan_barang`
--

CREATE TABLE `satuan_barang` (
  `id` int(11) NOT NULL,
  `nama_satuan` varchar(50) NOT NULL,
  `nama_asli` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan_barang`
--

INSERT INTO `satuan_barang` (`id`, `nama_satuan`, `nama_asli`) VALUES
(1, 'unt', 'Unit'),
(2, 'btl', 'Botol');

-- --------------------------------------------------------

--
-- Table structure for table `semua_data_keranjang`
--

CREATE TABLE `semua_data_keranjang` (
  `id` int(11) NOT NULL,
  `barcode` varchar(50) NOT NULL,
  `id_keranjang` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_total` int(11) NOT NULL,
  `id_del` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_cabang` int(11) DEFAULT NULL,
  `id_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semua_data_keranjang`
--

INSERT INTO `semua_data_keranjang` (`id`, `barcode`, `id_keranjang`, `nama`, `jumlah`, `satuan`, `harga`, `harga_total`, `id_del`, `harga_beli`, `harga_jual`, `profit`, `id_user`, `id_cabang`, `id_barang`) VALUES
(1, '899529648077', 8046, 'Liquid Rasa Strawberry', 2, 'btl', 6, 12, 1, 250, 6, 10, 110, 1, 2),
(2, '899529666958', 8046, 'Mod', 1, 'unt', 600, 600, 2, 500, 600, 100, 110, 1, 1),
(3, '899529666958', 1551, 'Mod', 1, 'unt', 600, 600, 3, 500, 600, 100, 1, 1, 1),
(4, '899529666958', 4895, 'Mod', 1, 'unt', 600, 600, 4, 500, 600, 100, 1, 1, 1),
(5, '899529648077', 8831, 'Liquid Rasa Strawberry', 1, 'btl', 6, 6, 5, 250, 6, 5, 1, 1, 2),
(6, '899529648077', 1451, 'Liquid Rasa Strawberry', 1, 'btl', 6, 6, 6, 250, 6, 5, 1, 1, 2),
(7, '899529648077', 6063, 'Liquid Rasa Strawberry', 1, 'btl', 6, 6, 7, 250, 6, 5, 1, 1, 2),
(8, '899529648077', 4566, 'Liquid Rasa Strawberry', 1, 'btl', 6, 6, 8, 250, 6, 5, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `stok_barang`
--

CREATE TABLE `stok_barang` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `in_out` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_barang`
--

INSERT INTO `stok_barang` (`id`, `id_barang`, `tgl`, `tanggal`, `jumlah`, `keterangan`, `status`, `in_out`) VALUES
(1, 1, 1582188818, '20-02-2020', 10, 'Pembelian Barang - Kode : PSN0038141', 1, 0),
(2, 2, 1582188818, '20-02-2020', 20, 'Pembelian Barang - Kode : PSN0038141', 1, 0),
(3, 2, 1582189316, '', 2, 'Barang terjual - ID : JBR20022087998', 2, 0),
(4, 1, 1582189316, '', 1, 'Barang terjual - ID : JBR20022087998', 2, 0),
(5, 3, 1582199564, '', 0, 'Data awal', 1, 0),
(6, 4, 1582199873, '', 0, 'Data awal', 1, 0),
(7, 5, 1582199918, '', 0, 'Data awal', 1, 0),
(8, 6, 1582200135, '', 0, 'Data awal', 1, 0),
(9, 7, 1582217057, '', 0, 'Data awal', 1, 0),
(10, 8, 1582218612, '', 0, 'Data awal', 1, 0),
(11, 9, 1582218654, '', 0, 'Data awal', 1, 0),
(12, 10, 1582218745, '', 0, 'Data awal', 1, 0),
(13, 11, 1582218809, '', 0, 'Data awal', 1, 0),
(14, 12, 1582218858, '', 0, 'Data awal', 1, 0),
(15, 1, 1582219108, '', 1, 'Barang terjual - ID : JBR2102208197', 2, 0),
(16, 1, 1582367354, '', 1, 'Barang terjual - ID : JBR22022061675', 2, 0),
(17, 13, 1582380125, '22-02-2020', 20000, 'Pembelian Barang - Kode : PSN0018737', 1, 0),
(18, 14, 1582380125, '22-02-2020', 2000000, 'Pembelian Barang - Kode : PSN0018737', 1, 0),
(19, 15, 1582380125, '22-02-2020', 1000000000, 'Pembelian Barang - Kode : PSN0018737', 1, 0),
(20, 16, 1582380125, '22-02-2020', 10000000, 'Pembelian Barang - Kode : PSN0018737', 1, 0),
(21, 17, 1582380125, '22-02-2020', 100000, 'Pembelian Barang - Kode : PSN0018737', 1, 0),
(22, 18, 1582381889, '22-02-2020', 2, 'Pembelian Barang - Kode : PSN0075236', 1, 0),
(23, 19, 1582094645, '', 0, 'Data awal', 1, 0),
(24, 20, 1582128953, '', 0, 'Data awal', 1, 0),
(25, 2, 1582129705, '', 1, 'Barang terjual - ID : JBR19022017125', 2, 0),
(26, 2, 1582130102, '', 1, 'Barang terjual - ID : JBR19022018261', 2, 0),
(27, 2, 1582130272, '', 1, 'Barang terjual - ID : JBR19022073072', 2, 0),
(28, 2, 1582356293, '', 1, 'Barang terjual - ID : JBR2202204710', 2, 0),
(29, 21, 1582358618, '22-02-2020', 1, 'Pembelian Barang - Kode : PSN007622', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stok_opname`
--

CREATE TABLE `stok_opname` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `tempat` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL,
  `catatan` text DEFAULT NULL,
  `disabled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_opname`
--

INSERT INTO `stok_opname` (`id`, `kode`, `nama`, `tanggal`, `tempat`, `status`, `catatan`, `disabled`) VALUES
(1, 'SON0034724', 'coba stock opname baru', '20-02-2020', '1', 'Stok Opname', 'coba aja lho ya', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suplier`
--

CREATE TABLE `suplier` (
  `id` int(11) NOT NULL,
  `id_suplier` varchar(128) NOT NULL,
  `nama_suplier` varchar(128) NOT NULL,
  `alamat_suplier` varchar(128) NOT NULL,
  `telp` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suplier`
--

INSERT INTO `suplier` (`id`, `id_suplier`, `nama_suplier`, `alamat_suplier`, `telp`) VALUES
(1, 'SUP001', 'Supplier 1', 'jalan pulau kawe 69', '08196969');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(5) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto_profile` varchar(255) NOT NULL,
  `penempatan_cabang` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `email`, `jenis_kelamin`, `password`, `foto_profile`, `penempatan_cabang`, `role_id`, `status`) VALUES
(1, 'Bill', 'sadmin', 'cep@gmail.com', 'l', '$2y$10$F9hCjhSURFO9MH8VyBpSRewLS281zBZeQPb7RIzsEj1S.aGiHp7Wa', '76390086f33b99b830e90b16fcd346aa.png', 1, 1, 1),
(110, 'Gung Putri', 'kasir', 'test@kasir1.com', 'p', '$2y$10$dLOS.2s0IiCI1oZ.hSU0FeSYXz9iXbFxc.vkhy0KLtXM5BXgr8D/O', 'default.png', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_langganan`
--

CREATE TABLE `user_langganan` (
  `id` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `tlp_user` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `penempatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_menu`
--
ALTER TABLE `akses_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_cabang`
--
ALTER TABLE `data_cabang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_hutang`
--
ALTER TABLE `data_hutang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isi_pesanan_barang`
--
ALTER TABLE `isi_pesanan_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isi_stok_opname`
--
ALTER TABLE `isi_stok_opname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran_cicilan`
--
ALTER TABLE `pembayaran_cicilan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran_hutang`
--
ALTER TABLE `pembayaran_hutang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan_umum`
--
ALTER TABLE `pengaturan_umum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan_barang`
--
ALTER TABLE `pesanan_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan_manual`
--
ALTER TABLE `pesanan_manual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_penjualan`
--
ALTER TABLE `riwayat_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satuan_barang`
--
ALTER TABLE `satuan_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semua_data_keranjang`
--
ALTER TABLE `semua_data_keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok_barang`
--
ALTER TABLE `stok_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok_opname`
--
ALTER TABLE `stok_opname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_langganan`
--
ALTER TABLE `user_langganan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_menu`
--
ALTER TABLE `akses_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `data_cabang`
--
ALTER TABLE `data_cabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_hutang`
--
ALTER TABLE `data_hutang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `isi_pesanan_barang`
--
ALTER TABLE `isi_pesanan_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `isi_stok_opname`
--
ALTER TABLE `isi_stok_opname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembayaran_cicilan`
--
ALTER TABLE `pembayaran_cicilan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayaran_hutang`
--
ALTER TABLE `pembayaran_hutang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengaturan_umum`
--
ALTER TABLE `pengaturan_umum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan_barang`
--
ALTER TABLE `pesanan_barang`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pesanan_manual`
--
ALTER TABLE `pesanan_manual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `riwayat_penjualan`
--
ALTER TABLE `riwayat_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `satuan_barang`
--
ALTER TABLE `satuan_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `semua_data_keranjang`
--
ALTER TABLE `semua_data_keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stok_barang`
--
ALTER TABLE `stok_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `stok_opname`
--
ALTER TABLE `stok_opname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suplier`
--
ALTER TABLE `suplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `user_langganan`
--
ALTER TABLE `user_langganan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
