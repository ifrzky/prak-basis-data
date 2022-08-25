-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 06:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `AGE` int(11) NOT NULL,
  `ADDRESS` char(25) DEFAULT NULL,
  `SALARY` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `KODE_DOKTER` varchar(20) NOT NULL,
  `NAMA_DOKTER` varchar(50) NOT NULL,
  `TLP_DOKTER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`KODE_DOKTER`, `NAMA_DOKTER`, `TLP_DOKTER`) VALUES
('PPDARD', 'Dr. ARNOLD', 7656971),
('PPDMAS', 'Dr. MAAS', 7778891),
('PPJRYN', 'Dr. MAAS', 7656688);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `prodi`, `jenis_kelamin`) VALUES
(2147483647, 'Miftah Rizky Aulia', 'S1 informatika', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `KODE_PASIEN` int(11) NOT NULL,
  `NAMA_PASIEN` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`KODE_PASIEN`, `NAMA_PASIEN`) VALUES
(196612, 'Firman'),
(197918, 'Wahyu'),
(199709, 'Boy'),
(200222, 'Alvaro'),
(200705, 'Calista');

-- --------------------------------------------------------

--
-- Table structure for table `perawat`
--

CREATE TABLE `perawat` (
  `KODE_PERAWAT` int(11) NOT NULL,
  `NAMA_PERAWAT` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perawat`
--

INSERT INTO `perawat` (`KODE_PERAWAT`, `NAMA_PERAWAT`) VALUES
(2001001, 'Herawati'),
(2001002, 'Susan'),
(2011001, 'Devi'),
(2011002, 'Agung');

-- --------------------------------------------------------

--
-- Table structure for table `rawat`
--

CREATE TABLE `rawat` (
  `KODE_PASIEN` int(11) NOT NULL,
  `NAMA_PASIEN` varchar(50) NOT NULL,
  `KODE_DOKTER` varchar(10) NOT NULL,
  `NAMA_DOKTER` varchar(50) NOT NULL,
  `KODE_PERAWAT` int(11) NOT NULL,
  `NAMA_PERAWAT` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `KODE_RUANGAN` varchar(10) NOT NULL,
  `NAMA_RUANGAN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`KODE_RUANGAN`, `NAMA_RUANGAN`) VALUES
('LLY00', 'Lily VIP'),
('LLY01', 'Lily kelas 1'),
('LLY02', 'Lily kelas 2'),
('LLY03', 'Lily kelas 3'),
('MLT00', 'Melati VIP'),
('MLT01', 'Melati kelas 1'),
('MLT02', 'Melati Kelas 2'),
('MLT03', 'Melati kelas 3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`KODE_DOKTER`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`KODE_PASIEN`);

--
-- Indexes for table `perawat`
--
ALTER TABLE `perawat`
  ADD PRIMARY KEY (`KODE_PERAWAT`);

--
-- Indexes for table `rawat`
--
ALTER TABLE `rawat`
  ADD PRIMARY KEY (`KODE_PASIEN`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`KODE_RUANGAN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
