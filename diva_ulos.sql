-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Des 2019 pada 19.06
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diva_ulos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `deskripsi`) VALUES
(1, 'Apa itu Ulos?', 'Ulos atau sering juga disebut kain ulos adalah salah satu busana khas Indonesia. Ulos secara turun temurun dikembangkan oleh masyarakat Batak, Sumatera utara. Dari bahasa asalnya, ulos berarti kain. Cara membuat ulos serupa dengan cara membuat songket khas Palembang, yaitu menggunakan alat tenun bukan mesin.  Warna dominan pada ulos adalah merah, hitam, dan putih yang dihiasi oleh ragam tenunan dari benang emas atau perak. Mulanya ulos dikenakan di dalam bentuk selendang atau sarung saja, kerap digunakan pada perhelatan resmi atau upacara adat Batak, namun kini banyak dijumpai di dalam bentuk produk sovenir, sarung bantal, ikat pinggang, tas, pakaian, alas meja, dasi, dompet, dan gorden.  Ulos juga kadang-kadang diberikan kepada sang ibu yang sedang mengandung supaya mempermudah lahirnya sang bayi ke dunia dan untuk melindungi ibu dari segala mara bahaya yang mengancam saat proses persalinan.'),
(2, 'UKM Diva Ulos', 'Usaha Kecil Menengah (UKM) Diva Ulos berada di Desa Sibuea Lorong Dua Kecamatan Laguboti, Kabupaten Toba Samosir. Usaha Kecil Menengah Diva Ulos merupakan suatu usaha yang mengelola barang produksi dimana menyertakan berbagai motif ulos terhadap barang produksi yang dikembangkan oleh UKM Diva Ulos. Usaha Kecil Menengah Diva Ulos dibangun berdasarkan pada keinginan pengelola barang produksi di dalam meningkatkan taraf hidup pengelola barang produksi serta masyarakat yang berada di sekitar tempat produksi barang tersebut. Usaha ini kini telah memiliki dua tempat lokasi pengolahan barang produksi yang berada di daerah yang sama sehingga proses pengolahan barang produksi dapat berjalan dengan baik serta cepat. Di dalam proses pengolahan barang produksi, UKM ini menggunakan metode tradisional dimana memanfaatkan mesin tenun tradisional yang dikelola oleh pengrajin motif.  Melalui metode pembuatan barang produksi tersebut,motif yang dihasilkan memiliki tingkat keakuratan motif yang baik. Usaha Kecil Menengah Diva Ulos telah melalui banyak pengembangan keahlian di dalam menciptakan pengolahan barang produksi yang relevan terhadap permintaan customer seperti mengikuti pameran tingkat daerah hingga menerima saran maupun kritik dari customer barang produksi.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(3) NOT NULL,
  `id_users` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nohp` int(20) NOT NULL,
  `id_produk` int(3) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `total_harga` int(10) NOT NULL,
  `bukti_pembayaran` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_users`, `nama`, `alamat`, `email`, `nohp`, `id_produk`, `jumlah`, `total_harga`, `bukti_pembayaran`, `tanggal`) VALUES
