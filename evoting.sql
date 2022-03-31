-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Mar 2022 pada 17.37
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evoting`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cakor`
--

CREATE TABLE `cakor` (
  `id_ckr` int(12) NOT NULL,
  `nu_ckr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cakor`
--

INSERT INTO `cakor` (`id_ckr`, `nu_ckr`) VALUES
(69, 'CAKOR 1'),
(70, 'CAKOR 2'),
(71, 'CAKOR 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_idt` int(12) NOT NULL,
  `id_ckr` int(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `slogan` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `vm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_idt`, `id_ckr`, `nama`, `slogan`, `foto`, `vm`) VALUES
(22, 69, 'Assyifa Khalif S.Kom', 'BEBAS TUNTAS DALAM PERLAWANAN BAGI YANG DI TINGGAL ORMAWA', 'CAKOR 1.jpeg', 'VISI  : MENJADIKAN UNSIKA GERBANG UTAMA PERLAWANAN\r\nMISI : MEWUJUDKAN MAHASISWA KRITIS AKTIF DAN AGRESIF DALAM PENINDASAN PENGUASA'),
(23, 70, 'Annisa Rahma Putri S.Kom', 'RENDAHKAN HATIMU, DAN PILIH AKU SEBAGAI CAKOR MU', 'CAKOR 2.jpg', 'Visi  : MENCIPTAKAN SUASANA AKTIF PADA RUANG LINGKUNGAN INTROVERT\r\nMisi : MENGURANGI PEMAKAIAN FITUR SILENT MODE PADA INTROVERT PEOPLE'),
(24, 71, 'Irna Purnahasanah', 'USAHAMU PENENTU KEPUSINGANMU', 'CAKOR 3.jpeg', 'Visi  : MENJADI GARDA TERDEPAN SEBAGAI PELOPOR LITERASI\r\nMisi : MENJADIKAN MAHAHASISWA YANG TELITI TENANG DALAM MEMBACA TUGAS DOSEN & ASDOS');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cakor`
--
ALTER TABLE `cakor`
  ADD PRIMARY KEY (`id_ckr`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_idt`),
  ADD KEY `id_ktg` (`id_ckr`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cakor`
--
ALTER TABLE `cakor`
  MODIFY `id_ckr` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_idt` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD CONSTRAINT `identitas_ibfk_1` FOREIGN KEY (`id_ckr`) REFERENCES `cakor` (`id_ckr`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
