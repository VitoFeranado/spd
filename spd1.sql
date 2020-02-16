-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Feb 2020 pada 07.00
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spd1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang`
--

CREATE TABLE `bidang` (
  `id_bidang` int(3) NOT NULL,
  `id_urusan` int(3) NOT NULL DEFAULT 0,
  `id_skpd` int(3) NOT NULL,
  `kode_bidang` char(10) NOT NULL DEFAULT '0',
  `nama_bidang` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bidang`
--

INSERT INTO `bidang` (`id_bidang`, `id_urusan`, `id_skpd`, `kode_bidang`, `nama_bidang`) VALUES
(3, 2, 1, '2', 'KEPEMUDAAN'),
(4, 2, 1, '3', 'OLAHRAGA'),
(5, 2, 1, '4', 'PARIWISATA'),
(6, 3, 1, '5', 'EKONOMI KREATIF'),
(7, 2, 1, '1', 'SEKRETARIAT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(5) NOT NULL,
  `id_urusan` int(3) NOT NULL DEFAULT 0,
  `id_skpd` int(3) NOT NULL,
  `id_bidang` int(3) NOT NULL DEFAULT 0,
  `id_program` int(3) NOT NULL DEFAULT 0,
  `kode_kegiatan` char(15) NOT NULL DEFAULT '0',
  `nama_kegiatan` varchar(254) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `id_urusan`, `id_skpd`, `id_bidang`, `id_program`, `kode_kegiatan`, `nama_kegiatan`) VALUES