(8, 2, 'Kelvin Nainggolan', 'Jln Raya Menteng', 'kelvinnnainggolan59@gmail.com', 12930123, 28, 2, 6400000, '', '2017-05-18'),
(9, 2, 'Kelvin Nainggolan', 'Jln Raya Menteng', 'kelvinnnainggolan59@gmail.com', 2147483647, 26, 1, 1200000, '', '2017-05-18'),
(10, 2, 'Kelvin Nainggolan', 'Jln Raya Menteng', 'kelvinnnainggolan59@gmail.com', 12930123, 28, 1, 3200000, '', '2017-05-18'),
(11, 5, 'Marchel', 'Jln Pisang', 'marcheltheodoroz@gmail.com', 12930123, 29, 1, 1200000, '', '2017-05-18'),
(12, 2, 'Kelvin Nainggolan', 'Jln Raya Menteng', 'kelvinnnainggolan59@gmail.com', 2147483647, 29, 1, 1200000, '', '2017-05-18'),
(14, 2, 'Kelvin Nainggolan', 'Jln Raya Menteng', 'kelvinnnainggolan59@gmail.com', 123, 24, 1, 1200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-05-19'),
(15, 6, 'Dodi Pakpahan', 'Jln Durian', 'dodipakpahan25@yahoo.com', 123, 6, 1, 1200000, 'pembayaran/Dodi Pakpahan.jpg', '2017-05-19'),
(16, 6, 'Dodi Pakpahan', 'jln pemuda', 'dodipakpahan25@yahoo.com', 2147483647, 6, 1, 1200000, 'pembayaran/Dodi Pakpahan.jpg', '2017-05-19'),
(17, 2, 'Kelvin Nainggolan', 'Jln Raya Menteng', 'kelvinnnainggolan59@gmail.com', 12930123, 9, 1, 1200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-05-19'),
(18, 2, 'Kelvin Nainggolan', 'Jln Pasar Merah', 'kelvinnainggolan59@gmail.com', 2147483647, 30, 1, 1200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-05-19'),
(19, 3, 'Dian Sirait', 'jln pemda', 'dodipakpahan25@yahoo.com', 12930123, 8, 5, 6000000, 'pembayaran/Dian Sirait.jpg', '2017-05-19'),
(20, 2, 'Kelvin Nainggolan', 'Jln Durian', 'asd@gmail.com', 12930123, 30, 1, 1200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-05-19'),
(21, 5, 'Marchel', 'Tarutung', 'marcheltheodoroz@gmail.com', 123, 17, 1, 1200000, 'pembayaran/Marchel.jpg', '2017-05-21'),
(22, 2, 'Kelvin Nainggolan', 'jln pemda', '123@yahoo.com', 123, 3, 1, 1200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-06-07'),
(23, 2, 'Kelvin Nainggolan', 'jln pemda', '123@yahoo.com', 123, 3, 1, 1200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-06-07'),
(24, 2, 'Kelvin Nainggolan', 'jln pemda', '123@yahoo.com', 123, 3, 1, 1200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-06-07'),
(25, 5, 'Marchel', 'Jln Durian', 'marcheltheodoroz@gmail.com', 1234, 23, 2, 2400000, 'pembayaran/Marchel.jpg', '2017-06-13'),
(26, 1, 'Kelvin Nainggolan', 'Sunggal', '123@yahoo.com', 123, 3, 1, 1200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-06-14'),
(54, 2, 'Kelvin Nainggolan', 'Jln Pasar Merah', '123@yahoo.com', 123, 28, 1, 3200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-06-14'),
(55, 2, 'Kelvin Nainggolan', 'Jln Pasar Merah', '123@yahoo.com', 123, 28, 1, 3200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-06-14'),
(56, 3, 'Dian Sirait', 'Balige', '123@yahoo.com', 123, 17, 1, 1200000, 'pembayaran/Dian Sirait.jpg', '2017-06-14'),
(57, 2, 'Kelvin Nainggolan', 'Medan', '123@yahoo.com', 2147483647, 28, 1, 3200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-06-15'),
(58, 2, 'Kelvin Nainggolan', 'Jln Raya Menteng', '123@yahoo.com', 12930123, 28, 1, 3200000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-06-15'),
(59, 10, 'tami', 'balige', 'tamithressa90@gmail.com', 81257618, 29, 1, 3600000, 'pembayaran/tami.jpg', '2017-06-16'),
(60, 10, 'tami', 'balige', 'tamithressa90@gmail.com', 9232634, 29, 2, 2400000, 'pembayaran/tami.jpg', '2017-06-16'),
(61, 10, 'tami', 'balige', 'tamithressa90@gmail.com', 2147483647, 30, 1, 3600000, 'pembayaran/tami.jpg', '2017-06-16'),
(62, 10, 'tami', 'balige', 'tamithressa90@gmail.com', 2147483647, 28, 1, 5600000, 'pembayaran/tami.jpg', '2017-06-16'),
(63, 10, 'tami', 'balige', 'tamithressa90@gmail.com', 2147483647, 1, 1, 6200000, 'pembayaran/tami.jpg', '2017-06-16'),
(64, 11, 'Rio', 'Laguboti', 'rio@gmail.com', 2147483647, 28, 1, 3200000, 'pembayaran/Rio.jpg', '2017-06-16'),
(65, 10, 'tami', 'balige', 'tamithressa90@gmail.com', 2147483647, 28, 2, 6400000, 'pembayaran/tami.jpg', '2017-06-16'),
(66, 13, 'jubey', 'balige', 'jubel@del.ac.id', 2147483647, 28, 2, 6400000, 'pembayaran/jubey.jpg', '2017-06-16'),
(67, 10, 'tami', 'balige', 'tamithressa90@gmail.com', 2147483647, 28, 2, 6400000, 'pembayaran/tami.jpg', '2017-06-16'),
(68, 10, 'tami', 'balige', 'tamithressa90@gmail.com', 2147483647, 29, 0, 3200000, 'pembayaran/tami.jpg', '2017-06-16'),
(69, 15, 'ari manurung', 'porsea', 'ari@gmail.com', 2147483647, 20, 1, 4400000, 'pembayaran/ari manurung.jpg', '2017-06-16'),
(70, 16, 'Yosua Sirait', 'Karang Sari Permai', 'yozsirait98@gmail.com', 2147483647, 26, 5, 6000000, 'pembayaran/Yosua Sirait.jpg', '2017-06-16'),
(71, 17, 'melani hutahaean', 'gasaribu', 'melani@gmail.com', 2147483647, 6, 1, 64400000, 'pembayaran/melani hutahaean.jpg', '2017-06-16'),
(72, 18, 'resmita sitorus', 'Laguboti', 'sitorusresmi2@yahoo.com', 2147483647, 6, 1, 3600000, 'pembayaran/resmita sitorus.jpg', '2017-06-16'),
(73, 10, 'tami', 'balige', 'tamithressa90@gmail.com', 2147483647, 28, 2, 6400000, 'pembayaran/tami.jpg', '2017-06-16'),
(74, 20, 'sumi', 'xxx', 'xxx@gmail.com', 0, 1, 3, 1800000, '', '2017-06-16'),
(75, 10, 'tami', 'balige', 'tamithressa90@gmail.com', 9232634, 28, 3, 9600000, 'pembayaran/tami.jpg', '2017-06-16'),
(76, 21, 'Abed', 'laguboti', 'abed@gmail.com', 2147483647, 2, 3, 3600000, 'pembayaran/Abed.jpg', '2017-06-16'),
(77, 22, 'Risa Purba', '', '', 0, 28, 46, 147200000, '', '2017-06-16'),
(78, 22, 'Risa Purba', 'sdfghjk', ';d', 0, 28, 46, 147200000, '', '2017-06-16'),
(79, 2, 'Kelvin Nainggolan', 'Jln Raya Menteng', '123@yahoo.com', 2147483647, 1, 1, 600000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-06-18'),
(80, 2, 'Kelvin Nainggolan', 'Jln Raya Menteng', '123@yahoo.com', 12345, 1, 3, 1800000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-06-18'),
(81, 2, 'Kelvin Nainggolan', 'Jln Durian', '123@yahoo.com', 12930123, 4, 3, 3600000, 'pembayaran/Kelvin Nainggolan.jpg', '2017-06-18'),
(82, 3, 'Dian Sirait', 'Jln Pasar Merah', '123@yahoo.com', 123, 28, 2, 6400000, 'pembayaran/Dian Sirait.jpg', '2017-06-20'),
(83, 3, 'Dian Sirait', 'Jln Pasar Merah', '123@yahoo.com', 123, 26, 1, 1200000, 'pembayaran/Dian Sirait.jpg', '2017-06-20'),
(84, 3, 'Dian Sirait', 'Jln Pasar Merah', '123@yahoo.com', 123, 6, 2, 2400000, 'pembayaran/Dian Sirait.jpg', '2017-06-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(10) NOT NULL,
  `qty` int(9) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `status` varchar(5) NOT NULL,
  `gambar` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `harga`, `qty`, `keterangan`, `status`, `gambar`) VALUES
(1, 'Ulos Ragihotang', 600000, 6, 'Sarung dan Selendang(satu paket) motif Ragihotang Semi Sutr', 'Y', 'gambar/Ulos Ragihotang.jpg'),
(2, 'Ulos Ragihotang', 600000, 15, 'Sarung dan Selendang(satu paket) motif Ragihotang Semi Sutra', 'Y', 'gambar/ragihotang2.jpg'),
(3, 'Ulos Mangiring', 1200000, 10, 'Sarung dan Selendang(satu paket) motif Mangiring Semi Sutra', 'Y', 'gambar/Ulos Mangiring.jpg'),
(4, 'Ulos Mangiring', 1200000, 3, 'Sarung dan Selendang(satu paket) motif Mangiring Semi Sutra', 'Y', 'gambar/mangiring2.jpg'),
(5, 'Ulos Sadum', 3200000, 17, 'Sarung dan Selendang(satu paket) motif Sadum bahan Sutra', 'Y', 'gambar/sadum1.jpg'),
(6, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra.', 'Y', 'gambar/sadum2.jpg'),
(7, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum3.jpg'),
(8, 'Ulos Sadum', 1200000, 17, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum4.jpg'),
(9, 'Ulos Sadum', 1200000, 19, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra\r\n', 'Y', 'gambar/sadum5.jpg'),
(10, 'Ulos Sadum', 1200000, 18, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum6.jpg'),
(11, 'Ulos Sadum', 1200000, 10, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum7.jpg'),
(12, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum8.jpg'),
(13, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum9.jpg'),
(14, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum10.jpg'),
(15, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum11.jpg'),
(16, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum12.jpg'),
(17, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum13.jpg'),
(18, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum14.jpg'),
(19, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum15.jpg'),
(20, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum16.jpg'),
(21, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum17.jpg'),
(22, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum18.jpg'),
(23, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum19.jpg'),
(24, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum20.jpg'),
(25, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum21.jpg'),
(26, 'Ulos Sadum', 1200000, 5, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum22.jpg'),
(27, 'Ulos Sadum', 800000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum23.jpg'),
(28, 'Ulos Sadum', 3200000, 4, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum24.jpg'),
(29, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum25.jpg'),
(30, 'Ulos Sadum', 1200000, 12, 'Sarung dan Selendang(satu paket) motif Sadum Semi Sutra', 'Y', 'gambar/sadum26.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id_role` int(3) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id_role`, `role`) VALUES
(1, 'admin'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(3) NOT NULL,
  `id_users` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `testimoni` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `id_users`, `nama`, `testimoni`, `tanggal`, `status`) VALUES
(4, 2, 'Kelvin Nainggolan', 'Sangat Bagus', '2017-05-18', 'Rejected'),
(5, 6, 'Dodi Pakpahan', 'Nice!', '2017-05-18', 'Rejected'),
(7, 5, 'Marchel', 'NICELY DONE!', '2017-05-18', 'Rejected'),
(9, 2, 'Kelvin Nainggolan', 'Gas terus boy!!!', '2017-05-19', 'Rejected'),
(10, 2, 'Kelvin Nainggolan', 'Mantap', '2017-05-26', 'Rejected'),
(11, 6, 'Dodi Pakpahan', 'Semangat!', '2017-06-07', 'Confirm'),
(12, 2, 'Kelvin Nainggolan', 'Mantap', '2017-06-12', 'Confirm'),
(13, 5, 'Marchel', 'Bagus', '2017-06-12', 'Confirm'),
(14, 10, 'tami', 'baik', '2017-06-16', 'On Progress'),
(15, 10, 'tami', 'gak bagus', '2017-06-16', 'Confirm'),
(16, 10, 'tami', 'baik', '2017-06-16', 'Confirm'),
(17, 18, 'resmita sitorus', 'bagus ', '2017-06-16', 'Confirm'),
(18, 19, 'Nani Renova Hutagaol', 'sebaiknya, pelanggan dapat memesan lebih dari satu ulos.', '2017-06-16', 'On Progress'),
(19, 10, 'tami', 'baik', '2017-06-16', 'Confirm'),
(20, 23, 'mei', 'nice', '2017-06-16', 'On Progress'),
(21, 24, 'Reinheart Christian Simanungkalit', 'Bagus. Konsepnya feasible. Butuh pengembangan lagi untuk ke depannya :)', '2017-06-16', 'On Progress');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nohp` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `nama`, `alamat`, `email`, `nohp`, `username`, `password`, `role`) VALUES
(1, 'Kelvin Nainggolan', 'Jln Raya Menteng', 'kelvinnainggolan59@gmail.com', 2147483647, 'admin', 'admin', 1),
(2, 'Kelvin Nainggolan', 'Jln Raya Menteng', 'kelvinrayner@gmail.com', 2147483647, 'kelvinrayner', 'nainggolan02', 2),
(3, 'Dian Sirait', 'Jln Pisang', 'diansirait@gmail.com', 2147483647, 'dian', 'sirait', 2),
(4, 'Tami Tambunan', 'Jln Apel', 'tami@gmail.com', 2147483647, 'tami', 'tambunan', 2),
(5, 'Marchel', 'Jln Durian', 'marcheltheodoroz@gmail.com', 2147483647, 'marchel', '1234', 2),
(6, 'Dodi Pakpahan', 'Jln Pisang', 'dodipakpahan25@yahoo.com', 2147483647, 'dodi', '1234', 2),
(7, 'Sehat', 'Jln Semangka', 'sehat123@yahoo.com', 2147483647, 'sehat', '1234', 2),
(8, 'Tami Thressa', 'balige', 'tami@gmail.com', 2147483647, 'Tami Thressa ', 'tamithressa', 2),
(9, 'Roy Junedi', 'Doloksanggul', 'roy@gmail.com', 1234, 'roy', 'roy1234', 2),
(10, 'tami', 'balige', 'tamithressa90@gmail.com', 2147483647, 'tami', 'tami1234', 2),
(11, 'Rio', 'Laguboti', 'rio@gmail.com', 2147483647, 'riostmpl', 'riostmpl', 2),
(12, 'jubelinda', 'Laguboti', 'jubel@del.ac.id', 2147483647, 'jubel@del.ac.id', 'sayangkamu', 2),
(13, 'jubey', 'del', 'jubeysimanjuntak@gmail.com', 2147483647, 'jubey', 'asd', 2),
(14, 'Nova', 'Laguboti', 'Nova@gmail.com', 2147483647, 'Nova', 'nova123', 2),
(15, 'ari manurung', 'porsea', 'ari@gmail.com', 2147483647, 'ari', 'ari', 2),
(16, 'Yosua Sirait', 'Pematangsiantar', 'yozsirait98@gmail.com', 2147483647, 'yozsirait', 'darkardz98', 2),
(17, 'melani hutahaean', 'gasaribu', 'melani@gmail.com', 2147483647, 'melani', '123', 2),
(18, 'resmita sitorus', 'Laguboti', 'sitorusresmi2@yahoo.com', 2147483647, 'resmi', 'resmi', 2),
(19, 'Nani Renova Hutagaol', 'Sigumpar', 'nanihutagaol@gmail.com', 2147483647, 'nani', 'nani', 2),
(20, 'sumi', 'xxx', 'xxx@gmail.com', 0, 'sumi', 'sumi', 2),
(21, 'Abed', 'laguboti', 'lubisabednego@gmail.com', 2147483647, 'abed', 'abed123', 2),
(22, 'Risa Purba', 'Medan', 'iss15018@gmail.com', 987654321, 'risa', '1234', 2),
(23, 'mei', 'medan', 'mei@gmail.com', 86544, 'mei', 'mei123', 2),
(24, 'Reinheart Christian Simanungkalit', 'GGG', 'r@gmail.com', 2147483647, 'regard', 'regardisgreat', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`,`id_users`,`id_produk`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `pemesanan_ibfk_1` (`id_users`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`),
  ADD CONSTRAINT `pemesanan_ibfk_3` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Ketidakleluasaan untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD CONSTRAINT `testimoni_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id_role`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
