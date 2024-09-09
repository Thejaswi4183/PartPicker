-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 08:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `builds`
--

CREATE TABLE `builds` (
  `b_id` int(2) NOT NULL,
  `id` int(1) DEFAULT NULL,
  `category_id` int(1) DEFAULT NULL,
  `price` int(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `builds`
--

INSERT INTO `builds` (`b_id`, `id`, `category_id`, `price`) VALUES
(0, 1, 1, 9650),
(0, 24, 4, 11990);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `popular` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`, `image`, `meta_title`, `status`, `popular`, `created_at`) VALUES
(1, 'CPU', 'cpu', 'cpu.jpg', 'cpu', 1, 0, '2023-01-15 16:33:03'),
(2, 'Memory', 'ram', 'ram.png', 'ram', 1, 1, '2023-02-02 17:13:03'),
(3, 'CPU COOLER', 'cooler ', 'cooler.jpg', 'cpucooler', 1, 1, '2023-02-02 18:23:00'),
(4, 'MotherBoard', 'motherboard', 'nav-motherboard.png', 'mb', 1, 1, '2023-02-02 19:02:47'),
(5, 'Storage', 'hdd sdd', 'hdd.jpg', 'storage', 1, 0, '2023-02-02 19:30:04'),
(6, 'Graphics Card', 'card', 'graphics.jpeg', 'graphics card', 1, 1, '2023-02-02 19:49:05'),
(7, 'Power Supply', 'psu', 'psu.webp', 'psu', 1, 1, '2023-02-02 20:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(191) NOT NULL,
  `name` mediumtext NOT NULL,
  `image` varchar(191) NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `price` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `description`, `name`, `image`, `meta_keywords`, `price`, `slug`, `status`) VALUES
(1, 1, '10th Gen Intel® Core™ i3-10100 Desktop Processor 6M Cache, 4 Cores up to 4.3GHz LGA 1200 (Intel® 400 Series Chipset) 65W', '10th Gen Intel® Core™ i3-10100', 'i31010.jpg', 'Processor', 9650, 'intel', 0),
(2, 1, '10th Gen Intel® Core™ i3-10105F Desktop Processor 4 Cores up to 4.4GHz Without Processor Graphics LGA 1200 (Intel® 400 Series Chipset) 65W', '10th Gen Intel® Core™ i3-10105F ', 'i31010f.jpg', 'Processor', 6000, 'intel', 0),
(3, 1, '9th Gen Intel® Core™ i3-9100F Desktop Processor 4 Cores up to 4.2GHz Without Processor Graphics LGA 1151 (Intel® 300 Series Chipset) 65W BX80684i39100F', '9th Gen Intel® Core™ i3-9100F', 'i39100f.jpg', 'Processor', 6900, 'intel', 0),
(4, 1, '10th Gen Intel® Core™ i5-10400 Desktop Processor 12M Cache, 6 Cores up to 4.3GHz LGA 1200 (Intel® 400 Series Chipset) 65W BX8070110400', '10th Gen Intel® Core™ i5-10400', 'i5-10400.jpg', 'Processor', 11100, 'intel', 0),
(5, 1, '9th Gen Intel® Core™ i5-9400F Desktop Processor 6 Cores up to 4.1GHz Without Processor Graphics LGA 1151 (Intel® 300 Series Chipset) 65W BX80684I59400F', '9th Gen Intel® Core™ i5-9400F ', 'i5-9400F.jpg', 'Processor', 10200, 'intel', 0),
(6, 1, '10th Gen Intel® Core™ i7-10700 Desktop Processor 8 Cores up to 4.8GHz LGA 1200 (Intel® 400 Series Chipset) 65W BX8070110700', '10th Gen Intel® Core™ i7-10700', 'i7-10700.jpg', 'Processor', 23300, 'intel', 0),
(7, 1, '11th Gen IntelÂ® Core i7-11700KF Desktop Processor 8 Cores up to 5.0GHz Unlocked Without Processor Graphics LGA 1200 (IntelÂ® 500 Series Chipset) 125W BX8070811700KF', '11th Gen IntelÂ® Core i7-11700KF', 'i7-11700KF.jpg', 'Processor', 26400, 'intel', 0),
(8, 2, 'Corsair Vengeance LPX 16 GB (2 x 8 GB) DDR4-3200 CL16 Memory', 'Corsair Vengeance LPX', 'corsair.jpg', 'Processor', 4560, 'ram', 0),
(9, 2, 'CORSAIR CMW32GX4M2C3000C15W Desktop Ram VENGEANCE RGB PRO Series 32GB (16GBx2) DDR4 3000MHz White', 'CORSAIR CMW32GX4M2C3000C15W Desktop Ram', 'corsairrgb.jpg', 'Memory', 12499, 'ram', 0),
(10, 2, 'G.Skill F5-6000J3238G32GX2-TZ5RK Desktop Ram Trident Z RGB Series 32GB (16GBx2) DDR5 6000MHz', 'G.Skill F5-6000J3238G32GX2-TZ5RK Desktop Ram', 'gskillrgb.jpg', 'Memory', 18900, 'ram', 0),
(11, 2, 'Kingston FURY Beast 16GB (16GB X 1) 5200MHZ DDR5 RGB Memory (KF552C40BBA-16)', 'Kingston FURY Beast 16GB', 'kingstonfury.jpg', 'Memory', 6690, 'ram', 0),
(12, 2, 'G.Skill F4-3000C16S-16GVRB Desktop Ram Ripjaws V Series 16GB (16GBX1) DDR4 3000MHz Red', 'G.Skill F4-3000C16S-16GVRB Desktop Ram ', 'gskilljaws.jpg', 'Memory', 6199, 'ram', 0),
(14, 2, 'G.Skill F4-3000C16D-16GTZR Desktop Ram Trident Z RGB Series 16GB (8GBx2) DDR4 3000MHz', 'G.Skill F4-3000C16D-16GTZR Desktop Ram', 'gskilltrident.jpg', 'Memory', 6415, 'ram', 0),
(15, 2, 'Kingston HyperX Fury 8GB DDR4 2666MHz Non ECC Memory KF426C16BB/8', 'Kingston HyperX Fury 8GB DDR4 ', 'kingstonfury2.jpg', 'Memory', 2950, 'ram', 0),
(16, 3, 'Cooler Master Hyper 212 Halo ARGB Air Cooler (White)', 'Cooler Master Hyper 212 Halo ARGB Air Cooler', 'cmaster.jpg', 'Cooler', 3450, 'cooler', 0),
(17, 3, 'CORSAIR ICUE H150I ELITE CAPELLIX LIQUID CPU COOLER (WHITE) (CW-9060051-WW)', 'CORSAIR ICUE H150I ELITE CAPELLIX LIQUID CPU COOLER', 'corsairmaster.jpg', 'Cooler', 16105, 'cc', 0),
(18, 3, 'NZXT Kraken X53 240mm AIO Liquid Cooler with RGB', 'NZXT Kraken X53 240mm AIO Liquid Cooler', 'krakencooler.jpg', 'Cooler', 10049, 'cooler', 0),
(19, 3, 'ARCTIC Liquid Freezer II 240', 'ARCTIC Liquid Freezer II 240', 'articliquid.jpg', 'Cooler', 10049, 'cooler', 0),
(20, 3, 'Antec Neptune 120 ARGB Advanced All in One 120mm Cpu Liquid Cooler', 'Antec Neptune 120 ARGB Cooler', 'anteccooler.jpg', 'Cooler', 5399, 'cpucooler', 0),
(21, 3, 'DeepCool AG400 BK ARGB Single Tower 120mm CPU Cooler (R-AG400-BKANMC-G-1)', 'DeepCool AG400 BK ARGB Single Tower 120mm CPU Cooler', 'deepcool.jpg', 'Cooler', 2199, 'cooler', 0),
(22, 3, 'Deepcool Gamerstorm CASTLE 240EX ARGB CPU Cooler', 'Deepcool Gamerstorm CASTLE 240EX ARGB CPU Cooler', 'deepcool1.jpg', 'Cooler', 7199, 'aws', 0),
(23, 3, 'Asus TUF Gaming LC 120 RGB All In One 120mm CPU Liquid Cooler', 'Asus TUF Gaming LC 120 RGB Cooler', 'asustuf.jpg', 'Cooler', 7789, 'tuf', 0),
(24, 4, 'ASUS PRIME B550M-A (WI-FI) II Motherboard', 'ASUS PRIME B550M-A (WI-FI) II Motherboard', 'b550.jpg', 'MotherBoard', 11990, 'motherboard', 0),
(25, 4, 'ASRock B450 Pro4 Motherboard (AMD Socket AM4/Ryzen Series CPU/Max 64GB DDR4 3200MHz Memory)', 'ASRock B450 Pro4 Motherboard ', 'asrock.jpg', 'MotherBoard', 6999, 'cooler', 0),
(26, 4, 'ASUS ROG STRIX B450-F GAMING II AMD AM4 B450 Gaming ATX Motherboard', 'asusrog', 'asusrog.jpg', 'asusrog', 14400, 'rog', 0),
(27, 4, 'Msi B450 Gaming Plus Max Motherboard (Amd Socket AM4/Ryzen Series CPU/Max 128GB DDR4 4133MHz Memory)', 'msi', 'msi.jpg', 'msi 450', 9250, '450', 0),
(28, 4, 'Gigabyte B650 GAMING X AX DDR5 Motherboard', 'gigabyte', 'gigabyte.jpg', 'b650', 16200, 'gigabyte', 0),
(29, 4, 'GIGABYTE B460M DS3H AC MOTHERBOARD (B460M-DS3H-AC)', '450', 'gigabyte1.jpg', 'mb', 9699, 'gigabyte', 0),
(30, 4, 'Gigabyte Z790M Aorus Elite AX Motherboard', 'gigabyte', 'gigabyte790.jpg', 'Z790M', 21180, 'gigabyte', 0),
(31, 4, 'MSI B560M Pro Motherboard (Intel Socket 1200/11th And 10th Generation Core Series CPU/Max 64GB DDR4 5200MHz Memory)', 'msi', 'msiz390].jpg', 'z390', 9390, 'ss', 0),
(32, 5, 'Samsung 970 Evo Plus', 'ssd', 'samsung970.jpg', 'samsung 1tb', 6445, 'ssd', 0),
(33, 5, 'Seagate Firecuda 520 500Gb Nvme Pcie X4 Gen4 Internal Ssd (ZP500GM30002)', 'firecuda', 'seagate.jpg', '520gb', 6900, 'ssd', 0),
(34, 5, 'Western Digital Blue SN570 1TB M.2 NVMe Internal SSD (WDS100T3B0C)', '1tb', 'wdblue.jpg', 'wd blue', 6099, 'ssd', 0),
(35, 5, 'Crucial P5 Plus 500GB M.2 NVMe Gen4 Internal SSD (CT500P5PSSD8)', 'ssd', 'crucial.jpg', '500gb', 6180, 'ssd', 0),
(36, 5, 'Kingston NV2', 'ssd', 'kingston.jpg', 'ssd', 6180, 'ssd', 0),
(37, 5, 'Seagate Barracuda 1TB 7200 RPM Desktop Internal Hard Drive (ST1000DM010)', 'barracuda', 'seagate1.jpg', 'hdd', 3040, 'hdd', 0),
(38, 5, 'Crucial P2 1TB M.2 NVMe Internal SSD (CT1000P2SSD8)', 'crucial ssd', 'crucialp2.jpg', 'ssd', 6950, 'ssd', 0),
(39, 6, 'MSI Geforce RTX 3060 Ti Ventus 2X OCV1 LHR 8GB GDDR6 256-bit Gaming Graphics Card', 'msi geforce rtx', 'msi3060.jpg', 'rtx', 40590, 'rtx', 0),
(40, 6, 'ASRock AMD Radeon RX 6700 XT Phantom Gaming D 12GB OC Graphic Card RX6700XT PGD 12GO', 'rx6700', 'rx6700.jpg', 'amd rx6700', 32990, 'amd rx6700', 0),
(41, 6, 'ASUS TUF Gaming GeForce RTX 4090 24GB GDDR6X Gaming Graphic Card', 'asus tuf 4090', 'asus4090.jpg', 'rtx 4090', 164500, 'rtx 4090', 0),
(42, 6, 'ASUS ROG Strix GeForce RTX 4080 16GB GDDR6X OC Edition Graphic Card ROG-STRIX-RTX4080-O16G-GAMING', 'rtx 4090', 'rog4080.jpg', 'rtx 4090', 145000, 'rtx 4090', 0),
(43, 6, 'MSI GeForce RTX 3080 VENTUS 3X PLUS 10GB OC LHR GDDR6X', 'rtx 3080', 'msi3080.jpg', 'rtx 3080', 75500, 'rtx 3080', 0),
(44, 6, 'MSI Radeon RX 6900 XT GAMING X TRIO 16G Radeon RX 6900 XT 16 GB', 'rx 6900xt', 'msi6900xt.jpg', '6900xt', 85000, '6900xt', 0),
(45, 6, 'MSI GeForce RTX 3070 Ventus 3X Plus 8G OC LHR 8GB GDDR6 256-bit Gaming Graphics Card', 'rtx 3070', 'msi3070.jpg', 'rtx 3070', 51790, 'rtx 3070', 0),
(46, 6, 'ZOTAC GEFORCE RTX 3050 TWIN EDGE OC', 'rtx 3050', 'zotac3050.jpg', 'rtx 3050', 28150, 'rtx 3050', 0),
(58, 7, 'Corsair RM Series RM850 850 Watt 80 PLUS Gold Certified Fully Modular PSU CP-9020235-IN', 'rm850', 'corssairpsu850.jpg', 'psu', 9750, 'psu', 0),
(59, 7, 'Thermaltake TR2 S 650W SMPS 650 Watt 80 Plus Standard Certification PSU With Active PFC', 'psu 650w', 'thermaltake650.jpg', '650', 4099, '650', 0),
(60, 7, 'Cooler Master MWE 550 V2 SMPS 550 Watt 80 Plus Bronze Certification PSU With Active PFC', 'cm 550', 'cm550.jpg', '550', 3499, '550', 0),
(61, 7, 'ASUS ROG Strix 1000W Gold Full Modular PSU', 'rog strix 1000w', 'rogstrix1000w.jpg', '1000w', 16250, '1000w', 0),
(62, 7, 'EVGA 750 BR 750Watt 80+ Bronze Power Supply', '750 watt', 'evga750.jpg', '750watt', 5480, '750watt', 0),
(63, 7, 'Cooler Master MWE GOLD 850 V2 FULL MODULAR SMPS MPE-8501-AFAAG-IN', '850', 'cm850.jpg', '850', 9699, '850', 0),
(64, 7, 'DEEPCOOL DQ750M V2L WHITE POWER SUPPLY (DP-DQ750-M-V2L WH)', 'deepcool', 'deepcool750.jpg', '750 watt', 6999, '750 watt', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `email`, `token`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin@mail.com', 'e6d47446e698dcf80c3b3a9175b10e81878b05dc1f515f74c858ddf5d6fdfdef'),
(5, 'cyber', 'b59c67bf196a4758191e42f76670ceba', 'cyberghostganji@gmail.com', '03257d17a5eb3362ffc70cea2789a84dfb7428aa01be01f3ccffa743c4003233'),
(7, 'ss', '934b535800b1cba8f96a5d72f72f1611', 'sujansuji2009@gmail.com', 'b2e281bfc68daf422b5eeb32dc2269b8324c8cfb3416d0080df29a42abef0f75'),
(8, 'void', '202cb962ac59075b964b07152d234b70', 'thejaswi4uns@gmail.com', '5ffac5cc0438614858203d5e6d363e33d174ffe72d4ad12ff97ff1365f1d6ca0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
