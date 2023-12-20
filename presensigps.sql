-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2023 pada 06.59
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensigps`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabang`
--

CREATE TABLE `cabang` (
  `kode_cabang` char(3) NOT NULL,
  `nama_cabang` varchar(50) NOT NULL,
  `lokasi_cabang` varchar(255) NOT NULL,
  `radius_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cabang`
--

INSERT INTO `cabang` (`kode_cabang`, `nama_cabang`, `lokasi_cabang`, `radius_cabang`) VALUES
('YK', 'SMA BIAS', '-7.8268362939662826, 110.3777545721717', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `departemen`
--

CREATE TABLE `departemen` (
  `kode_dept` char(3) NOT NULL,
  `nama_dept` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `departemen`
--

INSERT INTO `departemen` (`kode_dept`, `nama_dept`) VALUES
('ADM', 'Administrasi'),
('HRD', 'Human Resource Development '),
('IT', 'Information Technology'),
('KEU', 'Keuangan'),
('KS', 'Kepala Sekolah'),
('KU', 'Kepala Unit'),
('TM', 'Team Manajemen'),
('UST', 'Ustadz/ah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam_kerja`
--

CREATE TABLE `jam_kerja` (
  `kode_jam_kerja` char(4) NOT NULL,
  `nama_jam_kerja` varchar(15) NOT NULL,
  `awal_jam_masuk` time NOT NULL,
  `jam_masuk` time NOT NULL,
  `akhir_jam_masuk` time NOT NULL,
  `jam_pulang` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `jam_kerja`
--

INSERT INTO `jam_kerja` (`kode_jam_kerja`, `nama_jam_kerja`, `awal_jam_masuk`, `jam_masuk`, `akhir_jam_masuk`, `jam_pulang`) VALUES
('JK01', 'NORMAL', '00:00:00', '07:00:00', '07:59:00', '16:00:00'),
('JK02', 'HARI SABTU', '05:00:00', '08:00:00', '08:30:00', '14:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` char(5) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `foto` varchar(30) DEFAULT NULL,
  `kode_dept` char(3) NOT NULL,
  `kode_cabang` char(3) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama_lengkap`, `jabatan`, `no_hp`, `foto`, `kode_dept`, `kode_cabang`, `password`, `remember_token`) VALUES
('01-01', 'Afrita Nur Rahmawati, S.Pt', 'Kepala Sekolah', '081395322911', NULL, 'KS', 'YK', '$2y$10$yQNRst4cMCha8SXfiZ7o1.YdTxbyq0.utWdaOEUzGFBmaiCwmXI6K', NULL),
('01-02', 'Darmadi, ST', 'Kepala Unit', '081395322912', '01-02.jpeg', 'KU', 'YK', '$2y$10$9O.JTRa3ngd.w7TztplZX.VatIPX2AlTFY3gt6mJSD78kGZebyrgi', NULL),
('01-03', 'R.A. Retno Tri Andari, MBA', 'Guru', '081395322913', NULL, 'TM', 'YK', '$2y$10$/OgCda4sD0nfG78nAFPFYOIbseEiR6FOqmV62Xxl59N3dilpQ2kKe', NULL),
('01-04', 'Kristin Murniati, S.Pd.', 'Guru', '081395322914', NULL, 'UST', 'YK', '$2y$10$6AFga4kxeAWpLE0kZQgBCOGLyUjXsqlRAMdA5O5rQjC1vMDHjdGna', NULL),
('01-05', 'Annisa Samudra, S.S', 'Guru', '081395322915', NULL, 'UST', 'YK', '$2y$10$VibJroO.uqqCwSxe65rgl.1/NYR68lpZg.doIHTrQNOZHyOmuwtqe', NULL),
('01-06', 'Feby Kristiansi, S.Pd.', 'Guru', '081395322915', NULL, 'UST', 'YK', '$2y$10$PoGEKlIuZaUCZZISvM2SSeD21iuBOvYWtN59CYPkVd7LucVQJ3bDm', NULL),
('01-07', 'Rarastyan Arum W, S.Si., M.Sc', 'Guru', '081395322916', NULL, 'UST', 'YK', '$2y$10$cXT/Xp7swYKdrLtOOje9zeQqV5E38ZwBVNPqcYNxHvKoL/2wkHXDa', NULL),
('01-09', 'Moh Irwansyah,S.Pd', 'Guru', '081395322916', NULL, 'UST', 'YK', '$2y$10$aWUyT0RPBCkhUefKkod6MObysyE/GVNdqRKWhXUxAhKMoGCwsDeLW', NULL),
('01-10', 'Anang Hidayat', 'Staff TU', '081395322919', '01-10.jpg', 'ADM', 'YK', '$2y$10$N7eAPWcOR7wedt.hMUkCwuEMoPgKtmGJZ3iTj0BKXT79aPJza/DYW', NULL),
('01-11', 'Hanif Fauziyatun, M.Pd', 'Guru', '081395322917', NULL, 'UST', 'YK', '$2y$10$KX/QNa/5PH6wCetHJcgqO.DUSw/.wW1bPr8FIusbtT3awzWR0sFAq', NULL),
('01-12', 'Oriana Surya Ningsih, M.Pd.', 'Guru', '081395322920', NULL, 'UST', 'YK', '$2y$10$l4lHz/v3YOf9rZnZrsur2uwvrqXf8xd5nBE6ATOs.iYNzqlRdQthy', NULL),
('01-13', 'Putri Prihartini, S.Pd.', 'Guru', '081395322921', NULL, 'UST', 'YK', '$2y$10$HrDu6ultEkJCmsnyQ4jp6.WsqPGSYTzOF4dNbysA9xKVI169LsVnK', NULL),
('12345', 'Raden', 'Head of IT', '081395322919', '12345.jpeg', 'IT', 'YK', '$2y$10$qAxYNrMt2A.jOPnoHE7t9uoc2e.Aw7LjWjz0TCNtI7nytqPi4RImS', NULL),
('12346', 'Afrita', 'Manager HRD', '082220804021', '12346.png', 'HRD', 'YK', '$2y$10$QwOSMrank2EMDlVhqJknROP0d83ojKrreIsYN0k6UKe.SmcabSzvu', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi_jamkerja`
--

CREATE TABLE `konfigurasi_jamkerja` (
  `nik` char(5) DEFAULT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `kode_jam_kerja` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `konfigurasi_jamkerja`
--

INSERT INTO `konfigurasi_jamkerja` (`nik`, `hari`, `kode_jam_kerja`) VALUES
('8888', 'Senin', 'JK01'),
('8888', 'Selasa', 'JK01'),
('8888', 'Rabu', 'JK01'),
('8888', 'Kamis', 'JK01'),
('8888', 'Jumat', 'JK01'),
('8888', 'Sabtu', 'JK01'),
('8888', 'Minggu', 'JK01'),
('12346', 'Senin', 'JK01'),
('12346', 'Selasa', 'JK01'),
('12346', 'Rabu', 'JK01'),
('12346', 'Kamis', 'JK01'),
('12346', 'Jumat', 'JK01'),
('12346', 'Sabtu', 'JK01'),
('12346', 'Minggu', 'JK01'),
('12345', 'Senin', NULL),
('12345', 'Selasa', NULL),
('12345', 'Rabu', NULL),
('12345', 'Kamis', NULL),
('12345', 'Jumat', NULL),
('12345', 'Sabtu', NULL),
('12345', 'Minggu', 'JK01'),
('01-10', 'Senin', 'JK01'),
('01-10', 'Selasa', 'JK01'),
('01-10', 'Rabu', 'JK01'),
('01-10', 'Kamis', 'JK01'),
('01-10', 'Jumat', 'JK01'),
('01-10', 'Sabtu', 'JK01'),
('01-10', 'Minggu', NULL),
('01-02', 'Senin', 'JK02'),
('01-02', 'Selasa', 'JK02'),
('01-02', 'Rabu', 'JK01'),
('01-02', 'Kamis', 'JK02'),
('01-02', 'Jumat', 'JK02'),
('01-02', 'Sabtu', 'JK02'),
('01-02', 'Minggu', NULL),
('01-03', 'Senin', NULL),
('01-03', 'Selasa', NULL),
('01-03', 'Rabu', 'JK01'),
('01-03', 'Kamis', NULL),
('01-03', 'Jumat', NULL),
('01-03', 'Sabtu', NULL),
('01-03', 'Minggu', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi_jk_dept`
--

CREATE TABLE `konfigurasi_jk_dept` (
  `kode_jk_dept` char(7) NOT NULL,
  `kode_cabang` char(3) DEFAULT NULL,
  `kode_dept` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi_jk_dept_detail`
--

CREATE TABLE `konfigurasi_jk_dept_detail` (
  `kode_jk_dept` char(7) DEFAULT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `kode_jam_kerja` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi_lokasi`
--

CREATE TABLE `konfigurasi_lokasi` (
  `id` int(11) NOT NULL,
  `lokasi_kantor` varchar(255) NOT NULL,
  `radius` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `konfigurasi_lokasi`
--

INSERT INTO `konfigurasi_lokasi` (`id`, `lokasi_kantor`, `radius`) VALUES
(1, '-7.287594341097271,108.23708536116848', 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_cuti`
--

CREATE TABLE `master_cuti` (
  `kode_cuti` char(3) NOT NULL,
  `nama_cuti` varchar(30) DEFAULT NULL,
  `jml_hari` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `master_cuti`
--

INSERT INTO `master_cuti` (`kode_cuti`, `nama_cuti`, `jml_hari`) VALUES
('C01', 'Tahunan', 12),
('C02', 'Cuti Melahirkan', 90),
('C04', 'Cuti Menikah', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_izin`
--

CREATE TABLE `pengajuan_izin` (
  `kode_izin` char(9) NOT NULL,
  `nik` char(5) DEFAULT NULL,
  `tgl_izin_dari` date DEFAULT NULL,
  `tgl_izin_sampai` date DEFAULT NULL,
  `status` char(1) DEFAULT NULL COMMENT 'i : izin s : sakit',
  `kode_cuti` char(3) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `doc_sid` varchar(255) DEFAULT NULL,
  `status_approved` char(1) DEFAULT '0' COMMENT '0 : Pending 1: Disetuji 2: Ditolak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pengajuan_izin`
--

INSERT INTO `pengajuan_izin` (`kode_izin`, `nik`, `tgl_izin_dari`, `tgl_izin_sampai`, `status`, `kode_cuti`, `keterangan`, `doc_sid`, `status_approved`) VALUES
('IZ1123002', '01-01', '2023-11-29', '2023-11-30', 's', NULL, 'Pusing', NULL, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) NOT NULL,
  `nik` char(5) NOT NULL,
  `tgl_presensi` date NOT NULL,
  `jam_in` time DEFAULT NULL,
  `jam_out` time DEFAULT NULL,
  `foto_in` varchar(255) DEFAULT NULL,
  `foto_out` varchar(255) DEFAULT NULL,
  `lokasi_in` text DEFAULT NULL,
  `lokasi_out` text DEFAULT NULL,
  `kode_jam_kerja` char(4) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `kode_izin` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `presensi`
--

INSERT INTO `presensi` (`id`, `nik`, `tgl_presensi`, `jam_in`, `jam_out`, `foto_in`, `foto_out`, `lokasi_in`, `lokasi_out`, `kode_jam_kerja`, `status`, `kode_izin`) VALUES
(49, '01-10', '2023-11-28', '14:21:45', '14:25:02', NULL, NULL, '-7.8269018,110.3666397', '-7.8269018,110.3666397', 'JK01', 'h', NULL),
(58, '01-02', '2023-11-29', '20:12:55', '20:15:30', NULL, NULL, '-7.8443428,110.3901922', '-7.8443428,110.3901922', 'JK01', 'h', NULL),
(59, '01-03', '2023-11-29', '21:14:14', NULL, NULL, NULL, '-7.8443428,110.3901922', NULL, 'JK01', 'h', NULL),
(60, '01-10', '2023-11-30', '07:55:28', NULL, NULL, NULL, '-7.8268975,110.3671283', NULL, 'JK01', 'h', NULL),
(61, '01-01', '2023-11-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 's', 'IZ1123002'),
(62, '01-01', '2023-11-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 's', 'IZ1123002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$u.Cpy.8nxTlHUJFMB2lHTeSyQpOw2Zx7MRu2fuT/nndxMigccZWFW', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`kode_cabang`) USING BTREE;

--
-- Indeks untuk tabel `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`kode_dept`) USING BTREE;

--
-- Indeks untuk tabel `jam_kerja`
--
ALTER TABLE `jam_kerja`
  ADD PRIMARY KEY (`kode_jam_kerja`) USING BTREE;

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`) USING BTREE;

--
-- Indeks untuk tabel `konfigurasi_jk_dept`
--
ALTER TABLE `konfigurasi_jk_dept`
  ADD PRIMARY KEY (`kode_jk_dept`) USING BTREE;

--
-- Indeks untuk tabel `konfigurasi_jk_dept_detail`
--
ALTER TABLE `konfigurasi_jk_dept_detail`
  ADD KEY `fk_jkdept` (`kode_jk_dept`) USING BTREE;

--
-- Indeks untuk tabel `konfigurasi_lokasi`
--
ALTER TABLE `konfigurasi_lokasi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `master_cuti`
--
ALTER TABLE `master_cuti`
  ADD PRIMARY KEY (`kode_cuti`) USING BTREE;

--
-- Indeks untuk tabel `pengajuan_izin`
--
ALTER TABLE `pengajuan_izin`
  ADD PRIMARY KEY (`kode_izin`) USING BTREE;

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `konfigurasi_lokasi`
--
ALTER TABLE `konfigurasi_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `konfigurasi_jk_dept_detail`
--
ALTER TABLE `konfigurasi_jk_dept_detail`
  ADD CONSTRAINT `fk_jkdept` FOREIGN KEY (`kode_jk_dept`) REFERENCES `konfigurasi_jk_dept` (`kode_jk_dept`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
