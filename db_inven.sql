-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2020 at 09:38 AM
-- Server version: 10.4.12-MariaDB-log
-- PHP Version: 7.2.19

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
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
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
(1, '899529666958', 'Mod', 'default.png', 'Alat', 500, 600, 100, 9, 'unt', 1, '', 1, '', 'PSN0038141', ''),
(2, '899529648077', 'Liquid Rasa Strawberry', 'default.png', 'Cairan', 250, 6, 5, 18, 'btl', 1, 'asdasd', 1, 'PJ001', 'PSN0038141', '22-02-2020');

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
(1, 'Cabang Utama', 'Jl. Raya Kerobokan, Kerobokan Kaja, Kec. Kuta Utara, Kabupaten Badung, Bali 80361', 2);

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
(1, 'PSN0038141', 'Data barang awal', 'SUP001', '1', '20-02-2020', '20-02-2020', 1, 2);

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
(2, 'PSN0038141', 'Liquid Rasa Strawberry', 'Cairan', 'btl', 250000, 20, 5000000, 110, 1);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pengeluaran`
--

CREATE TABLE `riwayat_pengeluaran` (
  `id` int(11) NOT NULL,
  `kode_pesanan` varchar(128) DEFAULT NULL,
  `id_cabang` int(11) NOT NULL,
  `total_pengeluaran` int(11) NOT NULL,
  `tanggal_ind` varchar(50) NOT NULL,
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
(1, 'PSN0038141', 1, 10000000, '20-02-2020', '02-2020', '02', 2020, '0aa3c8c5c3af836e84dd4423188bfc55.jpg', 2, '', 0, 4);

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
  `total_pembayaran` int(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `tanggal_ind` varchar(128) NOT NULL,
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
(1, 'JBR20022087998', '', '', 8046, 1, 612, '20-02-2020 16:01:56', '20-02-2020', '02-2020', '02', 2020, 2000, 1388, 110, 4, 'tunai', 0);

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
(2, '899529666958', 8046, 'Mod', 1, 'unt', 600, 600, 2, 500, 600, 100, 110, 1, 1);

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
(4, 1, 1582189316, '', 1, 'Barang terjual - ID : JBR20022087998', 2, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_cabang`
--
ALTER TABLE `data_cabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesanan_manual`
--
ALTER TABLE `pesanan_manual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `riwayat_penjualan`
--
ALTER TABLE `riwayat_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stok_barang`
--
ALTER TABLE `stok_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
