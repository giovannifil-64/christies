-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Giu 01, 2020 alle 13:48
-- Versione del server: 5.7.24
-- Versione PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `christies`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `officeName` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`, `officeName`) VALUES
(1, 'Giovanni', '$2y$10$3KO0hMbnhvhO61XsS4Iz7uUzLyeMan8SM8/UfOxTkrqsmx4CkFCFK', '2020-05-14 15:50:41', 'Amsterdam'),
(2, 'Beatrice', '$2y$10$.z4XDEst8fW1DxnTFalz6.3HeQTWUqoBG/rbcIo/bEyLP7uPt4Wv6', '2020-05-14 15:51:09', 'Dubai'),
(3, 'Lorenzo', '$2y$10$BUmRor8xpbvWs0pMfeaNzuySHuMIFOSkrlii/oMUaqqwtkVo2b04m', '2020-05-14 15:51:33', 'Geneva'),
(4, 'Fabio', '$2y$10$tQDL/I6a8kWx4kdwH8F/2.JjAWobNXHXV50iakfAhTwWFSgGb54yq', '2020-05-15 11:50:04', 'Hong Kong');

-- --------------------------------------------------------

--
-- Struttura della tabella `auctions`
--

CREATE TABLE `auctions` (
  `id` varchar(256) NOT NULL,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `seller` varchar(45) NOT NULL,
  `objectID` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `auctions`
--

INSERT INTO `auctions` (`id`, `name`, `location`, `seller`, `objectID`) VALUES
('a519c955', 'Georges Seurat\'s painting', 'Hong Kong', 'Musee Louvre', 'A Sunday Afternoon on the Island of La Grande Jatte'),
('e67cfed8', 'Italian vase', 'New York', 'Brera Art Gallery', 'Italian Vase');

-- --------------------------------------------------------

--
-- Struttura della tabella `employees`
--

CREATE TABLE `employees` (
  `id` varchar(256) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `fiscal_code` varchar(45) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `office` varchar(45) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `employees`
--

INSERT INTO `employees` (`id`, `name`, `surname`, `fiscal_code`, `birth`, `address`, `phone`, `office`, `username`, `password`, `created_at`) VALUES
('5ed4cbe495f9f0.76734421', 'Rodney', 'Mulkey', 'SZQMGQ79A43A299D', '1980-11-16', 'Via Del Bravin, 18 London (MS) 54038', '00390187833100', 'London', 'rodney.mulkey01', 'rodneymulkey', '2020-06-01 11:35:32'),
('5ed4cc46e40f84.59155019', 'Maddalena', 'Fini', 'FNIMDL00L59A532X', '2000-07-19', 'Via Carso, 28 BERGAMO (BG) 24126', '00393734264720 ', 'Milan', 'maddalena.fini01', 'maddalenafini', '2020-06-01 11:37:10'),
('5ed4cd40801e72.25734647', 'Kenneth', 'Omdahl', 'MDHKNT01L04Z404P', '1989-07-04', '7657 Stonybrook Street Delmar, NY 12054', '+1-202-555-0111', 'Amsterdam', 'kenneth.omdahl01', 'kennethomdahl', '2020-06-01 11:41:20');

-- --------------------------------------------------------

--
-- Struttura della tabella `features`
--

CREATE TABLE `features` (
  `price` varchar(45) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `office` varchar(45) DEFAULT NULL,
  `service` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `features`
--

INSERT INTO `features` (`price`, `description`, `office`, `service`) VALUES
('$3000', 'A full restoration of paintings, objects and furniture', 'New York', 'Christie’s Restitution'),
('$15000', 'We can help you deal with museum, transfer the object and keep it safe after the auction', 'Dubai', 'Museum Services'),
('$8000', 'host a private, intimate sale at our Geneva office, without warring about the organization', 'Geneva', 'Private Sales'),
('$8500', 'host a private, intimate sale at our Hong Kong office, without warring of anything', 'Hong Kong', 'Private Sales'),
('£6000', 'Keep the object with us, we will make sure that noting will happend', 'London', 'Collectrium'),
('€9800', 'Restore your objects in our Milan location, with professional restorer', 'Milan', 'Christie’s Restitution'),
('$18000', 'We can put your object inside a museum and keep it safe', 'New York', 'Collectrium'),
('€9800', 'With pur great partenr, you can put your collection inside a museum', 'Paris', 'Museum Services'),
('$3000', 'We can restore your object with professional restorer', 'Shanghai', 'Christie’s Restitution'),
('$6000', 'Restore your object before a sale or before an auction wit professional restorer', 'Zürich', 'Christie’s Restitution'),
('€5800', 'We can help you keep your objects in our parter\'s museum, so that people can admire them', 'Amsterdam', 'Museum Services');

-- --------------------------------------------------------

--
-- Struttura della tabella `objects`
--

CREATE TABLE `objects` (
  `id` varchar(256) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(2048) NOT NULL,
  `start_price` varchar(45) DEFAULT NULL,
  `currency` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `object_location` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `objects`
--

INSERT INTO `objects` (`id`, `name`, `description`, `start_price`, `currency`, `category`, `year`, `object_location`) VALUES
('3aef3831-9519-11ea-bb81-38d5471942eb', 'A Sunday Afternoon on the Island of La Grande Jatte', 'It is a leading example of pointillist technique, executed on a large canvas. The composition includes a number of Parisians at a park on the banks of the River Seine.', '1.000', '$', 'Painting', '1886', 'Paris'),
('d3c059c1-9518-11ea-bb81-38d5471942eb', 'CAR-15', 'carabine', '1.000', '$', 'Gun', '1960', 'Milan'),
('c42c4ffa-9519-11ea-bb81-38d5471942eb', 'Coca Cola fridge', 'A rare Coca Cola fridge rom the 1920', '30.000', '$', 'Vintage', '1920', 'Zurich'),
('c1273f18-9518-11ea-bb81-38d5471942eb', 'Colt M1911A1', 'standard US and ARVN sidearm', '300', '$', 'Gun', '1911', 'New York'),
('3f01ff89-9519-11ea-bb81-38d5471942eb', 'Italian Vase', 'A vase from the 15th century', '500', '$', 'Vase', '1400', 'Hong Kong'),
('cfb62524-9518-11ea-bb81-38d5471942eb', 'L1A1 Self-Loading Rifle', 'used by Australian and New Zealand soldiers in Vietnam', '1.500', '$', 'Gun', '1947', 'Geneva'),
('894f43b4-9519-11ea-bb81-38d5471942eb', 'M13', 'A fully-automatic assault rifle', '5.000', '$', 'Gun', '2015', 'New York'),
('95000b83-9519-11ea-bb81-38d5471942eb', 'M4', ' A shorter and lighter variant of the M16A2 assault rifle', '2.000', '$', 'Gun', '2020', 'Paris'),
('e46c24fa-9107-11ea-b851-38d5471942eb', 'Ming Vase', 'An original ming vase from the 18th century', '250.000', '€', 'Vase', '1700', 'Hong Kong'),
('ab682dd3-92f3-11ea-97d9-38d5471942eb', 'Mona Lisa', 'One of the most famous paintings in the world', '300.000.000', '$', 'Painting', '1500', 'Paris'),
('da8f9909-92f3-11ea-97d9-38d5471942eb', 'Old Vase', 'An old vase from Pakistan', '10.000', '$', 'Vase', '1700', 'London'),
('67ba3f51-92c1-11ea-97d9-38d5471942eb', 'Painting', 'A painting from a mysterius painter', '30.000', '£', 'Painting', '1927', 'Dubai'),
('7c2f6097-9519-11ea-bb81-38d5471942eb', 'Sunrise', 'painting by Claude Monet first shown at what would become known as the \"Exhibition of the Impressionists\" in Paris in April, 1874. The painting is credited with inspiring the name of the Impressionist movement. Impression, Sunrise depicts the port of Le Havre, the hometown of Monet.', '5.000.000', '$', 'Painting', '1874', 'Milan'),
('af737001-9518-11ea-bb81-38d5471942eb', 'The Creation Of Adam', 'A copy of the fresco painting by Italian artist Michelangelo', '500', '$', 'Painting', '1512', 'Shanghai'),
('a7290b9f-9518-11ea-bb81-38d5471942eb', 'The Girl With A Pearl Earring', 'An oil painting by Dutch Golden Age painter Johannes Vermeer', '250.000', '$', 'Painting', '1665', 'Amsterdam'),
('bd8844a0-9518-11ea-bb81-38d5471942eb', 'The Kiss', 'an interesting painting from the early twentieth century', '280.000', '$', 'Painting', '1907', 'Zurich'),
('9412102d-9518-11ea-bb81-38d5471942eb', 'The Scream', 'The popular name given to a composition created by Norwegian Expressionist artist Edvard Munch', '250.000', '$', 'Painting', '1893', 'Amsterdam'),
('87d1f696-9518-11ea-bb81-38d5471942eb', 'The Starry Night', 'An oil on canvas by Dutch post-impressionist painter Vincent van Gogh', '500.000', '$', 'Painting', '1889', 'New York');

-- --------------------------------------------------------

--
-- Struttura della tabella `offices`
--

CREATE TABLE `offices` (
  `name` varchar(50) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(5) NOT NULL,
  `phone` varchar(75) NOT NULL,
  `services` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `offices`
--

INSERT INTO `offices` (`name`, `address`, `city`, `country`, `phone`, `services`) VALUES
('Amsterdam', 'Vondelstraat 73 1054 GK Amsterdam', 'Amsterdam', 'NL', '+31 (0)20 575 5255', NULL),
('Dubai', 'Gate Village, Building 5, Podium Level Dubai International Financial Centre, Dubai', 'Dubai', 'UAE', '+971 (0)4 425 5647', NULL),
('Geneva', '8, Place de la Taconnerie 1204 Geneva', 'Geneva', 'CH', '+41 (0)22 319 1766', NULL),
('Hong Kong', '22nd Floor, Alexandra House, 18 Chater Road Central', 'Hong Kong', 'HK', ' +852 2760 1766', NULL),
('London', '8 King Street, St. James\'s', 'London', 'UK', '+44 (0)20 7839 9060', NULL),
('Milan', 'Via Clerici 5', 'Milan', 'IT', '+39 02 303 2831', NULL),
('New York', '20 Rockefeller Plaza, New York, NY 10020', 'New York', 'US', '+1 212 636 2000', NULL),
('Paris', '9 Avenue Matignon, 75008', 'Paris', 'FR', '+33 (0)1 40 76 85 85', 'Christie’s Restitution'),
('Shanghai', '1st Floor, Ampire Building, No.97 Yuanmingyuan Road', 'Shanghai', 'CHN', '+86 (0)21 6355 1766', NULL),
('Zürich', 'Steinwiesplatz 8032', 'Zürich', 'CH', '+41 (0)44 268 10 10', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `seller`
--

CREATE TABLE `seller` (
  `id` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL,
  `phone_number` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `seller`
--

INSERT INTO `seller` (`id`, `name`, `type`, `phone_number`, `address`, `country`) VALUES
('3304d6c5', 'Brera Art Gallery', 'Museum', '02 7226 3264', 'Via Brera, 28, 20121 Milano MI', 'Italy'),
('cf863b45', 'Musee Louvre', 'Museum', '+33 (0)1 40 20 53 17', 'Musée du Louvre, 75058 Paris - France\r\nMétro: Palais-Royal Musée du Louvre (lines 1 and 7)', 'FR');

-- --------------------------------------------------------

--
-- Struttura della tabella `services`
--

CREATE TABLE `services` (
  `id` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `services`
--

INSERT INTO `services` (`id`, `name`) VALUES
('Bun4dZKgCkCoXG71olH0bQ', 'Christie’s Restitution'),
('qOsgrFtI80iEjj_imhOo2w', 'Collectrium'),
('pB7agtR1xEi_M-9_JP5Mcg', 'Museum Services'),
('FG1cBC7s20uuE5elQVevvg', 'Private Sales');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `officeName_idx` (`officeName`);

--
-- Indici per le tabelle `auctions`
--
ALTER TABLE `auctions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `office_idx` (`location`),
  ADD KEY `seller_idx` (`seller`),
  ADD KEY `objectID_idx` (`objectID`);

--
-- Indici per le tabelle `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `features`
--
ALTER TABLE `features`
  ADD KEY `office_available_idx` (`office`),
  ADD KEY `serive_availabe_idx` (`service`);

--
-- Indici per le tabelle `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`name`,`id`);

--
-- Indici per le tabelle `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`name`);

--
-- Indici per le tabelle `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`name`);

--
-- Indici per le tabelle `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `officeName` FOREIGN KEY (`officeName`) REFERENCES `offices` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `auctions`
--
ALTER TABLE `auctions`
  ADD CONSTRAINT `objectID` FOREIGN KEY (`objectID`) REFERENCES `objects` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `office` FOREIGN KEY (`location`) REFERENCES `offices` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `seller` FOREIGN KEY (`seller`) REFERENCES `seller` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `office_available` FOREIGN KEY (`office`) REFERENCES `offices` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `serive_availabe` FOREIGN KEY (`service`) REFERENCES `services` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
