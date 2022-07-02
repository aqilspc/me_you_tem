-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 09:41 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `me_you_them_final`
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
(22, 'GRMW400', 'Garnier Micellar Water 400ml', 76600, 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1422428950-gambar.jpg', 'Berfungsi untuk menghapus makeup, membersihkan kotoran, dan sekaligus menyegarkan wajah dalam satu usapan lembut, tanpa perlu dibilas. Dapat mengurangi minyak berlebih tanpa membuat kulit kering.', 45, '2021-12-15 17:22:35'),
(23, 'Cosrxlh150', 'COSRX Low pH Good Morning Gel Cleanser 150 mL', 104300, 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1201110533-gambar.jpg', 'Low pH Good Morning Gel Cleanser mampu membersihkan kulit wajah dengan lembut karena mengandung kadar acid mirip dengan kadar pH kulit sehingga aman digunakan pada kulit sensitif.', 60, '2021-12-15 17:22:53'),
(24, 'PYET200', 'PYUNKANG YUL Essence Toner 200  ml', 165000, 'http://localhost/The_Beauty_Shop/public/admin/images/barang/708965257-gambar.jpg', 'Essence toner ini mempunyai formula yg dapat menghidrasi kulit secara intens untuk menutrisi kulit dan membuatnya lembab.', 80, '2021-12-15 17:21:35'),
(26, 'DMBSBWC30', 'Dear Me Beauty Skin Barrier Water Cream', 129000, 'http://localhost/The_Beauty_Shop/public/admin/images/barang/665707362-gambar.jpg', 'Skin Barrier Water Cream merupakan produk 2-in-1 moisturizer dengan formula water-based, yang mampu menghidrasi kulit dengan sensasi water burst sensation tanpa membuatnya terasa berminyak di kulit.', 110, '2021-12-15 17:23:54'),
(27, 'axis-y123', 'axis-y(masker mugwort)', 220000, 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1415741680-gambar.jpg', 'Berbagai  dari bahan-bahan yang terkandung di dalamnya:\r\n1. Mugwort (Artemisia Princeps)\r\n2. Phaseolus Angularis Seed\r\n3. Laminaria Japonica\r\n4. Cynara Scolymus (Artichoke) Leaf\r\n5. Vigna Radiata Seed\r\n6. Houttuynia Cordata\r\n7. Nelumbo Nucifera Leaf', 5, '2021-12-11 20:11:07'),
(28, 'AZr123', 'sunscreen azarine', 78000, 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1232248569-gambar.jpg', 'KEUNGGULAN:\r\n- 0% alcohol ( bisa untuk kulit sensitif)\r\n- 0 % Oil ( bisa untuk kulit berminyak, kombinasi dan berjerawat)\r\n- 0% Silicone \r\n- Fungal acne Friendly\r\n- No Whitecast / efek dempul\r\n- Cepat meresap, ringan dan dingin dengan SPF tinggi\r\n- Mengandung ekstrak alami untuk kulit\r\n- Antioksidan & Melembabkan', 80, '2021-12-15 17:24:18'),
(30, 'AVYSBN30', 'Avoskin Your Skin Bae Niacinamide 12% + Centella Asiatica', 125000, 'http://localhost/The_Beauty_Shop/public/admin/images/barang/577175353-gambar.jpeg', 'Brightening dan hydrating serum terbaru dari Avoskin dengan Niacinamide 12% yang berfungsi optimal sebagai booster untuk mencerahkan kulit, memudarkan dark-spots, anti-acne, anti-aging, dan memiliki melembapkan kulit.', 15, '2021-12-16 07:36:44'),
(32, 'npu2133', 'npure', 150000, 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1153826711-gambar.jpg', 'Soft exfoliating cotton pads that is easy to use, effectively works for clean dead skin cells, treats dull skin problems, and makes your skin softer and brighter.', 50, '2021-12-21 00:15:01');

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
(2, 'lintang', '089765432231', 'lintangrahma21@gmail.com', '2001-02-15', 'kulit saya sensitif dan berminyak solusi buat skincare pake produck apa yak'),
(3, 'annisa aulia rahma', '089756432123', 'annisaauliarahma31@gmail.com', '2001-01-16', 'kulit saya kombinasi bisanya pake produck apa yakaakak'),
(4, 'lintang', '089765432231', 'lintangrahma21@gmail.com', '2021-12-16', 'masalah kulit berjerawat'),
(5, 'alfandi rio', '089765432231', 'alfandirio5@gmail.com', '2001-06-05', 'kak Jenis kulit saya berminyak recomen facial wash yang cocok dong');

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
(1, 'Oil Cleanse', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1008836599-gambar1.jpg', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1703282757-gambar2.jpg', 'Deskripsi Produk\r\nGarnier Micellar Water Pink Skin Care (Pembersih Wajah & Makeup Untuk Kulit Sensitif) \r\n\r\nPEMBERSIH WAJAH ALL-IN-1 UNTUK KULIT NORMAL CENDERUNG SENSITIF Garnier Micellar Water adalah produk pembersih wajah tanpa bilas No. 1 terlaris di Indonesia*. Berfungsi untuk menghapus makeup, membersihkan kotoran, dan sekaligus menyegarkan wajah dalam satu usapan lembut, tanpa perlu dibilas. Cocok untuk semua jenis kulit, termasuk kulit yang cenderung sensitif. \r\n\r\nGarnier Micellar Water merupakan inovasi pembersih wajah terkini dengan kandungan molekul Micelles yang mampu mengangkat kotoran dan minyak seperti magnet, tanpa perlu dibilas. Teksturnya ringan seperti air, lembut membersihkan kotoran, makeup serta menghilangkan minyak berlebih dari wajah, mata, dan bibir. Teruji secara dermatologi. Diformulasikan agar tidak lengket di wajah, tidak berminyak, dan tanpa parfum: cocok untuk semua jenis kulit termasuk kulit sensitif. \r\n\r\n*Klaim PT. L’Oreal Indonesia berdasarkan data Nielsen Measurement Services MAT Januari 2021 untuk kategori Skincare, \r\nsegment Micellar (didefinisikan oleh PT. L’Oreal Indonesia) di pasar Indonesia. (Copyright © 2021 Nielsen Consumer LLC.) \r\n\r\nCara pemakaian: \r\n1. Tuang Micellar Water ke kapas secukupnya \r\n2. Aplikasikan dan tekan kapas ke seluruh wajah \r\n3. Tarik kapas dan ulangi di seluruh bagian wajah \r\n\r\nIngredients: \r\nAQUA / WATER, HEXYLENE GLYCOL, GLYCERIN, POLOXAMER 184, DISODIUM COCOAMPHODIACETATE, DISODIUM EDTA, MYRTRIMONIUM BROMIDE', 'Ingredients: \r\nAQUA / WATER, HEXYLENE GLYCOL, GLYCERIN, POLOXAMER 184, DISODIUM COCOAMPHODIACETATE, DISODIUM EDTA, MYRTRIMONIUM BROMIDE', '2021-12-16 02:05:19'),
(2, 'Foam Cleanse', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1784916143-gambar1.jpg', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/2023417686-gambar2.jpg', 'Pembersih wajah dengan formula lembut, mampu membersihkan kulit sensitif sekalipun dengan lembut berkat kandungannya yang memiliki kadar acid yang mirip dengan kadar pH kulit. Gel cleanser ini mampu menenangkan, mengeksfoliasi, melembapkan sekaligus membersihkan kulit wajah. Pembersih wajah ini juga mampu mengangkat sel-sel kulit mati dan minyak berlebih yang muncul selama tidur sehingga wajah menjadi bersih dan segar.\r\n\r\nCara Pengunaan:\r\nGunakan pada pagi & malam setiap hari untuk hasil yang lebih efektif\r\n\r\nCocok untuk kulit:\r\nSemua Jenis Kulit, Kulit Sensitif', 'Ingredients:\r\nWater, Cocamidopropyl Betaine, Sodium Lauroyl Methyl Isethionate, Polysorbate 20, Styrax Japonicus Branch/Fruit/Leaf Extract, Butylene Glycol, Saccharomyces Ferment, Cryptomeria Japonica Leaf Extract, Nelumbo Nucifera Leaf Extract, Pinus Palustris Leaf Extract, Ulmus Davidiana Root Extract, Oenothera Biennis (Evening Primrose) Flower Extract, Pueraria Lobata Root Extract, Melaleuca Alternifolia (Tea Tree) Leaf Oil, Allantoin, Caprylyl Glycol, Ethylhexylglycerin, Betaine Salicylate, Citric Acid, Ethyl Hexanediol, 1,2-Hexanediol, Trisodium Ethylenediamine Disuccinate, Sodium Benzoate, Disodium EDTA', '2021-12-16 02:21:15'),
(3, 'Tone', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/820833061-gambar1.jpg', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1816811236-gambar2.jpg', 'PYUNGKANG YUL Essence Toner 200ml\r\n\r\nPenyerapan dan hidrasi maksimal . Mengandung 91.3% ekstrak akar Milk Vetch untuk mengembalikan energi kulit Anda. Memberikan hidrasi yang instens dengan menepuk kulit Anda agar menghasilkan sensasi kenyal dan meningkatkan elastisitas kulit Anda. Tekstur padat dan kental yang menyerap maksimal ke dalam kulit Anda dengan hasil akhir yang lembab namun halus dan bersih. Bebas parfum, pewarna, dan hypoallergenic untuk merawat kulit Anda tanpa menyebabkan iritasi.\r\n\r\nCara Penggunaan:\r\n\r\n1. Tuangkan pada kapas secukupnya\r\n2. Usapkan dengan lembut mengikuti garis kulit anda\r\n3. Tepuk kulit anda secara perlahan agar toner menyerap ke dalam kulit\r\n4. Hangatkan telapak tangan anda dan usap kembali kulit wajah anda untuk peresapan yang lebih baik', 'Ingredients:\r\n\r\nAstragalus Membranaceus Root Extract, 1,2-Hexanediol, Butylene Glycol, Bis-PEG-18 Methyl Ether Dimethyl Silane, Hydroxyethylcellulose, Carbomer, Arginine', '2021-12-16 02:25:40'),
(4, 'Serum', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/2117570268-gambar1.jpg', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1882349630-gambar2.jpeg', 'Brightening Serum\r\nSerum vitamin C yang sangat efektif untuk mencerahkan kulit. Mengandung vitamin C, Niacinamide, dan Mandarin Orange Extract, kulit akan tampak lebih cerah maksimal dengan penggunaan rutin. Bekerja dengan cara menghambat produksi melanin dan akumulasi melanin pada kulit, sehingga efektif untuk mencerahkan kulit.\r\n\r\nSelain itu, serum ini juga efektif untuk:\r\n- Mencerahkan kulit 3x lebih cepat\r\n- Mengatasi masalah noda di wajah bekas jerawat\r\n- Meningkatkan anti-oksidan yang membantu merawat kulit awet muda\r\n- Memberkan efek lembap\r\n- Melindungi kulit dari efek buruk paparan sinar matahari. \r\n\r\nProduk Your Skin Bae Series yang mengandung perpaduan bahan aktif dan bahan alami ini sudah teruji klinis dan aman, sehingga dapat digunakan untuk semua jenis kulit dan aman dipakai untuk usia mulai dari 15 tahun.\r\n\r\nCara Penggunaan:\r\n- Oleskan beberapa tetes ke wajah di pagi dan malam hari.\r\n- Pijat kulit secara perlahan. \r\n\r\nNote:\r\nUntuk hasil yang optimal selalu gunakan The Great Shield Sunscreen keesokan harinya.', 'Bahan-bahan:\r\nAqua, Glycerin, 3-O-Ethyl Ascorbic Acid, Butylene Glycol, Niacinamide, Hydroxyethylcellulose, Phenoxyethanol, Citrus Nobilis Fruit Extract, Chlorphenesin, Disodium EDTA, Sodium Acetate, Sodium Bisulfite', '2021-12-16 02:30:27'),
(5, 'Moisturaizer', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1373858894-gambar1.jpg', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/438311623-gambar2.jpg', 'Skin Barrier Water Cream merupakan produk 2-in-1 moisturizer dengan formula water-based, yang mampu menghidrasi kulit dengan sensasi water burst sensation tanpa membuatnya terasa berminyak di kulit. Telah teruji secara klinis dapat digunakan untuk semua jenis kulit. \r\n\r\nBenefits:\r\n1. Membantu meningkatkan skin barrier\r\n2. Meningkatkan kelembapan kulit\r\n3. Membantu mengurangi tampilan garis halus dan kerutan\r\n4. Membantu meminimalisir tampilan pori wajah\r\n\r\nHow to use:\r\nGunakan pada wajah yang sudah dibersihkan. Aplikasikan produk sebagai step terakhir skincare routine untuk memberikan kelembapan.', 'Ingredients:\r\nWater, Cyclopentasiloxane, glycerin, niacinamide, cyclohexasiloxane, butylene, glycol, dimethicone, 1,2-hexanediol, sodium chloride, cetyl peg/ppg-10/1 dimethicone, phenoxyethanol, lauryl peg-9 polydimethysiloxyethyl dimethicone, betaine, dimethicone/ peg-10/15 crosspolymer, silica, sodium citrate, sodium hyaluronate, adenosine, panthenol, pentylene glycol,allantoin, panthenol, pentylene glycol, allantoin, dimethicone crosspolymer,anthemis nobilis flower extract, dipotassium glycyrrhizate, lactic acid, disodium edta, dipropylene glycol, rosmarinus officinalis (rosemary) leaf extract,palmitoyl tetrapeptide-7, caffeine, tocopheryl acetate, centella asiatica leaf water, madecassoide, chrysin, tocopherol,macademia integrifolia seed oil, asiaticoside, ceramide np,phytosphingosine, centella asiatica leaf extract, citrullus lanatus (watermelon) fruit extract.', '2021-12-16 02:32:35'),
(6, 'Sunscreen', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/2027799739-gambar1.jpg', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1714096241-gambar2.jpg', 'DAILY SKIN PROTECTION FOR SUNSCREEN HATERS\r\nORGANIC SUNSCREEN GEL SPF45 PA++++  FOR ALL SKIN TYPES\r\n\r\nTabir surya wajah dalam bentuk gel ( water base) yang sangat ringan, dingin dan mudah meresap untuk seluruh jenis kulit termasuk kulit berminyak dan acne prone skin. Di formulasikan dengan kandungan bahan alami Propolis, aloe Vera, green tea dan delima untuk melindungi kulit dari sinar UV A & UV B serta menutrisi kulit.  \r\n\r\nKEUNGGULAN:\r\n- 0% alcohol ( bisa untuk kulit sensitif)\r\n- 0 % Oil ( bisa untuk kulit berminyak, kombinasi dan berjerawat)\r\n- 0% Silicone \r\n- Fungal acne Friendly\r\n- No Whitecast / efek dempul\r\n- Cepat meresap, ringan dan dingin dengan SPF tinggi\r\n- Mengandung ekstrak alami untuk kulit\r\n- Antioksidan & Melembabkan\r\n\r\nKEY INGREDIENTS:\r\n1.Aloe Vera: Menyegarkan & Menenangkan kulit\r\n2. Greentea: Antioksidan tinggi untuk menangkal radikal bebas & anti aging/ firming\r\n3. Propolis: Menutrisi & antiseptik alami\r\n4. Pomegranade: Antioksidan & moisturizer', 'Full ingredients: aqua, glycerin*, propanediol, ethylhexyl methoxycinnamate, butyl methoxydibenzoylmethane, aloe barbadensis juice extract*, portulaca oleracea extract*, sodium hyaluronate, niacinamide, cucumis sativus fruit extract*, tea camelia sinensis extract, punica granatum fruit extract*, phenoxyethanol, octocrylene, butylene glycol, sodium acrylates/C10-30 alkyl acrylates crosspolymer, propolis*, piscea abies extract*, allantoin, xanthan gum*, panthenol, disodium EDTA,  lechitin', '2021-12-16 02:35:43'),
(7, 'Face Mask', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/2111368445-gambar1.jpg', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1491926559-gambar2.jpg', 'Wash-off pack ini cocok untuk semua jenis kulit\r\n\r\nbisa digunakan 2 kali dalam satu minggu. \r\n\r\nDengan kandungan 61% ekstrak Mugwort, wash-off pack ini menenangkan iritasi dan peradangan (inflamasi) kulit serta merevitalisasi kulit dari kerusakan dengan tambahan antioksidan. \r\n\r\nButiran Adzuki Bean Seed mengatasi kulit kasar dengan mengelupaskan sel-sel kulit mati secara lembut untuk menjaga pori-pori tetap bersih agar warna kulit lebih cerah dan merata.\r\n\r\nBerbagai manfaat dari bahan-bahan yang terkandung di dalamnya:\r\nMugwort (Artemisia Princeps): melindungi kulit dari polusi berbahaya, merevitalisasi kulit dari kerusakan, serta menenangkan dan membersihkan kulit', 'Phaseolus Angularis Seed: mengangkat sel kulit mati dengan lembut\r\nLaminaria Japonica: memberikan vitalitas dan nutrisi untuk kulit kasar dan teriritasi, menjaganya agar tetap bersih\r\nCynara Scolymus (Artichoke) Leaf: mencegah penuaan kulit melalui sifat antioksidannya\r\nVigna Radiata Seed: melembabkan dan mencerahkan kulit, memperbaiki tekstur kulit, dan memperkuat penghalang kulit (skin barrier)\r\nHouttuynia Cordata: sangat baik untuk regenerasi sel\r\nNelumbo Nucifera Leaf: baik untuk \"meregenerasi kulit, mengontrol sebum\" menghilangkan radikal bebas yang berakibat fatal pada penuaan kulit dan membuat kulit kusam menjadi bersih dan cerah', '2021-12-16 02:38:25'),
(8, 'Exfoliate', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1558648094-gambar1.jpg', 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1334575626-gambar2.jpg', 'Soft exfoliating cotton pads that is easy to use, effectively works for clean dead skin cells, treats dull skin problems, and makes your skin softer and brighter. The exfoliating ingredients are very mild and balanced with ingredients that help soothe your skin, making it safe for all skin types, even for sensitive skin.\r\n\r\nKey ingridient: \r\nAcetyl Glucosamine\r\nOrganic Centella Asiatica Leaf Water\r\nRosemary Leaf Oil\r\nAHA - Glycolic Acid, Citric Acid\r\nBHA - Organic Salix Alba (Willow) Bark Extract\r\nPHA - Lactobionic Acid\r\nMelia Azadirachta Flower Extract\r\nTocopherol (Vitamin E)\r\nBetaine\r\nCaffeine\r\nPanthenol\r\nAllantoin', 'Cara Pakai: \r\nSetelah membersihkan wajah, usapkan N’PURE Cica Clear Pads dengan lembut pada seluruh wajah dan leher dengan menghindari area mata. Tidak perlu dibilas. Lanjutkan dengan rutinitas skincare harian kamu.', '2021-12-21 21:18:15');

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
-- Table structure for table `transaksi`
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
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_user`, `id_barang`, `qty`, `total`, `bukti_trf`, `status`, `no_telepon`, `alamat`, `date`) VALUES
(8, 5, 19, 20, 4000000, 'http://localhost/kuliah/me_you_them/public/admin/images/barang/1239479202-bukti_trf.jpg', 1, '2234', 'dfsfdf', '2021-11-15'),
(9, 6, 27, 2, 440000, NULL, 1, '089765432231', 'malang lowokwaru', '2021-11-15'),
(10, 6, 19, 1, 200000, 'http://localhost/me_you_them/public/admin/images/barang/1454227651-bukti_trf.jpg', 1, '089765432231', 'malang lowokwaru', '2021-11-15'),
(11, 7, 27, 3, 660000, 'http://localhost/me_you_them/public/admin/images/barang/1107141617-bukti_trf.jpg', 1, '089756432123', 'sukun malang rt 001 rw 001 malang', '2021-11-17'),
(12, 8, 23, 2, 208600, 'http://localhost/me_you_them/public/admin/images/barang/1495622507-bukti_trf.jpg', 0, '089765432231', 'malang dinoyo', '2021-12-02'),
(13, 10, 22, 2, 153200, NULL, 0, '089765432231', 'dwf3ggefwfg3', '2021-12-11'),
(14, 10, 23, 3, 312900, NULL, 0, '089765432231', 'dinoyo', '2021-12-11'),
(15, 10, 23, 2, 208600, NULL, 0, '089765432231', 'jakarta', '2021-12-11'),
(16, 8, 22, 3, 229800, 'http://localhost/The_Beauty_Shop/public/admin/images/barang/764225000-bukti_trf.jpg', 0, '089765432231', 'Perum Griya Shanta no 321 soekarno hatta  Lowokwaru malang', '2021-12-16'),
(17, 8, 22, 2, 153200, 'http://localhost/The_Beauty_Shop/public/admin/images/barang/1259916286-bukti_trf.jpg', 1, '089765432231', 'dinoyo malang', '2021-12-16'),
(18, 8, 22, 3, 229800, 'http://localhost/The_Beauty_Shop/public/admin/images/barang/160197363-bukti_trf.jpg', 1, '089765432231', 'jl gajayana dinoyo lowokwaru', '2021-12-22');

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
(1, 'admin', 'admin', 'admin@meyouthem.com', NULL, '$2y$10$oDJ8Rpk1VkGOFpKDkIyx5OkKkMxNbwbxgZKlZPYJSo9S7.BQ.vbZ2', 'GiqXv1Mibqayyy9r9KvyzbJTNxsLr5IVfJfZnTTXvcAyxGxFxypuzHGkq3WC', NULL, NULL),
(5, 'member', 'member ajah', 'member@meyouthem.com', NULL, '$2y$10$ervXb8k0mcmz96t04H.pH.rreXgooIbDsgcKs4YtaZs6SDe.I/oHa', NULL, '2021-11-15 02:58:03', '2021-11-15 02:58:03'),
(6, 'member', 'lintang', 'lintangrahma21@gmail.com', NULL, '$2y$10$tZxGj.mIyDkUlTHjeTclQuko26ZpzsWNFGLlAqtRdumyYT0oCYZKy', NULL, '2021-11-15 13:46:58', '2021-11-15 13:46:58'),
(7, 'member', 'annisa aulia rahma', 'annisaauliarahma31@gmail.com', NULL, '$2y$10$76DHWF4VAG19alLRzekx.OZs.mFf3UItVlB/bYvEnImEp/h835wle', NULL, '2021-11-17 07:32:40', '2021-11-17 07:32:40'),
(8, 'member', 'alfandi  rio', 'alfandirio5@gmail.com', NULL, '$2y$10$O2gmVw.tYtgmjZYt/60JYuYOOKSPVG1O9yr.EnnEpPeVYB1lSJXfC', NULL, '2021-12-02 02:06:22', '2021-12-02 02:06:22'),
(9, 'member', 'annisa aulia rahma', 'annisa27@gmail.com', NULL, '$2y$10$1QlEnSSz.aS.2mJo7/9YgOWSjYlyxp76HPY2cmKy4cyDJJH0lwj76', NULL, '2021-12-02 06:28:22', '2021-12-02 06:28:22'),
(10, 'member', 'mayang', 'mayang12@gmail.com', NULL, '$2y$10$6reoicLJT8oOoT49w2bpX.A/eSY1oqzw3E804V/enpmq2uqB2to5S', NULL, '2021-12-11 02:54:00', '2021-12-11 02:54:00'),
(11, 'member', 'alfandi', 'alfandirio5@gmail.co', NULL, '$2y$10$qRkGcCfcRRw..QGxelTcx.5l5Cir6OFIbKZQmwpfLVCQvVzNnkKC2', NULL, '2021-12-16 01:21:52', '2021-12-16 01:21:52');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id_barang` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
