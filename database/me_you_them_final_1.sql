-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2022 pada 09.03
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `me_you_them`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` bigint(20) NOT NULL,
  `no_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `harga` double DEFAULT NULL,
  `gambar` text NOT NULL,
  `keterangan` longtext NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `no_barang`, `nama_barang`, `harga`, `gambar`, `keterangan`, `stok`, `created_at`) VALUES
(19, '1123344', 'Skin Care LOve', 200000, 'https://cf.shopee.co.id/file/964dc7f8a115f455abb1c3ef6c16ff93', 'yakin', 100, '2021-11-15 10:01:06'),
(20, '1123344', 'Skin Care LOve', 200000, 'https://cf.shopee.co.id/file/964dc7f8a115f455abb1c3ef6c16ff93', 'yakin', 120, '2021-11-15 10:01:06'),
(21, '1123344', 'Skin Care LOve', 200000, 'https://cf.shopee.co.id/file/964dc7f8a115f455abb1c3ef6c16ff93', 'yakin', 120, '2021-11-15 10:01:06'),
(22, '1123344', 'Skin Care LOve', 200000, 'https://cf.shopee.co.id/file/964dc7f8a115f455abb1c3ef6c16ff93', 'yakin', 120, '2021-11-15 10:01:06'),
(23, '1123344', 'Skin Care LOve', 200000, 'https://cf.shopee.co.id/file/964dc7f8a115f455abb1c3ef6c16ff93', 'yakin', 120, '2021-11-15 10:01:06'),
(24, '1123344', 'Skin Care LOve', 200000, 'https://cf.shopee.co.id/file/964dc7f8a115f455abb1c3ef6c16ff93', 'yakin', 120, '2021-11-15 10:01:06'),
(25, '1123344', 'Skin Care LOve', 200000, 'https://cf.shopee.co.id/file/964dc7f8a115f455abb1c3ef6c16ff93', 'yakin', 120, '2021-11-15 10:01:06'),
(26, '1123344', 'Skin Care LOve', 200000, 'https://cf.shopee.co.id/file/964dc7f8a115f455abb1c3ef6c16ff93', 'yakin', 120, '2021-11-15 10:01:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `no_telepon` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `nama_lengkap`, `no_telepon`, `email`, `tanggal`, `isi`) VALUES
(1, 'sdsd', '08223343433', 'admin@schoola.my.id', '2021-11-15', 'fdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar1` text NOT NULL,
  `gambar2` text NOT NULL,
  `isi_1` longtext NOT NULL,
  `isi_2` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id`, `judul`, `gambar1`, `gambar2`, `isi_1`, `isi_2`, `created_at`) VALUES
(1, 'SELF LOVES', 'https://rilispedia.com/wp-content/uploads/2021/03/self-love.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsx029KoFQ5khK-h94ZhyfOztYSgn0wjhuQpEf1TO9HDr0uwqU6qqgZQ0BKrBEQHgazRY&usqp=CAU', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs', '2021-11-15 09:13:33'),
(2, 'SKIN MYTHS', 'https://lipaniskincare.com/wp-content/uploads/2019/08/Woman-Applying-Moisturizer-1170x700.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXqj26kbMjT6TzY9aPA7Vuy7U7vAPOHsAQDm4hZbYJ_oW2demNCL6LTpreFFL4kX34VEg&usqp=CAU', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs ', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs ', '2021-11-03 05:58:26'),
(3, 'HYPERPIGMENTATION', 'https://soc-phoenix.s3-ap-southeast-1.amazonaws.com/wp-content/uploads/2018/07/17155915/Post-Inflammatory-Hyperpigmentation-dan-Post-Inflammatory-Erythema_1.jpg', 'https://primadaily.com/wp-content/uploads/2021/04/kandungan-salep-bekas-jerawat.jpg', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs ', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs ', '2021-11-03 05:58:26'),
(4, 'EXFOLIATION', 'https://akcdn.detik.net.id/community/media/visual/2020/03/12/c3093ab6-07c0-4789-a1c2-1d0c75b8d3b8.jpeg?q=90&w=480', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKfk5LkwH_mEsg7KCbx-hoaVZYNZRmAnEUGC5lxOvTla1FwvuArFoWdlAniZTerRpOxgw&usqp=CAU', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs ', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs ', '2021-11-03 05:58:26'),
(5, 'CLEANSER', 'https://img.grouponcdn.com/deal/cbHxSnrkobfiCistM73L/po-1000x600/v1/c870x524.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE0XMprUEFcGCQM5edscbJBLwhoIeJIvkm6A&usqp=CAU', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs ', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs ', '2021-11-03 05:58:26'),
(6, 'SKINCARE', 'https://ceklist.id/wp-content/uploads/2021/03/Merk-Skincare-Lokal-Terbaik.jpeg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmXVW5GyjhJTROdDW-A0ggz9-buiw6gNdeu_F19R9CcXmHt7DcFJaJwyDUjTfKbSFwEeI&usqp=CAU', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs ', 'Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs Self-love is defined as \"love of oneself\" or \"regarding one\'s own happiness or benefit\" both have been conceptualized as basic human needs ', '2021-11-03 05:58:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id` bigint(20) NOT NULL,
  `id_transaksi` bigint(20) NOT NULL,
  `isi` text NOT NULL,
  `bintang` int(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id`, `id_transaksi`, `isi`, `bintang`, `created_at`, `updated_at`) VALUES
(2, 8, 'bagus dan b aja', 3, '2022-05-31 03:15:52', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `room_pesan`
--

CREATE TABLE `room_pesan` (
  `id` bigint(20) NOT NULL,
  `id_transaksi` bigint(20) NOT NULL,
  `pengirim_id` bigint(20) NOT NULL DEFAULT 0,
  `penerima_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `room_pesan`
--

INSERT INTO `room_pesan` (`id`, `id_transaksi`, `pengirim_id`, `penerima_id`, `created_at`, `updated_at`) VALUES
(1, 8, 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `room_pesan_detail`
--

CREATE TABLE `room_pesan_detail` (
  `id` bigint(20) NOT NULL,
  `id_room` bigint(20) NOT NULL,
  `send` text DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `room_pesan_detail`
--

INSERT INTO `room_pesan_detail` (`id`, `id_room`, `send`, `reply`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin saya mau tanya', NULL, '2022-06-05 13:33:50', NULL),
(2, 1, NULL, 'iya sialkan', '2022-06-05 13:33:50', NULL),
(3, 1, 'ini kenapa ya kok rusak?', NULL, '2022-06-05 13:45:23', NULL),
(4, 1, NULL, 'gimana ya?', '2022-06-05 13:56:19', NULL),
(5, 1, NULL, 'bisa dijelaskan nggak?', '2022-06-05 14:02:10', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `id_barang` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `bukti_trf` text DEFAULT NULL,
  `status` int(1) NOT NULL COMMENT '0 menunggu , 1 disetujui , 2 ditolak',
  `no_telepon` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_user`, `id_barang`, `qty`, `total`, `bukti_trf`, `status`, `no_telepon`, `alamat`, `date`) VALUES
(8, 5, 19, 20, 4000000, 'http://localhost/kuliah/me_you_them/public/admin/images/barang/1239479202-bukti_trf.jpg', 1, '2234', 'dfsfdf', '2021-11-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@meyouthem.com', NULL, '$2y$10$oDJ8Rpk1VkGOFpKDkIyx5OkKkMxNbwbxgZKlZPYJSo9S7.BQ.vbZ2', 'il3xtwHmLGAISvYTqWRQ44a07wfsiZ3Fq1tqUsO9PWG9dhHSpxrklZ8KqXd5', NULL, NULL),
(5, 'member', 'member ajah', 'member@meyouthem.com', NULL, '$2y$10$ervXb8k0mcmz96t04H.pH.rreXgooIbDsgcKs4YtaZs6SDe.I/oHa', NULL, '2021-11-15 02:58:03', '2021-11-15 02:58:03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `room_pesan`
--
ALTER TABLE `room_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `room_pesan_detail`
--
ALTER TABLE `room_pesan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `room_pesan`
--
ALTER TABLE `room_pesan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `room_pesan_detail`
--
ALTER TABLE `room_pesan_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
