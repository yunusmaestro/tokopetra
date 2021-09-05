-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2020 at 06:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek_tekweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `berat`
--

CREATE TABLE `berat` (
  `id` int(11) NOT NULL,
  `nama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berat`
--

INSERT INTO `berat` (`id`, `nama`) VALUES
(1, 'gram'),
(2, 'kilogram'),
(3, 'ton');

-- --------------------------------------------------------

--
-- Table structure for table `catatan_toko`
--

CREATE TABLE `catatan_toko` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catatan_toko`
--

INSERT INTO `catatan_toko` (`id`, `judul`, `deskripsi`) VALUES
(1, 'Kebijakan Pengembalian Produk', 'Produk yang sudah dibeli tidak dapat dikembalikan maupun ditukar kembali. Jika barang tersebut rusak, hilang setelah diterima pihak ketiga ( sewaktu pengiriman kurir ) mohon maaf kami tidak bertanggung jawab untuk hal ini, sebaiknya anda minta asuransi saat membeli produk kami. KECUALI : Produk dapat ditukarkan kembali Jika produk yang diterima tersebut beda model / salah warna karena kesalahan penjual ( KECUALI WARNA YG DIMINTA KOSONG AKAN DIKIRIMKAN RANDOM). Konfirmasi penukaran produk paling lambat 1x24jam saat barang diterima. Barang harap dikirimkan kembali maksimal 3x24jam dari saat barang diterima dalam kondisi lengkap dan belum pernah dipakai.'),
(2, '(CUSTOMER WAJIB BACA) Pengiriman dengan GRAB dan GO-JEK', 'Kami informasikan bahwa pengiriman GOSEND/GRAB SAME DAY adalah maksimal kami terima pesanan pukul 11.00, lalu kami dapat arrange pick up. Diatas itu arrange pick up dilakukan di esok hari. Dan GOSEND/GRAB INSTANT adalah maksimal kami terima pesanan pukul 13.00, lalu kami dapat arrange pick up. Diatas itu arrange pick up dilakukan di esok hari. SABTU DAN MINGGU TIDAK ADA PENGIRIMAN UNTUK GRAB DAN GO-JEK. Kami akan membebankan biaya sebesar Rp 2.000 ke konsumen atas biaya parkir dari Driver GRAB dan GO-JEK, jika Driver GRAB dan GO-JEK memintanya.');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id`, `id_transaksi`, `id_item`, `deskripsi`, `qty`) VALUES
(1, 1, 2, 'Warna Putih', 4),
(2, 1, 3, '-', 5),
(3, 2, 1, 'Warna Putih', 1),
(4, 3, 4, 'Warna Pink', 2),
(5, 4, 1, 'Warna Hitam', 1),
(6, 5, 5, '-', 4),
(8, 7, 1, '-', 1),
(9, 8, 10, '-', 1),
(11, 10, 11, '-', 1),
(13, 12, 3, '-', 1),
(14, 13, 3, '-', 1),
(15, 13, 11, '-', 2);

-- --------------------------------------------------------

--
-- Table structure for table `diskusi`
--

CREATE TABLE `diskusi` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_user_penerima` int(11) NOT NULL,
  `id_user_pengirim` int(11) NOT NULL,
  `tanggalwaktu` datetime NOT NULL,
  `message` text NOT NULL,
  `id_terbaca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diskusi`
--

INSERT INTO `diskusi` (`id`, `id_item`, `id_user_penerima`, `id_user_pengirim`, `tanggalwaktu`, `message`, `id_terbaca`) VALUES
(1, 1, 0, 1, '2020-08-07 07:03:12', 'Ready 5pcs gan?', 2),
(2, 1, 1, 0, '2020-08-07 10:05:00', 'Ready gan', 2),
(3, 1, 0, 1, '2020-08-15 08:03:10', 'Oke gan, saya checkout ya', 2),
(4, 2, 0, 2, '2020-08-15 09:00:15', 'Ini apakah ready?', 2),
(5, 2, 2, 0, '2020-08-15 09:01:50', 'Ready gan, silahkan dipesan', 2),
(6, 3, 0, 2, '2020-08-15 22:15:01', 'Gan, ini ready?', 2),
(7, 1, 1, 0, '2020-08-17 08:08:15', 'Siaap', 2),
(8, 2, 0, 2, '2020-08-17 16:00:54', 'Oke gan, nanti saya pesan', 1),
(9, 3, 2, 0, '2020-12-19 12:29:48', 'siaap', 2);

-- --------------------------------------------------------

--
-- Table structure for table `informasi_toko`
--

CREATE TABLE `informasi_toko` (
  `slogan` text DEFAULT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informasi_toko`
--

