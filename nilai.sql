-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2019 at 08:33 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nilai`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `IDJur_` int(11) NOT NULL,
  `NamaJur_` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`IDJur_`, `NamaJur_`) VALUES
(1, 'Teknik Konstruksi Kayu'),
(2, 'Teknik Kontruksi Batu dan Beton'),
(3, 'Teknik Gambar Bangunan'),
(4, 'Teknik Instalasi Tenaga Listrik'),
(5, 'Teknik Pendinginan dan Tata Udara'),
(6, 'Teknik Pemesinan'),
(7, 'Teknik Kendaraan Ringan '),
(8, 'Teknik Sepeda Motor'),
(9, 'Teknik Elektronika Komunikasi'),
(10, 'Rekayasa Perangkat Lunak'),
(11, 'Teknik Komputer dan Jaringan ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `IDKelas_` int(11) NOT NULL,
  `NamaKelas_` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`IDKelas_`, `NamaKelas_`) VALUES
(1, 'XII KK'),
(2, 'XII KB 1'),
(3, 'XII KB 2'),
(4, 'XII GB 1'),
(5, 'XII GB 2'),
(6, 'XII GB 3'),
(7, 'XII TL'),
(8, 'XII TP'),
(9, 'XII PM 1'),
(10, 'XII PM 2'),
(11, 'XII TKR 1'),
(12, 'XII TKR 2'),
(13, 'XII TSM 1'),
(14, 'XII TSM 2'),
(15, 'XII EKA 1'),
(16, 'XII EKA 2'),
(17, 'XII RPL 1'),
(18, 'XII RPL 2'),
(19, 'XII TKJ 1'),
(20, 'XII TKJ 2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `IDMapel_` int(11) NOT NULL,
  `NamaMapel_` varchar(30) NOT NULL,
  `Kkm_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`IDMapel_`, `NamaMapel_`, `Kkm_`) VALUES
(1, 'Bahasa Indonesia', 78),
(2, 'Seni Budaya', 76),
(3, 'Matematika', 78),
(4, 'PPKn', 77),
(5, 'Bahasa Inggris', 78),
(6, 'Sejarah Indonesia', 76),
(7, 'Agama dan Budi Pekerti', 75),
(9, 'Fisika', 75),
(10, 'Simulasi Digital', 76),
(11, 'Prakarya dan Kewirausahaan', 76),
(12, 'Bahasa Daerah', 76),
(13, 'Penjasorkes', 75),
(14, 'Dasar Program Keahlian', 77);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `IDNilai_` int(11) NOT NULL,
  `IDSiswa_` int(11) NOT NULL,
  `IDMapel_` int(11) NOT NULL,
  `Semester_` tinyint(1) NOT NULL,
  `Tugas1_` int(3) NOT NULL,
  `Tugas2_` int(3) NOT NULL,
  `Tugas3_` int(3) NOT NULL,
  `Uts_` int(3) NOT NULL,
  `Uas_` int(3) NOT NULL,
  `Tgl_` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`IDNilai_`, `IDSiswa_`, `IDMapel_`, `Semester_`, `Tugas1_`, `Tugas2_`, `Tugas3_`, `Uts_`, `Uas_`, `Tgl_`) VALUES
