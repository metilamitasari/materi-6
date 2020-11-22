-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Nov 2020 pada 11.03
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pertemuan_5`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `harga`, `berat`, `deskripsi`, `stok`, `created_at`, `updated_at`) VALUES
(5, 'Rantai Cambuk Bandhil Pencak Silat Tapak Suci Kusarigama Ninjutsu', 135000, 500, 'Deskripsi Rantai Cambuk Bandhil Pencak Silat Tapak Suci Kusarigama Ninjutsu\r\n\r\nSenjata tradisional Bandhil salah satunya, senjata ini disebut juga sebagai Umban Pelempar Batu. Terdapat tiga jenis senjata ini di antaranya: Brubuh, Jauh, dan Lepas. Brubuh digunakan dalam pertempuran jarak dekat. Biasanya berupa rantai besi, dan pelurunya juga dari besi.\r\nSelain itu, senjata ini juga digunakan dalam perguruan seni beladiri Indonesia Tapak Suci. Senjata ini dipakai untuk pertarungan jarak jauh dan untuk melawan beberapa orang yang bersenjata. Senjata tradisional jenis ini memiliki tingkat kesulitan teknik yang cukup tinggi karena membutuhkan koordinasi gerakan badan yang seimbang dan juga membutuhkan kelenturan tubuh, timing yang tepat serta membutuhkan keberanian yang besar. Hati-hati dalam menggunakan senjata tersebut bagi praktisi yang belum mahir.\r\n\r\nSpek Rantai:\r\n- Batang Terbuat Dari Behel 10mm\r\n- Peluru/Bandul Dari Besi\r\n- Gagang Dari Aluminium\r\n- Panjang Total 1m\r\n- Berat Nett Satu Senjata 800gr\r\n\r\nToko MR MIYAMOTO / REZA MIYAMOTO', 10, '2020-11-15 01:39:29', '2020-11-15 01:39:29'),
(6, 'Double Stick Nunchaku Foam Busa Import Warna Polos', 40000, 250, 'Deskripsi Double Stick Nunchaku Foam Busa Import Warna Polos\r\n\r\nDouble Stick Nunchaku Foam Busa,\r\nSangat Cocok Untuk Latihan/Pemula,\r\nSangat Empuk,\r\nRingan dan Aman,\r\nProduk Import,\r\nTersedia Warna Hitam, Hijau Merah dan Biru\r\nRANDOM, Tergantung Ketersediaan Stock\r\nToko MR MIYAMOTO / REZA MIYAMOTO', 10, '2020-11-15 01:40:08', '2020-11-15 01:40:08'),
(8, 'Mini Knuckle Glass Breaker,Model Skull Atau Tengkorak', 30000, 450, 'Deskripsi Mini Knuckle Glass Breaker,Model Skull Atau Tengkorak\r\n\r\nMini Knuckle Glass Breaker,\r\n\r\nModel Skull Atau Tengkorak,\r\n\r\nPraktis, Kuat, Murah-Meriah dan Berkualitas,\r\n\r\nTersedia Warna Silver, Hitam dan Emas,\r\n\r\nRandom Tergantung Ketersediaan Stock,\r\n\r\nFull Metal,\r\n\r\nStainless Steel,\r\n\r\nProduk Import,\r\n\r\nPerhatian: Hanya untuk Koleksi, Mohon Tidak Disalahgunakan!\r\n\r\nToko MR MIYAMOTO / REZA MIYAMOTO', 10, '2020-11-15 01:44:29', '2020-11-15 01:44:29'),
(10, 'Katana Samurai Pedang Gi Joe hitam murah meriah', 320000, 1000, 'Deskripsi Katana Samurai Pedang Gi Joe hitam murah meriah\r\n\r\nKatana Gi Joe Black\r\nSpek :\r\nBahan bilah baja strip \r\nPanjang bilah 70 cm\r\nPanjang handle 28 cm\r\nLebar bilah 2,5cm\r\nKondisi tajam\r\nCocok buat jadi koleksi atau pajangan rumah nya', 50, '2020-11-15 09:20:18', '2020-11-15 09:20:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Meti Lamitasari', 'meti', 'metilamitasari@gmail.com', '$2y$10$WXbrhHzwVCUgbPgNigzRHu1sWjnnxEhRH2LGdVL4erf2rmA29Q8uS', NULL, '2020-11-17 09:06:39', '2020-11-17 02:06:39'),
(2, 'test', 'test', 'test@gmail.com', '$2y$10$tmIuSMpUyK5d2hTg178eieTYc3s0k.wDwBwzPlxjs3mjJ1iKNqP3u', NULL, '2020-11-17 02:20:46', '2020-11-17 02:20:46');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