INSERT INTO `informasi_toko` (`slogan`, `deskripsi`) VALUES
('-', 'Anda Sopan Kami Segan');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `gambar` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stock_tersisa` int(11) NOT NULL,
  `nominal_berat` int(11) NOT NULL,
  `id_berat` int(11) NOT NULL,
  `id_kondisi` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `nama`, `gambar`, `harga`, `stock_tersisa`, `nominal_berat`, `id_berat`, `id_kondisi`, `deskripsi`, `id_kategori`) VALUES
(1, 'Kabel USB', 'usb.jpg', 15000, 20, 105, 1, 1, 'USB 3.0 | 2m | Type-C', 1),
(2, 'Mouse', 'mouse.jpg', 21000, 32, 2, 1, 2, 'Kabel 3m | PMW 3366', 1),
(3, 'Keyboard Gaming Razer', 'keyboard.jpg', 250000, 12, 50, 2, 1, 'Razer - Huntsman Wired Gaming Opto-Mechanical Switch Keyboard with Chroma Back Lighting - Mercury White', 1),
(4, 'Headset', 'headset.jpg', 550000, 2, 2, 2, 1, 'with mic', 1),
(5, 'Gelang', 'gelang.jpg', 25000, 5, 250, 3, 1, 'Diameter 5cm', 2),
(7, 'Xiaomi RedMi Note', 'xiaomi.png', 1200000, 2, 200, 1, 1, 'Xiaomi RedMi Note 2020', 1),
(8, 'Snapbag Yankee NY', 'yankee.png', 50000, 3, 150, 1, 1, 'Snapbag Yankee NY lite 2020', 2),
(9, 'Mantan Terindah', 'Serizawa.png', 500, 1, 45, 2, 2, 'Cantik dan memikat namun menyakitkan', 10),
(10, 'Japanese Bomber Jacket Black', 'casual-japanese-style-bomber-jacket-black-m.jpg', 250000, 1, 1, 2, 2, 'Baru beli, tapi tidak digunakan karena jarang pakai jaket', 7),
(11, 'Titanium Ring', 'titanium ring.jpg', 400000, 25, 300, 1, 1, 'Terbuat dari titanium asli bukan kaleng-kaleng :)', 2),
(12, 'Sepatu Nike', 'sepatunike.jpg', 2500000, 15, 1, 2, 1, '', 7),
(13, 'Waist Bag', 'waistbag.png', 200000, 15, 1, 2, 1, 'Diameter blabla', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Elektronik'),
(2, 'Aksesoris'),
(3, 'Makanan'),
(4, 'HP & Gadget'),
(5, 'Gaming'),
(6, 'PC & Laptop'),
(7, 'Pakaian Pria'),
(8, 'Pakaian Wanita'),
(9, 'Pakaian Bayi'),
(10, 'Peralatan Rumah Tangga'),
(11, 'Hobi'),
(12, 'Hadiah');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `id_user`, `id_item`, `deskripsi`, `qty`) VALUES
(1, 1, 1, '-', 2),
(2, 1, 2, 'warna hitam', 2),
(3, 4, 3, '-', 5),
(4, 4, 4, '-', 7),
(5, 4, 5, '1 pink, 2 merah', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `nama`) VALUES
(1, 'Baru'),
(2, 'Bekas');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `nama`) VALUES
(1, 'Nanggroe Aceh Darussalam - Banda Aceh'),
(2, 'Sumatera Utara - Medan'),
(3, 'Sumatera Barat - Padang'),
(4, 'Riau - Pekan Baru'),
(5, 'Kepulauan Riau - Tanjung Pinang'),
(6, 'Jambi - Jambi'),
(7, 'Bengkulu - Bengkulu'),
(8, 'Sumatera Selatan - Palembang'),
(9, 'Kepulauan Bangka Belitung - Pangkal Pinang'),
(10, 'Lampung - Bandar Lampung'),
(11, 'Banten - Serang'),
(12, 'DKI Jakarta - Jakarta'),
(13, 'Jawa Barat - Bandung'),
(14, 'Jawa Tengah - Semarang'),
(15, 'Jawa Timur - Surabaya'),
(16, 'DI Yogyakarta - Yogyakarta'),
(17, 'Bali - Denpasar'),
(18, 'Nusa Tenggara Barat - Mataram'),
(19, 'Nusa Tenggara Timur - Kupang'),
(20, 'Kalimantan Barat - Pontianak'),
(21, 'Kalimantan Selatan - Banjarmasin'),
(22, 'Kalimantan Tengah - Palangkaraya'),
(23, 'Kalimantan Timur - Samarinda'),
(24, 'Kalimantan Utara - Tanjung Selor'),
(25, 'Gorontalo - Gorontalo'),
(26, 'Sulawesi Selatan - Makassar'),
(27, 'Sulawesi Tenggara - Kendari'),
(28, 'Sulawesi Tengah - Palu'),
(29, 'Sulawesi Utara - Manado'),
(30, 'Sulawesi Barat - Mamuju'),
(31, 'Maluku - Ambon'),
(32, 'Maluku Utara - Sofifi'),
(33, 'Papua - Jayapura'),
(34, 'Papua Barat - Manokwari');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `nama`) VALUES
(1, 'Menunggu Konfirmasi'),
(2, 'Sedang di Proses'),
(3, 'Sedang di Kirim'),
(4, 'Paket Telah Sampai Tujuan'),
(5, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `terbaca`
--

CREATE TABLE `terbaca` (
  `id` int(11) NOT NULL,
  `nama` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terbaca`