(4, 184, 11, 2, 76, 80, 88, 74, 78, '2019-05-08'),
(7, 277, 3, 1, 66, 78, 76, 70, 78, '2019-05-10'),
(8, 1, 7, 1, 74, 80, 78, 74, 74, '2019-05-13'),
(9, 2, 7, 1, 64, 74, 72, 60, 62, '2019-05-13'),
(10, 3, 7, 1, 62, 78, 64, 78, 80, '2019-05-13'),
(11, 4, 7, 1, 80, 78, 76, 80, 82, '2019-05-13'),
(12, 30, 3, 1, 100, 90, 96, 84, 60, '2019-05-13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `IDSiswa_` int(11) NOT NULL,
  `Nis_` int(7) NOT NULL,
  `NamaSiswa_` varchar(50) NOT NULL,
  `Alamat_` varchar(50) NOT NULL,
  `IDKelas_` int(11) NOT NULL,
  `IDJur_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`IDSiswa_`, `Nis_`, `NamaSiswa_`, `Alamat_`, `IDKelas_`, `IDJur_`) VALUES
(1, 25673, 'I Made Adi Arya Wiguna', 'Badung', 17, 10),
(2, 25674, 'I Wayan Agus Gunawan', 'Badung', 17, 10),
(3, 25675, 'I Made Alit Adiyana', 'Denpasar', 17, 10),
(4, 25676, 'I Putu Cikal Taruna', 'Denpasar', 17, 10),
(5, 25677, 'Ni Komang Cintya Karismawati', 'Denpasar', 17, 10),
(6, 25678, 'I Kadek C. Krisna Dinata', 'Denpasar', 17, 10),
(7, 25679, 'Kadek Dhiva Tiradika', 'Denpasar', 17, 10),
(8, 25680, 'I Made Genadi Dharma Slawa', 'Denpasar', 17, 10),
(9, 25681, 'Wayan Gede Gustana Satiawan', 'Badung', 17, 10),
(10, 25682, 'Sang Ayu Made Harum Kartikasari', 'Denpasar', 17, 10),
(11, 25683, 'I Gede Krishna Wijaya Yasa', 'Denpasar', 17, 10),
(12, 25684, 'A.A Ngurah Krishnanda Wiradharma', 'Denpasar', 17, 10),
(13, 25685, 'Ni Kadek Monica', 'Badung', 17, 10),
(14, 25686, 'Putu Novita Putri Reynata', 'Badung', 17, 10),
(15, 25687, 'Kadek Oka Dwi Saputra', 'Denpasar', 17, 10),
(16, 25688, 'I Made Pradnya Wiguna', 'Denpasar', 17, 10),
(17, 25689, 'Richard Barnabas Pakinja', 'Denpasar', 17, 10),
(18, 25690, 'Rifa Atus Sholikhah', 'Denpasar', 17, 10),
(19, 25691, 'Kadek Rama Awatara Artha', 'Denpasar', 17, 10),
(20, 25692, 'I Putu Gede Ramdana Putrha', 'Denpasar', 17, 10),
(21, 25693, 'I Putu Risky Arya Juniartha', 'Badung', 17, 10),
(22, 25694, 'Made Simayodika', 'Denpasar', 17, 10),
(23, 25695, 'Putu Gede Sanchia Jodie Mantra', 'Denpasar', 17, 10),
(24, 25696, 'Gede Sastrawan', 'Denpasar', 17, 10),
(25, 25697, 'Ni Made Siwi Juniasih', 'Badung', 17, 10),
(26, 25698, 'I Gede Surya Buana Cakra', 'Gianyar', 17, 10),
(27, 25699, 'I Gusti Ngurah Satya Wikananda', 'Denpasar', 17, 10),
(28, 25700, 'Surya Kelana Silalahi', 'Denpasar', 17, 10),
(29, 25701, 'I Gede Sutaamara', 'Denpasar', 17, 10),
(30, 25702, 'A.A Gede Trinanta Putra', 'Denpasar', 17, 10),
(31, 25703, 'Luh Putu Venny Sukma Dewi', 'Denpasar', 17, 10),
(32, 25704, 'Wiwan Gussanda', 'Denpasar', 17, 10),
(33, 25705, 'I Putu Wisnu Aji Bagaskara', 'Denpasar', 17, 10),
(34, 25706, 'Ni Kadek Wiwitari Indah Swari', 'Gianyar', 17, 10),
(35, 25707, 'Ni Made Yunianti Ariska Putri', 'Denpasar', 17, 10),
(36, 25708, 'Ni Kadek Yuni Apsari', 'Denpasar', 17, 10),
(37, 25709, 'Rheznendra Praditya Laksma Putra', 'Denpasar', 18, 10),
(38, 25710, 'Gusti Ngurah Agung Premaditya Pratama Mandala', 'Denpasar', 18, 10),
(39, 25711, 'I Gusti Ngurah Artha Trana Parayana Dewantara', 'Badung', 18, 10),
(40, 25712, 'I Gusti Agung Dwi Permana Merta Yoga', 'Denpasar', 18, 10),
(41, 25713, 'Dyah Dewi Sri Aryati', 'Denpasar', 18, 10),
(42, 25714, 'Yopi Abi Khusna', 'Denpasar', 18, 10),
(43, 25715, 'Gede Govi Utama', 'Badung', 18, 10),
(44, 25716, 'Kadek Laba Subagia ', 'Badung', 18, 10),
(45, 25717, 'I Kadek Ade Semara Putra', 'Denpasar', 18, 10),
(46, 25718, 'I Made Gananta', 'Denpasar', 18, 10),
(47, 25719, 'Andre Hadi Prayoga', 'Denpasar', 18, 10),
(48, 25720, 'Luh Putu Mirah Cahyanthi', 'Denpasar', 18, 10),
(49, 25721, 'Putu Erik Setiawan', 'Denpasar', 18, 10),
(50, 25722, 'Ni Kadek Devi Antari', 'Badung', 18, 10),
(51, 25723, 'Komang Satya Aryananta', 'Denpasar', 18, 10),
(52, 25724, 'Sang Putu Yoga Pramana', 'Denpasar', 18, 10),
(53, 25725, 'Komang Pramayasa', 'Badung', 18, 10),
(54, 25726, 'Made Bagas Kembar Sudarma', 'Denpasar', 18, 10),
(55, 25727, 'Ni Made Gita Wulandari', 'Denpasar', 18, 10),
(56, 25728, 'I Made Satya Sundara', 'Denpasar', 18, 10),
(57, 25729, 'I Putu Tosan Krisna Wiranata', 'Denpasar', 18, 10),
(58, 25730, 'Shilta Inda Qurroti Ayun Achmadi', 'Denpasar', 18, 10),
(59, 25731, 'I Komang Ardi Triana', 'Denpasar', 18, 10),
(60, 25732, 'I Wayan Putra Adnyana', 'Badung', 18, 10),
(61, 25733, 'Devi Sri Saraswati', 'Denpasar', 18, 10),
(62, 25734, 'Putu Agus Raditya Jayantara', 'Denpasar', 18, 10),
(63, 25735, 'Anggita Natiya Ardhiani', 'Denpasar', 18, 10),
(64, 25736, 'Kadek Effa Krisma Buriartha', 'Badung', 18, 10),
(65, 25737, 'Putu Ananda Andra Pratama', 'Denpasar', 18, 10),
(66, 25738, 'I. G.Ag .Kom. Agnam Melyantara', 'Denpasar', 18, 10),
(67, 25739, 'Ketut Estaresa Kumala', 'Denpasar', 18, 10),
(68, 25740, 'Anak Agung Ngurah Pramana Yudistira', 'Badung', 18, 10),
(69, 25741, 'Ida Bagus Gede Surya Aditya', 'Denpasar', 18, 10),
(70, 25742, 'I Kadek Dwi Artha Wiguna', 'Badung', 19, 11),
(71, 25743, 'Erlangga Bayu Dhaniswara', 'Denpasar', 19, 11),
(72, 25744, 'Putu Bagus Radithia Mahardika', 'Denpasar', 19, 11),
(73, 25745, 'Putu Aditya Oka Pratama', 'Denpasar', 19, 11),
(74, 25746, 'I Putu Krisna Wijaya', 'Denpasar', 19, 11),
(75, 25747, 'I Made Gilvan Kama Bramanda', 'Denpasar', 19, 11),
(76, 25748, 'Putu Dede Andika Putra', 'Gianyar', 19, 11),
(77, 25749, 'Kadek Adi Wiradana', 'Badung', 19, 11),
(78, 25750, 'I Gusti Ngurah Aripranata', 'Denpasar', 19, 11),
(79, 25751, 'I Gede Sidhi Adnyana', 'Denpasar', 19, 11),
(80, 25752, 'Dinda Aulia Putri', 'Denpasar', 19, 11),
(81, 25753, 'Putu Angga Permana Putra', 'Denpasar', 19, 11),
(82, 25754, 'I Gede Eka Juli Sastrawan', 'Badung', 19, 11),
(83, 25755, 'I Gede Rista Priatna Putra', 'Denpasar', 19, 11),
(84, 25756, 'I Made Wisnu Aldi Pratama', 'Denpasar', 19, 11),
(85, 25757, 'Adam Almahdi', 'Denpasar', 19, 11),
(86, 25758, 'Kadek Dwi Wiratama', 'Badung', 19, 11),
(87, 25759, 'Ni Putu Lisa Cahaya Dewi', 'Denpasar', 19, 11),
(88, 25760, 'I Gusti Agung Putu Dharma Putra', 'Denpasar', 19, 11),
(89, 25761, 'I Gede Susila Darma Putra', 'Denpasar', 19, 11),
(90, 25762, 'Nanda Prasetyaningtiyas', 'Denpasar', 19, 11),
(91, 25763, 'Zidan Syahrizal', 'Badung', 19, 11),
(92, 25764, 'Ida Bagus Putu Wahyu Putra Pratama', 'Denpasar', 19, 11),
(93, 25765, 'I Made Ariec Aditya Putra', 'Denpasar', 19, 11),
(94, 25766, 'Ardha Rachmansyah', 'Denpasar', 19, 11),
(95, 25767, 'Kadek Wahyu Setiawan', 'Denpasar', 20, 11),
(96, 25768, 'Agus Budi Santoso', 'Denpasar', 20, 11),
(97, 25769, 'I Gede Agus Satiawan', 'Gianyar', 20, 11),
(98, 25770, 'Jordan Syahrul Roziin', 'Denpasar', 20, 11),
(99, 25771, 'I Made Satya Reka', 'Badung', 20, 11),
(100, 25772, 'Ramadhan Satrio Aji Prakoso', 'Denpasar', 20, 11),
(101, 25773, 'Komang Martadana Wijaya', 'Denpasar', 20, 11),
(102, 25774, 'I Putu Indra Budi Permanai', 'Denpasar', 20, 11),
(103, 25775, 'Gede Sudiantara', 'Badung', 20, 11),
(104, 25776, 'I Made Satria Wiguna', 'Denpasar', 20, 11),
(105, 25777, 'I Putu Aditya Pratama', 'Denpasar', 20, 11),
(106, 25778, 'Ilham Aulia Akbar', 'Denpasar', 20, 11),
(107, 25779, 'Anak Agung Ngurah Agung Deva Pramana Ariangga', 'Tabanan', 20, 11),
(108, 25780, 'I Putu Nanda Pratama', 'Gianyar', 20, 11),
(109, 25781, 'I Komang Artha Wirata', 'Badung', 20, 11),
(110, 25782, 'Ayu Krisna Melati', 'Denpasar', 20, 11),
(111, 25783, 'Faiz Nurdriansyah', 'Denpasar', 20, 11),
(112, 25784, 'Adenelan Savitri', 'Badung', 20, 11),
(113, 25785, 'I Made Odiesta Shandikarona', 'Denpasar', 20, 11),
(114, 25786, 'Moch. Alfin Syamputra', 'Denpasar', 20, 11),
(115, 25787, 'Dyota Fajar Raditya', 'Denpasar', 20, 11),
(116, 25788, 'A.A.Gede Nata Negara Lascha Sanjaya', 'Denpasar', 20, 11),
(117, 25789, 'Yunita Salsabila', 'Denpasar', 20, 11),
(118, 25790, 'Putu Yuda Widiana', 'Denpasar', 20, 11),
(119, 25791, 'Dwi Fany Julianto Putro', 'Denpasar', 20, 11),
(120, 25612, 'Franky Surya Kangga', 'Denpasar', 15, 9),
(121, 25613, 'I Wayan Karmendra Eka Putra', 'Denpasar', 15, 9),
(122, 25614, 'Putu Tesa Liwa Purnadita', 'Denpasar', 15, 9),
(123, 25615, 'Kadek Didin Arya Pradita', 'Denpasar', 15, 9),
(124, 25616, 'I Made Widi Dwipayana', 'Denpasar', 15, 9),
(125, 25617, 'I Gede Milisi Jaya Negara', 'Badung', 15, 9),
(126, 25618, 'I Putu Gede Kresna Aditya', 'Denpasar', 15, 9),
(127, 25619, 'Rico Romadhoni Atma Wijaya', 'Badung', 15, 9),
(128, 25620, 'Made Ardi Swara', 'Badung', 15, 9),
(129, 25621, 'I Komang Dadi Suwardana', 'Denpasar', 15, 9),
(130, 25622, 'I Gusti Agung Ngurah Devasya Putra Pratama', 'Denpasar', 15, 9),
(131, 25623, 'Zeghamast Huristian Januarta', 'Gianyar', 15, 9),
(132, 25624, 'Diar Novianto', 'Tabanan', 15, 9),
(133, 25625, 'Putu Septian Sathya Cahyadi', 'Denpasar', 15, 9),
(134, 25626, 'Dimas Adik Yudistira', 'Denpasar', 15, 9),
(135, 25627, 'Ida Bagus Ketut Aditya Warma', 'Denpasar', 15, 9),
(136, 25628, 'Ellan Rayhandika Wijaya', 'Denpasar', 15, 9),
(137, 25629, 'I Made Aldy Priantho', 'Denpasar', 15, 9),
(138, 25630, 'I Dewa Made Gede Surya Okgiarta', 'Badung', 15, 9),
(139, 25631, 'Nur Ismail', 'Badung', 15, 9),
(140, 25632, 'I Gede Budiyasa', 'Denpasar', 15, 9),
(141, 25633, 'Ni Luh Anik Sidhi Anggraeni', 'Denpasar', 15, 9),
(142, 25634, 'Anak Agung Made Bahula Darma', 'Badung', 15, 9),
(143, 25635, 'Charles Abdul Thaha Mothobara', 'Denpasar', 15, 9),
(144, 25636, 'I Made Yoga Pranata', 'Denpasar', 15, 9),
(145, 25637, 'Ni Nyoman Ayu Prabasari', 'Denpasar', 15, 9),
(146, 25638, 'I Putu Krisna Kusumajaya', 'Denpasar', 15, 9),
(147, 25639, 'I Made Ardiana Putra', 'Badung', 15, 9),
(148, 25640, 'I Putu Jey Pujanatha', 'Badung', 15, 9),
(149, 25641, 'I Nyoman Manik Arta', 'Denpasar', 15, 9),
(150, 25642, 'I Putu Agus Adi Adnyana', 'Denpasar', 15, 9),
(151, 25643, 'M. Rainald Aulia Anwar', 'Denpasar', 16, 9),
(152, 25644, 'I Nyoman Gede Udayana', 'Denpasar', 16, 9),
(153, 25645, 'Ade Fitria Rachmadi', 'Badung', 16, 9),
(154, 25646, 'Agus Wijaya Kusuma', 'Tabanan', 16, 9),
(155, 25647, 'Ni Luh Donika Sunia Trisaka Dewi', 'Denpasar', 16, 9),
(156, 25648, 'I Made Yudiana', 'Denpasar', 16, 9),
(157, 25649, 'I Gede Palguna Wirajaya', 'Denpasar', 16, 9),
(158, 25650, 'Nicko Asaddulloh', 'Denpasar', 16, 9),
(159, 25651, 'Alvian Syah Alkaff', 'Denpasar', 16, 9),
(160, 25652, 'I Made Agus Permana Dwi Putra', 'Denpasar', 16, 9),
(161, 25653, 'I Putu Dedy Alan Kusuma', 'Denpasar', 16, 9),
(162, 25654, 'I Nyoman Arie Sukma Jaya', 'Badung', 16, 9),
(163, 25655, 'Philipp Kadek Passmann', 'Denpasar', 16, 9),
(164, 25656, 'I Made Subrahmanyan Weda Wikrama', 'Denpasar', 16, 9),
(165, 25657, 'Rizky Ramadhan', 'Denpasar', 16, 9),
(166, 25658, 'Anak Agung Manik Mahendra', 'Denpasar', 16, 9),
(167, 25659, 'Nickolas Satya Ivanov', 'Denpasar', 16, 9),
(168, 25660, 'I Putu Dony Sastrawan', 'Denpasar', 16, 9),
(169, 25661, 'Muhammad Harish Darussalam', 'Denpasar', 16, 9),
(170, 25662, 'I Kadek Bagus Jaya Kusuma', 'Denpasar', 16, 9),
(171, 25663, 'Dony Iswara', 'Denpasar', 16, 9),
(172, 25664, 'Ni Kadek Andry Dwi Putri', 'Denpasar', 16, 9),
(173, 25665, 'I Kadek Adi Widagda', 'Denpasar', 16, 9),
(174, 25666, 'I Made Surya Nadhi', 'Badung', 16, 9),
(175, 25667, 'I Dewa Gede Lesmana Putra', 'Denpasar', 16, 9),
(176, 25668, 'Mochammad Alif Daffa Syachtayanaf', 'Denpasar', 16, 9),
(177, 25669, 'Zultiyo Wirlian Ramadhan', 'Denpasar', 16, 9),
(178, 25670, 'Aziz Adnan Alawy Gunawan Putra', 'Denpasar', 16, 9),
(179, 25671, 'Ammar Fayiz Santoso', 'Denpasar', 16, 9),
(180, 25672, 'Sencha Wisnutama', 'Tabanan', 16, 9),
(181, 25553, 'Arya Adhie Prayudha', 'Denpasar', 13, 8),
(182, 25611, 'Gede Widya Wahana', 'Denpasar', 14, 8),
(183, 25554, 'Anak Agung Putu Ngurah Andika Adnyana', 'Badung', 13, 8),
(184, 25555, 'A.A. Putu Ardi Ardana', 'Denpasar', 13, 8),
(185, 25556, 'I Made Tresna Wijaya', 'Gianyar', 13, 8),
(186, 25557, 'I Ketut Dharma Wijaya', 'Denpasar', 13, 8),
(187, 25558, 'Agus Diana Putra', 'Denpasar', 13, 8),
(188, 25559, 'Gede Agus Krisna Wirantawan', 'Denpasar', 13, 8),
(189, 25560, 'Agung Christian Tri Adi Utama', 'Denpasar', 13, 8),
(190, 25561, 'I Putu Ananda Suputra', 'Denpasar', 13, 8),
(191, 25562, 'Putu Era Ediawan', 'Badung', 13, 8),
(192, 25563, 'I Putu Heri Prasetya', 'Denpasar', 13, 8),
(193, 25564, 'Anak Agung Krisna Dinata', 'Denpasar', 13, 8),
(194, 25565, 'Made Arya Rukmana', 'Gianyar', 13, 8),
(195, 25566, 'Agus Delta Pandita', 'Denpasar', 13, 8),
(196, 25567, 'I Putu Gede Aditya Pradnyanata', 'Denpasar', 13, 8),
(197, 25568, 'Tri Cahyo Wicaksono', 'Denpasar', 13, 8),
(198, 25569, 'Therano Yudi Antara Putra', 'Gianyar', 13, 8),
(199, 25570, 'I Gede Suarya Bawa', 'Denpasar', 13, 8),
(200, 25571, 'Wayan Agus Suwara Dana', 'Denpasar', 13, 8),
(201, 25572, 'I Agus Kadek Engky Wira Pratama', 'Denpasar', 13, 8),
(202, 25573, 'I Gusti Ngurah Parmana', 'Denpasar', 13, 8),
(203, 25574, 'I Made Khrisna Adi Permana', 'Denpasar', 13, 8),
(204, 25575, 'I Gede Putra Yasa', 'Badung', 13, 8),
(205, 25576, 'I Gede Arta Danan Jaya', 'Badung', 13, 8),
(206, 25577, 'I Made Yoga Wijaya', 'Badung', 13, 8),
(207, 25578, 'Gusti Ngurah Ersandya Krishna Putra', 'Denpasar', 13, 8),
(208, 25579, 'I Putu Wahyu Friday Prasetyo', 'Denpasar', 13, 8),
(209, 25580, 'I Komang Krisna Yuda', 'Badung', 13, 8),
(210, 25581, 'Gusti Nyoman Satria', 'Denpasar', 13, 8),
(211, 25582, 'I Putu Gede Ferdyan Abdika Wiprayana', 'Denpasar', 14, 8),
(212, 25583, 'Pande Ketut Purna Wiguna', 'Denpasar', 14, 8),
(213, 25584, 'Kadek Edoin Aldrin', 'Badung', 14, 8),
(214, 25585, 'I Wayan Odik Yoga Pratama', 'Denpasar', 14, 8),
(215, 25586, 'Komang Arya Handika', 'Denpasar', 14, 8),
(216, 25587, 'Anak Agung Bagus Sudarma Putra', 'Denpasar', 14, 8),
(217, 25588, 'I Made Deva Dwi Saputra', 'Gianyar', 14, 8),
(218, 25589, 'Alip Darmawan', 'Denpasar', 14, 8),
(219, 25590, 'Si Gede Yoga Surya Antara', 'Denpasar', 14, 8),
(220, 25591, 'I Nyoman Badi Artha', 'Badung', 14, 8),
(222, 25592, 'I Putu Arya Adnyana', 'Denpasar', 14, 8),
(223, 25593, 'Riski Alvian Ariyanto', 'Badung', 14, 8),
(224, 25594, 'I Made Adi Sayoga', 'Denpasar', 14, 8),
(225, 25595, 'Indra Firmansyah', 'Denpasar', 14, 8),
(226, 25596, 'Victor Ipsa Westerianto Wonasoba', 'Gianyar', 14, 8),
(227, 25597, 'I Putu Yogi Krisna Putra', 'Badung', 14, 8),
(228, 25598, 'I Nyoman Yoga Sentana', 'Denpasar', 14, 8),
(229, 25599, 'I Gede Anrasangsya Prana Satria', 'Denpasar', 14, 8),
(230, 25600, 'Made Willy Saputra', 'Denpasar', 14, 8),
(231, 25601, 'I Made Dwi Agustadana', 'Badung', 14, 8),
(232, 25602, 'Andi Setiawan', 'Denpasar', 14, 8),
(233, 25603, 'Muhammad Rizal Bachtiar', 'Denpasar', 14, 8),
(234, 25604, 'Made Cahya Deva Dwi Mertha Adnyana Dana', 'Denpasar', 14, 8),
(235, 25605, 'Ketut Gedhe Bagus Satriasa', 'Badung', 14, 8),
(236, 25606, 'I Made Awidiya Wiadnyana', 'Badung', 14, 8),
(237, 25607, 'I Komang Deddy Eka Putra Wijaya', 'Badung', 14, 8),
(238, 25608, 'Muhammad Fajar Abaz Zahroi', 'Badung', 14, 8),
(239, 25609, 'I Kadek Mertayasa', 'Denpasar', 14, 8),
(240, 25610, 'I Komang Ariawan', 'Badung', 14, 8),
(241, 25552, 'I Kadek Yudha Sentana', 'Denpasar', 13, 8),
(242, 25488, 'Rahmat Bagus Setiawan', 'Denpasar', 11, 7),
(243, 25489, 'Muhamad Rofin', 'Badung', 11, 7),
(244, 25490, 'I Putu Epriana Putra', 'Denpasar', 11, 7),
(245, 25491, 'I Wayan Galang Adi Umbara', 'Badung', 11, 7),
(246, 25492, 'I Nyoman Suayana', 'Denpasar', 11, 7),
(247, 25493, 'I Ketut Edy Caka Cahayadi', 'Denpasar', 11, 7),
(248, 25494, 'I Made Raditya Dwi Mahendra', 'Denpasar', 11, 7),
(249, 25495, 'I Putu Yogi', 'Denpasar', 11, 7),
(250, 25496, 'I Gusti Ngurah Made Diva Nugraha', 'Badung', 11, 7),
(251, 25497, 'Putu Tera Wahyudi', 'Badung', 11, 7),
(252, 25498, 'Mohamad Taufik', 'Denpasar', 11, 7),
(253, 25499, 'I Made Rai Upadana', 'Denpasar', 11, 7),
(254, 25500, 'Alantha Wahyu Handika', 'Tabanan', 11, 7),
(255, 25501, 'I Kadek Riski Raditia', 'Denpasar', 11, 7),
(256, 25502, 'Victor Sanjaya', 'Badung', 11, 7),
(257, 25503, 'I Made Agus Darma Putra', 'Denpasar', 11, 7),
(258, 25504, 'Diva Aditya Wibowo', 'Denpasar', 11, 7),
(259, 25505, 'Kadek Artia Beto', 'Denpasar', 11, 7),
(260, 25506, 'I Gede Dodix Praguna', 'Badung', 11, 7),
(261, 25507, 'I Putu Widi Adnyana', 'Denpasar', 11, 7),
(262, 25508, 'I Gede Wisma Jayaguna', 'Denpasar', 11, 7),
(263, 25509, 'I Made Putra Anda Kusuma', 'Denpasar', 11, 7),
(264, 25510, 'Dafa Ari Setyawan', 'Denpasar', 11, 7),
(265, 25511, 'I Nyoman Agus Andika Putra', 'Denpasar', 11, 7),
(266, 25512, 'I Made Arpin Ariyawan', 'Denpasar', 11, 7),
(267, 25513, 'I Ketut Manik Aditya Hardaya Adhita', 'Denpasar', 11, 7),
(268, 25514, 'Kadek Priyastama', 'Denpasar', 11, 7),
(269, 25515, 'I Putu Agus Ari Winata', 'Denpasar', 11, 7),
(270, 25516, 'Khoirul Anwar', 'Badung', 11, 7),
(271, 25517, 'I Gede Pande Sujiatmika', 'Denpasar', 11, 7),
(272, 25518, 'I Gede Putra Darmayasa', 'Denpasar', 11, 7),
(273, 25519, 'I Putu Satya Narayana', 'Denpasar', 11, 7),
(274, 25520, 'I Gede Hari Sudarma Giri', 'Badung', 12, 7),
(275, 25521, 'Made Agus Ari Santana', 'Denpasar', 12, 7),
(276, 25522, 'Syama Sundara', 'Denpasar', 12, 7),
(277, 25523, 'I Kadek Agus Nova Aditya', 'Badung', 12, 7),
(278, 25524, 'I Putu Rian Angga Pratama', 'Denpasar', 12, 7),
(279, 25525, 'I Gede Artha Arya Wiratama', 'Badung', 12, 7),
(280, 25526, 'I Made Rai Nikayasa Adnyana', 'Badung', 12, 7),
(281, 25527, 'I Komang Febbry Freddyandika', 'Denpasar', 12, 7),
(282, 25528, 'Prawira Indra Prasta', 'Denpasar', 12, 7),
(283, 25529, 'I Kadek Agus Wirayuda', 'Badung', 12, 7),
(284, 25530, 'I Komang Adi Risnantara', 'Denpasar', 12, 7),
(285, 25531, 'I Made Agus Darmayasa', 'Denpasar', 12, 7),
(286, 25532, 'I Made Putra Wiranata', 'Denpasar', 12, 7),
(287, 25533, 'I Made Dedi Ermawan', 'Badung', 12, 7),
(288, 25534, 'I Made Widiadnyana', 'Denpasar', 12, 7),
(289, 25535, 'I Made Surya Permana', 'Denpasar', 12, 7),
(290, 25536, 'I Komang Selamet Widyasa', 'Denpasar', 12, 7),
(291, 25537, 'I Gusti Ngurah Widhiada Sukahet', 'Denpasar', 12, 7),
(292, 25538, 'I Gusti Ngurah Made Setiawan', 'Denpasar', 12, 7),
(293, 25539, 'Andre Puja Kusuma', 'Badung', 12, 7),
(294, 25540, 'I Nyoman Tio Irawan Mustika', 'Denpasar', 12, 7),
(295, 25541, 'Mohamad Wahyu Ardian Saputra', 'Denpasar', 12, 7),
(296, 25542, 'Lorensho Aryanto', 'Denpasar', 12, 7),
(297, 25543, 'I Made Krisna Bayu Setiawan', 'Denpasar', 12, 7),
(298, 25544, 'I Putu Adi Suarentana', 'Denpasar', 12, 7),
(299, 25545, 'Salit Ngurah Bagus Alit Suyasa', 'Denpasar', 12, 7),
(300, 25546, 'I Gusti Ngurah Surya Jaya Kusuma', 'Denpasar', 12, 7),
(301, 25547, 'Agus Suardana Putra', 'Gianyar', 12, 7),
(302, 25548, 'I Komang Trisna Merta Mahendra', 'Denpasar', 12, 7),
(303, 25549, 'I Putu Arya Pratama Putra', 'Denpasar', 12, 7),
(304, 25550, 'I Putu Aldy Candra Wiguna', 'Denpasar', 12, 7),
(305, 25551, 'I Nyoman Bima Permana', 'Gianyar', 12, 7),
(306, 25443, 'I Gede Zefanya Andika Oktavian', 'Denpasar', 9, 6),
(307, 25444, 'Anak Agung Bagus Indra Mardiana', 'Denpasar', 9, 6),
(308, 25445, 'I Putu Udayana Adi Wikarsa', 'Denpasar', 9, 6),
(309, 25446, 'I Kadek Angga Krisdayana', 'Badung', 9, 6),
(310, 25447, 'I Wayan Kevin Rustiawan', 'Denpasar', 9, 6),
(311, 25448, 'Ngurah Diva Mandala', 'Denpasar', 9, 6),
(312, 25449, 'Sang Made Mertha Sukma Jati', 'Denpasar', 9, 6),
(313, 25450, 'I Gusti Agung Yogi Pramana Putra', 'Denpasar', 9, 6),
(314, 25451, 'Agung Shafly Firdaus', 'Denpasar', 9, 6),
(315, 25452, 'I Made Arya Krisna Jaya', 'Denpasar', 9, 6),
(316, 25454, 'I Gusti Ngurah Dharma Wijaya', 'Denpasar', 9, 6),
(317, 25454, 'Dharma Dutaluhur Artha Lesmana', 'Denpasar', 9, 6),
(318, 25455, 'Kristian Yonathan Harijanto', 'Denpasar', 9, 6),
(319, 25456, 'I Wayan Eri Yanta', 'Badung', 9, 6),
(320, 25457, 'I Kadek Bayang Catu Nugraha', 'Denpasar', 9, 6),
(321, 25458, 'Ali Zaenal Yusuf Auliya Irawan', 'Denpasar', 9, 6),
(322, 25459, 'I Kadek Wisnu Wibawa', 'Denpasar', 9, 6),
(323, 25460, 'I Putu Restu Indrawan Prabawa', 'Denpasar', 9, 6),
(324, 25461, 'I Made Prasana Yoga', 'Denpasar', 9, 6),
(325, 25462, 'I Made Alit Palguna', 'Denpasar', 9, 6),
(326, 25463, 'I Gede Widiantara', 'Denpasar', 9, 6),
(327, 25464, 'I Kadek Yudi Antara', 'Badung', 9, 6),
(328, 25465, 'Wayan Niki Slamat', 'Denpasar', 9, 6),
(329, 25466, 'I Gusti Ngurah Aditya Putra', 'Denpasar', 10, 6),
(330, 25467, 'I Putu Nova Adi Saputra', 'Badung', 10, 6),
(331, 25468, 'I Komang Galih Ambara Raja', 'Denpasar', 10, 6),
(332, 25469, 'Dewa Bagus Putu Meka Ardiawan', 'Denpasar', 10, 6),
(333, 25470, 'Rudolf Frans Waraney Umboh', 'Badung', 10, 6),
(334, 25471, 'Kadek Dwi Angga Praditya', 'Denpasar', 10, 6),
(335, 25472, 'I Putu Nanda Santana Duta', 'Denpasar', 10, 6),
(336, 25473, 'I Kadek Riantika', 'Denpasar', 10, 6),
(337, 25474, 'Yoga Aldhi Purnomo', 'Denpasar', 10, 6),
(338, 25475, 'Dzaki Al Farizi', 'Badung', 10, 6),
(339, 25476, 'Richie Laurentino', 'Denpasar', 10, 6),
(340, 25477, 'Myrza Reyhansyah', 'Denpasar', 10, 6),
(341, 25478, 'I Wayan Bayu Angga Saputra', 'Denpasar', 10, 6),
(342, 25479, 'Agus Denny Saputra', 'Denpasar', 10, 6),
(343, 25480, 'Made Aksamanika Putra', 'Badung', 10, 6),
(344, 25481, 'I Gede Aditya Wahyudi', 'Denpasar', 10, 6),
(345, 25482, 'Tri Laksono', 'Denpasar', 10, 6),
(346, 25483, 'Bintang Pamungka', 'Denpasar', 10, 6),
(347, 25484, 'I Kadek Agus Aditama', 'Denpasar', 10, 6),
(348, 25485, 'I Kadek Marantika Putra', 'Badung', 10, 6),
(349, 25486, 'Samsul Arifin', 'Denpasar', 10, 6),
(350, 25487, 'I Made Manggala Trayoda', 'Denpasar', 10, 6),
(351, 25410, 'I Gusti Bagus Finan Aditya', 'Badung', 8, 5),
(352, 25411, 'I Putu Gede Nopa Penariadi', 'Badung', 8, 5),
(353, 25412, 'A. A. Gd. Widyasmara Putra', 'Denpasar', 8, 5),
(354, 25413, 'Tedy Kurniawan', 'Denpasar', 8, 5),
(355, 25414, 'I Kadek Juli Setyawan', 'Denpasar', 8, 5),
(356, 25415, 'Anak Agung Ngurah Arindra Fernanda Pitayala', 'Denpasar', 8, 5),
(357, 25416, 'Kadek Dwi Warnata', 'Denpasar', 8, 5),
(358, 25417, 'Dwiki Aristian', 'Denpasar', 8, 5),
(359, 25418, 'Anak Agung Ngurah Arditya Permana', 'Denpasar', 8, 5),
(360, 25419, 'I Gede Mika Satria Narada', 'Denpasar', 8, 5),
(361, 25420, 'Anak Agung Gede Agung Brahmanda', 'Denpasar', 8, 5),
(362, 25421, 'Nazmi Tahir', 'Denpasar', 8, 5),
(363, 25422, 'Rexy Nova Angartha', 'Badung', 8, 5),
(364, 25423, 'I Made Ardika', 'Denpasar', 8, 5),
(365, 25424, 'Khema Akira Novana Atmaja', 'Denpasar', 8, 5),
(366, 25425, 'Yogi Firmansyah', 'Denpasar', 8, 5),
(367, 25426, 'I Wayan Indra Sudiatmika', 'Denpasar', 8, 5),
(368, 25427, 'I Wayan Adi Wiguna', 'Denpasar', 8, 5),
(369, 25428, 'I Wayan Eka Putra', 'Denpasar', 8, 5),
(370, 25429, 'I Gede Cahaya Wira Adinata', 'Denpasar', 8, 5),
(371, 25430, 'Rizal Mantovani', 'Denpasar', 8, 5),
(372, 25431, 'I Ketut Agus Aldi Wijaya', 'Denpasar', 8, 5),
(373, 25432, 'Putu Gede Yoga Jaya Abadi', 'Denpasar', 8, 5),
(374, 25433, 'I Made Bendesa Surya Saputra', 'Denpasar', 8, 5),
(375, 25434, 'I Made Agus Sudanayasa', 'Denpasar', 8, 5),
(376, 25435, 'Cahya Heri Setyadi', 'Badung', 8, 5),
(377, 25436, 'Ariif Rahman Putra Pratama', 'Denpasar', 8, 5),
(378, 25437, 'I Nyoman Trijaya', 'Denpasar', 8, 5),
(379, 25438, 'I Komang Joni Wiranjaya', 'Denpasar', 8, 5),
(380, 25439, 'I Made Radita Cahya', 'Denpasar', 8, 5),
(381, 25440, 'I Kadek Dedy Artawan', 'Denpasar', 8, 5),
(382, 25441, 'I Nyoman Prema Manggalam Putra', 'Denpasar', 8, 5),
(383, 25442, 'I Nyoman Trisan Trio Candra', 'Badung', 8, 5),
(384, 25385, 'Eka Sanjaya', 'Denpasar', 7, 4),
(385, 25386, 'Kadek Maha Dwipayana', 'Denpasar', 7, 4),
(386, 25387, 'Dewa Made Prasdwitananjaya', 'Badung', 7, 4),
(387, 25388, 'I Made Adi Suryantara', 'Badung', 7, 4),
(388, 25389, 'I Gede Gunem Kusuma Wijaya', 'Badung', 7, 4),
(389, 25390, 'I Komang Parta Sanjaya Putra', 'Badung', 7, 4),
(390, 25391, 'I Putu Widi Ardinata ', 'Badung', 7, 4),
(391, 25392, 'Moh. Puji Arta', 'Denpasar', 7, 4),
(392, 25393, 'I Made Bayu Kusuma Jaya ', 'Badung', 7, 4),
(393, 25394, 'I Made Guna Setiawan', 'Badung', 7, 4),
(394, 25395, 'I Nyoman Widyastana', 'Badung', 7, 4),
(395, 25396, 'I Putu Aryawan', 'Denpasar', 7, 4),
(396, 25397, 'I Wayan Galang Radika', 'Badung', 7, 4),
(397, 25398, 'I Putu Pacung Darmayuda', 'Badung', 7, 4),
(398, 25399, 'I B Riyan Bhaskara Surya Adi P', 'Badung', 7, 4),
(399, 25400, 'I Made Nova Prasetya', 'Badung', 7, 4),
(400, 25401, 'I Gede Jaka Krisna Aditya', 'Badung', 7, 4),
(401, 25402, 'I Nengah Sugiantara', 'Denpasar', 7, 4),
(402, 25403, 'I Made Tata Abdi Nugraha', 'Denpasar', 7, 4),
(403, 25404, 'I Made Wahyu Wirya Darma', 'Badung', 7, 4),
(404, 25405, 'I Wayan Didik Sanjaya', 'Badung', 7, 4),
(405, 25406, 'I Kadek Bayu Arjana Agus Setiawan ', 'Badung', 7, 4),
(406, 25407, 'Ni Luh Auldrien Ayu Putri', 'Badung', 7, 4),
(407, 25408, 'I Nyoman Hary Putra Darma', 'Denpasar', 7, 4),
(408, 25409, 'I Made Gede Jaya Wigun', 'Badung', 7, 4),
(409, 25288, 'I Gede Heri Ariarta', 'Denpasar', 4, 3),
(410, 25289, 'I Putu Andika Candrayana', 'Denpasar', 4, 3),
(411, 25290, 'Ni Kadek Diah Adinda Putri', 'Denpasar', 4, 3),
(412, 25291, 'Komang Andika Dwi Palguna', 'Badung', 4, 3),
(413, 25292, 'Ni Made Wesdayanti', 'Denpasar', 4, 3),
(414, 25293, 'Ni Komang Ryan Nandari', 'Denpasar', 4, 3),
(415, 25294, 'I Kt. Oka Putra Antara', 'Denpasar', 4, 3),
(416, 25295, 'Ida Ayu Andrea Berliana', 'Badung', 4, 3),
(417, 25296, 'Komang Yudhi Kusuma Mahendra', 'Denpasar', 4, 3),
(418, 25297, 'Ni Putu Candra Dita Rahayu', 'Denpasar', 4, 3),
(419, 25298, 'I Gede Yuda Mahendra', 'Denpasar', 4, 3),
(420, 25299, 'Alif Fachri Ramadhan', 'Badung', 4, 3),
(421, 25300, 'I Kadek Galih Juni Artha', 'Denpasar', 4, 3),
(422, 25301, 'Ghifari Fadillah Alfi', 'Denpasar', 4, 3),
(423, 25302, 'I Made Krisna Andika Putra', 'Denpasar', 4, 3),
(424, 25303, 'I Kadek Wahyu Surya Lesmana', 'Badung', 4, 3),
(425, 25304, 'I Gede Arka Suartika', 'Denpasar', 4, 3),
(426, 25305, 'Muhammad Anggi Octavian', 'Denpasar', 4, 3),
(427, 25306, 'Si Nyoman Restu Yoga Swara', 'Denpasar', 4, 3),
(428, 25307, 'I Made Setiawan', 'Denpasar', 4, 3),
(429, 25308, 'Dimas Rifky Hidayat', 'Denpasar', 4, 3),
(430, 25309, 'Yuda Anggara Dwitama', 'Denpasar', 4, 3),
(431, 25310, 'I Wayan Hindrawan', 'Badung', 4, 3),
(432, 25311, 'Rehaka', 'Denpasar', 4, 3),
(433, 25312, 'I Made Wita Dharma', 'Denpasar', 4, 3),
(434, 25313, 'I Gusti Putu Arya Santika', 'Denpasar', 4, 3),
(435, 25314, 'Anak Agung Ngurah Bagus Dwipayana Putra', 'Denpasar', 4, 3),
(436, 25315, 'I Gusti Bagus Esha Arywangsa', 'Denpasar', 4, 3),
(437, 25316, 'I Nyoman Gede Merta Jiwa', 'Denpasar', 4, 3),
(438, 25317, 'I Ketut Wahyu Adi Bratha', 'Badung', 4, 3),
(439, 25318, 'Dito Setyowibowo', 'Denpasar', 4, 3),
(440, 25319, 'Komang Restu Darma Prayoga', 'Denpasar', 4, 3),
(441, 25320, 'Adam Jovanka Sebastian', 'Denpasar', 4, 3),
(442, 25321, 'I Putu Lanang Setiawan Pradifta', 'Badung', 5, 3),
(443, 25322, 'Made Edi Cahyadi', 'Denpasar', 5, 3),
(444, 25323, 'I Komang Adi Trisna Saputra', 'Denpasar', 5, 3),
(445, 25324, 'Ni Made Sinta Amelia Swari', 'Denpasar', 5, 3),
(446, 25325, 'I Made Panji Raditya Dikarasta', 'Denpasar', 5, 3),
(447, 25326, 'I Gede Riki Prawira', 'Denpasar', 5, 3),
(448, 25327, 'I Nyoman Adi Artawan Putra', 'Denpasar', 5, 3),
(449, 25328, 'Annastashya Ramadhani', 'Denpasar', 5, 3),
(450, 25329, 'Nyoman Gandhi Bagus Prastika', 'Denpasar', 5, 3),
(451, 25330, 'I Komang Nova Parwata', 'Badung', 5, 3),
(452, 25331, 'I Gede Utama Arisjana', 'Denpasar', 5, 3),
(453, 25332, 'Anak Agung Ngurah Agung Candra G', 'Denpasar', 5, 3),
(454, 25333, 'I Made Pramantya Narayana', 'Denpasar', 5, 3),
(455, 25334, 'I Made Wahyu Diana Putra', 'Denpasar', 5, 3),
(456, 25335, 'I Made Agus Rendika Putra', 'Badung', 5, 3),
(457, 25336, 'Erwin Wahyu Dwinata', 'Denpasar', 5, 3),
(458, 25337, 'I Nyoman Khrisna Cahya Wiguna', 'Denpasar', 5, 3),
(459, 25338, 'Made Nata Kusuma Putra', 'Badung', 5, 3),
(460, 25339, 'I Made Agni Natadharma Kusuma', 'Badung', 5, 3),
(461, 25340, 'Yoga Hermawan', 'Badung', 5, 3),
(462, 25341, 'I Wayan Agus Naja Arka Wiguna', 'Denpasar', 5, 3),
(463, 25342, 'Komang Ari Gunawan', 'Denpasar', 5, 3),
(464, 25343, 'Ari Yudha Pradnyana', 'Denpasar', 5, 3),
(465, 25344, 'George Andreas Saragih', 'Denpasar', 5, 3),
(466, 25345, 'Prayoga Ichwan Prakoso', 'Denpasar', 5, 3),
(467, 25346, 'I Made Leo Saputra', 'Denpasar', 5, 3),
(468, 25347, 'Sandy Rama Ashari', 'Denpasar', 5, 3),
(469, 25348, 'Yogi Hermanto', 'Denpasar', 5, 3),
(470, 25349, 'Doli Rohak Hasibuan', 'Denpasar', 5, 3),
(471, 25350, 'I Komang Muliadi Ari Sasmika', 'Denpasar', 5, 3),
(472, 25351, 'Ghozali Maulana Abbas', 'Denpasar', 5, 3),
(473, 25352, 'I Putu Dharma Darsana', 'Badung', 5, 3),
(474, 25353, 'I Putu Kevin Adnyana', 'Badung', 6, 3),
(475, 25354, 'Anak Agung Sagung Fitriani Sukmadewi', 'Badung', 6, 3),
(476, 25355, 'I Gede Indra Kamiana Putra', 'Gianyar', 6, 3),
(477, 25356, 'I Made Fajar Gunawan', 'Denpasar', 6, 3),
(478, 25357, 'Kadek Urip Kumara Sari', 'Denpasar', 6, 3),
(479, 25358, 'I Gusti Ngurah Rai Permana Dita', 'Denpasar', 6, 3),
(480, 25359, 'Galih Joyo Rekso', 'Badung', 6, 3),
(481, 25360, 'I Made Agus Widi Aryana', 'Denpasar', 6, 3),
(482, 25361, 'I Gst Kd Bgs Arya Brahmandhita', 'Denpasar', 6, 3),
(483, 25362, 'Ida Bagus Weda Erlangga', 'Badung', 6, 3),
(484, 25363, 'I Made Denik Aditya Rizky', 'Denpasar', 6, 3),
(485, 25364, 'Ni Nyoman Paramita Utami', 'Gianyar', 6, 3),
(486, 25365, 'Made Gabby Ayu Larasati', 'Denpasar', 6, 3),
(487, 25366, 'Pande Putu Dennis Widyanatha', 'Denpasar', 6, 3),
(488, 25367, 'I Gede Yasa Pratama', 'Denpasar', 6, 3),
(489, 25368, 'Pande Made Wahyu Aditya Prabeswara', 'Denpasar', 6, 3),
(490, 25369, 'Kadek Miko Hendrawan', 'Denpasar', 6, 3),
(491, 25370, 'I Kadek Dwi Pramana Putra', 'Denpasar', 6, 3),
(492, 25371, 'Gede Jaya Prasetya Putra', 'Gianyar', 6, 3),
(493, 25372, 'I Kadek Mas Resi Wijananda', 'Denpasar', 6, 3),
(494, 25373, 'Kadek Derry Suryawan', 'Denpasar', 6, 3),
(495, 25374, 'Nyoman Trisnanda Suma Putra', 'Denpasar', 6, 3),
(496, 25375, 'Muhammad Ridzky Sayyidin', 'Denpasar', 6, 3),
(497, 25376, 'Anak Agung Gede Lanang Pradnyana', 'Denpasar', 6, 3),
(498, 25377, 'I Putu Pradnya Winata', 'Badung', 6, 3),
(499, 25378, 'I Made Angga Adi Jaya', 'Denpasar', 6, 3),
(500, 25379, 'I Made Aditya Indrayasa', 'Denpasar', 6, 3),
(501, 25380, 'I Wayan Andre Mahardi', 'Denpasar', 6, 3),
(502, 25381, 'I Made Windra Ary Sukarata', 'Denpasar', 6, 3),
(503, 25382, 'Ni Ketut Ari Nariswari', 'Denpasar', 6, 3),
(504, 25383, 'I Putu Indra Aditarma', 'Denpasar', 6, 3),
(505, 25384, 'I Kadek Dwi Putra', 'Badung', 6, 3),
(506, 25217, 'I Putu Dede Pratama Putra', 'Denpasar', 2, 2),
(507, 25218, 'I Made Purna Wijaya', 'Badung', 2, 2),
(508, 25219, 'I Putu Candra Suta Adnyana', 'Denpasar', 2, 2),
(509, 25220, 'I Made Yogi Suarnata', 'Denpasar', 2, 2),
(510, 25221, 'I Wayan Artha Bahari', 'Denpasar', 2, 2),
(511, 25222, 'Eldat', 'Denpasar', 2, 2),
(512, 25223, 'I Gede Arry Aprianta', 'Badung', 2, 2),
(513, 25224, 'I Gede Ana Sanjaya', 'Tabanan', 2, 2),
(514, 25225, 'I Kadek Budi Sastrawan', 'Denpasar', 2, 2),
(515, 25226, 'Pande Ketut Mahendra', 'Denpasar', 2, 2),
(516, 25227, 'I Made Satya Prema Jaya', 'Denpasar', 2, 2),
(517, 25228, 'Ida Ayu Sintia Tri Pramidewi', 'Denpasar', 2, 2),
(518, 25229, 'I Putu Eka Putra Sukma Dinata', 'Denpasar', 2, 2),
(519, 25230, 'Galih Yudha Pratamadinata', 'Gianyar', 2, 2),
(520, 25231, 'I Ketut Agus Merdangga Jaya', 'Denpasar', 2, 2),
(521, 25232, 'I Kadek Widana Mahendra Putra', 'Denpasar', 2, 2),
(522, 25233, 'I Komang Odik Praditya', 'Denpasar', 2, 2),
(523, 25234, 'I Komang Deni Kurniadi', 'Denpasar', 2, 2),
(524, 25235, 'I Komang Tri Sentanu', 'Badung', 2, 2),
(525, 25236, 'Triadi Prasetyo', 'Denpasar', 2, 2),
(526, 25237, 'I Made Angga Aditya', 'Denpasar', 2, 2),
(527, 25238, 'I Wayan Fajar Adi Pramana', 'Denpasar', 2, 2),
(528, 25239, 'Made Yogi Dwi Adnyana', 'Denpasar', 2, 2),
(529, 25240, 'I Komang Yogi Widiana Putra', 'Denpasar', 2, 2),
(530, 25241, 'Ni Kadek Krisna Dewi', 'Denpasar', 2, 2),
(531, 25242, 'I Gede Nik Setiawan', 'Denpasar', 2, 2),
(532, 25243, 'Sabili Alim Maarif Hendryan', 'Denpasar', 2, 2),
(533, 25244, 'Putu Ali Santosa', 'Badung', 2, 2),
(534, 25245, 'I Nyoman Robi Antara', 'Denpasar', 2, 2),
(535, 25246, 'I Putu Sudana', 'Denpasar', 2, 2),
(536, 25247, 'I Made Rai Wedana', 'Tabanan', 2, 2),
(537, 25248, 'Dimas Wira Yoga', 'Denpasar', 2, 2),
(538, 25249, 'I Komang Arya Setiawan', 'Denpasar', 2, 2),
(539, 25250, 'Raka Kurnia', 'Denpasar', 2, 2),
(540, 25251, 'I Kadek Arsa Suantara', 'Denpasar', 2, 2),
(541, 25252, 'I Putu Julia Andika Putra', 'Badung', 2, 2),
(542, 25253, 'I Putu Sony Pradana', 'Denpasar', 3, 2),
(543, 25254, 'I Gede Widi Muartha', 'Badung', 3, 2),
(544, 25255, 'I Made Wijana Purnayasa', 'Denpasar', 3, 2),
(545, 25256, 'Anak Agung Gde Bayu Aditya', 'Badung', 3, 2),
(546, 25257, 'Rd. Muhammad Djoeang Notonegoro', 'Badung', 3, 2),
(547, 25258, 'I Putu Surya Adinata', 'Denpasar', 3, 2),
(548, 25259, 'I Wayan Ditha Wahyu Pratama', 'Denpasar', 3, 2),
(549, 25260, 'Putu Widhi Antara', 'Badung', 3, 2),
(550, 25261, 'I Putu Satria Kusuma Arta', 'Denpasar', 3, 2),
(551, 25262, 'I Putu Yuda Hendrawan', 'Denpasar', 3, 2),
(552, 25263, 'Kadek Widyanti', 'Denpasar', 3, 2),
(553, 25264, 'I Kadek Agus Suarjana', 'Badung', 3, 2),
(554, 25265, 'I Kadek Junaidi Wirasetia Utama', 'Denpasar', 3, 2),
(555, 25266, 'I Made Wiasdika', 'Badung', 3, 2),
(556, 25267, 'Ni Putu Nita Maharani', 'Badung', 3, 2),
(557, 25268, 'I Made Yudadiawan', 'Denpasar', 3, 2),
(558, 25269, 'I Gede Adi Setia Darma', 'Denpasar', 3, 2),
(559, 25270, 'I Kadek Angga Dwi Prasetya Putra', 'Denpasar', 3, 2),
(560, 25271, 'Rivaldy Antonio Marsiano', 'Badung', 3, 2),
(561, 25272, 'Putu Ananda Raga Utama', 'Badung', 3, 2),
(562, 25273, 'I Made Kalpika Pradnya Swarupa', 'Badung', 3, 2),
(563, 25274, 'I Putu Gede Jati Sugiarta', 'Denpasar', 3, 2),
(564, 25275, 'Bagus Indra Sujana Yudha', 'Denpasar', 3, 2),
(565, 25276, 'I Wayan Simeon Darmawan', 'Badung', 3, 2),
(566, 25277, 'Alfandi Akbar Wijaya', 'Badung', 3, 2),
(567, 25278, 'Sang Putu Raka Wibawa', 'Denpasar', 3, 2),
(568, 25279, 'Arman Dody Santoso', 'Badung', 3, 2),
(569, 25280, 'Oky Petter Setyawan', 'Denpasar', 3, 2),
(570, 25281, 'I Made Yoga Dwi Prastya', 'Denpasar', 3, 2),
(571, 25282, 'Dewa Gede Bayu Pradana Putra', 'Denpasar', 3, 2),
(572, 25283, 'I Komang Jaya Kusuma', 'Denpasar', 3, 2),
(573, 25284, 'I Made Dicky Putra', 'Badung', 3, 2),
(574, 25285, 'I Wayan Artana Yasa', 'Denpasar', 3, 2),
(575, 25286, 'Komang Adi Trisna Apriawan', 'Badung', 3, 2),
(576, 25287, 'I Nyoman Budi Kurniawan', 'Badung', 3, 2),
(577, 25199, 'I Gede Bagus Widiastawa', 'Denpasar', 1, 1),
(578, 25200, 'I Putu Kirana', 'Denpasar', 1, 1),
(579, 25201, 'I Wayan Agus Ambara', 'Badung', 1, 1),
(580, 25202, 'Ida Bagus Arie Dwipayana', 'Denpasar', 1, 1),
(581, 25203, 'I Made Dika Darmanta', 'Denpasar', 1, 1),
(582, 25204, 'M. Ardiansyah Pratama', 'Gianyar', 1, 1),
(583, 25205, 'Ida Bagus Ade Wistika Putra', 'Gianyar', 1, 1),
(584, 25206, 'I Kadek Candra Surya Pramana', 'Denpasar', 1, 1),
(585, 25207, 'Wayan Sutaranta', 'Badung', 1, 1),
(586, 25208, 'I Gusti Ngurah Agung Yogananda Maheswara', 'Denpasar', 1, 1),
(587, 25209, 'I Gede Yusa Prayoga', 'Denpasar', 1, 1),
(588, 25210, 'I Gusti Ngurah Bagus Artika', 'Badung', 1, 1),
(589, 25211, 'I Made Deni Ditya Putra', 'Denpasar', 1, 1),
(590, 25212, 'I Nyoman Cahaya Krisna Putra', 'Denpasar', 1, 1),
(591, 25213, 'I Nyoman Yoga Pranata', 'Gianyar', 1, 1),
(592, 25214, 'I Komang Sumiata', 'Badung', 1, 1),
(593, 25215, 'I Komang Widana Adi Saputra', 'Gianyar', 1, 1),
(594, 25216, 'I Putu Restu Darmawan', 'Denpasar', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`IDJur_`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`IDKelas_`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`IDMapel_`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`IDNilai_`),
  ADD KEY `IDSiswa_` (`IDSiswa_`),
  ADD KEY `IDMapel_` (`IDMapel_`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`IDSiswa_`),
  ADD KEY `IDKelas_` (`IDKelas_`),
  ADD KEY `IDJur_` (`IDJur_`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `IDJur_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `IDKelas_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `IDMapel_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `IDNilai_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `IDSiswa_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD CONSTRAINT `tb_nilai_ibfk_1` FOREIGN KEY (`IDSiswa_`) REFERENCES `tb_siswa` (`IDSiswa_`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_nilai_ibfk_2` FOREIGN KEY (`IDMapel_`) REFERENCES `tb_mapel` (`IDMapel_`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `tb_siswa_ibfk_1` FOREIGN KEY (`IDJur_`) REFERENCES `tb_jurusan` (`IDJur_`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_siswa_ibfk_2` FOREIGN KEY (`IDKelas_`) REFERENCES `tb_kelas` (`IDKelas_`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
