-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jan 2024 pada 05.47
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas-backend`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_12_25_154027_create_users_table', 1),
(5, '2023_12_26_043846_create_products_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token-name', '49fe4eec77d8a6dfb789890b15342f3e3276b46f08d0d74c3b21b1571668684f', '[\"*\"]', NULL, NULL, '2023-12-25 09:08:23', '2023-12-25 09:08:23'),
(2, 'App\\Models\\User', 1, 'token-name', 'bcc21ba8f37e68abfc4d96280d01bafe3639f68eee6afbf1b8de686efe4579b2', '[\"*\"]', NULL, NULL, '2023-12-25 09:11:52', '2023-12-25 09:11:52'),
(3, 'App\\Models\\User', 1, 'token-name', '2a22831a42673dce80c9221d0063c217299cb02908cc4d070c49b37070890035', '[\"*\"]', NULL, NULL, '2023-12-25 09:21:08', '2023-12-25 09:21:08'),
(4, 'App\\Models\\User', 1, 'token-name', '08b6177e02dbc35701bd24ace2cc1ea0cd8e1f7c96aa56c02fd7b2f6b00f7805', '[\"*\"]', NULL, NULL, '2023-12-25 09:27:24', '2023-12-25 09:27:24'),
(5, 'App\\Models\\User', 1, 'token-name', 'a99d7eaf56e75151424d5800b29cdb2dcb14466f75d097a20a4b33a1ed5bf104', '[\"*\"]', NULL, NULL, '2023-12-25 15:56:10', '2023-12-25 15:56:10'),
(6, 'App\\Models\\User', 1, 'token-name', '8eb85df7d3a262bbcef35937259887e140cd61866bdc356db1b36035934eb78e', '[\"*\"]', NULL, NULL, '2023-12-25 15:58:03', '2023-12-25 15:58:03'),
(7, 'App\\Models\\User', 1, 'token-name', '05579c2912dbd73960d7ee4a9a54b2b9b302ed9c5d76278d8b3435d36c62a46e', '[\"*\"]', NULL, NULL, '2023-12-25 20:09:26', '2023-12-25 20:09:26'),
(8, 'App\\Models\\User', 1, 'token-name', '6c06212949a2085b95c48919c1b1a0a50609bf9dd830147cccf4dc249ec7a5ae', '[\"*\"]', NULL, NULL, '2023-12-25 20:53:01', '2023-12-25 20:53:01'),
(9, 'App\\Models\\User', 1, 'token-name', 'd446792b3e9527fadc41b3a82a02a6e2ce6dd18eeaaafbef322da0c34b92c2a7', '[\"*\"]', NULL, NULL, '2023-12-25 20:53:03', '2023-12-25 20:53:03'),
(10, 'App\\Models\\User', 1, 'token-name', '515d8c6503ea4a54d76e870fbbd43431bef77626c65bdffb2f1bb6af132a2ea9', '[\"*\"]', NULL, NULL, '2023-12-25 20:53:04', '2023-12-25 20:53:04'),
(11, 'App\\Models\\User', 1, 'token-name', 'f8a308a395a3d6d1bf1bec79656dd5c3d9252f27a9ff7cb02e2bb44ea3ee0328', '[\"*\"]', NULL, NULL, '2023-12-25 20:53:23', '2023-12-25 20:53:23'),
(12, 'App\\Models\\User', 1, 'token-name', '16176519fa9e6e860f069e05a031d094965ba7b1ddb0ce1b4124baac4304e363', '[\"*\"]', NULL, NULL, '2023-12-25 21:29:55', '2023-12-25 21:29:55'),
(13, 'App\\Models\\User', 1, 'token-name', '1980fc8b823b76da3f5868d68e23c0ffa802bbb3f7a5d9471ce26546062b8468', '[\"*\"]', NULL, NULL, '2023-12-25 21:30:09', '2023-12-25 21:30:09'),
(14, 'App\\Models\\User', 1, 'token-name', '0621fd81ce6b64a7b7317799831b9fbd97aa3b4a773631feee9399505b170b75', '[\"*\"]', NULL, NULL, '2023-12-25 21:33:31', '2023-12-25 21:33:31'),
(15, 'App\\Models\\User', 1, 'token-name', 'b1d5d296f5ff1c0d922b57fc23493fc5df8693ebd88f5886d7ffcf805f586247', '[\"*\"]', NULL, NULL, '2023-12-25 22:11:32', '2023-12-25 22:11:32'),
(16, 'App\\Models\\User', 1, 'token-name', '946e8609a4ca2ce7233a9e68004a1d239c46877c50415de9317ad94c25c391a7', '[\"*\"]', NULL, NULL, '2023-12-25 22:11:43', '2023-12-25 22:11:43'),
(17, 'App\\Models\\User', 1, 'token-name', 'a0deea6bb7dfbe0aa98a76df3804e4c0c751ed451f737b2cf11f19729d73a332', '[\"*\"]', NULL, NULL, '2023-12-26 04:56:10', '2023-12-26 04:56:10'),
(18, 'App\\Models\\User', 1, 'token-name', 'f6114908b1e4b4718162dde69073668e03f58a12080ae951731012137410ab62', '[\"*\"]', NULL, NULL, '2023-12-26 04:57:54', '2023-12-26 04:57:54'),
(19, 'App\\Models\\User', 1, 'token-name', '34999672c6a2e3bb7a5b1abf7827526866dd14b0e94ddcc392de3b29eb7fcf23', '[\"*\"]', NULL, NULL, '2023-12-26 04:58:29', '2023-12-26 04:58:29'),
(20, 'App\\Models\\User', 1, 'token-name', '05475cc0cc2cea4e4455281622c3a1089b04154bf52b88a9fc010c4b21dc7958', '[\"*\"]', NULL, NULL, '2023-12-26 05:02:48', '2023-12-26 05:02:48'),
(21, 'App\\Models\\User', 1, 'token-name', 'b3086bc781a0f141250f978c248ebf0afc11668428af6eb243c693c6d015f186', '[\"*\"]', NULL, NULL, '2023-12-26 05:22:22', '2023-12-26 05:22:22'),
(22, 'App\\Models\\User', 1, 'token-name', '254dbf520c2add83a0ef04ebab43929b37cab94eed74b53522d75f86a49d04b8', '[\"*\"]', NULL, NULL, '2023-12-26 05:51:43', '2023-12-26 05:51:43'),
(23, 'App\\Models\\User', 1, 'token-name', 'f3a685b241c92f04754f11719d85a07d37c2fe25484ca3410beec47139cc7fab', '[\"*\"]', NULL, NULL, '2023-12-26 05:52:43', '2023-12-26 05:52:43'),
(24, 'App\\Models\\User', 1, 'token-name', '10bb4c886bb73b5d4432fa144795463e683a8f3b9c53995e9b1b38d77ca37cfc', '[\"*\"]', NULL, NULL, '2023-12-26 06:17:54', '2023-12-26 06:17:54'),
(25, 'App\\Models\\User', 1, 'token-name', '3dda19c4da4952ae82fbb4ad081dc624f41f123b7d598d2ef4dae18f9025d988', '[\"*\"]', NULL, NULL, '2023-12-26 06:18:22', '2023-12-26 06:18:22'),
(26, 'App\\Models\\User', 1, 'token-name', '760035439a2174b713c2aa29eb765632dfb6051c60615091397c166b0fcf174c', '[\"*\"]', NULL, NULL, '2023-12-26 06:30:36', '2023-12-26 06:30:36'),
(27, 'App\\Models\\User', 1, 'token-name', 'ad1bd8f277e34092024c256e1961f46040cf7b2edb6f840f347832a77b878474', '[\"*\"]', NULL, NULL, '2023-12-26 06:32:28', '2023-12-26 06:32:28'),
(28, 'App\\Models\\User', 1, 'token-name', 'cfe3a77a0679994d60f26157e200a3e4dbb686c8d90ad6b4db83b7990e83f5f6', '[\"*\"]', NULL, NULL, '2023-12-26 06:57:19', '2023-12-26 06:57:19'),
(29, 'App\\Models\\User', 1, 'token-name', 'b3cf44b0bcd06a72bb3cff00e61e850048ed15f780a98f25b50f7401bda0e67a', '[\"*\"]', NULL, NULL, '2023-12-26 06:57:31', '2023-12-26 06:57:31'),
(30, 'App\\Models\\User', 1, 'token-name', '3415036168ce3e1fb53b67fe35fca71adaa465377da48371a2173fa60d248dfa', '[\"*\"]', NULL, NULL, '2023-12-26 06:58:53', '2023-12-26 06:58:53'),
(31, 'App\\Models\\User', 1, 'token-name', '321522e8f5a0d4402a8093279974d7c84b0436273df2a9f1ffa6edd36a240ebe', '[\"*\"]', NULL, NULL, '2023-12-26 06:59:01', '2023-12-26 06:59:01'),
(32, 'App\\Models\\User', 1, 'token-name', '532b9c7f94d1fa331ede8f7e248a2ee53d88f29643e60cbd509d049ae3045a2e', '[\"*\"]', NULL, NULL, '2023-12-26 07:05:25', '2023-12-26 07:05:25'),
(33, 'App\\Models\\User', 1, 'token-name', '5a073cb9c160de8d14ca68fbb269de7b21dc3886109301b626dfa07753511198', '[\"*\"]', NULL, NULL, '2023-12-26 07:49:57', '2023-12-26 07:49:57'),
(34, 'App\\Models\\User', 1, 'token-name', 'c8533259f940a811e45c6b41f98d71061e232e6707e02a826a1881403ef0cb3c', '[\"*\"]', NULL, NULL, '2023-12-26 07:50:40', '2023-12-26 07:50:40'),
(35, 'App\\Models\\User', 1, 'token-name', '152566f0e8174b59be36dedc1ea7d521e9adc7674d762c40493e1f97d8015308', '[\"*\"]', NULL, NULL, '2023-12-26 07:51:13', '2023-12-26 07:51:13'),
(36, 'App\\Models\\User', 1, 'token-name', '5adabc784893144570987d9ca4a5261a50c459a4892feba061e45c0bdeeb2f7e', '[\"*\"]', NULL, NULL, '2023-12-26 07:51:32', '2023-12-26 07:51:32'),
(37, 'App\\Models\\User', 1, 'token-name', 'a7dea9ce62634ddfabb0400ce1c4a283d0e8f17ab58350c18595c07c15f42768', '[\"*\"]', NULL, NULL, '2023-12-26 07:55:43', '2023-12-26 07:55:43'),
(38, 'App\\Models\\User', 1, 'token-name', '809fab0dc5d0eac05caaeea168f5dd6242520b2b64f5d1f04165aca2d101dd7e', '[\"*\"]', NULL, NULL, '2023-12-26 08:16:25', '2023-12-26 08:16:25'),
(39, 'App\\Models\\User', 1, 'token-name', '3e316745441df987530e2550a0e32e648441b8ac1859ac6b2028f3d7a9ea6d1f', '[\"*\"]', NULL, NULL, '2023-12-27 02:58:54', '2023-12-27 02:58:54'),
(43, 'App\\Models\\User', 1, 'token-name', 'eb081d0cfde8b07c8775d0014f40757bf181129cb378feb4f7474955cfd7b282', '[\"*\"]', NULL, NULL, '2023-12-27 06:26:37', '2023-12-27 06:26:37'),
(44, 'App\\Models\\User', 1, 'token-name', '94035237a0a2d31a37382a1774e4da40e8a468f2905d0e1c678dcbef534def73', '[\"*\"]', NULL, NULL, '2023-12-27 06:28:04', '2023-12-27 06:28:04'),
(45, 'App\\Models\\User', 1, 'token-name', '4d053c47120371341ca97b910786721373b410d3366eea985ce4bfc5ac0359dd', '[\"*\"]', NULL, NULL, '2023-12-27 06:29:43', '2023-12-27 06:29:43'),
(46, 'App\\Models\\User', 1, 'token-name', 'bdfed4fb7ddfab074b4011b8e9ab5175a48f91b47456583a4889c5b6b5c7e3f7', '[\"*\"]', NULL, NULL, '2023-12-27 06:31:29', '2023-12-27 06:31:29'),
(47, 'App\\Models\\User', 1, 'token-name', '6afb357b4f63ba94c4c02e3d0e4c4639900c50231e1b1d9ba0cff9c1d33df978', '[\"*\"]', NULL, NULL, '2023-12-27 06:33:08', '2023-12-27 06:33:08'),
(48, 'App\\Models\\User', 1, 'token-name', 'b1bf06c8ce0f24651befc70fb77c176c619673ceebc5aa62ead94d69b3f1cd7e', '[\"*\"]', NULL, NULL, '2023-12-27 06:35:53', '2023-12-27 06:35:53'),
(49, 'App\\Models\\User', 1, 'token-name', '53ee0b9ce4561636aabc7bb42242ae79e8299c63f907e1bd174dd81e5c0d4b73', '[\"*\"]', NULL, NULL, '2023-12-27 06:36:06', '2023-12-27 06:36:06'),
(50, 'App\\Models\\User', 1, 'token-name', 'b8f9c28762e4f20846f4257c63d37ada5ab7d554b4eef414ea757dcf4be99e28', '[\"*\"]', NULL, NULL, '2023-12-27 19:59:44', '2023-12-27 19:59:44'),
(51, 'App\\Models\\User', 2, 'token-name', '48047b7e404183306b0b6a02c2a3ed41715192d2e75a23a675ba84fcbd98498b', '[\"*\"]', NULL, NULL, '2023-12-27 20:00:17', '2023-12-27 20:00:17'),
(52, 'App\\Models\\User', 2, 'token-name', 'cc56701dff44f81cd5dc5b7170f0d63f10d94f5c27d9884fc732cc352ab37d7a', '[\"*\"]', NULL, NULL, '2023-12-27 20:08:28', '2023-12-27 20:08:28'),
(53, 'App\\Models\\User', 2, 'token-name', '5da67953161be78536d9118d3bd02113b9adaa9147256fb8c9df0f3b0fa9d395', '[\"*\"]', NULL, NULL, '2023-12-27 20:16:10', '2023-12-27 20:16:10'),
(54, 'App\\Models\\User', 2, 'token-name', '487c66a06a0c6251d049ea3ed0117392a864c85a28049807c5101f56139b85fa', '[\"*\"]', NULL, NULL, '2023-12-27 20:21:28', '2023-12-27 20:21:28'),
(55, 'App\\Models\\User', 2, 'token-name', 'f937a91a7285657982dfb878984accb5825d289a50e9bd6d0fc9083657a6f031', '[\"*\"]', NULL, NULL, '2023-12-27 20:22:23', '2023-12-27 20:22:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `nama_barang`, `harga_barang`, `stok`, `deskripsi`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Radio', 100000, 2, 'Radio adalah salah satu jenis media massa satu arah yang berperan untuk menyampaikan pesan (berita, informasi dan hiburan) kepada masyarakat dengan jangkauan luas.', 'Radio.png', '2023-12-25 22:30:55', '2023-12-25 22:30:55'),
(2, 'Rice Cooker', 500000, 6, 'Rice Cooker umumnya digunakan untuk memasak nasi, meskipun beberapa model dapat digunakan untuk memasak sup dan mengukus makanan.', 'Rice Cooker.jpg', '2023-12-25 22:33:29', '2023-12-25 22:33:29'),
(3, 'Televisi', 700000, 6, 'Televisi adalah alat informasi berbasis suara, gambar, dan video', 'televisi.jpg', '2023-12-26 05:37:52', '2023-12-26 05:37:52'),
(4, 'Nama Barang Baru', 10000, 20, 'Deskripsi Barang Baru', 'kipas angin.jpg', '2023-12-27 06:27:46', '2023-12-27 07:08:24'),
(5, 'Setrika', 200000, 10, 'Setrika Baju', 'setrika.jpg', '2023-12-27 06:33:00', '2023-12-27 06:33:00'),
(7, 'laptop asus', 5000, 3, 'laptop', 'setrika.jpg', '2023-12-27 20:22:16', '2023-12-27 20:23:00'),
(8, 'motor', 99999, 1, 'terbatas', 'kipas angin.jpg', '2023-12-27 20:24:12', '2023-12-27 20:24:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$12$HHp4.ToHYiPSiDu19xNVU.JebIXJWjZL66JBK895ZwK0HN3wR/qsG', '2023-12-25 09:06:11', '2023-12-25 09:06:11'),
(2, 'yusuf', 'yusuf@gmail.com', '$2y$12$JXYkHw2vvR9i6Pdj30ZAXuJyNgEVH/wBLR6fnT1osytFqo9fAHf0u', '2023-12-27 20:00:01', '2023-12-27 20:31:27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
