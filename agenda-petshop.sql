-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2021 at 04:35 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agenda-petshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `atendimentos`
--

CREATE TABLE `atendimentos` (
  `id` int(11) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `pet` varchar(20) DEFAULT NULL,
  `servico` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `observacoes` text DEFAULT NULL,
  `data` datetime NOT NULL,
  `dataCriacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atendimentos`
--

INSERT INTO `atendimentos` (`id`, `cliente`, `pet`, `servico`, `status`, `observacoes`, `data`, `dataCriacao`) VALUES
(1, 'fernando', 'Lupy', 'tosa', 'agendado', 'muito bonzinho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'fernando', 'Lupy', 'tosa', 'agendado', 'muito bonzinho', '0000-00-00 00:00:00', '2021-08-02 12:13:44'),
(3, 'fernando', 'Lupy', 'tosa', 'agendado', 'muito bonzinho', '0000-00-00 00:00:00', '2021-08-02 12:08:28'),
(4, 'fernando', 'Lupy', 'tosa', 'agendado', 'muito bonzinho', '2020-05-25 00:05:00', '0000-00-00 00:00:00'),
(5, 'fernando', 'Lupy', 'tosa', 'agendado', 'muito bonzinho', '2021-08-12 00:08:00', '2021-08-02 12:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `categoria` enum('ração','brinquedos') NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `dataAtualizacao` datetime NOT NULL,
  `versao` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `empresa`, `email`, `categoria`, `dataCriacao`, `dataAtualizacao`, `versao`) VALUES
(1, 'fernando\'s', 'fernandoreis9173@gmail.com', 'brinquedos', '2021-10-08 03:27:40', '2021-10-08 03:27:40', 0),
(2, 'fernando\'s', 'fernando@gmail.com', 'brinquedos', '2021-10-08 01:37:43', '2021-10-08 01:37:43', 0);

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `preco` double NOT NULL,
  `estoque` int(11) NOT NULL DEFAULT 0,
  `fornecedor` int(11) NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `dataAtualizacao` datetime NOT NULL,
  `versao` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atendimentos`
--
ALTER TABLE `atendimentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atendimentos`
--
ALTER TABLE `atendimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
