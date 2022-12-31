-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Des 2022 pada 07.58
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_gudang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `kode_barang_keluar` char(200) NOT NULL,
  `kode_barang_masuk` char(200) NOT NULL,
  `jumlah` float NOT NULL,
  `tgl` date NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang_keluar`
--

INSERT INTO `barang_keluar` (`kode_barang_keluar`, `kode_barang_masuk`, `jumlah`, `tgl`, `keterangan`) VALUES
('OUT0001', 'IN0001', 20, '2022-12-31', 'belum sampai '),
('OUT0003', 'IN0003', 14, '2022-12-31', 'barang keluar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `kode_barang_masuk` char(200) NOT NULL,
  `kode_barang` varchar(12) NOT NULL,
  `jumlah` float NOT NULL,
  `harga` float NOT NULL,
  `tgl` date NOT NULL,
  `kode_lokasi` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang_masuk`
--

INSERT INTO `barang_masuk` (`kode_barang_masuk`, `kode_barang`, `jumlah`, `harga`, `tgl`, `kode_lokasi`) VALUES
('IN0002', '1233', 12, 200000, '2022-12-28', '1233'),
('IN0003', '1234', 20, 100000000, '2022-12-31', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `kode_barang` int(12) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `merek_barang` varchar(40) NOT NULL,
  `ukuran` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`kode_barang`, `nama_barang`, `kategori`, `merek_barang`, `ukuran`) VALUES
(1222, 'sepeda', 'Kendaraan', 'platgon', '12x12'),
(1233, 'celana', 'Barang Hiasan', 'sow', '12'),
(1234, 'sepeda ss', 'Kendaraan', 'play ols', '14x14'),
(1235, 'mobil', 'Kendaraan', 'tgril', '4x8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_barang`
--

CREATE TABLE `lokasi_barang` (
  `kode_lokasi` int(12) NOT NULL,
  `nama_lokasi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lokasi_barang`
--

INSERT INTO `lokasi_barang` (`kode_lokasi`, `nama_lokasi`) VALUES
(12, 'muara tewe'),
(1223, 'sepeda'),
(1232, '123'),
(1233, 'baju'),
(1235, 'puruk cahu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `nama`, `jenis_kelamin`, `alamat`) VALUES
(1, 'admin', 'admin', 'jamil', 'Laki - laki', 'purca'),
(1222, 'admin', 'admin', 'shindy oemardi', 'Laki - laki', 'bjm');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`kode_barang_keluar`);

--
-- Indeks untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`kode_barang_masuk`,`kode_barang`);

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `lokasi_barang`
--
ALTER TABLE `lokasi_barang`
  ADD PRIMARY KEY (`kode_lokasi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `kode_barang` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1236;

--
-- AUTO_INCREMENT untuk tabel `lokasi_barang`
--
ALTER TABLE `lokasi_barang`
  MODIFY `kode_lokasi` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1236;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1223;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