(2, 2, 1, 7, 2, '1', 'Penyediaan Jasa Surat Menyurat'),
(3, 2, 1, 7, 2, '2', 'Penyediaan Jasa Komunikasi, Sumber Daya Air dan Listrik'),
(4, 2, 1, 7, 2, '3', 'Penyediaan Jasa Peralatan dan Perlengkapan Kantor'),
(5, 2, 1, 7, 2, '6', 'Penyediaan Jasa Pemeliharaan dan Perizinan Kendaraan Dinas/Operasional'),
(6, 2, 1, 7, 2, '7', 'Penyediaan Jasa Administrasi Keuangan'),
(7, 2, 1, 7, 2, '8', 'Penyediaan Jasa Kebersihan Kantor'),
(8, 2, 1, 7, 2, '10', 'Penyediaan Alat Tulis Kantor'),
(9, 2, 1, 7, 2, '11', 'Penyediaan Barang Cetakan dan Penggandaan'),
(10, 2, 1, 7, 3, '7', 'Pengadaan perlengkapan Gedung Kantor'),
(11, 2, 1, 7, 3, '9', 'Pengadaan Peralatan Gedung Kantor'),
(12, 2, 1, 7, 4, '1', 'Pengadaan Mesin /Kartu Absensi'),
(13, 2, 1, 7, 3, '10', 'Pengadaan Meubelair'),
(14, 2, 1, 7, 3, '11', 'Pengadaan Peralatan Studio'),
(15, 3, 1, 5, 6, '11', 'Pengembangan Apresiasi dan kreatifitas Seni'),
(16, 2, 1, 7, 2, '12', 'Penyediaan Komponen Instalasi Listrik/ Penerangan Bangunan Kantor'),
(17, 2, 1, 7, 3, '12', 'Pengadaan Sarana dan Prasarana Alat Komunikasi'),
(18, 3, 1, 5, 6, '12', 'Nusantara Expo'),
(19, 3, 1, 5, 7, '12', 'Peningkatan Sarana dan Prasarana Pariwisata'),
(20, 2, 1, 7, 3, '13', 'Pembangunan Pagar atau Batas Lingkungan'),
(21, 3, 1, 5, 6, '13', 'Dukungan Event Asosiasi Pemerintah Kota Seluruh Indonesia (APEKSI)'),
(22, 3, 1, 5, 7, '13', 'Penyusunan Perwali Penyelenggaraan Kota Wisata'),
(23, 3, 1, 5, 7, '14', 'Penyusunan Revisi Master Plan Wisata Dam Raman'),
(24, 2, 1, 4, 12, '14', 'Pembinaan Olahraga yang Berkembang di Masyarakat'),
(25, 2, 1, 7, 2, '15', 'Penyediaan Bahan Bacaan dan Peraturan Perundang-undangan'),
(26, 2, 1, 7, 3, '15', 'Pembangunan Sumur Bor Kantor'),
(27, 2, 1, 7, 2, '17', 'Penyediaan Makanan dan Minuman'),
(28, 2, 1, 7, 2, '18', 'Rapat-Rapat Koordinasi dan Konsultasi ke Luar Daerah'),
(29, 2, 1, 3, 9, '18', 'Dukungan Aksi Organisasi Kepemudaan'),
(30, 2, 1, 4, 12, '18', 'Penyelenggaraan Kompetisi Olahraga (PORDEKEL)'),
(31, 2, 1, 7, 2, '19', 'Penyediaan Jasa Pendukung Administrasi dan Teknis Kegiatan'),
(32, 2, 1, 7, 2, '20', 'Penyediaan Jasa Operasional Perkantoran'),
(33, 2, 1, 3, 9, '20', 'Pembinaan Paskibraka'),
(34, 2, 1, 4, 12, '20', 'Rehap Sedang Berat GOR Jurai Siwo'),
(35, 2, 1, 4, 12, '22', 'Pengiriman Atlit POPWIL Ke Luar Daerah'),
(36, 2, 1, 7, 2, '23', 'Penyediaan Jasa Bahan Bakar Minyak Sarana Mobilitas'),
(37, 2, 1, 7, 2, '24', 'Pemeliharaan Rutin Berkala/ Kendaraan Dinas/ Operasional'),
(38, 2, 1, 4, 12, '24', 'Dukungan Aksi Organisasi Bidang Olahraga'),
(39, 2, 1, 4, 12, '25', 'Koordinasi dan Fasilitasi Kegiatan Olahraga'),
(40, 2, 1, 4, 12, '26', 'Kejuaraan Olahraga Walikota Cup'),
(41, 2, 1, 7, 2, '27', 'Pengumpulan dan Updating Sistem Informasi Manajemen Kepegawaian dan Perencanaan'),
(42, 2, 1, 4, 12, '27', 'Pengiriman Atlit POPNAS Ke Luar Daerah'),
(43, 2, 1, 4, 12, '29', 'Dukungan Kegiatan BAPOR KORPRI'),
(45, 2, 1, 4, 12, '30', 'Pembinaan dan Pengembangan Olahraga Pendidikan, Rekreasi serta Olahraga Layanan Khusus'),
(46, 2, 1, 4, 12, '31', 'Kompetisi Badan Liga Sepakbola Pelajar Indonesia (BLISPI) dan Pengiriman Atlit BLISPI Ke Tingkat Propinsi dan Nasional'),
(47, 2, 1, 7, 6, '1', 'Penyusunan Laporan Capaian Kinerja dan Ikhtisar Realisasi Kinerja SKPD'),
(48, 2, 1, 3, 9, '1', 'Workshop Pembinaan Organisasi Kepemudaan'),
(54, 2, 1, 4, 11, '1', 'Peningkatan mutu Organisasi dan tenaga keolahragaan'),
(55, 2, 1, 3, 10, '1', 'Sosialisasi Tentang Bahaya narkoba dan Pemilihan Duta Anti Narkoba Kota Metro'),
(56, 2, 1, 3, 11, '2', 'Pengembangan sistem sertifikasi dan standarisasi profesi'),
(57, 5, 1, 6, 14, '2', 'Penyusunan Kebijakan Ekonomi Kreatif dan Pelaku Usaha Penunjang Ekonomi Kreatif'),
(58, 3, 1, 5, 7, '3', 'Pengembangan Jenis dan Paket Wisata Unggulan (DAK)'),
(59, 5, 1, 6, 14, '3', 'Pembinaan Komunitas Kreatif Kota Metro'),
(60, 2, 1, 7, 5, '4', 'Penyusunan Laporan Keuangan Akhir Tahun'),
(61, 5, 1, 6, 14, '4', 'Promosi Potensi Ekonomi Kreatif'),
(62, 2, 1, 7, 5, '5', 'Penyusunan RKA SKPD'),
(63, 2, 1, 4, 12, '5', 'Peningkatan Kesegaran Jasmani dan Rekreasi'),
(64, 5, 1, 6, 14, '5', 'Pendataan, Penyusunan Profil, Faslitasi Lembaga dan Pelaku Ekonomi Kreatif'),
(65, 2, 1, 7, 5, '6', 'Penyusunan Renstra, LAKIP dan RENJA SKPD'),
(66, 3, 1, 3, 8, '6', 'Pemantauan dan Evaluasi Pelaksanaan Program Peningkatan Kemitraan'),
(67, 2, 1, 4, 12, '6', 'Penyelenggaraan Kompetisi Olahraga'),
(68, 3, 1, 4, 8, '7', 'Pengembangan Sumber Daya Manusia & Profesionalisme Bidang Pariwisata '),
(69, 3, 1, 4, 8, '8', 'Peningkatan Peran Serta Masyarakat Dalam Pengembangan Kemitraan'),
(70, 3, 1, 4, 6, '9', 'Fasilitasi Penyelenggaraan Festival Krakatau'),
(71, 3, 1, 5, 6, '10', 'Dukungan Event Pengembangan Pariwisata'),
(72, 2, 1, 3, 9, '10', 'Mempererat Rasa Kebangsaan Persatuan dan Kesatuan Pada Masyarakat'),
(73, 2, 1, 7, 4, 'x', 'Penyusunan Profil Dinas'),
(74, 3, 1, 5, 7, 'xx', 'Jasa Konsultan Penyusunan Master Plan Wisata Sumber Sari'),
(75, 3, 1, 5, 7, 'xx', 'Pemeliharaan Rutin / Berkala Lokasi Wisata'),
(76, 2, 1, 3, 9, 'xx', 'Monitoring, Evaluasi dan Pelaporan Organisasi Kepemudaan'),
(77, 2, 1, 4, 12, 'xx', 'Oprasional UPT Sarana Olahraga'),
(78, 2, 1, 4, 13, '2', 'Peningkatan Sarana dan Prasarana Olahraga'),
(79, 5, 1, 6, 14, 'xx', 'Pembinaan Program/kegiatan Pengembangan Pelaku Usaha Ekonomi Kreatif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `program`
--

CREATE TABLE `program` (
  `id_program` int(3) NOT NULL,
  `id_urusan` int(3) NOT NULL DEFAULT 0,
  `id_skpd` int(3) NOT NULL,
  `id_bidang` int(3) NOT NULL DEFAULT 0,
  `kode_program` char(10) NOT NULL DEFAULT '0',
  `nama_program` varchar(100) NOT NULL DEFAULT '0',
  `status` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `program`
--

INSERT INTO `program` (`id_program`, `id_urusan`, `id_skpd`, `id_bidang`, `kode_program`, `nama_program`, `status`) VALUES
(2, 2, 1, 0, '01', 'Program Pelayanan Administrasi Perkantoran', 'Y'),
(3, 2, 1, 7, '02', 'Program Peningkatan Sarana dan Prasarana Aparatur', 'Y'),
(4, 2, 1, 7, '03', 'Program Peningkatan Disiplin Aparatur', 'Y'),
(5, 2, 1, 0, '06', 'Program Peningkatan Pengembangan ', 'Y'),
(6, 3, 1, 5, '15', 'Program Pengembangan Pemasaran Pariwisata', 'Y'),
(7, 3, 1, 5, '16', 'Program Pengembangan Destinasi Wisata', 'Y'),
(8, 3, 1, 5, '17', 'Program Pengembangan Kemitraan', 'Y'),
(9, 2, 1, 3, '16', 'Program Peningkatan Peran Serta Kepemudaan', 'Y'),
(10, 2, 1, 3, '18', 'Program Upaya Pencegahan Penyalahgunaan Narkoba', 'Y'),
(11, 2, 1, 4, '19', 'Program Pengembangan Kebijakan Manajemen Olahraga', 'Y'),
(12, 2, 1, 4, '20', 'Program Pembinaan dan Pemasyarakatan Olahraga', 'Y'),
(13, 2, 1, 4, '21', 'Program Peningkatan Sarana dan Prasarana Olahraga', 'Y'),
(16, 2, 1, 4, '2', 'Basing', 'Y'),
(17, 4, 1, 5, '31', 'programmm', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `renja`
--

CREATE TABLE `renja` (
  `id_usulan` int(5) NOT NULL,
  `tahun_anggaran` char(4) NOT NULL,
  `id_urusan` int(3) NOT NULL,
  `id_skpd` int(3) NOT NULL,
  `id_bidang` int(3) NOT NULL,
  `kd_program` int(3) NOT NULL,
  `id_kegiatan` int(3) NOT NULL,
  `prioritas_daerah` varchar(100) NOT NULL,
  `sasaran_daerah` varchar(100) NOT NULL,
  `sifat_kegiatan` char(1) NOT NULL DEFAULT 'B',
  `pagu_indikatif` double NOT NULL DEFAULT 0,
  `sumber_dana` char(10) NOT NULL,
  `volume` varchar(50) NOT NULL,
  `satuan` char(10) NOT NULL,
  `indikator_kinerja` varchar(50) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `target_kinerja` varchar(100) NOT NULL,
  `target_t1` varchar(100) NOT NULL,
  `pagu_t1` double NOT NULL DEFAULT 0,
  `verusulan` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `renja`
--

INSERT INTO `renja` (`id_usulan`, `tahun_anggaran`, `id_urusan`, `id_skpd`, `id_bidang`, `kd_program`, `id_kegiatan`, `prioritas_daerah`, `sasaran_daerah`, `sifat_kegiatan`, `pagu_indikatif`, `sumber_dana`, `volume`, `satuan`, `indikator_kinerja`, `lokasi`, `target_kinerja`, `target_t1`, `pagu_t1`, `verusulan`) VALUES
(5, '2019', 2, 1, 7, 1, 2, '', '', 'L', 4950000, 'APBD-KOTA', '', '', 'Belanja Perangko, Materai dan Benda Pos Lainnya', 'Kota Metro', '950 Materai', '-', 0, 'Y'),
(6, '2019', 2, 1, 7, 1, 3, '', '', 'L', 150000000, 'APBD-KOTA', '', '', 'Jumlah rekening listrik dan sewa jaringan internet', 'Kota Metro', '7 Rekening dan 12 Bulan', '', 0, 'Y'),
(7, '2019', 2, 1, 7, 1, 4, '', '', 'L', 10000000, 'APBD-KOTA', '', '', 'Belanja service/ pemeliharaan peralatan dan perlen', 'Kota Metro', '12 Bulan', '-', 0, 'Y'),
(8, '1', 2, 1, 7, 1, 5, '', '', 'L', 5100000, 'APBD-KOTA', '', '', 'Registrasi pajak kendaraan roda 4 (2 unit) dan ken', 'Kota Metro', '12 bulan', '-', 0, 'Y'),
(9, '1', 2, 1, 7, 1, 6, '', '', 'L', 72772500, 'APBD-KOTA', '', '', 'Honor aparatur pengelolaan keuangan dinas', 'Kota Metro', '12 bulan', '-', 0, 'Y'),
(10, '1', 2, 1, 7, 1, 7, '', '', 'L', 21170100, 'APBD-KOTA', '', '', 'Belanja peralatan kebersihan dan jasa retribusi sa', 'Kota Metro', '23 Jenis dan 12 Bulan', '-', 0, 'Y'),
(11, '1', 2, 1, 7, 1, 8, '', '', 'L', 27000000, 'APBD-KOTA', '', '', 'Jumlah jenis alat tulis kantor', 'Kota Metro', '67 jenis', '-', 0, 'Y'),
(12, '1', 2, 1, 7, 1, 9, '', '', 'L', 9057400, 'APBD-KOTA', '', '', 'Jumlah cetakan blangko surat dan lain-lain', 'Kota Metro', '15 jenis belanja cetak dan 4.559 lbr belanja penggandaan', '-', 0, 'Y'),
(13, '1', 2, 1, 7, 1, 25, '', '', 'L', 20000000, 'APBD-KOTA', '', '', 'Jumlah langganan surat kabar/ majalah', 'Kota Metro', '12 bulan', '-', 0, 'Y'),
(14, '1', 2, 1, 7, 1, 27, '', '', 'L', 25000000, 'APBD-KOTA', '', '', 'Jumlah konsumsi makan dan minum rapat pegawai dan ', 'Kota Metro', '12 bulan', '-', 0, 'Y'),
(15, '1', 2, 1, 7, 1, 28, '', '', 'L', 120000000, 'APBD-KOTA', '', '', 'Terlaksananya konsultasi dan koordinasi ke luar da', 'Kota Metro', '12 bulan', '-', 0, 'Y'),
(16, '1', 2, 1, 7, 1, 31, '', '', 'L', 400000000, 'APBD-KOTA', '', '', 'Jumlah jasa pendukung administrasi dan teknis kegi', 'Kota Metro', '12 bulan', '-', 0, 'Y'),
(17, '1', 2, 1, 7, 1, 32, '', '', 'L', 20000000, 'APBD-KOTA', '', '', 'Jasa Publikasi Program dan Kegiatan', 'Kota Metro', '12 bulan', '-', 0, 'Y'),
(18, '1', 2, 1, 7, 1, 36, '', '', 'L', 72000000, 'APBD-KOTA', '', '', 'Jumlah kendaraan roda 4 dan kendaraan roda 2 ', 'Kota Metro', '12 bulan', '-', 0, 'Y'),
(26, '1', 2, 1, 7, 6, 47, '', '', 'L', 7000000, 'APBD-KOTA', '', '', 'Jumlah Laporan Capaian Kinerja dan Ikhtisar', 'Kota Metro', '5 Laporan', '-', 0, 'Y'),
(27, '', 0, 0, 0, 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, 'N'),
(29, '1', 2, 1, 3, 18, 55, '', '', 'L', 80000000, 'APBD-KOTA', '', '', 'Terpilihnya Duta Anti Narkoba Kota Metro', 'Kota Metro', '75 Orang Peserta & 4 Orang Yang menjadi Duta Anti Narkoba', '-', 0, 'Y'),
(30, '1', 2, 1, 4, 19, 56, '', '', 'B', 150000000, 'APBD-KOTA', '', '', 'Jumlah wasit dan pelatih yang berlisensi tingkat d', 'Kota Metro', '30 pelatih dan 20 wasit', '-', 0, 'Y'),
(32, '1', 3, 1, 5, 16, 58, '', '', 'L', 1831090000, 'APBD-KOTA', '', '', 'Fasilitas Wisata Dam raman dan Wisata Sumber Sari', 'Kota Metro', '1 paket', '-', 0, 'Y'),
(33, '1', 3, 1, 6, 20, 59, '', '', 'L', 100000000, 'APBD-KOTA', '', '', 'Jumlah event komunitas kreatif Kota Metro', 'Kota Metro', '8 Komunitas', '-', 0, 'Y'),
(34, '1', 2, 1, 7, 6, 60, '', '', 'L', 12000000, 'APBD-KOTA', '', '', 'Jumlah Laporan Keuangan SKPD', 'Kota Metro', '6 Laporan keuangan', '-', 0, 'Y'),
(35, '1', 3, 1, 6, 20, 61, '', '', 'L', 180000000, 'APBD-KOTA', '', '', 'Jumlah Event Pameran MTQ, Metro Fair dan Lampung F', 'Kota Metro', '3 Kegiatan', '-', 0, 'Y'),
(36, '1', 2, 1, 7, 1, 62, '', '', 'L', 10000000, 'APBD-KOTA', '', '', 'Jumlah penyusunan RKA dan DPA Tahun Anggaran', 'Kota Metro', '2 Dokumen', '-', 0, 'Y'),
(37, '1', 2, 1, 4, 20, 63, '', '', 'L', 500000000, 'APBD-KOTA', '', '', 'Terselenggaranya Car Free Day Kota Metro', 'Kota Metro', '22 Kali', '-', 0, 'Y'),
(39, '1', 2, 1, 7, 6, 65, '', '', 'L', 25000000, 'APBD-KOTA', '', '', 'Jumlah Laporan Renstra, LAKIP, RENJA', 'Kota Metro', '3 Dokumen', '-', 0, 'Y'),
(40, '1', 3, 1, 5, 17, 66, '', '', 'L', 25000000, 'APBD-KOTA', '', '', 'Terpantaunya Usaha Kepariwisataan di Kota Metro', 'Kota Metro', '5 Kecamatan', '-', 0, 'Y'),
(41, '1', 2, 1, 4, 1, 67, '', '', 'L', 750000000, 'APBD-KOTA', '', '', 'Terselenggaranya Kompetisi Olahraga (Liga Sepakbol', 'Kota Metro', '2 Kegiatan', '-', 0, 'Y'),
(42, '1', 2, 1, 7, 2, 10, '', '', 'L', 200000000, 'APBD-KOTA', '', '', 'Jumlah perlengkapan gedung kantor', 'Kota Metro', '1 Paket', '-', 0, 'Y'),
(43, '1', 3, 1, 5, 17, 68, '', '', 'L', 150000000, 'APBD-KOTA', '', '', 'Terpilihnya Muli Meghanai Kota Metro', 'Kota Metro', '25 Orang', '-', 0, 'Y'),
(44, '1', 2, 1, 5, 17, 69, '', '', 'L', 120000000, 'APBD-KOTA', '', '', 'Jumlah Kelompok Sadar Wisata yang dibina', 'Kota Metro', '23 Kelompok', '-', 0, 'Y'),
(45, '1', 2, 1, 7, 2, 11, '', '', 'L', 200000000, 'APBD-KOTA', '', '', 'Jumlah peralatan gedung kantor', 'Kota Metro', '1 Paket', '-', 0, 'Y'),
(46, '1', 3, 1, 5, 1, 70, '', '', 'L', 50000000, 'APBD-KOTA', '', '', 'Jumlah Rangkaian kegiatan Festival Krakatau', 'Bandar Lampung', '1 Kegiatan', '-', 0, 'Y'),
(47, '1', 2, 1, 7, 2, 13, '', '', 'L', 210000000, 'APBD-KOTA', '', '', 'Jumlah sarana meubeller kantor', 'Kota Metro', '1 Paket', '-', 0, 'Y'),
(48, '1', 3, 1, 5, 15, 71, '', '', 'L', 500000000, 'APBD-KOTA', '', '', 'Fasilitasi HUT Kota Metro ', 'Kota Metro', '2 Kegiatan', '-', 0, 'Y'),
(49, '1', 2, 1, 3, 16, 72, '', '', 'L', 73000000, 'APBD-KOTA', '', '', 'Terlaksananya Upacara Hari Sumpah Pemuda dan Hari ', 'Kota Metro', '2 Kegiatan', '-', 0, 'Y'),
(50, '1', 3, 1, 5, 16, 19, '', '', 'L', 580000000, 'APBD-KOTA', '', '', 'Terciptanya Sarana dan Prasarana Pariwisata di Kot', 'Kota Metro', '3 Paket', '-', 0, 'Y'),
(51, '1', 2, 1, 7, 2, 20, '', '', 'L', 250000000, 'APBD-KOTA', '', '', 'Jumlah pagar atau batas lingkungan', 'Kota Metro', '1 Paket', '-', 0, 'Y'),
(52, '1', 3, 1, 5, 15, 21, '', '', 'L', 200000000, 'APBD-KOTA', '', '', 'Promosi Wisata Kota Metro', 'Luar Provinsi', '1 Kegiatan', '-', 0, 'Y'),
(53, '1', 2, 1, 7, 2, 26, '', '', 'L', 150000000, 'APBD-KOTA', '', '', 'Jumlah sumur bor', 'Kota Metro', '1 Paket', '-', 0, 'Y'),
(54, '1', 2, 1, 3, 16, 29, '', '', 'L', 600000000, 'APBD-KOTA', '', '', 'Jumlah Organisasi Kepemudaan yang dibina (Hibah)', 'Kota Metro', '12 Lembaga', '-', 0, 'Y'),
(55, '1', 2, 1, 4, 20, 30, '', '', 'L', 200000000, 'APBD-KOTA', '', '', 'Terselenggaranya Kompetisi Sepak Bola Antar Kelura', 'Kota Metro', '22 Kelurahan', '-', 0, 'Y'),
(56, '1', 2, 1, 3, 16, 33, '', '', 'L', 900000000, 'APBD-KOTA', '', '', 'Jumlah calon paskibraka tingkat SMA/ SMK/ MA', 'Kota Metro', '30 orang Peserta Tingkat Kota & 2 Orang Peserta Tingkat Provinsi', '-', 0, 'Y'),
(57, '1', 2, 1, 7, 2, 37, '', '', 'L', 44000000, 'APBD-KOTA', '', '', 'Belanja service dan penggantian suku cadang Kendar', 'Kota Metro', '12 Bulan', '-', 0, 'Y'),
(58, '1', 2, 1, 4, 1, 38, '', '', 'L', 770500000, 'APBD-KOTA', '', '', 'Jumlah Organisasi Keolahragaan yang Mendapatkan Da', 'Kota Metro', '3 Lembaga', '-', 0, 'Y'),
(59, '1', 2, 1, 4, 20, 39, '', '', 'L', 100000000, 'APBD-KOTA', '', '', 'Hibah Sarana Olahraga', 'Kota Metro', '22 Kelurahan', '-', 0, 'Y'),
(60, '1', 2, 1, 7, 1, 41, '', '', 'L', 35000000, 'APBD-KOTA', '', '', 'Updating aplikasi e-office', 'Kota Metro', '6 Aplikasi', '-', 0, 'Y'),
(61, '1', 2, 1, 4, 20, 42, '', '', 'L', 300000000, 'APBD-KOTA', '', '', 'Jumlah atlit yang mewakili', 'Kota Metro', '15 Atlit', '-', 0, 'Y'),
(62, '1', 2, 1, 4, 20, 45, '', '', 'L', 88000000, 'APBD-KOTA', '', '', 'Jumlah Pertandingan Olahraga Pendidikan, Rekreasi ', 'Kota Metro', '6 Cabang Olahraga', '-', 0, 'Y'),
(63, '1', 2, 1, 4, 20, 46, '', '', 'L', 400000000, 'APBD-KOTA', '', '', 'Jumlah Kegiatan Pertandingan Sepakbola Kota Metro ', 'Kota Metro', '3 Kegiatan', '-', 0, 'Y'),
(64, '1', 2, 1, 7, 3, 73, '', '', 'B', 50000000, 'APBD-KOTA', '', '', 'Buku Profil Dinas', 'Kota Metro', '1 Dokumen', '-', 0, 'Y'),
(65, '1', 3, 1, 5, 16, 74, '', '', 'B', 140000000, 'APBD-KOTA', '', '', 'Terciptanya Master Plan Wisata Sumber Sari', 'Kota Metro', '1 Dokumen', '-', 0, 'Y'),
(66, '1', 3, 1, 5, 16, 75, '', '', 'B', 150000000, 'APBD-KOTA', '', '', 'Terpeliharanya Destinasi Pariwisata di Wisata Sumb', 'Kota Metro', '4 Lokasi', '-', 0, 'Y'),
(67, '1', 2, 1, 3, 16, 76, '', '', 'B', 30000000, 'APBD-KOTA', '', '', 'Jumlah Organisasi Kepemudaan Yang Di Monev', 'Kota Metro', '13 OKP', '-', 0, 'Y'),
(68, '1', 2, 1, 4, 20, 77, '', '', 'B', 200000000, 'APBD-KOTA', '', '', 'Terlaksananya Oprasional UPT Sarana Olahraga (GOR ', 'Kota Metro', '12 Bulan', '-', 0, 'Y'),
(69, '1', 2, 1, 4, 21, 78, '', '', 'L', 644000000, 'APBD-KOTA', '', '', 'Meningkatnya Sarana san Prasarana Olahraga', 'Kota Metro', '4 Paket', '-', 0, 'Y'),
(70, '1', 3, 1, 6, 20, 79, '', '', 'B', 150000000, 'APBD-KOTA', '', '', 'Terlaksananya Pembinaan Kegiatan Daur Ulang Limbah', 'Kota Metro', '1 Kegiatan', '-', 0, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skpd`
--

CREATE TABLE `skpd` (
  `id_skpd` int(3) NOT NULL,
  `kode_skpd` char(5) NOT NULL,
  `nama_skpd` varchar(250) NOT NULL,
  `singkatan_skpd` varchar(50) NOT NULL,
  `kedinasan` char(10) NOT NULL,
  `id_bidangopd` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `skpd`
--

INSERT INTO `skpd` (`id_skpd`, `kode_skpd`, `nama_skpd`, `singkatan_skpd`, `kedinasan`, `id_bidangopd`) VALUES
(1, '13', 'DINAS KEPEMUDAAN, OLAHRAGA DAN PARIWISATA', 'DISPORAPAR', 'DINAS', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahunanggaran`
--

CREATE TABLE `tahunanggaran` (
  `id` int(11) NOT NULL,
  `tahun` char(4) NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tahunanggaran`
--

INSERT INTO `tahunanggaran` (`id`, `tahun`, `status`) VALUES
(21, '2020', 'Y'),
(22, '2021', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `urusan`
--

CREATE TABLE `urusan` (
  `id` int(3) NOT NULL,
  `kode_urusan` char(4) NOT NULL DEFAULT '0',
  `nama_urusan` char(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `urusan`
--

INSERT INTO `urusan` (`id`, `kode_urusan`, `nama_urusan`) VALUES
(1, '1', 'URUSAN WAJIB PELAYANAN DASAR'),
(2, '2', 'URUSAN WAJIB BUKAN PELAYANAN DASAR'),
(3, '3', 'URUSAN PILIHAN'),
(4, '4', 'URUSAN PEMERINTAHAN FUNGSI PENUNJANG'),
(5, '5', 'URUSAN PILIHAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(4, 'vito fernando', 'vitofernando15@gmail.com', 'gua.jpg', '$2y$10$uDx0XpeCk2EZuvR4AFzC5.a774LBL26mp2Clv.tRaIA7F.sqZkSjq', 1, 1, 1580011362),
(5, 'siapa aja boleh', 'buatcontohuser@gmail.com', 'IMG_8721rzz_copy.jpg', '$2y$10$POfxMH51UcgcDswtGmGEieddyVZwq9rbCgZS8UI7EP42BVFDxenbC', 2, 1, 1580012790);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(8, 1, 3),
(11, 2, 7),
(12, 1, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(3, 'Menu'),
(6, 'test'),
(7, 'Master Data');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Superuser'),
(2, 'Admin'),
(3, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(6, 3, 'test', 'menu/submenu', 'fab fa-fw fa-youtube', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(9, 7, 'Tahun Anggaran', 'master/tahunanggaran', 'fas fa-fw fa-folder', 1),
(10, 7, 'Master Bidang', 'master/bidang', 'fas fa-fw fa-folder', 1),
(11, 7, 'Master Program', 'master/program', 'fas fa-fw fa-folder', 1),
(12, 7, 'Master Kegiatan', 'master/kegiatan', 'fas fa-fw fa-folder', 1),
(13, 7, 'Master Renja', 'master/renja', 'fas fa-fw fa-folder', 1),
(14, 7, 'Master Urusan', 'master/urusan', 'fas fa-fw fa-folder', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id_program`);

--
-- Indeks untuk tabel `renja`
--
ALTER TABLE `renja`
  ADD PRIMARY KEY (`id_usulan`);

--
-- Indeks untuk tabel `skpd`
--
ALTER TABLE `skpd`
  ADD PRIMARY KEY (`id_skpd`);

--
-- Indeks untuk tabel `tahunanggaran`
--
ALTER TABLE `tahunanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `urusan`
--
ALTER TABLE `urusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bidang`
--
ALTER TABLE `bidang`
  MODIFY `id_bidang` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `program`
--
ALTER TABLE `program`
  MODIFY `id_program` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `renja`
--
ALTER TABLE `renja`
  MODIFY `id_usulan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `skpd`
--
ALTER TABLE `skpd`
  MODIFY `id_skpd` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tahunanggaran`
--
ALTER TABLE `tahunanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `urusan`
--
ALTER TABLE `urusan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
