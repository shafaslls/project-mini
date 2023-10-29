-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Okt 2023 pada 17.45
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kontak`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`id`, `nama`) VALUES
(6, 'Budha'),
(3, 'Hindu'),
(1, 'Islam'),
(7, 'Khong Huchu'),
(2, 'Kristen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `role` enum('admin','staff') NOT NULL,
  `foto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `fullname`, `email`, `username`, `password`, `role`, `foto`) VALUES
(1, 'Salsabila', 'salsa2@gmail.com', 'salsa', 'salsa123', 'admin', NULL),
(2, 'genta', 'genta@gmail.com', 'genta', 'genta123', 'staff', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `asal_kampus` varchar(45) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `agama_id` int(11) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `sosmed` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `person`
--

INSERT INTO `person` (`id`, `nama`, `asal_kampus`, `gender`, `agama_id`, `tempat_lahir`, `tgl_lahir`, `sosmed`, `email`, `alamat`, `nohp`) VALUES
(1, 'Shafa Salsabila Febriani', 'UBSI DEPOK', 'Perempuan', 1, 'Depok', '2002-02-20', 'ig @shafaslls', 'shafafebriani4@gmail.com', 'Jl.Bhakti Abri Rt02 Rw 10', '0895706510309'),
(2, 'Zian Naisilia Anjarwati', 'STMIK-IM Bandung', 'Perempuan', 1, 'Sumedang', '2001-02-24', 'ig @ziannaisiliaa', 'ziannaisilia@gmail.com', 'Jl. Caringin Cikungkurak Bandung', '089652639063'),
(4, 'Izzudin Muktar', 'STT Terpadu Nurul Fikri ', 'Laki-Laki', 1, 'Depok', '2003-02-26', 'ig @mukktaaaaar', 'izudinmuktar5@gmail.com', 'Dsn bebegan, jati kabupaten Blora Jawa Tengah ', '083122661966'),
(5, 'Maulidhiansyah Bayu Setiawan', 'STT Terpadu Nurul Fikri ', 'Laki-Laki', 1, 'Depok', '2003-05-10', 'ig @inibayou', 'maulidhiansyahbayu@gmail.com', 'Depok', '089507631813'),
(6, 'Milda Khusnul Khotimah', 'Politeknik Negeri Malang', 'Perempuan', 1, 'Lumajang', '2003-02-26', 'ig @_mldkhsnl', 'mildakhusnul999@gmail.com', 'lumajang jawa timur', '087863533945'),
(7, 'Irgi Rama Sulistio', 'Politeknik Negeri Media Kreatif', 'Laki-Laki', 1, 'Bogor', '2002-03-06', 'ig @irgiramz', 'irgirama01@gmail.com', 'Kp.Babakan RT:02/03 No:16 Kec.Cileungsi Kab.Bogor', '089612431791'),
(8, 'Ahmad Fadhliansyah ', 'STT Terpadu Nurul Fikri ', 'Laki-Laki', 1, 'Dki Jakarta', '2003-06-13', 'ig @fadhliansyaah', 'fadhliansyah9f@gmail.com', 'Jl Lapangan Roos III', '082114254952'),
(9, 'Nata Nara Narendra Putra Suanda', 'Universitas Udayana', 'Laki-Laki', 3, 'Sumbawa Be', '2003-07-30', 'ig @natanaraps', 'natanaranarendra@gmail.com', 'Jl. Gunung Agung Gang. 1C Perumahan Pesona Agung Graha Adi No. B2', '089675998114'),
(10, 'Muhammad Jaisy Adli', 'STT Terpadu Nurul Fikri ', 'Laki-Laki', 1, 'Bekasi', '2004-01-13', 'ig @jaisyadli', 'muhjaisyadli@gmail.com', 'Jln. H. Taqwa no 108 rt/rw 006/009', '089512391211'),
(11, 'Nasyath Faykar ', 'STMIK WIDYA PRATAMA PEKALONGAN ', 'Laki-Laki', 1, 'Pekalongan', '2002-10-30', 'ig @faykarr_', 'nasyathfaykar@gmail.com', 'Jalan KH Ahmad Dahlan Tirto Gg. 7 No. 31', '088806923500'),
(12, 'Qonita Azizah ', 'Pradita University ', 'Perempuan', 1, 'Panyalaian', '2002-03-08', 'ig @qonitaazh_', 'qonita.azizah@student.pradita.ac.id', 'Jalan Allogio barat 3, Medang, kec pegedangan, banten', '085761434808'),
(13, 'Hanif Hidayatulloh ', 'Universitas Amikom Purwokerto ', 'Laki-Laki', 1, 'Brebes', '2003-11-28', 'ig @hanief_nief', 'hanifhidayatulloh2811@gmail.com', 'Purwokerto Utara', '087862678478'),
(14, 'Fajar septianto', 'STT Terpadu Nurul Fikri ', 'Laki-Laki', 1, 'jakarta selatan', '2002-09-26', 'ig @slashandback', 'fajar23.septianto@gmail.com', 'cinere, depok', '085889432197'),
(15, 'Rangga Ekklesia Gabriel Anugrahnu', 'UNIVERSITAS PALANGKARAYA ', 'Laki-Laki', 1, 'Palangka Raya', '2003-06-08', 'ig @rangga_e.g.a', 'ranggaekkle20020806@gmail.com', 'Jl.Perkebunan komp perikanan ', '083143508517'),
(16, 'Septia Dwi Kurniasih', 'Unsurya', 'Perempuan', 1, 'jakarta', '1995-09-18', 'cepiaaaws', 'septiadk2@gmail.com', 'Kp. Pulo Makasar Jakarta Timur', '087889018920'),
(17, 'Dimas Andhika Firmansyah ', 'Universitas Negeri Semarang ', 'Laki-Laki', 1, 'Pemalang ', '2003-09-20', 'ig @dmsandhika_', 'dmsandhika87@gmail.com', 'Pemalang, Jawa Tengah ', '089630147925'),
(18, 'Febi Febiyanti ', 'Sekolah Tinggi Teknologi Terpadu Nurul Fikri ', 'Perempuan', 1, 'Garut ', '2002-02-27', 'ig @_ffyyyyyyy', 'febi20289ti@student.nurulfikri.ac.id', 'Jl. KH Hasan Arif, Kp. Pagersari RT.01 RW.06 Kec. Banyuresmi Kab. Garut', '085860257486'),
(19, 'Ulayya Salmaa Khoirunnisaa', 'Universitas Muria Kudus', 'Perempuan', 1, 'Kudus', '2002-05-28', 'ig @salmaaul._', 'ulayyasalmaa28@gmail.com', 'Bulungcangkring RT 03/ RW 01, Kec. Jekulo, Kab. Kudus', '081215627905'),
(20, 'Euis safania', 'Universitas Negeri Semarang', 'Perempuan', 1, 'Cirebon', '2003-10-27', 'ig @@safania.euis', 'euissafania8703@students.unnes.ac.id', 'Kabupaten Cirebon Provinsi Jawa Barat ', '083156525468'),
(21, 'Renawati', 'STT Terpadu Nurul Fikri', 'Perempuan', 1, 'Tangerang', '2001-05-22', 'ig @ren_aniqobie', 'rena09910@gmail.com', 'Kp.Daraham ', '085282884467'),
(22, 'Putra Habib Al Aziz ', 'Politeknik Manufaktur Negeri Bangka Belitung ', 'Laki-Laki', 1, 'Rantau karya ', '2003-12-23', 'ig @ajizz11_', 'putrahabibalaziz@gmail.com', 'OKI, Sumatera Selatan ', '085377519996'),
(23, 'Adi', 'Institut Sains danTeknologi Annuqayah', 'Laki-Laki', 1, 'Pamekasan', '2000-10-29', 'ig @adialfatih45', 'adilrindu29@gmail.com', 'Sumber Waru Waru Jawa Timur', '081937264222'),
(24, 'Moch Fikri Ramadhan', 'Sekolah Tinggi Teknologi Terpadu Nurul Fikri', 'Laki-Laki', 1, 'Depok', '2001-10-11', 'ig @fikrii1711', 'libr.libr1711@gmail.com', 'JL. Situ Indah No.3 Rt.06/10 Kel.Tugu Kec.Cimanggis Depok', '089684711291'),
(25, 'Sri Lestari', 'Universitas Muria Kudus', 'Perempuan', 1, 'Pati', '2002-09-28', 'ig @taarrrrri', 'lestatari41@gmail.com', 'Ds.Sukolilo RT 06/RW 07', '08157945227'),
(26, 'Siti Amdah', 'Sekolah Tinggi Teknologi Terpadu Nurul Fikri', 'Perempuan', 1, 'Tangerang', '2001-04-14', 'ig @amdah14', 'siti.amdah14@gmail.com', 'Tigaraksa, Tangerang-Banten', '08979281365'),
(27, 'Ariza Akmal Syahida', 'Universitas Amikom Yogyakarta', 'Laki-Laki', 1, 'Bantul', '2003-04-13', 'ig @arizaakmal13', 'arizaakmal04@gmail.com', 'Bantul, Daerah Istimewa Yogyakarta', '083849257999'),
(28, 'Muarif Rizqy', 'Universitas Peradaban', 'Laki-Laki', 1, 'Brebes', '2001-11-21', 'ig @Arif_rzym', 'murizqyarf17@gmail.com', 'Kec. Paguyangan jl. Bumiayu - Purwokerto', '085326762608'),
(29, 'Muhammad Alifi Ferdiansyah', 'Universitas Bhinneka PGRI', 'Laki-Laki', 1, 'Tulungagung', '2000-07-24', 'ig @alifi_24', 'alifi240700@gmail.com', 'Desa Tenggong, Kecamatan Rejotangan, Kabupaten Tulungagung', '088217206039'),
(30, 'Muhammad Bahrul Ulum', 'Universitas Tanjungpura', 'Laki-Laki', 1, 'Pontianak', '2002-09-15', 'ig @ulum_kane', 'rangga.agg2018@gmail.com', 'Jalan Bujama Desa Pal IX Kecamatan Sungai Kakap Kabupaten Kubu Raya', '087716374672'),
(31, 'Hadi Prasetiyo', 'Universitas Mulawarman', 'Laki-Laki', 1, 'Samarinda', '2002-06-16', 'ig @hadiiprasetiyo', 'hadiiyok01@gmail.com', 'Samarinda, Kalimantan Timur', '085711228592'),
(32, 'Ahmad Riziq', 'Sekolah Tinggi Teknologi terpadu Nurul fikri', 'Laki-Laki', 1, 'Jakarta', '2002-07-18', 'ig @arizieq', 'ahmadriziq010@gmail.com', 'Kp.Roke Des. Negkasari Kec.Jasinga Kab. Bogor Provinsi.jawa barat', '085939446587'),
(33, 'Carmennita Soleman', 'Universitas Mulawarman', 'Perempuan', 2, 'Samarinda', '2004-01-24', 'ig @carmeennita', 'nitacarmen06@gmail.com', 'Jl. Budaya Pampang, Samarinda, Kalimantan Timur', '085350232057'),
(34, 'Ahmad Zuaidi', 'IST Annuqayah', 'Laki-Laki', 1, 'Sumenep', '2001-11-02', 'ig @ahmd.zdi__', 'ahmadzuaidi892@gmail.com', 'Lembung Barat Lenteng Sumenep Jatim', '085963093822'),
(35, 'Shabrina Primadewi', 'Universitas Muria Kudus', 'Perempuan', 1, 'Kudus', '2003-01-09', 'ig @shabrinampol', 'shabrinaprima@gmail.com', 'Desa Sadang, Rt 03 Rw 02, Kecamatan Jekulo, Kabupaten Kudus, Jawa Tengah', '085848686194'),
(36, 'Ridwan Khomarudin Muharram ', 'STT Terpadu Nurul Fikri ', 'Laki-Laki', 1, 'Tanggerang ', '2003-03-10', 'ig @arraaamm__', 'ridwanmts812@gmail.com', 'Citayam kp. Kelapa gg. Nusaindah rt04/rw16', '081281238348'),
(37, 'Anisa', 'STT Terpadu Nurul Fikri', 'Perempuan', 1, 'Depok', '2003-10-09', 'ig @SyNissa', 'anisaaabcd@gmail.com', 'Kp. Sindangkarsa Rt01/07, sukamaju baru, Tapos depok', '083895461608'),
(38, 'Muhammad Alif Firdaus Arizona', 'Universitas Dinamika', 'Laki-Laki', 1, 'Surabaya', '2002-06-14', 'ig @afarizona_', '20410100080@dinamika.ac.id', 'Perum TNI AL Candi ', '082132306322'),
(39, 'Mukhammad Rifkhi Rifangga ', 'Universitas Muria Kudus ', 'Laki-Laki', 1, 'Kudus', '0000-00-00', 'ig @rifkhi.rifangga_', 'rifkhirifangga@gmail.com', 'Sunggingan RT 03 RW 03 Kota Kudus ', '08812670156'),
(40, 'Winanda afrilia harisya', 'Universitas Andalas', 'Perempuan', 1, 'Sungai penuh', '2003-04-26', 'ig @_winandaah', 'winandaafrilia0304@gmail.com', 'Kapalo koto, Pauh, Padang', '087842182759'),
(41, 'Muhammad Anwar Fauzan', 'Universitas Banten Jaya', 'Laki-Laki', 1, 'Serang', '2003-01-15', 'ig @anwarfz__', 'anwar.fauzan98@gmail.com', 'Bumi Agung Permai 1', '085939410330'),
(42, 'Erick Darmawan', 'Universitas Banten Jaya', 'Laki-Laki', 1, 'Kota Serang', '2003-08-13', 'ig @erick.db13', 'erickdarmawanboeniarto130803@gmail.com', 'Kota Serang', '085282568210'),
(43, 'Lora Lorensa Manafe ', 'Politeknik Negeri kupang ', 'Perempuan', 2, 'Sulamu', '2001-10-30', '@Lhomnfe30 ', 'lhomanafe@gmail.com', 'Sulamu ', '081353024713'),
(44, 'BAGUS FEBRIYANTO', 'Universitas Muria Kudus', 'Laki-Laki', 1, 'Kudus', '2023-10-28', '', 'bagusfebriyanto19@gmail.com', '', '08978270522'),
(45, 'Riyanto', 'Universitas Sains Alqur an', 'Laki-Laki', 1, 'Jakarta', '2023-10-28', '', 'alfyansyahriyan31@gmail.com', '', '088225448521'),
(46, 'BAGUS MUHAMMAD MUMTAZA', 'STMIK Widya Pratama', 'Laki-Laki', 1, 'Jakarta', '2023-10-28', '', 'bagusbendan07@gmail.com', '', '085875282178'),
(47, 'Safitri', 'Universitas Amikom Yogyakarta', 'Perempuan', 1, 'Yogyakarta', '2023-10-28', '', 'safitri@students.amikom.ac.id', '', '0816655958'),
(48, 'JHOFY RICARDO P. SITINDAON', 'Politeknik Negeri Sriwijaya', 'Laki-Laki', 2, 'Jakarta', '2023-10-28', '', 'jhofyricardo@icloud.com', '', '082218994202'),
(49, 'Mahez Arya Panangsang', 'Universitas Banten Jaya', 'Laki-Laki', 1, 'Banten', '2023-10-28', '', 'mahezarya23@gmail.com', '', '081298020766'),
(50, 'Riski Eggy Saputro', 'Universitas Banten Jaya', 'Laki-Laki', 1, 'Banten', '2023-10-28', '', 'eggy.riski27@gmail.com', '', '081911049214');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`) USING BTREE;

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`nama`) USING BTREE,
  ADD KEY `fk_person_agama` (`agama_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agama`
--
ALTER TABLE `agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
