-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 12:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

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
-- Table structure for table `barang`
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
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `no_barang`, `nama_barang`, `harga`, `gambar`, `keterangan`, `stok`, `created_at`) VALUES
(19, 'GRMW400', 'GARNIER MICELLAR WATER PINK / BLUE / OIL INFUSED ORIGINAL 100%', 29000, 'http://127.0.0.1:8000/admin/images/barang/1702684464-gambar.jpg', 'Jangan anggap enteng urusan membersihkan wajah, girls! Pastikan gak ada makeup yang tersisa di kulit, biar gak jerawatan dan kusam. Kamu bisa pakai Garnier Micellar Water untuk bantu bersihkan wajah sesuai dengan jenis dan kebutuhan kulit kamu.', 10, '2022-06-21 11:18:02'),
(20, 'AVYSBN30', 'AVOSKIN NATURAL SUBLIME FACIAL CLEANSER', 109000, 'http://127.0.0.1:8000/admin/images/barang/1990804813-gambar.jpg', 'Diformulasikan untuk meminimalisir iritasi kulit dengan PH 5!\r\nTidak membuat kulit kering setelah menggunakan produk ini! Cocok untuk smua jenis kulit. Termasuk kulit sensi / buat km yg punya banyak skin problem sekalipun(jerawat/bruntusan)\r\nSelain itu produk ini jg bisa menenangkan kulit. Dapat di pakai berbarengan dengan ampoule dan cream untuk hasil yg maksimal', 128, '2022-06-21 11:22:25'),
(21, 'npu2133', 'NPURE Face Toner Centella Asiatica (Cica Series)', 90000, 'http://127.0.0.1:8000/admin/images/barang/122656092-gambar.jpg', '1st local brand with real cica leaves (ada daun cica asli di dalamnya - Penasaran kan?:)\r\n\r\nWe proudly present our  Face Toner Cica Series\r\n\r\nNetto : 150 ml\r\n\r\nToner Wajah dengan kandungan :\r\nReal Centella Leaves, Green Tea, Mix Fruit Extract, Vit B3, Tranexamic Acid\r\n\r\nMembantu membersihkan wajah dari sisa kotoran, menyeimbangkan PH wajah, mencerahkan kulit wajah, merawat kulit berjerawat serta membuat kulit terasa segar, lembut dan lembab.\r\n\r\nNo Alcohol\r\nNo SLS\r\nNo Paraben\r\nNo Mineral Oil', 56, '2022-06-21 11:25:51'),
(22, 'SKIN1004', 'Skintific 5x Ceramide Barrier Repair Moisturize Gel', 139000, 'http://127.0.0.1:8000/admin/images/barang/2102365035-gambar.jpg', 'Skincare Powered by Science\r\nSKINTIFIC adalah brand skincare yang diformulasikan di Canada berdasarkan scientific research dengan teknologi paten TTE (Triangle Trilogy Effect) yang bekerja secara cepat dan barrier safe.\r\n\r\nSKINTIFIC 5X Ceramide Barrier Repair Moisture Gel\r\nMoisturizer yang menggabungkan 3 kandungan aktif Ceramide, Hyaluronic Acid, dan Centella Asiatica, untuk mengatasi permasalahan skin barrier yang rusak seperti jerawat, kemerahan, kulit bertekstur, dan juga kulit kering secara cepat namun tetap aman untuk skin barrier. Diperkaya dengan teknolog 5X Ceramide, yang merupakan gabungan 5 jenis Ceramide untuk melembabkan secara mendalam dan memperkuat lapisan kulit. 5X Ceramide ini membantu untuk memperbaiki dan melindungi skin barrier dengan menjaga kelembaban dan melindungi kulit dari faktor eksternal.\r\n\r\nSize：30g\r\nNo BPOM: NA11210100167\r\n\r\nManfaat\r\n● Memperbaiki permasalahan skin barrier seperti jerawat, kemerahan, kulit kering, dan kulit bertekstur\r\n● Melembabkan dan menghidrasi selama 24 jam\r\n● Oil control selama 24 jam\r\n● Melindungi skin barrier\r\n● Memperkuat skin barrier\r\n● Menenangkan dan melembutkan kulit\r\n\r\nHero Ingredients\r\n5X Ceramide: Kombinasi 5 jenis Ceramide untuk mengembalikan dan menciptakan lapisan perlindungan kulit untuk mencegah hilangnya kelembaban\r\nHyaluronic Acid: Menghidrasi kulit secara instan dan secara intensif memperbaiki sel kulit secara mendalam\r\nCentella Asiatica: Menenangkan dan memperbaiki inflamasi pada kulit\r\nMarine-Collagen: Mempertahankan kelembaban dan kekenyalan kulit', 70, '2022-06-21 11:28:49'),
(23, '1123349', 'Skin Care LOve', 200000, 'https://cf.shopee.co.id/file/964dc7f8a115f455abb1c3ef6c16ff93', 'yakin', 120, '2021-11-15 10:01:06'),
(24, 'AZr123', 'AZARINE Sunscreen Gel SPF 45 PA++++', 55000, 'http://127.0.0.1:8000/admin/images/barang/291350533-gambar.jpg', 'Tabir surya untuk tubuh yang dapat di gunakan setiap hari baik untuk aktivitas Outdoor maupun Indoor. Dengan tekstur SANGAT RINGAN, DINGIN & NO WHITECAST / efek dempul pada kulit. \r\ndi formulasikan dengan kandungan antioksidan tinggi buah semangka, air kelapa hijau dan buah delima untuk MENDINGINKAN, MELINDUNGI dan MENUTRISI kulit dari paparan sinar UV matahari.', 138, '2022-06-21 11:32:11'),
(25, 'SMC112', 'SOMETHINC SERUM Niacinamide', 199000, 'http://127.0.0.1:8000/admin/images/barang/2000159230-gambar.jpg', 'Niacinamide memperkuat lapisan pelindung kulit dengan memproduksi ceramide, sedangkan Beet membantu melawan radikal bebas (paparan sinar UV & polusi udara) dan menstabilkan kelembaban kulilt.\r\nMembantu untuk mencerahkan, Meningkatkan Tekstur kulit, Memperkuat pelindung kulit, Menyingkirkan Spot2 hitam/hyperpigmentasi, Melembabkan, Mengembalikan kekenyalan, Mengatasi kemerahan, Melawan jerawat, & menguransi tampilan kulit kering & rusak.', 2229, '2022-06-21 11:41:27'),
(26, 'SKIN1004', 'TONING TONER SKIN1004', 215000, 'http://127.0.0.1:8000/admin/images/barang/962912254-gambar.jpg', 'Ini dia manfaat yang akan kalian dapatkan kalau menggunakan toning toner skin1004,\r\nMengangkat sel kulit mati\r\nMenenangkan kulit yang iritasi\r\nMengecilkan pori2\r\nMelembabkan kulit kering\r\nMencerahkan kulit kusam', 98, '2022-06-21 11:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `kontak`
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
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama_lengkap`, `no_telepon`, `email`, `tanggal`, `isi`) VALUES
(1, 'sdsd', '08223343433', 'admin@schoola.my.id', '2021-11-15', 'fdf'),
(2, 'lintang', '089765432231', 'lintangrahma21@gmail.com', '2022-06-10', 'HYBYIHUIONUI');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
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
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id`, `judul`, `gambar1`, `gambar2`, `isi_1`, `isi_2`, `created_at`) VALUES
(1, 'Madame Gie Skin Barrier Moisturizer', 'http://127.0.0.1:8000/admin/images/barang/1621368998-gambar1.jpg', 'http://127.0.0.1:8000/admin/images/barang/647315213-gambar2.jpg', 'Madame Gie Skin Barrier membantu menenangkan dan memperkuat jaringan permukaan kulit. Diformulasikan dengan Ceramide NP, Glycerin, Allantoin, Betaine, dan juga dilengkapi oleh Bakuchi Extract serta Caffeine.', 'Manfaat :\r\nMeningkatkan dan mempertahankan hidrasi pada lapisan kulit\r\nMenenangkan kulit dan memiliki efek anti inflamasi\r\nMeningkatkan produksi kolagen, sehingga membuat kulit wajah tetap kencang dan tampak awet muda\r\nMengangkat sel kulit mati serta kotoran pada wajah sehingga kulit tampak cerah dan halus', '2022-06-21 19:45:41'),
(2, 'Somethinc Holyshield Loose Powder Spf 30 PA++++', 'http://127.0.0.1:8000/admin/images/barang/994673271-gambar1.jpg', 'http://127.0.0.1:8000/admin/images/barang/412360620-gambar2.jpg', '￼SOMETHINC No Sebum Mineral Blur Translucent Loose Powder SPF 30 PA++ - Easy Touch Up Sunscreen Powder\r\nNo Sebum Mineral Blur Translucent Loose Powder SPF30 PA++\r\n\r\nEasy Touch-Up Sunscreen with Oil-control & Pore Blurring Effect\r\nSunscreen dalam bentuk bedak tabur dengan SPF 30 PA++ yang melindungi kulit dari paparan sinar UVA & UVB! Formula oil-control & samarkan pori di wajah. Kapanpun dimanapun kamu dapat touch-up sunscreen tanpa menggeser makeup! Terproteksi dari matahari & bebas kilang minyak seharian!', 'Keunggulan:\r\n☀️SPF 30 PA++ untuk melindungi kulit dari paparan sinar UVA & UVB\r\n☀️Easy to use, travel-friendly & tidak berantakan\r\n☀️Oil control & menyamarkan tampilan pori\r\n☀️Cocok untuk semua warna kulit\r\n☀️Dapat digunakan sebagai setting powder/makeup touch-up\r\n\r\nFungal Acne Friendly\r\nVegan Friendly\r\nSuitable for teenager (bisa digunakan dari umur 11 tahun)', '2022-06-21 19:53:15'),
(3, 'Somethinc Acnedot Treatment Series', 'http://127.0.0.1:8000/admin/images/barang/193273409-gambar1.jpg', 'http://127.0.0.1:8000/admin/images/barang/836971602-gambar2.jpg', '✨ Low pH Cleanser 100ml | BPOM NA18211206770\r\nSabun pembersih wajah vegan yang memiliki kemampuan 5X Acne Combat Power untuk membantu membersihkan pori-pori sekaligus mengangkat kotoran, sel kulit mati, residu, & minyak berlebih yang dapat menyebabkan timbulnya jerawat. Formula non-stripping & non-drying dengan Tea Tree untuk melawan jerawat & Trehalose agar kulit tetap lembab. Tekstur nyaman menjadikan kulit wajah lebih bersih, halus, & bebas kilap.\r\n  \r\n✨Moisturizer Gel 25ml / 50ml | BPOM NA18210108443\r\nPelembab wajah vegan dengan 5X Acne Combat Power yang membantu melawan bakteri penyebab jerawat, memperkecil tampilan pori, mengontrol sebum minyak berlebih, & mengurangi bakteri jerawat dalam 28 hari*. Dilengkapi dengan Postbiotic untuk mendukung proses regenerasi kulit & menyeimbangkan mikrobioma di kulit agar tidak sering breakout lagi. Tekstur gel & tidak menjadikan kulit terlihat semakin berminyak.\r\n\r\n✨ Acne Shot AC Spot Gel 15gr - Jenis kulit : Semua jenis kulit dengan jerawat papule dan pustule\r\n8x Natural-Fix Acne Combat Power \r\nGel totol jerawat transparan dengan kombinasi 8 Natural-Fix Acne Combat Power untuk melawan bakteri penyebab jerawat, membantu mengurangi kemerahan, mengontrol sebum berlebih, & membantu mengurangi tekstur kasar akibat jerawat. Dapat digunakan sejak umur 11 tahun & wanita hamil.', 'Manfaat:\r\n❤️ Membantu membersihkan pori-pori sekaligus mengangkat kotoran, kulit mati, residu & minyak berlebih\r\n❤️ Membantu melawan jerawat\r\n❤️ Membantu menjaga kulit tetap lembab\r\nManfaat: \r\n❤️ Melembabkan kulit berjerawat tanpa membuatnya semakin berminyak\r\n❤️ Membantu melawan bakteri penyebab jerawat\r\n❤️ Membantu memperkecil tampilan pori\r\n❤️ Membantu mengontrol bakteri dalam 28 hari\r\n❤️ Mendukung proses regenerasi kulit & menyeimbangkan mikroba di kulit \r\nManfaat: \r\n❤️ Membantu memperkecil tampilan pori\r\n❤️ Membantu menyeimbangkan minyak berlebih pada wajah\r\n❤️ Membantu melawan bakteri penyebab jerawat sekaligus menenangkan kemerahan pada kulit berjerawat\r\n \r\nManfaat: \r\n❤️Mengeringkan jerawat tanpa membuat iritasi\r\n❤️Membantu melawan bakteri penyebab jerawat\r\n❤️Membantu mengurangi kemerahan\r\n❤️Membantu mengontrol sebum berlebih\r\n❤️Membantu mengurangi tekstur kasar akibat jerawat', '2022-06-21 20:01:57'),
(4, 'Skin Game Acne Warrior', 'http://127.0.0.1:8000/admin/images/barang/1668967138-gambar1.jpg', 'http://127.0.0.1:8000/admin/images/barang/702807493-gambar2.jpg', 'Target: Jerawat dan kemerahan \r\nKomposisi Utama: Calamine, ZnO, Salicylic Acid, Sulfur, Kaolin, Bentonite\r\nKomposisi Lengkap: Aqua, Glycerin, Calamine, Bentonite, ZnO, Kaolin, Sulfur, Propylene Glycol, Polysorbate20, Salicylic Acid, Polyacrylamide, Phenoxyethanol, C13-14 Isoparaffin, C9-11 Pareth 6, Carboxymethyl Cellulose, Sodium Chloride \r\nCara Penggunaan: Totolkan Acne Warrior pada area berjerawat, diamkan semalaman.', 'FAQ:\r\n1. Bisa digunakan setiap hari, disarankan digunakan setiap malam sebagai salep totol jerawat\r\n2. Netto: 30 gr\r\n3. PAO 6 bulan\r\nBPOM NA18190125265man needs', '2022-06-21 20:06:02'),
(5, 'Facetology Triple Care Sunscreen', 'http://127.0.0.1:8000/admin/images/barang/310016803-gambar1.jpg', 'http://127.0.0.1:8000/admin/images/barang/1738004440-gambar2.jpg', 'Facetology Triple Care Sunscreen ✨\r\nSPF 40+ PA+++\r\nIngredients : \r\nHybrid UV Filters, Niacinamide, Tranexamic Acid, WhiteTen, Cica, Mugwort, SyriCalm\r\n\r\nNeto : 40 ml\r\nBPOM No : NA 18211701955', 'Key Benefits :\r\n- Hybrid UV & Blue Light Protections\r\n- Light Texture Brightening Calming', '2022-06-21 20:09:00'),
(6, 'COSRX Low pH Good Morning Cleanser', 'http://127.0.0.1:8000/admin/images/barang/1122393451-gambar1.jpg', 'http://127.0.0.1:8000/admin/images/barang/1684908218-gambar2.jpg', 'COSRX Low pH Good Morning Cleanser adalah produk asal Korea Selatan yang menggunakan bahan-bahan alami.\r\n\r\nPembersih wajah dengan formula lembut yang bagus digunakan pada pagi hari. Mampu membersihkan kulit sensitif sekalipun dengan lembut berkat kandungannya yang memiliki kadar acid yang mirip dengan kadar pH kulit. Gel cleanser ini mampu menenangkan, mengeksfoliasi, melembapkan sekaligus membersihkan kulit wajah. Pembersih wajah ini juga mampu mengangkat sel-sel kulit mati dan minyak berlebih yang muncul selama tidur sehingga wajah menjadi bersih dan segar.\r\n\r\nPetunjuk Pemakaian:\r\n\r\nPijat wajah dengan lembut menggunakan Low pH Good Morning Gel Cleanser secukupnya pada kulit wajah yang telah dibasahi.\r\nBilas dengan air hangat\r\nTepuk-tepuk wajah hingga kering, dan lanjutkan ke perawatan wajah selanjutnya.', 'Komposisi:\r\n\r\nWater, Cocamidopropyl Betaine, Sodium Lauroyl Methyl Isethionate, Polysorbate 20, Styrax Japonicus Branch/Fruit/Leaf Extract, Butylene Glycol, Saccharomyces Ferment, Cryptomeria Japonica Leaf Extract, Nelumbo Nucifera Leaf Extract, Pinus Palustris Leaf Extract, Ulmus Davidiana Root Extract, Oenothera Biennis (Evening Primrose) Flower Extract, Pueraria Lobata Root Extract, Melaleuca Alternifolia (Tea Tree) Leaf Oil, Allantoin, Caprylyl Glycol, Ethylhexylglycerin, Betaine Salicylate, Citric Acid, Ethyl Hexanediol, 1,2-Hexanediol, Trisodium Ethylenediamine Disuccinate, Sodium Benzoate, Disodium EDTA', '2022-06-21 20:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id` bigint(20) NOT NULL,
  `id_transaksi` bigint(20) NOT NULL,
  `isi` text NOT NULL,
  `bintang` int(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `room_pesan`
--

CREATE TABLE `room_pesan` (
  `id` bigint(20) NOT NULL,
  `id_transaksi` bigint(20) DEFAULT NULL,
  `pengirim_id` bigint(20) NOT NULL DEFAULT 0,
  `penerima_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_pesan`
--

INSERT INTO `room_pesan` (`id`, `id_transaksi`, `pengirim_id`, `penerima_id`, `created_at`, `updated_at`) VALUES
(3, NULL, 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_pesan_detail`
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
-- Dumping data for table `room_pesan_detail`
--

INSERT INTO `room_pesan_detail` (`id`, `id_room`, `send`, `reply`, `created_at`, `updated_at`) VALUES
(7, 3, 'min', NULL, '2022-07-02 15:47:33', NULL),
(8, 3, NULL, 'ya', '2022-07-02 16:07:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) NOT NULL,
  `id_user` bigint(20) DEFAULT NULL,
  `id_barang` bigint(20) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `bukti_trf` text DEFAULT NULL,
  `status` int(1) NOT NULL COMMENT '0 menunggu , 1 disetujui , 2 ditolak',
  `status_fix` varchar(100) NOT NULL DEFAULT 'not' COMMENT 'fix,not',
  `no_telepon` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@meyouthem.com', NULL, '$2y$10$oDJ8Rpk1VkGOFpKDkIyx5OkKkMxNbwbxgZKlZPYJSo9S7.BQ.vbZ2', 'MlmX1LhJDDERAJF4RDF1hliC4fEMRd0y95tuKytI5GKR5U9cLcPtbjuKzvum', NULL, NULL),
(5, 'member', 'member ajah', 'member@meyouthem.com', NULL, '$2y$10$ervXb8k0mcmz96t04H.pH.rreXgooIbDsgcKs4YtaZs6SDe.I/oHa', NULL, '2021-11-15 02:58:03', '2021-11-15 02:58:03'),
(6, 'member', 'annisa', 'annisa12@gmail.com', NULL, '$2y$10$NV2INZOyhPlm58dlAKrzI.85nse8rFqiv9O4hizdsZfTkpmwpRJ02', NULL, '2022-06-25 03:11:49', '2022-06-25 03:11:49'),
(7, 'member', 'Annisario', 'Annisario@gmail.com', NULL, '$2y$10$/N3aLdM.1qEcwf/B40QXmuNtR4T4YTqzCDi.7Uie9gcJO0bqSOoF.', NULL, '2022-06-30 12:07:14', '2022-06-30 12:07:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `room_pesan`
--
ALTER TABLE `room_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_pesan_detail`
--
ALTER TABLE `room_pesan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_pesan`
--
ALTER TABLE `room_pesan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room_pesan_detail`
--
ALTER TABLE `room_pesan_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
