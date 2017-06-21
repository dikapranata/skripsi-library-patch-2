-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2017 at 11:30 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `two`
--

-- --------------------------------------------------------

--
-- Table structure for table `fakta`
--

CREATE TABLE `fakta` (
  `id_fakta` int(250) NOT NULL,
  `kode_fakta` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakta`
--

INSERT INTO `fakta` (`id_fakta`, `kode_fakta`) VALUES
(171, 'M002'),
(172, 'J003'),
(173, 'G008'),
(174, 'C016'),
(175, 'S016');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id_kondisi` varchar(250) NOT NULL,
  `nama_kondisi` text NOT NULL,
  `kode_kondisi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id_kondisi`, `nama_kondisi`, `kode_kondisi`) VALUES
('C001', 'Tombol function Num Lock dalam keadaan aktif', '4'),
('C002', 'Driver Hot Key belum terinstall pada laptop', '4'),
('C003', 'Sudah terinstall driver Hot Key, key <Fn> tidak berfungsi', '4'),
('C004', 'Kombinasi tombol Fn + F7 dalam keadaan aktif', '4'),
('C005', 'File-file sistem rusak', '4'),
('C006', 'Konektor touch pad lepas atau renggang', '4'),
('C007', 'Suhu prosessor normal ( 30 ° - 60 ° )', '4'),
('C008', 'Suhu prosessor tidak normal ( > 60 ° )', '4'),
('C009', 'Perangkat layar diatur ke monitor eksternal', '4'),
('C010', 'Lampu indikator Sleep menyala', '4'),
('C011', 'Tingkat kecerahan terlalu rendah', '4'),
('C012', 'Hard disk tidak terdeteksi di BIOS', '4'),
('C013', 'Hard disk terdeteksi di BIOS, laptop tetap tidak mau booting', '4'),
('C014', 'Setting-an brightnes (terang/redup) terlalu dominan', '4'),
('C015', 'Driver VGA bermasalah', '4'),
('C016', 'Setting-an DPI tidak sesuai', '4'),
('C017', 'Hard disk penuh', '4'),
('C018', 'Hard disk overheat', '4'),
('C019', 'Media disk kotor', '4'),
('C020', 'Lensa optik kotor', '4'),
('C021', 'Dioda laser optik rusak', '4'),
('C022', 'Motor pintu tidak bekerja', '4'),
('C023', 'Gigi roda kotor dan karet tape sudah mengembang', '4'),
('C024', 'Hard disk sering di format full', '4'),
('G001', 'Mengetik huruf, angka yang muncul', '3'),
('G002', 'Key <Fn> (function) tidak berfungsi', '3'),
('G003', 'Touch pad tidak berfungsi', '3'),
('G004', 'Laptop hang', '3'),
('G005', 'LCD tidak menampilkan gambar', '3'),
('G006', 'Laptop tidak bisa booting (login windows)', '3'),
('G007', 'LCD terlalu terang/terlalu redup', '3'),
('G008', 'Pada LCD muncul garis-garis biru-merah-putih', '3'),
('G009', 'Blue screen saat menjalankan aplikasi berat', '3'),
('G010', 'Laptop tiba-tiba mati', '3'),
('G011', 'Drive optik membaca data tersendat-sendat', '3'),
('G012', 'Drive optik tidak memancarkan sinar infrared', '3'),
('G013', 'Drive optik susah buka tutup pintu', '3'),
('G014', 'Hard disk tidak dapat di format', '3'),
('J001', 'Keyboard', '2'),
('J002', 'Touch Pad', '2'),
('J003', 'Layar LCD', '2'),
('J004', 'Processor', '2'),
('J005', 'Driver Optik', '2'),
('J006', 'Harddisk', '2'),
('M001', 'Input', '1'),
('M002', 'Output', '1'),
('M003', 'Process', '1'),
('M004', 'Storage', '1'),
('S001', 'Non-aktifkan tombol function Num Lock dengan menekan\r\nkombinasi <Fn> + <F11>/Num Lock (tergantung model\r\nlaptop, baca buku manual)', '5'),
('S002', 'Installasikan driver Hot Key', '5'),
('S003', 'Diver bermasalah, download driver (misal pada situs : \r\nhttp://Drivercollection.com)', '5'),
('S004', 'Non-aktifkan dengan menekan kembali kombinasi <Fn> + \r\n<F7> (tergantung model laptop, baca buku manual)', '5'),
('S005', '1) Lakukan virus scanning lewat safe mode (lebih efektif \r\nketimbang lewat modus normal, karena pada safe\r\nmode sistem bekerja secara minimal dan membuat anti\r\nvirus lebih leluasa dalam melakukan scanning) ; \r\n2) Scan juga menggunakan program pembersih registry\r\n(registry tweaker, registry cleaner, dan lain-lain) ; \r\n3) Apabila masih bermasalah, install tanpa format hard disk\r\n(boot menggunakan CD windows, kemudian masuk ke\r\nmode recovery) atau install ulang saja windows.', '5'),
('S006', 'Pasang kembali konektor dengan benar', '5'),
('S007', 'Tambahkan cooler/kipas pendingin untuk membantu \r\nmendinginkan prosessor agar tidak terlalu panas', '5'),
('S008', 'Instal ulang sistem operasi \r\n\r\nKeterangan :\r\nDengan sistem baru, komputer akan lebih ringan dan filefile\r\n\r\nmasih bekerja dengan baik. Apabila install ulang ini\r\ntidak menyelesaikan masalah, hampir dipastikan laptop\r\nmengalami masalah hardware. Jika sudah demikian,\r\nsebaiknya bawa laptop ke tempat servis', '5'),
('S009', 'Gunakan kombinasi tombol <Fn> + <F5> (tergantung\r\nmodel laptop, baca buku manual) untuk mengalihkan layar\r\nkembali ke laptop', '5'),
('S010', 'Tekan dan lepas tombol power untuk melanjutkan', '5'),
('S011', 'Gunakan kombinasi tombol <Fn> + dengan tombol \r\nsetting-an brightness (meningkat, biasanya pada keypad\r\nberlogo matahari). Atur tingkat kecerahan sesuai dengan\r\nkenyamanan mata', '5'),
('S012', 'Install ulang sistem operasi', '5'),
('S013', 'Kerusakan terdapat pada komponen hard disk, biasanya \r\nsocket hard disk kendur atau pin-pin hard disk ada yang\r\npatah. \r\nSebagai solusinya, ganti/perbaiki komponen yang\r\nbermasalah. Jika tetap tidak mau booting, ganti hard disk \r\ntersebut karena sudah rusak', '5'),
('S014', 'Gunakan kombinasi tombol <Fn> + dengan tombol \r\nsetting-an brightnes (penambahan/pengurangan,\r\nbiasanya pada keypad berlogo matahari). Atur cahaya\r\nsesuai dengan kenyamanan mata', '5'),
('S015', 'Install ulang driver VGA. Jika masih bermasalah bawa ke\r\ntempat servis', '5'),
('S016', 'Refresh kembali Screen Rate yang ada pada Display\r\nProperties (OS : windows) kemudian set ke 60 Hz', '5'),
('S017', 'Uninstall aplikasi lainnya yang tidak terlalu penting sampai\r\nhard disk cukup ruang untuk menjalankan aplikasi yang\r\ndiinginkan', '5'),
('S018', 'Tambahkan cooler/kipas pendingin untuk membantu\r\nmendinginkan hard disk agar tidak terlalu panas \r\n(overheat)', '5'),
('S019', 'Membersihkan permukaan disk tersebut dengan \r\nmenggunakan alkohol dan gunakan kapas untuk\r\nmengoleskannya', '5'),
('S020', 'Membersihkan  lensa optik tersebut dengan CD Cleaner', '5'),
('S021', 'Ganti dengan optik yang sama (misalnya optik CD-ROM \r\ndengan optik CD-ROM, optik DVD-ROM dengan optik\r\nDVD-ROM)', '5'),
('S022', 'Mengganti motor pintu', '5'),
('S023', 'Ganti karet tape dan bersihkan roda gigi poros pintu \r\nkemudian berikan pelumas untuk melancarkan\r\npergerakan', '5'),
('S024', 'Gunakan disk manager untuk mem-format', '5');

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id_rule` int(250) NOT NULL,
  `start_rule` varchar(250) DEFAULT NULL,
  `point_rule` varchar(250) NOT NULL,
  `status_rule` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `start_rule`, `point_rule`, `status_rule`) VALUES
(1, '0', 'M001', 0),
(2, '0', 'M002', 0),
(3, '0', 'M003', 0),
(4, '0', 'M004', 0),
(5, 'M001', 'J001', 0),
(6, 'M001', 'J002', 0),
(7, 'M002', 'J003', 0),
(8, 'M003', 'J004', 0),
(9, 'M004', 'J005', 0),
(10, 'M004', 'J006', 0),
(11, 'J001', 'G001', 0),
(12, 'J001', 'G002', 0),
(13, 'J002', 'G003', 0),
(14, 'J003', 'G004', 0),
(15, 'J003', 'G005', 0),
(16, 'J003', 'G006', 0),
(17, 'J003', 'G007', 0),
(18, 'J003', 'G008', 0),
(19, 'J003', 'G009', 0),
(20, 'J004', 'G004', 0),
(21, 'J005', 'G011', 0),
(22, 'J005', 'G012', 0),
(23, 'J005', 'G013', 0),
(24, 'J006', 'G006', 0),
(25, 'J006', 'G009', 0),
(26, 'J006', 'G014', 0),
(27, 'G001', 'C001', 0),
(28, 'G002', 'C002', 0),
(29, 'G002', 'C003', 0),
(30, 'G003', 'C004', 0),
(31, 'G003', 'C005', 0),
(32, 'G004', 'C007', 0),
(33, 'G004', 'C008', 0),
(34, 'G005', 'C009', 0),
(35, 'G005', 'C010', 0),
(36, 'G005', 'C011', 0),
(37, 'G006', 'C012', 0),
(38, 'G006', 'C013', 0),
(39, 'G007', 'C014', 0),
(40, 'G007', 'C015', 0),
(41, 'G008', 'C016', 0),
(42, 'G009', 'C017', 0),
(43, 'G009', 'C018', 0),
(44, 'G010', 'C008', 0),
(45, 'G011', 'C019', 0),
(46, 'G011', 'C020', 0),
(47, 'G012', 'C021', 0),
(48, 'G013', 'C022', 0),
(49, 'G013', 'C023', 0),
(50, 'G014', 'C024', 0),
(51, 'G003', 'C006', 0),
(52, 'C001', 'S001', 0),
(53, 'C002', 'S002', 0),
(54, 'C003', 'S003', 0),
(55, 'C004', 'S004', 0),
(56, 'C005', 'S005', 0),
(57, 'C006', 'S006', 0),
(58, 'C007', 'S007', 0),
(59, 'C008', 'S008', 0),
(60, 'C009', 'S009', 0),
(61, 'C010', 'S010', 0),
(62, 'C011', 'S011', 0),
(63, 'C012', 'S012', 0),
(64, 'C013', 'S013', 0),
(65, 'C014', 'S014', 0),
(66, 'C015', 'S015', 0),
(67, 'C016', 'S016', 0),
(68, 'C017', 'S017', 0),
(69, 'C018', 'S018', 0),
(70, 'C019', 'S019', 0),
(71, 'C020', 'S020', 0),
(72, 'C021', 'S021', 0),
(73, 'C022', 'S022', 0),
(74, 'C023', 'S023', 0),
(75, 'C024', 'S024', 0),
(76, 'S001', '0', 1),
(77, 'S002', '0', 1),
(78, 'S003', '0', 1),
(79, 'S004', '0', 1),
(80, 'S005', '0', 1),
(81, 'S006', '0', 1),
(82, 'S007', '0', 1),
(83, 'S008', '0', 1),
(84, 'S009', '0', 1),
(85, 'S010', '0', 1),
(86, 'S011', '0', 1),
(87, 'S012', '0', 1),
(88, 'S013', '0', 1),
(89, 'S014', '0', 1),
(90, 'S015', '0', 1),
(91, 'S016', '0', 1),
(92, 'S017', '0', 1),
(93, 'S018', '0', 1),
(94, 'S019', '0', 1),
(95, 'S020', '0', 1),
(96, 'S021', '0', 1),
(97, 'S022', '0', 1),
(98, 'S023', '0', 1),
(99, 'S024', '0', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fakta`
--
ALTER TABLE `fakta`
  ADD PRIMARY KEY (`id_fakta`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id_kondisi`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakta`
--
ALTER TABLE `fakta`
  MODIFY `id_fakta` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id_rule` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