--

INSERT INTO `terbaca` (`id`, `nama`) VALUES
(1, 'Belum'),
(2, 'Sudah');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `tanggalwaktu` datetime NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_user`, `id_status`, `tanggalwaktu`, `total_harga`) VALUES
(1, 1, 5, '2020-06-24 09:03:12', 0),
(2, 2, 5, '2020-06-27 10:15:13', 0),
(3, 2, 2, '2020-07-03 18:03:14', 0),
(4, 3, 5, '2020-07-20 09:18:15', 0),
(5, 3, 3, '2020-08-05 15:20:54', 0),
(7, 6, 4, '2020-11-27 22:25:46', 27000),
(8, 6, 4, '2020-12-17 21:36:39', 258000),
(10, 6, 4, '2020-12-18 13:36:02', 430000),
(12, 10, 4, '2020-12-19 12:28:21', 280000),
(13, 6, 4, '2020-12-19 23:48:23', 1080000);

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `message` text NOT NULL,
  `tanggalwaktu` datetime NOT NULL,
  `id_terbaca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id`, `id_item`, `id_user`, `rating`, `message`, `tanggalwaktu`, `id_terbaca`) VALUES
(1, 1, 1, 5, '	mantap	', '2020-06-28 18:00:18', 1),
(2, 1, 2, 4, '	nice	', '2020-07-01 15:15:01', 2),
(3, 2, 1, 5, '	recommended seller	', '2020-07-01 12:15:02', 1),
(4, 2, 3, 5, '	terbaik	', '2020-07-20 20:05:54', 2),
(5, 3, 1, 4, '	...	', '2020-07-25 14:14:14', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` text NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `id_kota` int(11) NOT NULL,
  `alamat` text DEFAULT NULL,
  `kode_pos` int(11) DEFAULT NULL,
  `no_rekening` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `nama`, `no_hp`, `tanggal_lahir`, `id_kota`, `alamat`, `kode_pos`, `no_rekening`) VALUES
(0, 'admintokopetra@gmail.com', 'lohkansayayangjual', 'Admin', NULL, NULL, 12, NULL, NULL, NULL),
(1, 'silviei@gmail.com', '10975018', 'Silvia Suci Purwanti', '08996046492', '1987-05-12', 33, 'Jln. Pattimura No. 812', 48671, '272071612331'),
(2, 'nataliak@gmail.com', '227ebbf2', 'Natalia Shakila Kuswandari', '03837765537', '1955-05-18', 31, 'Kpg. Abdul. Muis No. 88', 55737, '511277591579'),
(3, 'tamipd@gmail.com', '907b6f5f', 'Tami Nabila Utami', '0219966394', '1989-07-06', 8, 'Ds. Basuki Rahmat No. 120', 99223, '529957325402'),
(4, 'aderaih@gmail.com', '95f351ce', 'Ade Ratna Winarsih', '043199981022', '1997-03-02', 12, 'Psr. Babakan No. 969', 72085, '555458884291'),
(5, 'clarom@gmail.com', '4ccca4bc', 'Clara Lailasari', '0219966394', '1965-12-15', 22, 'Ds. Mulyadi No. 392', 30883, '471646829083'),
(6, 'karepku@gmail.com', '123456789', 'Yunus Marsetio', '089516244544', '2000-07-08', 15, 'Jl. Karepmu EE 26', 60293, '111144442222'),
(8, 'cakmbon@gmail.com', '987654321', 'Percobaan Pertama', '0812344777', '2001-06-04', 31, 'Jl. Cak Mbon Nomor 14', 999999, '333322221111'),
(9, 'sasasa@gmail.com', 'sasasa', 'Percobaan Kedua', '08244553344', '2002-12-26', 18, 'Jl. Sasasa No. 3', 444444, '88887779941'),
(10, 'riosusanto@gmail.com', '12345678', 'Rio Susanto', '08122445566', '2000-01-11', 12, 'Jl. Mawar No 18', 555666, '021455566667');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berat`
--
ALTER TABLE `berat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catatan_toko`
--
ALTER TABLE `catatan_toko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terbaca`
--
ALTER TABLE `terbaca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berat`
--
ALTER TABLE `berat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catatan_toko`
--
ALTER TABLE `catatan_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `terbaca`
--
ALTER TABLE `terbaca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
