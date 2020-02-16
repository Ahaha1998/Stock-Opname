-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 08:41 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `malasngoding_kios`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `foto`) VALUES
(8, 'malasngoding', '069c546d1d97fd9648d8142b3e0fd3a3', 'logo.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jenis` text NOT NULL,
  `suplier` text NOT NULL,
  `modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `Jumlah SMALL` int(11) NOT NULL,
  `Jumlah MEDIUM` int(11) NOT NULL,
  `Jumlah LARGE` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sisa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `suplier`, `modal`, `harga`, `Jumlah SMALL`, `Jumlah MEDIUM`, `Jumlah LARGE`, `jumlah`, `sisa`) VALUES
(14, 'roti unibis', 'makanan', 'pt.makamur jaya', 5000, 6500, 0, 0, 0, 350, 20),
(17, 'tim tam', 'makanan ringan', 'pt surga', 2000, 6000, 0, 0, 0, -936, 10),
(19, 'tic tac', 'makanan ringan', 'pt sido multp', 2000, 4000, 0, 0, 0, 2, 24),
(20, 'aqua sedang', 'minuman ringan', 'pt jamaika', 1000, 3000, 0, 0, 0, 990, 1000),
(21, 'makkkanan', 'makanan ringan', 'pt surya', 2000, 4000, 0, 0, 0, 894, 900),
(23, 'magnum', 'rokok', 'pt surga', 12000, 13000, 0, 0, 0, 874, 1000),
(24, 'santri mie', 'makanan ringan', 'pt sido mulyo', 2000, 4000, 0, 0, 0, 404, 800),
(25, 'rambut palsu', 'accesories', 'pt ptan', 3000, 5000, 0, 0, 0, 496, 500),
(27, 'sea foog', 'makanan ringan', 'pt surga', 4000, 60000, 0, 0, 0, 598, 600),
(28, 'mild', 'rokok', 'pt sampoerna', 15000, 17000, 0, 0, 0, 192, 200),
(29, 'dji sam soe', 'rokok', 'pt ptan', 14000, 15000, 0, 0, 0, 145, 150),
(30, 'nu mild', 'rokok', 'pt ptan', 14000, 15000, 0, 0, 0, 144, 150),
(31, 'nu mild', 'rokok', 'pt ptan', 14000, 15000, 0, 0, 0, 144, 150),
(32, 'roti', 'makanan', 'hdhnhnhh', 2000, 5000, 0, 0, 0, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `barang_laku`
--

CREATE TABLE `barang_laku` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `Jumlah_SMALL` int(11) NOT NULL,
  `Jumlah_MEDIUM` int(11) NOT NULL,
  `Jumlah_LARGE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_laku`
--

INSERT INTO `barang_laku` (`id`, `tanggal`, `nama`, `jumlah`, `Jumlah_SMALL`, `Jumlah_MEDIUM`, `Jumlah_LARGE`) VALUES
(46, '2015-02-01', 'roti unibis', 2, 0, 0, 0),
(47, '2015-02-02', 'makkkanan', 7, 0, 0, 0),
(48, '2015-02-02', 'dji sam soe', 2, 0, 0, 0),
(49, '2015-02-03', 'makkkanan', 1, 0, 0, 0),
(50, '2015-02-01', 'tim tam', 2, 0, 0, 0),
(51, '2015-02-02', 'mild', 2, 0, 0, 0),
(52, '2015-02-03', 'magnum', 1, 0, 0, 0),
(53, '2015-02-06', 'dji sam soe', 2, 0, 0, 0),
(54, '2015-02-15', 'nu mild', 2, 0, 0, 0),
(55, '2015-02-27', 'roti unibis', 2, 0, 0, 0),
(56, '2015-02-19', 'roti unibis', 1, 0, 0, 0),
(57, '2015-01-14', 'roti unibis', 1, 0, 0, 0),
(58, '2015-02-01', 'pulpen', 1, 0, 0, 0),
(59, '2015-02-02', 'roti', 2, 0, 0, 0),
(63, '2016-01-22', 'tic tac', 8, 0, 0, 0),
(64, '2020-02-12', 'magnum', 123, 1234, 12345, 1234555),
(65, '0000-00-00', 'santri mie', 120, 30, 40, 50),
(66, '2020-02-10', 'tim tam', 1728, 120, 1200, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keperluan` text NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `tanggal`, `keperluan`, `nama`, `jumlah`) VALUES
(1, '2015-02-06', 'de', 'diki', 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_laku`
--
ALTER TABLE `barang_laku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `barang_laku`
--
ALTER TABLE `barang_laku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
