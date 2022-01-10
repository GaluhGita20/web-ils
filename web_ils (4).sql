-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 01:30 PM
-- Server version: 10.4.21-MariaDB-log
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_ils`
--

-- --------------------------------------------------------

--
-- Table structure for table `child_component_pantais`
--

CREATE TABLE `child_component_pantais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_component_pantais`
--

INSERT INTO `child_component_pantais` (`id`, `parent_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'Kuta_Beach_1.jpg', NULL, NULL),
(2, 2, 'Kuta_Beach_2.jpg', NULL, NULL),
(3, 3, 'Pandawa_Beach.jpg', NULL, NULL),
(4, 4, 'Sanur_Beach.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `component_banners`
--

CREATE TABLE `component_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_banners`
--

INSERT INTO `component_banners` (`id`, `title`, `sub_title`, `video_banner`, `created_at`, `updated_at`) VALUES
(1, 'Interpersonal & Life Skill', 'ILS TI Tahun 2021', 'banner.mp4', NULL, '2022-01-07 17:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `component_desas`
--

CREATE TABLE `component_desas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_left` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_right` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_desas`
--

INSERT INTO `component_desas` (`id`, `slug`, `title`, `sub_title`, `desc_left`, `desc_right`, `image`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'desa-pelingpuran', 'Desa Penglipuran', 'Desa adat ini terletak di Kelurahan Kubu, Kabupaten Bangli. (dataran tinggi sekitar kaki Gunung Batur).\n                <br>Untuk memasuki desa ini, wisatawan harus memarkirkan kendaraan roda dua atau roda empat di lahan parkir yang telah disediakan.', 'Wisatawan akan merasakan suasana yang tenang dan asri dari desa “Pengeling Pura” yang bermakna tempat suci untuk mengenang para leluhur.\n                <br><br>Selain itu, bentuk bangunan setiap rumah yang seragam dan saling terhubung melalui lorong memiliki pesan bahwa masyarakat hidup berdampingan secara harmonis.', 'Wisatawan dapat mempelajari aturan adat, tradisi unik, dan banyak acara ritual termasuk Galungan. Salah satu aturan adat yang berlaku adalah larangan bagi pria untuk poligami dan akan dikucilkan di sebuah tempat bernama Karang Memadu, jika melanggar.\n                <br><br>Wisatawan dapat menginap di sejumlah penginapan yang ada sambil menikmati jajanan khas Bali bernama Sueg yang terbuat dari umbi.', 'Desa_Penglipuran_Bangli.jpg', 1, NULL, NULL),
(2, 'desa-tigawasa', 'Desa Tigawasa', 'Desa adat ini terletak di Kecamatan Banjar, Kabupaten Buleleng. (berada di ketinggian sekitar 500-700m).\n                <br>Wisatawan akan melihat banyak perkebunan dan sawah asri sambil menikmati sejuknya udara di Kubu Alam (tempat bersinggah masyarakat yang melintasi jalur Desa Tigawasa dari arah Denpasar-Singaraja dan sebaliknya).', 'Wisatawan dapat menjelajahi salah satu desa tua di Buleleng tersebut dan berinteraksi dengan masyarakat setempat sambil mempelajari budaya, tradisi, dan adat istiadat yang ada.\n                <br><br>Salah satu tradisi unik pada desa ini adalah tidak adanya pembakaran mayat dalam Upacara Ngaben. Mayat dikubur dan dibungkus dengan menggunakan kain batik.', ' Selain itu, wisatawan bisa menikmati kopi robusta yang dipetik langsung dari kebun para petani setempat sambil melihat pemandangan perbukitan dari gardu pandang yang terbuat dari bambu.\n                <br><br>Wisatawan juga dapat membeli kerajinan anyaman bambu berupa sokasi dan bedeg.                ', 'Desa_Tigawasa_Buleleng.jpg', 1, NULL, NULL),
(3, 'desa-tenganan', 'Rekomendasi Desa di Bali, Desa Tenganan', 'Desa adat ini terletak di Kecamatan Manggis, Kabupaten Karangasem.\n                <br>Untuk memasuki area desa ini, wisatawan bukan membeli karcis namun memberi sumbangan seikhlasnya.', 'Wisatawan akan melihat lingkungan desa yang masih sangat terjaga, banyak sawah dan tanaman yang asri, serta kerbau milik warga yang bebas berkeliaran.\n                <br><br>Selain itu, wisatawan bisa melihat bentuk rumah adat berderetan yang masih dipertahankan dan aturan adat \"awig-awig\" yang ada sejak abad ke-11 dan diperbarui pada 1842.', 'Sembari wisatawan mempelajari sejarah, budaya, adat, dan menikmati keindahan rumah adat, wisatawan juga dapat berkunjung ke toko oleh-oleh yang menjual banyak kerajinan hasil Desa Tenganan.\n                <br><br>Wisatawan juga dapat membeli kerajinan kain geringsing yang hanya diproduksi dengan tangan di desa ini. Waktu pembuatan yang lama dan warna yang berasal dari tumbuh-tumbuhan membuatnya menjadi buah tangan yang wajib dibawa pulang.', 'Desa_Tenganan_Karangasem.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `component_food`
--

CREATE TABLE `component_food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('header','sub') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_food`
--

INSERT INTO `component_food` (`id`, `slug`, `title`, `desc`, `image`, `status`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'header', 'Yuk Intip Makanan Khas<br> Bali....', '', '', 'header', 1, NULL, NULL),
(2, 'ayam-betutu', 'Ayam Betutu', 'Kata \"betutu\" berasal dari kata \"tunu\" yang berarti bakar dan dirangkai dengan kata \"be\" yang berarti daging. Daging ayam dibalurkan bumbu khas Bali di seluruh permukaan tubuh, kemudian direbus atau langsung dibakar hingga menghasilkan aroma yang khas. Menurut tradisi Bali, ayam betutu biasanya disajikan pada saat upacara adat seperti odalan, otonan, maupun perkawinan.', 'Ayam_Betutu.jpg', 'sub', 1, NULL, NULL),
(3, 'sate-lilit', 'Sate Lilit', 'Kata \"Lilit\" dalam bahasa Bali berarti \"membungkus\". Sate Lilit adalah sate yang terbuat dari daging ikan, ayam, sapi, atau kura-kura yang dicincang, kemudian dicampur dengan parutan kelapa, santan, jeruk nipis, bawang merah, dan merica. Tusuk sate lilit berbentuk datar dan lebar yang bertujuan agar daging cincang dapat melekat.', 'Satay_Lilit.jpg', 'sub', 1, NULL, NULL),
(4, 'srombotan', 'Srombotan', 'Setelah membahas tentang daging, sekarang masuk ke sayuran. Srombotan adalah sayuran khas Kabupaten Klungkung, Bali, yang terbuat dari sayur buah botor muda atau kecipir, terong bulat, pare, tauge, kubis yang dimasak setengah matang.', 'Srombotan.jpg', 'sub', 1, NULL, NULL),
(5, 'lawar', 'Lawar', 'Bagaimana jika sayuran dicampur dengan daging? Lawar adalah campuran sayuran dan daging cincang yang dibumbui secara merata dengan sejumlah bumbu-bumbu dan kelapa. Makanan ini lazim disajikan dalam rumah tangga di Bali atau dijual secara luas di rumah-rumah makan.', 'Lawar.jpg', 'sub', 1, NULL, NULL),
(6, 'nasi-campur-bali', 'Nasi Campur Bali', 'Bagaimana jika sate lilit dan lawar digabung menjadi satu hidangan ditambah nasi dan rasanya diselingi oleh campuran rempah-rempah khas Bali? Nasi campur Bali memakai tuna bakar, tahu goreng, mentimun, bayam, tempe, daging sapi, kari sayur, jagung, sambal di atas nasi.', 'Nasi_campur_bali.jfif', 'sub', 1, NULL, NULL),
(7, 'laklak', 'Laklak', 'Laklak adalah panekuk kecil tradisional Bali dengan kelapa parut dan gula aren cair. Makanan ini terbuat dari tepung beras, air, santan, ekstrak daun suji, baking powder, garam, kelapa parut, dan gula merah.', 'Laklak.jpeg', 'sub', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `component_gallery_images`
--

CREATE TABLE `component_gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_gallery_images`
--

INSERT INTO `component_gallery_images` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'insta-1.jpg', NULL, NULL),
(2, 'insta-2.jpg', NULL, NULL),
(3, 'insta-3.jpg', NULL, NULL),
(4, 'insta-4.jpg', NULL, NULL),
(5, 'insta-5.jpg', NULL, NULL),
(6, 'insta-6.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `component_gallery_videos`
--

CREATE TABLE `component_gallery_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_yt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('header','sub') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_gallery_videos`
--

INSERT INTO `component_gallery_videos` (`id`, `title`, `image`, `link_yt`, `status`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'Our Videos', '', '', 'header', 1, NULL, NULL),
(2, 'Security isn’t just a technology problem it’s about design, too', 'insta-1.jpg', 'https://youtu.be/lnXXfYA91Y8', 'sub', 1, NULL, NULL),
(3, 'Get Ready To Up Your Creative Game With The', 'insta-2.jpg', 'https://youtu.be/cwKYh2geaik', 'sub', 1, NULL, NULL),
(4, 'Traditional design won’t save us in the COVID-19 era', 'insta-3.jpg', 'https://youtu.be/gMHP8ZXvuMM', 'sub', 1, NULL, NULL),
(5, 'New: Freehand Templates, built for the whole team', 'insta-4.jpg', 'https://youtu.be/vKMeRMAVaDw', 'sub', 1, NULL, NULL),
(6, 'The 1 tool that helps remote teams collaborate better', 'insta-5.jpg', 'https://youtu.be/jm21Flj-dHE', 'sub', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `component_intro1s`
--

CREATE TABLE `component_intro1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_left` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_right` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_intro1s`
--

INSERT INTO `component_intro1s` (`id`, `title`, `desc_left`, `desc_right`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'Mengenal Bali - Pulau Dewata - Pulau Seribu Pura', 'Pariwisata yang wajib dikunjungi ketika berlibur di Bali sangat beragam, seperti: pantai, gunung, pura, air terjun, dan lain-lain. Beberapa pariwisata di Bali bahkan sudah diakui keindahannya hingga mancangegara, seperti Pantai Kuta dan Sanur. Seni dan budaya di Bali tidak kalah kerennya lho.. Seni-budaya yang paling terkenal di Bali tentu tariannya. Namun, seni-budaya lainnya seperti patung, wayang, drama, dan instrumen juga tidak kalah menarik. Jangan sampai kelewatan yaa.', 'Selain itu, tempat wisata lainnya seperti forest, theme park, patung, dan juga air terjun tidak kalah populer kok. Ubud Monkey Forest, Waterboom Bali, Patung GWK, dan Air Terjun Tegenungan pastinya sudah tidak asing lagi kan. Makanya... Ayuk simak teruss website ini, supaya tahu tempat-tempat wisata wajib dikunjungi di Bali yang tentunya akan kami ulas semenarik mungkin dan pastinya sangat informatif!', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `component_intro2s`
--

CREATE TABLE `component_intro2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('primary','sub') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_intro2s`
--

INSERT INTO `component_intro2s` (`id`, `title`, `desc`, `image`, `status`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'Hal - Hal Menarik di Bali', 'yang wajib dinikmati', 'Welcome-to-Bali.jpg', 'primary', 1, NULL, NULL),
(2, 'Pantai Kuta', 'Kecamatan Kuta, selatan Kota Denpasar', 'First_Place-Pantai_Kuta.jpg', 'sub', 1, NULL, NULL),
(3, 'Gunung Batur', 'Kecamatan Kintamani, Kabupaten Bangli', 'Second_Place-Gunung_Batur.jpg', 'sub', 1, NULL, NULL),
(4, 'Pura Tanah Lot', 'Desa Beraban, Kecamatan Kediri, Kabupaten Tabanan', 'Third_Place-Pura_Tanah_Lot.jpg', 'sub', 1, NULL, NULL),
(5, 'Air Terjun Tegenungan', 'Desa Kemenuh, Kecamatan Sukawati, Kabupaten Gianyar', 'Fourth_Place-Air_Terjun_Tegenungan.jpg', 'sub', 1, NULL, NULL),
(6, 'Tarian Kecak', 'Seni khas Bali yang bercerita tentang Ramayana dan dimainkan oleh laki-laki', 'Fifth_Place-Tarian_Kecak.jpg', 'sub', 1, NULL, NULL),
(7, 'Patung Garuda Wisnu Kencana', 'Bukit Unggasan, Kabupaten Jimbaran', 'Sixth_Place-Patung_Garuda_Wisnu_Kencana.jpg', 'sub', 1, NULL, NULL),
(8, 'Wayang Kulit Bali', 'Pertunjukan wayang kulit Bali bertema spiritual (bagian utama atau pelengkap acara keagamaan) dan tema hiburan (mengenai isu sosial)', 'Seventh_Place-Wayang_Kulit_Bali.jpg', 'sub', 1, NULL, NULL),
(9, 'Drama Sendratari', 'Pertunjukan yang menggabungkan seni tari dan drama tanpa dialog yang mengangkat cerita tentang Ramayana', 'Eighth_Place-Drama_Sendratari.jpg', 'sub', 1, NULL, NULL),
(10, 'Instrumen Gamelan', 'Gamelan Bali sangat khas melalui bunyinya yang meledak-ledak, berkecepatan tinggi, serta bagian gending yang lebih dinamis', 'Ninth_Place-Instrumen_Gamelan.jpg', 'sub', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `component_pantais`
--

CREATE TABLE `component_pantais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_left` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_right` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_tingkatan` enum('header','sub') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_pantais`
--

INSERT INTO `component_pantais` (`id`, `slug`, `title`, `sub_title`, `desc_left`, `desc_right`, `filter`, `status_tingkatan`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'general', 'Banyak Sekali Pantai di Bali, <br>Pantai Mana  yang kaliang ingin kunjungi?', 'General', 'Benar Sekali! Memang terdapat banyak pantai di Bali.\n                Bahkan dapat dikatakan Bali mendapat pamor yang sangat tinggi karena memiliki banyak pantai yang indah dan tersebar di berbagai sudut provinsi Bali. <br>Berikut ini adalah rekomendasi pantai-pantai terbaik yang pastinya akan membuat liburan di Bali semakin lengkap lagi. \n                <br><br>\n                Pertama ada Pantai Kuta, yang terkenal memiliki ombak bagus untuk olahraga berselancar yang cocok bagi peselancar pemula. Pantai Kuta sering pula disebut sebagai pantai matahari terbenam (sunset beach).Berlokasi di Kecamatan Kuta, sebelah Selatan Kota Denpasar, Bali, Indonesia. Pantai Kuta dapat ditempuh dengan waktu sekitar 10 menit dari Bandara Internasional Ngurah Rai dalam kondisi jalanan lancar.', 'Kedua ada Pantai Pandawa, dimana pantai ini terdapat dua tebing besar yang dipahat dengan enam patung (dari posisi tertinggi) yang diberi nama Dewi Kunti, Dharma Wangsa, Bima, Arjuna, Nakula, dan Sadewa. Berlokasi di Kuta Selatan, Kabupaten Badung, Bali. Pantai ini terletak di balik perbukitan dan sering disebut sebagai Pantai Rahasia (Secret Beach).\n                <br><br>\n                Pantai Sanur memiliki ombak yang cukup tenang, sehingga kurang cocok untuk berselancar, namun Pantai Sanur menyediakan fasilitas wisata Selam dan Snorkeling. Lokasi selam ini dapat digunakan oleh para penyelam dari semua tingkatan keahlian. Berlokasi di sebelah Timur Kota Denpasar, Bali. Pantai Sanur juga dikenal sebagai Sunrise beach (pantai Matahari terbit) sebagai lawan dari Pantai Kuta.\n                ', 'all', 'header', 1, NULL, NULL),
(2, 'pantai-kuta', '', 'Pantai Kuta', 'Pantai Kuta terkenal memiliki ombak bagus untuk olahraga berselancar yang cocok bagi peselancar pemula. Pantai Kuta sering pula disebut sebagai pantai matahari terbenam (sunset beach).<br/><br/>\n                Lokasi: Kecamatan Kuta, sebelah Selatan Kota Denpasar, Bali, Indonesia. Pantai Kuta dapat ditempuh dengan waktu sekitar 10 menit dari Bandara Internasional Ngurah Rai dalam kondisi jalanan lancar.', 'Sebelum menjadi objek wisata, Pantai Kuta merupakan sebuah pelabuhan dagang. Produk lokal diperdagangkan kepada pembeli dari luar Bali. Pada abad ke-19, Mads Lange datang ke Bali dan mendirikan basis perdagangan di Kuta.\n                <br><br>\n                Sekarang, Pantai Kuta sudah tersedia beragam jenis tempat hiburan seperti bar, restoran, pertokoan, restoran, hotel, dan toko-toko kelontong, serta pedagang kaki lima di sepanjang pantai. Pengunjung tidak hanya dapat menikmati pemandangan pantai saja, namun juga sarana dan prasarana yang ada di sekitar Pantai Kuta.', 'pantai-1', 'sub', 1, NULL, NULL),
(3, 'pantai-pandawa', '', 'Pantai Pandawa', 'Pantai Pandawa terdapat dua tebing besar yang dipahat dengan enam patung (dari posisi tertinggi) yang diberi nama Dewi Kunti, Dharma Wangsa, Bima, Arjuna, Nakula, dan Sadewa. <br/><br/>\n                Lokasi: Kuta Selatan, Kabupaten Badung, Bali. Pantai ini terletak di balik perbukitan dan sering disebut sebagai Pantai Rahasia (Secret Beach).', 'Selain tujuan wisata dan olahraga air, pantai ini juga dimanfaatkan untuk budidaya rumput laut karena kontur pantai yang landai dan ombak yang tidak sampai ke garis pantai. Cukup banyak wisatawan yang melakukan paralayang dari Bukit Timbis hingga ke Pantai Pandawa.\n                <br><br>\n                Pantai ini telah mengalami perbaikan sarana dan prasarana yang memadai karena minat wisatawan yang tinggi untuk berkunjung ke ini dan diharapkan Pantai Pandawa akan menjadi salah satu pilihan pantai terbaik di pulau Bali yang sejajar dengan pantai lain, seperti Pantai Kuta.', 'pantai-2', 'sub', 1, NULL, NULL),
(4, 'pantai-sanur', '', 'Pantai Sanur', 'Pantai Sanur memiliki ombak yang cukup tenang, sehingga kurang cocok untuk berselancar, namun Pantai Sanur menyediakan fasilitas wisata Selam dan Snorkeling. Lokasi selam ini dapat digunakan oleh para penyelam dari semua tingkatan keahlian.\n                <br/><br/>\n                Lokasi: sebelah Timur Kota Denpasar, Bali. Pantai Sanur juga dikenal sebagai Sunrise beach (pantai Matahari terbit) sebagai lawan dari Pantai Kuta.', 'Jarak antara bandara Internasional I Gusti Ngurah Rai dan kawasan wisata ini hanya berjarak sekitar 10 hingga 15 kilometer saja, sehingga wisatawan dapat menempuhnya dengan transportasi darat dan dalam waktu sekitar setengah jam.\n                <br/><br/>\n                Saat ini, sepanjang tempat wisata pantai Sanur sudah dilengkapi dengan penunjang wisata berupa hotel, restoran ataupun kafe-kafe kecil serta art shop. Selain itu, sepanjang garis pantai juga dibangun semacam area pejalan kaki yang sering kali digunakan sebagai jalur jogging oleh wisatawan ataupun masyarakat lokal.', 'pantai-3', 'sub', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `component_pembangunans`
--

CREATE TABLE `component_pembangunans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_left` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_right` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_pembangunans`
--

INSERT INTO `component_pembangunans` (`id`, `slug`, `title`, `desc_left`, `desc_right`, `tanggal`, `sumber`, `image1`, `image2`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'pembangunan-jalan-shortcut-singaraja', 'Pembangunan di Bali - Pembangunan Jalan Shortcut Singaraja-Mengwitani tetap Lanjut meski di Tengah Pandemi', 'Bapak Gubernur, I Wayan Koster, berkomitmen menyelesaikan shortcut Singaraja-Mengwitani meskipun di tengah pandemi. Pembangunan infrastruktur yang dibiayai dari APBN sesuai rencana dan tidak ada dana yang dipotong. Menurutnya, pembangunan shortcut (SC) pada ruas batas Kota Singaraja-Mengwitani ini penting untuk menciptakan pemerataan pembangunan antara Bali Utara dan Selatan. <br><br>\n                Latar belakang dibangunnya shortcut pada titik 7A, 7B dan 7C disebabkan karena kondisi jalan sebelumnya memiliki tikungan pendek dengan kelandaian lebih dari 10%, sehingga kecepatan kendaraan hanya mampu 20 km/jam. ', 'Pemprov Bali mengerjakan Detail Engineering Design (DED) serta melakukan pembebasan lahan untuk titik 7A, 7B, 7C, 7D dan 7E serta dan titik 8 dengan luas 11,970 Ha dengan biaya pembebasan mencapai Rp83,7 miliar. Pada proyek ini juga akan dibangun rest area serta Anjung Pandang dan Monumen Ki Barak Panji Sakti sebagai ikonnya nanti. <br><br>\n                Luas area taman dan parkir 2,158 meter persegi dan luas bangunan 180,3 meter persegi dengan perkiraan biaya mencapai Rp4,2 miliar. Anjung pandang bisa dijadikan sebagai destinasi pariwisata yang baru dan akan diintegrasikan dengan konsep rest area pada area sekitar Anjung Pandang, sehingga dapat meningkatkan perekonomian masyarakat sekitar sekaligus mendukung pemulihan sektor pariwisata Bali.', 'Rabu (1/9/2021)', 'https://bali.bisnis.com', 'pembangunan1.jpeg', 'pembangunan2.jpeg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `component_puras`
--

CREATE TABLE `component_puras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_left` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_right` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_puras`
--

INSERT INTO `component_puras` (`id`, `slug`, `title`, `sub_title`, `desc_left`, `desc_right`, `image1`, `image2`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'pura-tanah-lot', 'Pura Terkenal di Bali - Pura Tanah Lot', 'Salah satu pura paling suci di Bali. Terdapat dua candi di atas batu besar, yang pertama berada di atas batu dan yang kedua berada di tebing. Pura Tanah Lot adalah pura tempat pemujaan dewa penjaga laut dan terkenal dengan pemandangan matahari terbenamnya yang indah.', 'Lokasi: Desa Beraban, Kecamatan Kediri, Kabupaten Tabanan (13 kilometer di sebelah selatan Kota Tabanan). Di pura ini, Pujawali (Odalan) diperingati setiap 210 hari sekali. Jatuhnya dekat dengan perayaan Galungan dan Kuningan, tepatnya pada Hari Suci Buda Wage (Buda Cemeng) Langkir.\n                <br><br>Sejarah pura ini berdasarkan pada legenda abad ke-15, Dang Hyang Nirartha yang memindahkan batu karang (tempat bermeditasinya) ke tengah pantai dengan kekuatan spiritual. Batu karang tersebut diberi nama Tanah Lot yang artinya batukarang yang berada di tengah lautan. Semenjak peristiwa itu, Bendesa Beraban Sakti mengakui kesaktian Dang Hyang Nirartha dan menjadi pengikutnya untuk memeluk agama Hindu bersama dengan seluruh penduduk setempat.', 'Pura Tanah lot mengalami abrasi dan pengikisan ombak dan angin. Pemerintah Bali melakukan pemasangan tetrapod sebagai pemecah gelombang dan sekaligus pembuatan karang buatan untuk memperkuat tebing di sekeliling pura. Daerah sekitar Tanah Lot juga telah ditata ulang mengingat Pura Tanah lot menjadi salah satu tujuan wisata di bali.\n                <br><br>Untuk memasuki pura Tanah Lot Bali, wisatawan wajib membei tiket masuk. Harga tiket masuk pura Tanah Lot Bali akan dikenakan biaya yang berbeda berdasarkan kategori umur dan kendaraan. Kategori umur dibedakan antara dewasa (Rp20.000/orang) dan anak-anak (Rp15.000/orang). Sedangkan kategori kendaraan dibedakan menjadi kategori motor roda dua (Rp2.000/motor), kategori mobil roda empat (Rp5.000/mobil), dan kategori parkir bus (Rp10.000/bus).', 'Pura_Tanah_Lot_2.jpeg', 'Pura_Tanah_Lot_1.jpeg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `component_sejarahs`
--

CREATE TABLE `component_sejarahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_left` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_right` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_sejarahs`
--

INSERT INTO `component_sejarahs` (`id`, `slug`, `header`, `title`, `sub_title`, `desc_left`, `desc_right`, `image`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'perkembangan-bali-sebelum-indonesia-merdeka-hingga-sekarang', 'Sejarah Seputar Bali', 'Perkembangan Bali sebelum Indonesia Merdeka hingga Sekarang', 'Banyak sekali hal yang telah berkembang di Bali. Berikut adalah pembahasannya.', 'Perkembangan di Bali tidak dapat terlepas dari sejarah maupun peradaban masa lalunya, mulai dari peradaban Bali Kuno (masa pemerintahan dinasti Warmadewa) beralih ke jaman pertengahan (masa pemerintahan Raja Klungkung sampai Perang Puputan) dan berakhir ke jaman kolonial sampai era modern sekarang. \r\n                <br><br>40 tahun lalu, Bali masih sangat sepi oleh pengunjung mancanegara. Pada tahun 1975, seorang fotografer sekaligus peselancar bernama Clifford White berkunjung ke Bali dan mengambil beberapa foto akan keindahan pulau Bali untuk dipublikasikan.\r\n                Kemudian, setelah beberapa tahun, Bali mengalami ledakan pengunjung mancanegara yang diperkirakan mencapai 4 juta pengunjung asing tiap tahunnya.', 'Kini, Bali telah menjadi salah satu tempat liburan tropis terpopuler di Asia Tenggara. Pada tahun 2011, pengunjung mancanegara yang berkunjung ke Bali tercatat sebanyak 11,1 juta. Bali biasanya populer dan dikunjungi oleh kalangan backpacker, pasangan, dan peselancar yang tertarik oleh ombak besar, kuat, dan bersih.\r\n                <br><br>Dilihat dari budayanya, Bali telah mengalami perubahan yang signifikan mulai dari adat, gaya hidup, perkembangan dan adat istiadat yang berubah atau diperbarui seiring dengan berkembangnya peraturan daerah dan negara.', 'jimbaran-beach-dinner.jpg', 1, NULL, '2022-01-06 02:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `component_wisata_hiburans`
--

CREATE TABLE `component_wisata_hiburans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_left` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_right` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_wisata_hiburans`
--

INSERT INTO `component_wisata_hiburans` (`id`, `slug`, `title`, `desc_left`, `desc_right`, `image`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'patung-garuda-wisnu-kencana', 'Bingung cari tempat wisata liburan? Yuk intip spot wisata liburan di Bali - Patung Garuda Wisnu Kencana (GWK)', 'Lokasi: Bukit Unggasan, Kabupaten Jimbaran. (kompleks Taman Budaya Garuda Wisnu Kencana). Patung ini merupakan karya dari pematung terkenal di Bali, I Nyoman Nuarta. Monumen ini dikembangkan sebagai taman budaya dan menjadi ikon bagi pariwisata Bali dan Indonesia. Patung tersebut berwujud Dewa Wisnu / Dewa Pemelihara (Sthiti) dalam agama Hindu yang mengendarai burung Garuda.', 'Patung ini dapat terlihat dari Kuta, Sanur, Nusa Dua hingga Tanah Lot. Patung Garuda Wisnu Kencana ini merupakan simbol dari misi penyelamatan lingkungan dan dunia. Patung ini terbuat dari campuran tembaga dan baja, tinggi, dan lebar. Patung ini lebih tinggi daripada Patung Liberty. Harga tiket masuk dibagi berdasarkan umur, kategori dewasa dikenakan tarif Rp85.000/orang, kategori anak (5-12 tahun) Rp 60.000/anak.', 'clouds_sun_moon_height_26397_2560x1600.jpg', 1, NULL, '2022-01-06 03:03:08'),
(2, 'ubud-monkey-forest', 'Bingung cari tempat wisata liburan? Yuk intip spot wisata liburan di Bali - Ubud Monkey Forest', 'Lokasi: Desa Padangtegal, Kabupaten Ubud. (cagar alam dan kompleks candi di Bali). Terdapat kurang lebih 749 ekor monyet ekor panjang (Macaca fascicularis) (63 jantan dewasa, 34 jantan muda, 219 betina dewasa, 29 betina muda, 167 juvenile 1 (2-3 tahun), 118 juvenile 2 (1-2 tahun), 63 Infant old (5-12 bulan) dan 56 infant.', 'Tempat ini merupakan atraksi wisata populer di Ubud, diperkirakan angka wisatawan yang mengunjungi tempat ini mencapai 120.000 wisatawan per bulan. Hutan ini memiliki luas kira-kira 12,5 hektar dan masih akan dilakukan perluasan disebelah selatan kawasan dan berisi setidaknya 186 spesies pohon yang berbeda. Harga tiket masuk dibagi berdasarkan umur, kategori dewasa dikenakan tarif Rp80.000/orang, kategori anak (5-12 tahun) Rp60.000/anak.', 'fire-dance.jpg', 1, NULL, '2022-01-06 03:03:23'),
(3, 'air-terjun-tegenungan', 'Bingung cari tempat wisata liburan? Yuk intip spot wisata liburan di Bali - Air Terjun Tegenungan', 'Lokasi: Desa Kemenuh, Kecamatan Sukawati, Kabupaten Gianyar (30 km dari Kota Denpasar). Ketinggian air terjun ini sekitar 15 meter. Airnya bersih dan bening, namun debit airnya sangat deras. Tempat ini juga sering digunakan untuk melakukan kegiatan ekstrem, seperti melompat dari puncak air terjun.', 'Air Terjun ini sangat populer di telinga wisatawan mancanegara. Daya tariknya terletak pada pemandangan air terjun yang sangat memukau. Harga tiket masuk dibagi berdasarkan lokasi, kategori lokasi utama dikenakan tarif Rp20.000/orang, kategori lokasi atas air terjun dikenakan tarif Rp15.000/orang, dan tarif parkir mobil sebesar Rp5.000/mobil.', 'clouds_sun_moon_height_26397_2560x1600.jpg', 1, NULL, '2022-01-06 03:03:39'),
(4, 'waterbom-park', 'Bingung cari tempat wisata liburan? Yuk intip spot wisata liburan di Bali - Waterbom Park', 'Lokasi: Jl. Kartika Plaza, Tuban, Kuta, Kabupaten Badung (3KM dari Bandara Ngurah Rai). Waterbom Park atau Waterbom Bali adalah sebuah taman rekreasi air buatan yang menyediakan banyak wahana dan hiburan. Waterbom Bali berdiri sejak 1993 dan telah banyak memperoleh penghargaan sebagai water park terbaik di dunia.', 'Wahana yang tersedia di waterpark ini seperti seluncuran Splashdown, The Boomerang, Race Track, Boogie Ride, Jungle Ride, Raft River, Macaroni Tube, Lazy River. Selain itu, juga ada hiburan lain seperti Euro Bungy, Bombastic, 3 Kids Slides, Pleasure Pool, Climbing Wall. Harga tiket masuk berkisar antara Rp280.000-Rp1.350.000 tergantung jumlah pengunjung dan paket yang diambil.', 'fire-dance.jpg', 1, NULL, '2022-01-06 03:03:51');

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
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `design` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_fb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_ig` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_yt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(61, '2014_10_12_000000_create_users_table', 1),
(62, '2014_10_12_100000_create_password_resets_table', 1),
(63, '2019_08_19_000000_create_failed_jobs_table', 1),
(64, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(65, '2021_11_16_121929_create_component_banners_table', 1),
(66, '2021_11_16_124606_create_component_intro1s_table', 1),
(67, '2021_11_16_131507_create_component_intro2s_table', 1),
(68, '2021_11_16_144914_create_component_gallery_videos_table', 1),
(69, '2021_11_17_035546_create_component_gallery_images_table', 1),
(70, '2021_11_17_041235_create_component_food_table', 1),
(71, '2021_11_17_054428_create_component_pantais_table', 1),
(72, '2021_11_17_055152_create_child_component_pantais_table', 1),
(73, '2021_11_17_094400_create_component_pembangunans_table', 1),
(74, '2021_11_20_033207_create_component_sejarahs_table', 1),
(75, '2021_11_20_051308_create_component_desas_table', 1),
(76, '2021_11_20_061111_create_component_puras_table', 1),
(77, '2021_11_23_235425_create_table_contents_table', 1),
(78, '2021_11_24_072112_create_component_wisata_hiburans_table', 1),
(79, '2021_12_16_094641_create_user_has_permissions_table', 1),
(80, '2021_12_24_103023_create_reviews_table', 1),
(81, '2022_01_06_092955_create_footers_table', 1);

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
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_orang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_contents`
--

CREATE TABLE `table_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_component` enum('intro1','intro2','pembangunan','sejarah','tempat-wisata-hiburan','pantai','desa','pura','makanan-khas','gallery-video') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` enum('aktif','nonaktif') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_contents`
--

INSERT INTO `table_contents` (`id`, `nama_component`, `status_aktif`, `created_at`, `updated_at`) VALUES
(1, 'intro1', 'aktif', NULL, NULL),
(2, 'intro2', 'aktif', NULL, NULL),
(3, 'pembangunan', 'aktif', NULL, NULL),
(4, 'sejarah', 'aktif', NULL, NULL),
(5, 'tempat-wisata-hiburan', 'aktif', NULL, NULL),
(6, 'pantai', 'aktif', NULL, NULL),
(7, 'desa', 'aktif', NULL, NULL),
(8, 'pura', 'aktif', NULL, NULL),
(9, 'makanan-khas', 'aktif', NULL, NULL),
(10, 'gallery-video', 'aktif', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status_aktif`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ILS 2021', 'admin@gmail.com', NULL, '$2y$10$d8tegjRlGOomCtALhnRJeu2b7jj6xk6xVDLvVkStSWLMBnftC/8se', 1, '7TF9sq6R4gamtKhNrSo2VruvLO8XRxxX6C346F2hSmJaLbhfe1seMTccJQKl', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_has_permissions`
--

INSERT INTO `user_has_permissions` (`id`, `user_id`, `component_name`, `permissions`, `created_at`, `updated_at`) VALUES
(36, 1, 'intro1', 'can edit', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(37, 1, 'intro1', 'can add', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(38, 1, 'intro1', 'can delete', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(39, 1, 'intro2', 'can edit', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(40, 1, 'intro2', 'can add', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(41, 1, 'intro2', 'can delete', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(42, 1, 'pembangunan', 'can edit', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(43, 1, 'pembangunan', 'can add', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(44, 1, 'pembangunan', 'can delete', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(45, 1, 'sejarah', 'can edit', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(46, 1, 'sejarah', 'can add', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(47, 1, 'sejarah', 'can delete', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(48, 1, 'wisata_hiburan', 'can edit', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(49, 1, 'wisata_hiburan', 'can add', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(50, 1, 'wisata_hiburan', 'can delete', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(51, 1, 'pantai', 'can edit', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(52, 1, 'pantai', 'can add', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(53, 1, 'pantai', 'can delete', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(54, 1, 'desa', 'can edit', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(55, 1, 'desa', 'can add', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(56, 1, 'desa', 'can delete', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(57, 1, 'makanan_khas', 'can edit', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(58, 1, 'makanan_khas', 'can add', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(59, 1, 'makanan_khas', 'can delete', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(60, 1, 'gallery_video', 'can edit', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(61, 1, 'gallery_video', 'can add', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(62, 1, 'gallery_video', 'can delete', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(63, 1, 'review', 'can edit', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(64, 1, 'review', 'can add', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(65, 1, 'review', 'can delete', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(66, 1, 'pura', 'can edit', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(67, 1, 'pura', 'can add', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(68, 1, 'pura', 'can delete', '2022-01-06 02:52:19', '2022-01-06 02:52:19'),
(69, 1, 'user', 'admin', '2022-01-06 02:52:19', '2022-01-06 02:52:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child_component_pantais`
--
ALTER TABLE `child_component_pantais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_component_pantais_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `component_banners`
--
ALTER TABLE `component_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_desas`
--
ALTER TABLE `component_desas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_food`
--
ALTER TABLE `component_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_gallery_images`
--
ALTER TABLE `component_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_gallery_videos`
--
ALTER TABLE `component_gallery_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_intro1s`
--
ALTER TABLE `component_intro1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_intro2s`
--
ALTER TABLE `component_intro2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_pantais`
--
ALTER TABLE `component_pantais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_pembangunans`
--
ALTER TABLE `component_pembangunans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_puras`
--
ALTER TABLE `component_puras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_sejarahs`
--
ALTER TABLE `component_sejarahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_wisata_hiburans`
--
ALTER TABLE `component_wisata_hiburans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_contents`
--
ALTER TABLE `table_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_has_permissions_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `child_component_pantais`
--
ALTER TABLE `child_component_pantais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `component_banners`
--
ALTER TABLE `component_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `component_desas`
--
ALTER TABLE `component_desas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `component_food`
--
ALTER TABLE `component_food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `component_gallery_images`
--
ALTER TABLE `component_gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `component_gallery_videos`
--
ALTER TABLE `component_gallery_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `component_intro1s`
--
ALTER TABLE `component_intro1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `component_intro2s`
--
ALTER TABLE `component_intro2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `component_pantais`
--
ALTER TABLE `component_pantais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `component_pembangunans`
--
ALTER TABLE `component_pembangunans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `component_puras`
--
ALTER TABLE `component_puras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `component_sejarahs`
--
ALTER TABLE `component_sejarahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `component_wisata_hiburans`
--
ALTER TABLE `component_wisata_hiburans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_contents`
--
ALTER TABLE `table_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child_component_pantais`
--
ALTER TABLE `child_component_pantais`
  ADD CONSTRAINT `child_component_pantais_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `component_pantais` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
