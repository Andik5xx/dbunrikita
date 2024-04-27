-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 21 Apr 2024 pada 14.37
-- Versi server: 8.0.36-cll-lve
-- Versi PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siteiftu_siteijteftunri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsentrasi`
--

CREATE TABLE `konsentrasi` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_konsentrasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `konsentrasi`
--

INSERT INTO `konsentrasi` (`id`, `nama_konsentrasi`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Tenaga Listrik', '2023-01-10 15:56:25', '2023-01-10 15:56:25'),
(2, 'Teknik Telekomunikasi', '2023-01-10 15:56:25', '2023-01-10 15:56:25'),
(3, 'Komputasi Cerdas dan Visualiasi', '2023-01-10 15:56:25', '2023-01-10 15:56:25'),
(4, 'Rekayasa Perangkat Lunak', '2023-01-10 15:56:25', '2023-01-10 15:56:25'),
(5, 'Komputasi Berbasis Jaringan', '2023-01-10 15:56:25', '2023-01-10 15:56:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_prodi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id`, `nama_prodi`, `visi`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Elektro D3', 'Menjadi program studi diploma tiga bidang teknologi kelistrikan yang unggul di Indonesia pada Tahun 2025, yang inovatif dan adaptif terhadap perkembangan ilmu pengetahuan dan teknologi kelistrikan dunia, serta menjadi mitra kerja industri di wilayah Sumatera', '2023-01-10 15:56:25', '2023-01-10 15:56:25'),
(2, 'Teknik Elektro S1', 'Menjadi Program Studi Teknik Elektro S1 yang unggul dalam kajian di bidang Teknik Elektro pada tingkat nasional tahun 2035', '2023-01-10 15:56:25', '2023-01-10 15:56:25'),
(3, 'Teknik Informatika S1', 'Menjadi Program Studi Teknik Informatika Terkemuka Berbasis Riset dan Teknologi yang Bermartabat di Kawasan Asia Tenggara pada Tahun 2035', '2023-01-10 15:56:25', '2023-01-10 15:56:25'),
(4, 'Program Studi Luar', NULL, '2023-03-30 01:42:12', '2023-03-30 01:42:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `id` bigint UNSIGNED NOT NULL,
  `semester` enum('Ganjil','Genap') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_ajaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `semester`
--

INSERT INTO `semester` (`id`, `semester`, `tahun_ajaran`, `tanggal_mulai`, `tanggal_selesai`, `created_at`, `updated_at`) VALUES
(1, 'Ganjil', '2017/2018', '2017-08-01', '2018-01-31', '2024-03-22 07:51:36', '2024-04-16 13:45:51'),
(2, 'Genap', '2017/2018', '2018-02-01', '2018-07-31', '2024-03-22 07:51:36', '2024-04-16 13:46:04'),
(3, 'Ganjil', '2018/2019', '2018-08-01', '2019-01-31', '2024-03-22 07:51:36', '2024-04-16 13:47:38'),
(4, 'Genap', '2018/2019', '2019-02-01', '2019-07-31', '2024-03-22 07:51:36', '2024-04-16 13:47:49'),
(5, 'Ganjil', '2019/2020', '2019-08-01', '2020-01-31', '2024-03-22 07:51:36', '2024-04-16 13:48:15'),
(6, 'Genap', '2019/2020', '2020-02-01', '2020-07-31', '2024-03-22 07:51:36', '2024-04-16 13:48:49'),
(7, 'Ganjil', '2020/2021', '2020-08-01', '2021-01-31', '2024-03-22 07:51:36', '2024-04-16 13:49:22'),
(8, 'Genap', '2020/2021', '2021-02-01', '2021-07-31', '2024-03-22 07:51:36', '2024-04-16 13:49:35'),
(9, 'Ganjil', '2021/2022', '2021-08-01', '2022-01-31', '2024-03-22 07:51:36', '2024-04-16 13:49:43'),
(10, 'Genap', '2021/2022', '2022-02-01', '2022-07-31', '2024-03-22 07:51:36', '2024-04-16 13:50:02'),
(11, 'Ganjil', '2022/2023', '2022-08-01', '2023-01-31', '2024-03-22 07:51:36', '2024-04-16 13:50:13'),
(12, 'Genap', '2022/2023', '2023-02-01', '2023-07-31', '2024-03-22 07:51:36', '2024-04-16 13:50:24'),
(13, 'Ganjil', '2023/2024', '2023-08-01', '2024-01-31', '2024-03-22 07:51:36', '2024-04-16 13:50:34'),
(14, 'Genap', '2023/2024', '2024-02-01', '2024-07-31', '2024-03-22 07:51:36', '2024-04-16 13:50:46');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `konsentrasi`
--
ALTER TABLE `konsentrasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `konsentrasi`
--
ALTER TABLE `konsentrasi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
