-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: ancona-db.id.domainesia.com:3306
-- Waktu pembuatan: 31 Des 2024 pada 06.36
-- Versi server: 8.0.40-0ubuntu0.22.04.1
-- Versi PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upenkomb_upenkom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int NOT NULL,
  `id_kategori_download` int NOT NULL,
  `id_user` int NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `id_kategori_download`, `id_user`, `judul_download`, `jenis_download`, `isi`, `gambar`, `website`, `hits`, `tanggal`) VALUES
(5, 2, 1, 'LAYANAN PENILAIAN KOMPETENSI BKD JATENG 2024', 'Download', '<p>LAYANAN PENILAIAN KOMPETENSI BKD JATENG 2024</p>', 'JUMLAH_PEGAWAI_CAT_POTENSI_2024.jpg', '', 0, '2024-11-19 02:25:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_download`
--

CREATE TABLE `kategori_download` (
  `id_kategori_download` int NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `urutan` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_download`
--

INSERT INTO `kategori_download` (`id_kategori_download`, `slug_kategori_download`, `nama_kategori_download`, `urutan`) VALUES
(1, 'formulir', 'Formulir', 1),
(2, 'layanan-upenkom', 'Layanan Upenkom', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int NOT NULL,
  `id_user` int NOT NULL,
  `id_kategori` int NOT NULL,
  `slug_berita` varchar(255) DEFAULT NULL,
  `judul_berita` varchar(255) DEFAULT NULL,
  `isi_berita` text,
  `gambar_berita` varchar(255) DEFAULT NULL,
  `status_berita` varchar(50) NOT NULL,
  `jenis_berita` varchar(50) NOT NULL,
  `keywords` text NOT NULL,
  `date_cretated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `isi_berita`, `gambar_berita`, `status_berita`, `jenis_berita`, `keywords`, `date_cretated`, `last_modified`) VALUES
(22, 7, 2, 'diskusi-penyusunan-rancangan-perubahan-peraturan-bkn-nomor-26-tahun-2019', 'Diskusi Penyusunan Rancangan Perubahan Peraturan BKN Nomor 26 Tahun 2019', '<p style=\"text-align: justify;\">Kamis, 24 Oktober 2024, pukul 09.00 WIB bertempat di Ruang Rapat Kinerja BKD Provinsi Jawa Tengah, Badan Kepegawaian Negara mengadakan kegiatan Kunjungan ke Badan Kepegawaian Daerah Provinsi Jawa Tengah yang bertujuan untuk mendiskusikan Peraturan BKN Nomor 26 Tahun 2019. Acara ini dihadiri oleh Tim PUSPENKOM BKN RI dan Tim Penilaian Kompetensi BKD Provinsi Jawa Tengah. Kegiatan ini bertujuan untuk mendapatkan masukan serta mengetahui kendala-kendala dalam pelaksanaan Peraturan BKN Nomor 26 Tahun 2019 yang mengatur tentang Pembinaan Penyelenggara Penilaian Kompetensi ASN. Diskusi ini merupakan bagian dari proses penyusunan rancangan perubahan peraturan tersebut, dengan harapan dapat menyusun strategi yang lebih baik ke depannya. Narasumber dalam acara ini adalah Ibtri Rejeki, S.H., M.M., Asesor SDM Aparatur Ahli Utama pada BKN RI, yang memberikan pemaparan terkait implementasi dan tantangan yang dihadapi dalam standar penyelenggaraan penilaian kompetensi ASN di lingkungan Pemerintah Provinsi Jawa Tengah.</p>', 'WhatsApp_Image_2024-10-24_at_9_05_02_PM_(2)1.jpeg', 'Publish', 'Berita', 'Peraturan BKN Nomor 26 Tahun 2019', '2024-10-24 03:57:18', '2024-11-21'),
(23, 6, 1, 'uji-kompetensi-manajerial-dan-sosial-kultural-evaluasi-jpt-pratama-pemerintah-kota-tegal-tahun-2024', 'Uji Kompetensi Manajerial dan Sosial Kultural Evaluasi JPT Pratama Pemerintah Kota Tegal Tahun 2024', '<p>Kamis, 31 Oktober 2024 di Aula Meritokrasi, BKD Provinsi Jawa Tengah, Pj. Wali Kota Tegal, drg. Agus Dwi Sulistyantono, M.M., secara resmi membuka kegiatan Uji Kompetensi Manajerial dan Sosial Kultural untuk Jabatan Pimpinan Tinggi (JPT) Pratama yang diselenggarakan oleh Badan Kepegawaian Daerah (BKD) Provinsi Jawa Tengah. Acara ini berlangsung pada 31 Oktober hingga 1 November 2024 di Aula Meritokrasi BKD Provinsi Jawa Tengah, dengan tujuan untuk mengidentifikasi dan mengembangkan kader-kader potensial dalam JPT Pratama di lingkungan Pemerintah Kota Tegal. Delapan peserta mengikuti serangkaian evaluasi yang meliputi simulasi Problem Solving, Leadership Group Discussion (LGD), In-Basket (IB), wawancara serta Computer Assisted Test (CAT) Potensi.</p>', 'UPKi.png', 'Publish', 'Berita', 'Uji Kompetensi Manajerial dan Sosial Kultural', '2024-12-20 03:57:55', '2024-11-21'),
(24, 8, 2, 'bkd-provinsi-jawa-tengah-gelar-workshop-untuk-penguatan-peran-asesor-sdm-aparatur-dan-pengelola-penilaian-kompetensi-asn', 'BKD Provinsi Jawa Tengah Gelar Workshop untuk Penguatan Peran Asesor SDM Aparatur dan Pengelola Penilaian Kompetensi ASN', '<p style=\"text-align: justify;\">Badan Kepegawaian Daerah (BKD) Provinsi Jawa Tengah&nbsp;telah&nbsp;mengadakan workshop yang bertema \"Penguatan Peran Asesor SDM Aparatur dan Pengelola Penilaian Kompetensi ASN dalam Mewujudkan ASN Jawa Tengah yang Profesional\". Kegiatan ini berlangsung di Hotel Puri Asri, Kota Magelang, Jawa Tengah, dari tanggal 23 hingga 24&nbsp;Juli 2024. Workshop ini diharapkan dapat memperkuat peran para asesor SDM aparatur serta pengelola penilaian kompetensi ASN di Jawa Tengah.</p>\r\n<p style=\"text-align: justify;\">Workshop ini dibuka oleh Kepala Badan Kepegawaian Daerah Provinsi Jawa Tengah, Rahmah Nur Hayati, S.KM, M.Kes.,&nbsp;dalam sambutannya&nbsp;beliau&nbsp;menyampaikan pentingnya penguatan kompetensi dan profesionalisme ASN guna meningkatkan kinerja dan pelayanan publik di Jawa Tengah.</p>\r\n<p style=\"text-align: justify;\">Workshop ini terdiri dari tiga tema. Tema pertama adalah \"Pemanfaatan Data Asesmen Online Guna Mendukung Percepatan Pelaksanaan Manajemen Talenta\"&nbsp;disampaikan oleh Dr. Purwanto, M.M, (Assessor SDM Aparatur Jenjang Utama dari PUSPENKOM BKN RI). Sesi ini diadakan pada tanggal 23 Juli 2024, pukul 14.30 hingga 16.00 WIB.</p>\r\n<p style=\"text-align: justify;\">Tema kedua adalah \"Kebijakan dan Implementasi Pengelolaan JF Kepegawaian, Khususnya Jabatan Fungsional Asesor SDM Aparatur\". Sesi ini menghadirkan dua narasumber, yaitu Dr. Achmad Slamet Hidayat, S.Pd., M.Si., (Kepala Pusat Pembinaan Jabatan Fungsional Kepegawaian/PUSBINJAK BKN RI), dan Agung Sugiarto, S.H., M.H. (Analis SDM Aparatur Madya BKN RI). Sesi ini berlangsung pada tanggal 23 Juli 2024, pukul 19.00 hingga 21.00 WIB.</p>\r\n<p style=\"text-align: justify;\">Tema ketiga adalah \"Sarasehan Asesor dan Pengelola Penilaian Kompetensi ASN Kabupaten/Kota di Jawa Tengah&nbsp;(Online sharing Kebijakan Pemerintah Provinsi Jawa Tengah dalam Pembinaan Asesor SDM Aparatur di Jawa Tengah) \" yang dilaksanakan pada tanggal 24 Juli 2024, pukul 08.00 hingga 10.00 WIB. Narasumber dalam sesi ini adalah Drs. Wisnu Zaroh, M.Si., (Asesor SDM Aparatur Ahli Utama&nbsp;BKD Provinsi Jawa Tengah)&nbsp;Drs. Sukardi, M.Si., (Kepala Unit Penilaian Kompetensi ASN BKD Provinsi Jawa Tengah)&nbsp;dan Herlina Murdiastuti, S.Psi., Psi., M.Psi., (Asesor SDM Aparatur Ahli Madya&nbsp;BKD Provinsi Jawa Tengah&nbsp;serta Ketua IASA Wilayah Jawa Tengah).</p>', 'DSC089611.JPG', 'Publish', 'Berita', 'kompetensi', '2024-11-20 04:00:40', '2024-11-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_client`
--

CREATE TABLE `tb_client` (
  `id_client` int NOT NULL,
  `jenis_client` varchar(50) NOT NULL,
  `nama_client` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `email_client` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `gambar_client` varchar(255) NOT NULL,
  `publish` varchar(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_client`
--

INSERT INTO `tb_client` (`id_client`, `jenis_client`, `nama_client`, `alamat`, `no_telepon`, `email_client`, `website`, `gambar_client`, `publish`, `date_created`, `last_modified`) VALUES
(10, '1', 'Kabupaten Cilcap', 'cilacap', '0000', 'a@a.com', '-', 'cilacap.jpg', 'Publish', '2024-11-20 06:38:04', '2024-11-20'),
(11, '1', 'Kabupaten Rembang', 'rembang', '0000', 'b@a.com', '-', 'rembng.png', 'Publish', '2024-11-20 06:39:17', '0000-00-00'),
(12, '1', 'Kabupaten Temanggung', 'temanggung', '0000', 'c@a.com', '-', 'temanggung.png', 'Publish', '2024-11-20 06:39:45', '0000-00-00'),
(13, '1', 'Kabupaten Pati', 'pati', '0000', 'd@a.com', '-', 'pati.png', 'Publish', '2024-11-20 06:40:38', '0000-00-00'),
(14, '1', 'Kabupaten Purbalingga', 'purbalingga', '0000', 'e@a.com', '-', 'purba.png', 'Publish', '2024-11-20 06:41:15', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_file`
--

CREATE TABLE `tb_file` (
  `id_file` int NOT NULL,
  `nama_file` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori_berita`
--

CREATE TABLE `tb_kategori_berita` (
  `id_kategori` int NOT NULL,
  `slug-kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_kategori_berita`
--

INSERT INTO `tb_kategori_berita` (`id_kategori`, `slug-kategori`, `nama_kategori`, `date_created`) VALUES
(1, 'kompetensi', 'Kompetensi', '2024-11-20 07:45:46'),
(2, 'kegiatan-upenkom', 'Kegiatan Upenkom', '2024-11-20 07:45:30'),
(7, 'potensi', 'Potensi', '2024-11-20 07:45:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori_client`
--

CREATE TABLE `tb_kategori_client` (
  `id_kategori` int NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_kategori_client`
--

INSERT INTO `tb_kategori_client` (`id_kategori`, `slug_kategori`, `nama_kategori`, `date_created`) VALUES
(1, 'pemerintah-daerah', 'Pemerintah Daerah', '2024-11-20 06:33:02'),
(2, 'pemerintah-pusat', 'Pemerintah Pusat', '2024-11-20 06:35:20'),
(3, 'swasta', 'Swasta', '2024-11-20 06:35:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori_portfolio`
--

CREATE TABLE `tb_kategori_portfolio` (
  `id_kategori` int NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_kategori_portfolio`
--

INSERT INTO `tb_kategori_portfolio` (`id_kategori`, `slug_kategori`, `nama_kategori`, `date_created`) VALUES
(1, 'web-developer', 'Metode Kompleks', '2024-11-19 06:30:57'),
(3, 'mobile-developer', 'Metode Sedang', '2024-11-19 06:31:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori_staff`
--

CREATE TABLE `tb_kategori_staff` (
  `id_kategori` int NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_kategori_staff`
--

INSERT INTO `tb_kategori_staff` (`id_kategori`, `slug_kategori`, `nama_kategori`, `date_created`) VALUES
(2, 'admin', 'Admin', '2021-04-26 05:12:35'),
(6, 'asesor-sdm-aparatur-ahli-utama', 'Asesor SDM Aparatur Ahli Utama', '2024-11-19 06:28:26'),
(7, 'asesor-sdm-aparatur-ahli-madya', 'Asesor SDM Aparatur Ahli Madya', '2024-11-19 06:28:37'),
(8, 'asesor-sdm-aparatur-ahli-muda', 'Asesor SDM Aparatur Ahli Muda', '2024-11-19 06:28:43'),
(9, 'asesor-sdm-aparatur-ahli-pertama', 'Asesor SDM Aparatur Ahli Pertama', '2024-11-19 06:28:50'),
(10, 'analis-kompetensi', 'Analis Kompetensi', '2024-11-19 06:28:58'),
(11, 'analis-perencanaan-dan-evaluasi', 'Analis Perencanaan dan Evaluasi', '2024-11-19 06:29:09'),
(12, 'Ppengadministratsi-umum', 'Pengadministratsi Umum', '2024-11-19 06:29:34'),
(13, 'bendahara', 'Bendahara', '2024-11-19 06:29:48'),
(14, 'kepala-unit-penilaian-kompetensi-asn', 'Kepala Unit Penilaian Kompetensi ASN', '2024-11-20 06:51:19'),
(15, 'sub-koordinator-perencanaan-dan-evaluasi', 'Sub Koordinator Perencanaan Dan Evaluasi', '2024-11-20 06:57:54'),
(16, 'sub-koordinator-penilaian-kompetensi', 'Sub Koordinator Penilaian Kompetensi', '2024-11-20 06:59:09'),
(17, 'kasubag-tata-usaha', 'Kasubag Tata Usaha', '2024-11-20 06:59:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_layanan`
--

CREATE TABLE `tb_layanan` (
  `id_layanan` int NOT NULL,
  `id_user` int NOT NULL,
  `slug_layanan` varchar(255) NOT NULL,
  `judul_layanan` varchar(255) NOT NULL,
  `isi_layanan` text NOT NULL,
  `gambar_layanan` varchar(255) NOT NULL,
  `status_layanan` varchar(255) NOT NULL,
  `date_cretated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_layanan`
--

INSERT INTO `tb_layanan` (`id_layanan`, `id_user`, `slug_layanan`, `judul_layanan`, `isi_layanan`, `gambar_layanan`, `status_layanan`, `date_cretated`, `last_modified`) VALUES
(5, 8, 'tkbk-tes-kompetensi-berbasis-komputer', 'TKBK (Tes Kompetensi Berbasis Komputer)', '<p><img src=\"../../assets/img/Slide19.PNG\" alt=\"tkbk\" width=\"679\" height=\"961\" /></p>\r\n<p><img src=\"../../assets/img/Slide20.PNG\" alt=\"tkbk\" width=\"680\" height=\"963\" /></p>', 'ux1.png', 'Publish', '2024-11-28 00:05:08', '2024-11-28 00:00:00'),
(6, 8, 'quassi-assessment-program-qap', 'Quassi Assessment Program (QAP)', '<p><img src=\"../../assets/img/Slide16.PNG\" alt=\"qap\" width=\"676\" height=\"957\" /></p>', 'qap.png', 'Publish', '2024-11-28 00:02:13', '2024-11-28 00:00:00'),
(7, 8, 'position-competencies-assessment-program-pcap', 'Position Competencies Assessment Program (PCAP) ', '<p><img src=\"../../assets/img/Slide17.PNG\" alt=\"pcap\" width=\"678\" height=\"960\" /></p>\r\n<p><img src=\"../../assets/img/Slide18.PNG\" alt=\"pcap\" width=\"680\" height=\"963\" /></p>', '9375367.png', 'Publish', '2024-11-27 23:55:08', '2024-11-27 00:00:00'),
(9, 1, 'cat-potensi', 'CAT Potensi', '<p><img src=\"../../assets/img/Slide22.PNG\" alt=\"cat\" width=\"676\" height=\"958\" /></p>', 'cat.png', 'Publish', '2024-11-28 00:04:12', '2024-11-28 00:00:00'),
(10, 1, 'umpan-balik-feedback', 'Umpan Balik / Feedback', '<p><img src=\"../../assets/img/Slide23.PNG\" alt=\"umpan\" width=\"677\" height=\"959\" /></p>', 'bullhorn1.png', 'Publish', '2024-11-28 00:03:19', '2024-11-28 00:00:00'),
(11, 1, 'pemagangan-asesor', 'Pemagangan Asesor', '<p><img src=\"../../assets/img/Slide24.PNG\" alt=\"magang\" width=\"681\" height=\"964\" /></p>', 'magang.jpg', 'Publish', '2024-11-27 23:48:20', '2024-11-27 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_metode`
--

CREATE TABLE `tb_metode` (
  `id_metode` int NOT NULL,
  `id_user` int NOT NULL,
  `slug_metode` varchar(255) NOT NULL,
  `judul_metode` varchar(255) NOT NULL,
  `isi_metode` text NOT NULL,
  `gambar_metode` varchar(255) NOT NULL,
  `status_metode` varchar(255) NOT NULL,
  `date_cretated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_metode`
--

INSERT INTO `tb_metode` (`id_metode`, `id_user`, `slug_metode`, `judul_metode`, `isi_metode`, `gambar_metode`, `status_metode`, `date_cretated`, `last_modified`) VALUES
(9, 1, 'metode-penilaian', 'Metode Penilaian', '<p><img src=\"../../assets/img/metod.PNG\" alt=\"Metode\" width=\"678\" height=\"334\" /></p>\r\n<p><img src=\"../../assets/img/Slide21.PNG\" alt=\"Metode\" width=\"678\" height=\"961\" /></p>', 'UPK1.png', 'Publish', '2024-11-27 23:36:14', '2024-11-27 00:00:00'),
(10, 1, 'instrumen-simulasi-penilaian', 'Instrumen & Simulasi Penilaian', '<p><img src=\"../../assets/img/instru.PNG\" alt=\"Instrumen\" width=\"680\" height=\"623\" /></p>', 'UPK.png', 'Publish', '2024-11-27 23:34:40', '2024-11-27 00:00:00'),
(11, 1, 'dasar-hukum', 'Dasar Hukum', '<p><img src=\"../../assets/img/dasar.png\" alt=\"Dasar Hukum\" width=\"675\" height=\"956\" /></p>\r\n<p><img src=\"../../assets/img/Slide12.PNG\" alt=\"Acuan\" width=\"674\" height=\"955\" /></p>\r\n<p><img src=\"../../assets/img/Slide13.PNG\" alt=\"Acuan\" width=\"673\" height=\"953\" /></p>', 'UPK2.png', 'Publish', '2024-11-28 01:06:40', '2024-11-28 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_portfolio`
--

CREATE TABLE `tb_portfolio` (
  `id_portfolio` int NOT NULL,
  `id_user` int NOT NULL,
  `nama_layanan` varchar(255) NOT NULL,
  `id_client` int NOT NULL,
  `judul_portfolio` varchar(255) NOT NULL,
  `slug_portfolio` varchar(255) NOT NULL,
  `gambar_portfolio` varchar(255) NOT NULL,
  `isi_portfolio` text NOT NULL,
  `website_portfolio` varchar(255) NOT NULL,
  `status_portfolio` varchar(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `testimoni` text NOT NULL,
  `last_modified` date NOT NULL,
  `date_project` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_portfolio`
--

INSERT INTO `tb_portfolio` (`id_portfolio`, `id_user`, `nama_layanan`, `id_client`, `judul_portfolio`, `slug_portfolio`, `gambar_portfolio`, `isi_portfolio`, `website_portfolio`, `status_portfolio`, `date_created`, `testimoni`, `last_modified`, `date_project`) VALUES
(2, 8, 'Quassi Assessment Program (QAP)', 13, 'Kabupaten Pati', 'kabupaten-pati', 'pati.png', '<div>\r\n<div>----</div>\r\n</div>', '-', 'Publish', '2024-11-20 06:46:41', 'Super', '2024-11-20', '2021-03-21'),
(3, 8, 'TKBK (Tes Kompetensi Berbasis Komputer)', 14, 'Kabupaten Purbalingga', 'kabupaten-purbalingga', 'purba.png', '<p>----</p>', '-', 'Publish', '2024-11-20 06:45:49', 'mantab betul', '2024-11-20', '2021-03-30'),
(4, 8, 'CAT Potensi', 10, 'Kabupaten Cilacap', 'kabupaten-cilacap', 'cilacap.jpg', '<div>\r\n<div>---</div>\r\n</div>', '-', 'Publish', '2024-11-20 06:44:04', 'keren', '2024-11-20', '2021-04-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setting`
--

CREATE TABLE `tb_setting` (
  `id_setting` int NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `sejarah` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_setting`
--

INSERT INTO `tb_setting` (`id_setting`, `nama_perusahaan`, `alamat`, `no_telepon`, `email`, `profile`, `visi`, `misi`, `sejarah`, `image`) VALUES
(1, 'Unit Penilaian Kompetensi', 'Jl. Stadion Selatan No.1, Karangkidul, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50134', '0000000000', 'triajipamungkas@gmail.com', '<p style=\"text-align: center;\"><strong>UNIT PENILAIAN KOMPETENSI BKD PROVINSI JAWA TENGAH<br /></strong></p>\r\n<p style=\"text-align: justify;\"><span class=\"fontstyle0\">Penyelenggara Penilaian Kompetensi dengan pengakuan </span><strong><span class=\"fontstyle2\">kelayakan (akreditasi) kategori A </span><span class=\"fontstyle0\">dapat melakukan penilaian kompetensi </span><span class=\"fontstyle2\">paling tinggi jabatan pimpinan tinggi pratama atau jabatan fungsional yang setara.<br /></span></strong></p>\r\n<p style=\"text-align: justify;\"><span class=\"fontstyle0\">Sertifikasi Akreditasi ini menunjukkan bukti kelayakan penyelenggaraan penilaian kompetensi oleh UPENKOM sehingga </span><strong><span class=\"fontstyle2\">sangat kredibel menjadi mitra instansi pemerintah </span></strong><span class=\"fontstyle0\">dalam menyiapkan profesionalitas ASNnya melalui kegiatan penilaian potensi dan kompetensi ASN</span></p>\r\n<p style=\"text-align: justify;\"><span class=\"fontstyle0\">Selain ter-Akreditasi A, Upenkom telah mendapatakan <strong>Sertifikasi Sistem Manajemen Mutu ISO 9001:2015</strong> yang digunakan sebagai standar dalam menjaga kualitas dari layanan yang dimiliki. Maka secara umum layanan telah memiliki QA yang terjamin dengan standar jelas.</span></p>', '<p style=\"text-align: center;\"><strong>Visi <br /></strong></p>\r\n<div>Menjadi Unit Penilaian yang Profesional, Terukur, Akurat dan Dapat Dipercaya</div>', '<p style=\"text-align: center;\"><strong><span class=\"example1\">Misi<br /></span></strong></p>\r\n<ul style=\"list-style-type: undefined;\">\r\n<li style=\"text-align: justify;\"><span class=\"example1\">Meningkatkan Kompetensi SDM Unit Penilaian Kompetensi Aparatur Sipil Negara;<br /></span></li>\r\n<li style=\"text-align: justify;\"><span class=\"example1\">Melaksanakan metode penilaian terstandar;</span></li>\r\n<li style=\"text-align: justify;\"><span class=\"example1\">Menyelenggarakan Pelaksanaan Penilaian yang dapat dipercaya;</span></li>\r\n<li style=\"text-align: justify;\"><span class=\"example1\">Menghasilkan Penilaian yang akurat.</span></li>\r\n</ul>', '<p style=\"text-align: center;\"><strong><strong>Sejarah</strong></strong></p>\r\n<p style=\"text-align: justify;\"><strong>2003</strong> - <span class=\"fontstyle0\">Rekrutmen tim penilai kompetensi yang berasal dari Sarjana Psikologi khususnya untuk melakukan tes psikologi.</span></p>\r\n<p style=\"text-align: justify;\"><span class=\"fontstyle0\"><span class=\"fontstyle0\"><strong>2004</strong> </span>- <span class=\"fontstyle0\">Bekerja sama dengan Dinas Psikologi Angkatan Darat Bandung untuk melakukan pelatihan Assessor Kompetensi dan menjadi awal terselenggaranya Assessment Center</span> <br /></span></p>\r\n<p style=\"text-align: justify;\"><span class=\"fontstyle0\"><strong><span class=\"fontstyle0\">2014</span> </strong>- <span class=\"fontstyle0\">Gugus Tugas Assessment menyelenggarakan Uji Kompetensi setelah diangkat dalam Jabatan Fungsional Assessor SDM Aparatur</span> <br /></span></p>\r\n<p style=\"text-align: justify;\"><span class=\"fontstyle0\"><strong><span class=\"fontstyle0\">Desember 2016</span></strong> - <span class=\"fontstyle0\">Pengesahan Unit Penilaian Kompetensi ASN oleh Gubernur Jawa Tengah</span> <br /></span></p>\r\n<p style=\"text-align: justify;\"><span class=\"fontstyle0\"><strong><span class=\"fontstyle0\">2019</span> </strong>- <span class=\"fontstyle0\">Meraih Akreditasi \"A\" sebagai lembaga penyelenggara penilaian Kompetensi BKN RI</span> <br /></span></p>\r\n<p style=\"text-align: justify;\"><span class=\"fontstyle0\"><strong><span class=\"fontstyle0\">2021- sekarang</span></strong> - <span class=\"fontstyle0\">Melakukan pengembangan instrumen penilaian kompetensi baik metode Asesesment Center dan metode lainnya untuk memenuhi kebutuhan penilaian kompetensi</span> <br /></span></p>', 'UPK.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_staff`
--

CREATE TABLE `tb_staff` (
  `id_staff` int NOT NULL,
  `id_kategori` int NOT NULL,
  `nama_staff` varchar(255) NOT NULL,
  `email_staff` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `gambar_staff` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `publish` varchar(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_staff`
--

INSERT INTO `tb_staff` (`id_staff`, `id_kategori`, `nama_staff`, `email_staff`, `alamat`, `no_telepon`, `gambar_staff`, `gender`, `publish`, `date_created`, `last_modified`) VALUES
(480, 9, 'HETI DIHASTUTI, S.STP', 'q@a.com', 'alamat', '0000', 'pp14.png', 'Perempuan', 'Publish', '2024-11-20 07:38:24', '2024-11-20'),
(481, 9, 'ZUNITA NUR FITRIANA, S.Sos', 'p@example.com', 'alamat', '0000', 'pp13.png', 'Perempuan', 'Publish', '2024-11-20 07:35:31', '2024-11-20'),
(482, 9, 'THERESIA NADIA NUGRAHENI,S.Psi', 'o@example.net', 'alamat', '0000', 'pp12.png', 'Perempuan', 'Publish', '2024-11-20 07:35:00', '2024-11-20'),
(483, 9, 'NURUL MUTHI\'ATUS ZAHRO, S.Psi', 'n@example.net', 'alamat', '0000', 'pp11.png', 'Perempuan', 'Publish', '2024-11-28 00:31:33', '2024-11-28'),
(484, 9, 'ISMI NUR ARIFAH, S.Psi', 'm@example.com', 'alamat', '0000', 'pp10.png', '', 'Publish', '2024-11-20 07:33:55', '2024-11-20'),
(485, 9, 'ASFIRA TADWIMIL HIKMAH, S.Psi', 'l@example.net', 'alamat', '0000', 'pp9.png', 'Perempuan', 'Publish', '2024-11-20 07:33:28', '2024-11-20'),
(486, 8, 'ADIB DZIKRON ISTIGHFARY, SE, MM', 'l@example.net', 'alamat', '0000', 'pp8.png', 'Laki-Laki', 'Publish', '2024-11-20 07:33:01', '2024-11-20'),
(487, 8, 'ENJANG GUPITO, SE, MM', 'l@example.org', 'alamat', '0000', 'pp7.png', 'Laki-Laki', 'Publish', '2024-11-20 07:32:31', '2024-11-20'),
(488, 8, 'RENNY VIDYA WAHYULY, S.Psi, M.Psi', 'k@example.com', 'alamat', '0000', 'pp6.png', 'Perempuan', 'Publish', '2024-11-20 07:32:04', '2024-11-20'),
(489, 8, 'GALUH NOVIANY, S.Psi, Psi, M.Si', 'j@example.com', 'alamat', '0000', 'pp5.png', 'Perempuan', 'Publish', '2024-11-20 07:30:16', '2024-11-20'),
(490, 8, 'RATIH MAYASARI, SE, M.Si', 'i@example.com', 'alamat', '0000', 'pp4.png', 'Perempuan', 'Publish', '2024-11-28 00:30:45', '2024-11-28'),
(491, 8, 'SRI UMRONAH, S.Psi, Psi', 'h@gmail.com', 'alamat', '0000', 'pp3.png', 'Perempuan', 'Publish', '2024-11-20 07:29:22', '2024-11-20'),
(492, 8, 'RA. OETIE HAPSANI R DEWI, S.Psi', 'g@gmai.com', 'ini alamat', '0000', 'pp2.png', 'Perempuan', 'Publish', '2024-11-20 07:28:51', '2024-11-20'),
(493, 8, 'GALUH WIDYASARI, S.Psi, Psi', 'f@gmail.com', 'ini alamat', '0000', 'pp1.png', 'Perempuan', 'Publish', '2024-11-20 07:27:39', '2024-11-20'),
(494, 7, 'HERLINA MURDIASTUTI, S.Psi, Psi., M.Psi', 'e@gmail.com', 'ini alamat', '0000', 'hl.png', 'Perempuan', 'Publish', '2024-11-20 07:06:05', '2024-11-20'),
(495, 16, 'KUNTA WIDJAJANTI, S.Psi', 'd@gmail.com', 'ini alamat', '0000', 'pp.png', 'Perempuan', 'Publish', '2024-11-20 07:05:08', '2024-11-20'),
(496, 15, 'AHMAD ARIF ZAINUL FATAH, S.IP,M.Ec,Dev,MA', 'b@gmail.com', 'ini alamt', '0000', 'af.png', 'Laki-Laki', 'Publish', '2024-11-20 07:00:28', '2024-11-20'),
(497, 6, 'Drs. WISNU ZAROH, M.Si', 'a@gmail.com', 'ini alamat', '0000', 'wz.png', 'Laki-Laki', 'Publish', '2024-11-20 06:54:41', '2024-11-20'),
(499, 14, 'Drs. SUKARDI, M.Si', 'a@a.com', 'Jl. Raya Indonesia', '0000', 'sd.png', 'Laki-Laki', 'Publish', '2024-11-20 06:52:25', '2024-11-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tentang`
--

CREATE TABLE `tb_tentang` (
  `id_tentang` int NOT NULL,
  `id_user` int NOT NULL,
  `slug_tentang` varchar(255) NOT NULL,
  `judul_tentang` varchar(255) NOT NULL,
  `isi_tentang` text NOT NULL,
  `gambar_tentang` varchar(255) NOT NULL,
  `status_tentang` varchar(255) NOT NULL,
  `date_cretated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_tentang`
--

INSERT INTO `tb_tentang` (`id_tentang`, `id_user`, `slug_tentang`, `judul_tentang`, `isi_tentang`, `gambar_tentang`, `status_tentang`, `date_cretated`, `last_modified`) VALUES
(10, 1, 'upenkom', 'UPENKOM', '<p><img src=\"../../assets/img/Slide3.PNG\" alt=\"about us\" width=\"678\" height=\"961\" /></p>\r\n<p><img src=\"../../assets/img/Slide4.PNG\" alt=\"about us\" width=\"677\" height=\"959\" /></p>\r\n<p><img src=\"../../assets/img/Slide6.PNG\" alt=\"about us\" width=\"678\" height=\"960\" /></p>\r\n<p><img src=\"../../assets/img/Slide7.PNG\" alt=\"about us\" width=\"678\" height=\"960\" /></p>\r\n<p><img src=\"../../assets/img/Slide8.PNG\" alt=\"about us\" width=\"680\" height=\"963\" /></p>\r\n<p><img src=\"../../assets/img/Slide9.PNG\" alt=\"about us\" width=\"683\" height=\"967\" /></p>\r\n<p><img src=\"../../assets/img/Slide10.PNG\" alt=\"about us\" width=\"683\" height=\"967\" /></p>\r\n<p><img src=\"../../assets/img/Slide11.PNG\" alt=\"about us\" width=\"685\" height=\"970\" /></p>\r\n<p>&nbsp;</p>', 'profile.png', 'Publish', '2024-11-27 23:42:12', '2024-11-27 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int NOT NULL,
  `id_kategori` int NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `is_active` int NOT NULL,
  `date_created` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `id_kategori`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 0, 'UPENKOM', 'admin@admin.com', 'UPK.png', '$2y$10$sXNXZXsMsuYmbHK4xJEDBuNL.WIB7G973R9epG6RDIims5eRT17gq', 1, 1, 1619931701),
(11, 0, 'ALI MOCHTAR', 'alimochtar2023@gmail.com', 'default.png', '$2y$10$S4/6lBjKWIOxD6Ig2oiMJOjw4wwGSweYTNO2vrdLMpkgnefY2dzha', 2, 1, 1695198103);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user_token`
--

CREATE TABLE `tb_user_token` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_user_token`
--

INSERT INTO `tb_user_token` (`id`, `email`, `token`, `date_created`) VALUES
(6, 'fajaras465@gmail.coms', 'oybxZE/AEMiwi63Z21tqKTiJ90y6x44fN703gz7vagg=', 1619930188),
(7, 'fajaras465@gmail.com', 'HO7/WQkcsS7G0TvCNvGnkF33JXF1VjHHQVuqAVFjv6Q=', 1619930486),
(8, 'alimochtar2023@gmail.com', 'LrCbAh095l51PaXy0127epMEG7PzCD9CG0nDz36BlNY=', 1695197875),
(9, 'alimochtar2023@gmail.com', 'vgfJWL1T74Bvg+o5t0NsGP962TXNsxleYxDIpgcjfHc=', 1695198021),
(10, 'alimochtar2023@gmail.com', 'ZaNv/dkw6r6+syHLGEOl9maL5pnJU/Unf3l4huSWDLs=', 1695198103),
(11, 'alimochtar2023@gmail.com', 'QX1y3L856jGejeFmSPL4VDVmQ545ekVu72KLjVB4Oaw=', 1695198198);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `kategori_download`
--
ALTER TABLE `kategori_download`
  ADD PRIMARY KEY (`id_kategori_download`);

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `tb_client`
--
ALTER TABLE `tb_client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indeks untuk tabel `tb_file`
--
ALTER TABLE `tb_file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indeks untuk tabel `tb_kategori_berita`
--
ALTER TABLE `tb_kategori_berita`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_kategori_client`
--
ALTER TABLE `tb_kategori_client`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_kategori_portfolio`
--
ALTER TABLE `tb_kategori_portfolio`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_kategori_staff`
--
ALTER TABLE `tb_kategori_staff`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_layanan`
--
ALTER TABLE `tb_layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `tb_metode`
--
ALTER TABLE `tb_metode`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indeks untuk tabel `tb_portfolio`
--
ALTER TABLE `tb_portfolio`
  ADD PRIMARY KEY (`id_portfolio`);

--
-- Indeks untuk tabel `tb_setting`
--
ALTER TABLE `tb_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indeks untuk tabel `tb_tentang`
--
ALTER TABLE `tb_tentang`
  ADD PRIMARY KEY (`id_tentang`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tb_user_token`
--
ALTER TABLE `tb_user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategori_download`
--
ALTER TABLE `kategori_download`
  MODIFY `id_kategori_download` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tb_client`
--
ALTER TABLE `tb_client`
  MODIFY `id_client` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_file`
--
ALTER TABLE `tb_file`
  MODIFY `id_file` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori_berita`
--
ALTER TABLE `tb_kategori_berita`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori_client`
--
ALTER TABLE `tb_kategori_client`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori_portfolio`
--
ALTER TABLE `tb_kategori_portfolio`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori_staff`
--
ALTER TABLE `tb_kategori_staff`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_layanan`
--
ALTER TABLE `tb_layanan`
  MODIFY `id_layanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_metode`
--
ALTER TABLE `tb_metode`
  MODIFY `id_metode` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_portfolio`
--
ALTER TABLE `tb_portfolio`
  MODIFY `id_portfolio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_setting`
--
ALTER TABLE `tb_setting`
  MODIFY `id_setting` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `id_staff` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `tb_tentang`
--
ALTER TABLE `tb_tentang`
  MODIFY `id_tentang` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_user_token`
--
ALTER TABLE `tb_user_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
