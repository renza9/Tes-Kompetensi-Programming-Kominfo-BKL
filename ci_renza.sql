-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Apr 2019 pada 09.35
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_renza`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `angkatan`
--

CREATE TABLE `angkatan` (
  `id_angkatan` int(10) NOT NULL,
  `nama_angkatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `angkatan`
--

INSERT INTO `angkatan` (`id_angkatan`, `nama_angkatan`) VALUES
(1, '2018'),
(2, '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(10) NOT NULL,
  `id_angkatan` int(10) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_angkatan`, `nama_kelas`) VALUES
(1, 1, 'ak18'),
(2, 1, 'bk18'),
(3, 2, 'ak19'),
(4, 2, 'bk19'),
(5, 1, 'cxz'),
(6, 1, 'vzx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `last_seen`
--

CREATE TABLE `last_seen` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `message` text NOT NULL,
  `is_read` enum('0','1') NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `is_read`, `time`) VALUES
(1, 21, 20, 'ol;', '0', '2017-07-16 00:38:40'),
(2, 21, 20, 'hjkjk', '0', '2017-07-16 00:38:48'),
(3, 21, 20, 'ujuyhkukk', '0', '2017-07-16 00:38:52'),
(4, 21, 19, 'jkjljll', '0', '2017-07-16 00:38:57'),
(5, 21, 17, 'fdgfhh', '0', '2017-07-16 00:45:13'),
(6, 21, 19, 'fff', '0', '2017-07-16 00:55:13'),
(7, 22, 17, 'juj', '0', '2017-07-16 01:30:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id` int(20) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `jenis_keterangan` varchar(20) NOT NULL,
  `sub_jenis_keterangan` varchar(50) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `date_now` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id`, `nip`, `nama`, `tgl_mulai`, `tgl_selesai`, `jenis_keterangan`, `sub_jenis_keterangan`, `no_surat`, `keterangan`, `date_now`) VALUES
(38, '198503302003121002', 'Saputra', '2019-04-01 11:39:47', '2019-04-01 11:39:47', 'Cuti', 'Cuti', '12/PRT-IY/IX/2017', 'Surat Tugas Dinas', '2019-04-01 06:14:47'),
(39, '198503302003121004', 'Suparmaji', '2019-04-01 11:42:41', '2019-04-01 11:42:41', 'Cuti', 'Cuti', '12/PRT-IY/IX/2018', 'Surat Tugas Dinas', '2019-04-01 06:14:47'),
(40, '198503302003121006', 'Renza', '2019-04-01 11:44:25', '2019-04-01 11:44:25', 'Cuti', 'Cuti', '12/PRT-IY/IX/2019', 'Surat Tugas Dinas', '2019-04-01 06:14:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(2) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `dokumen` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `level`, `foto`, `dokumen`, `created_at`, `edited_at`) VALUES
(24, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'mahasiswa', 'gambar_1535621487.png', '', '0000-00-00 00:00:00', '2018-08-31 18:29:53'),
(53, 'renza9', '$2y$09$jNZFDVQwRz8B4P/B3asxduVlIc26Bvd7BhP.6TAodG0gWIspnlf8W', 'admin', 'noshortcut4.png', 'noplain10.png', '0000-00-00 00:00:00', '2018-10-06 00:05:42'),
(54, '2', '$2y$09$S165oev/uBZubT0SSWWI1uHIAcbafio.KAs/QA4EnMBoJnNP2oNGy', 'mahasiswa', '', '', '0000-00-00 00:00:00', '2018-10-05 12:15:38'),
(55, '', '$2y$09$j6fOxkwe/7FXGtF6/jW2H.q.OhTWhD1QG8TXEKw3Qs286cqS3c3zi', 'mahasiswa', '', '', '0000-00-00 00:00:00', '2018-10-05 12:21:02'),
(56, '3', '$2y$09$dZafGivnJL6kH24J9sd74eJC5W418aLvwj2t3/w2drhvMhp1/rfY2', 'admin', '', '', '2018-09-01 01:35:38', '2018-10-05 12:21:19'),
(58, '', '$2y$09$ll1bfSfJeOc3OcinBKh6aedzblGx5K7ebSmdlITj5uaA6RCrm3kee', 'mahasiswa', '', '', '2018-09-01 14:46:51', '2018-10-05 12:14:44'),
(59, 'renza', '$2y$09$8cwZQceXu.aB7jBY8iFzS.baUcAmANas4Cpdo/d.jrSjIE8W0kXzC', 'mahasiswa', 'Form_Input.png', 'json.png', '2019-04-01 11:25:57', '2019-04-01 04:25:57'),
(60, 'admin', '$2y$09$7GDCYH2kzZDofginIJrkUuQ5cuSavTOQo06.TTCZE7zSIhFblIqO.', 'dosen', 'Form_Input1.png', 'Form_Input2.png', '2019-04-01 12:44:10', '2019-04-01 05:44:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usersfb`
--

CREATE TABLE `usersfb` (
  `id` int(11) NOT NULL,
  `oauth_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `picture_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `usersfb`
--

INSERT INTO `usersfb` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `picture_url`, `profile_url`, `created`, `modified`) VALUES
(2, 'facebook', '693963624124190', 'Tasrin', 'Adiputra', 'tasrinteknik@gmail.com', 'male', 'id_ID', 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.50.50/p50x50/16114892_612011485652738_3345778194463477140_n.jpg?oh=616cb7c7e366860e036f4c95f09edb01&oe=59C6A8C0', 'https://www.facebook.com/693963624124190', 'Kamis, 13 Juli 2017 19:07:19', 'Selasa, 18 Juli 2017 12:02:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `angkatan`
--
ALTER TABLE `angkatan`
  ADD PRIMARY KEY (`id_angkatan`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `last_seen`
--
ALTER TABLE `last_seen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usersfb`
--
ALTER TABLE `usersfb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `angkatan`
--
ALTER TABLE `angkatan`
  MODIFY `id_angkatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `last_seen`
--
ALTER TABLE `last_seen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `usersfb`
--
ALTER TABLE `usersfb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
