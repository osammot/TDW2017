-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Lug 23, 2017 alle 21:06
-- Versione del server: 5.6.35
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `tdw2017`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `recensioni`
--

CREATE TABLE `recensioni` (
  `id_recensione` int(12) NOT NULL,
  `data_inserimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `titolo` varchar(50) NOT NULL,
  `testo` varchar(350) NOT NULL,
  `username` varchar(50) NOT NULL,
  `id_prodotto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `recensioni`
--

INSERT INTO `recensioni` (`id_recensione`, `data_inserimento`, `titolo`, `testo`, `username`, `id_prodotto`) VALUES
(1, '2017-07-23 18:45:33', 'aaaa', 'aaaa', 'tom', 1),
(2, '2017-07-23 18:49:28', 'aaaa', 'aaaa', 'tom', 1),
(3, '2017-07-23 18:54:26', 'sss', 'sss', 'tom', 1),
(6, '2017-07-23 18:56:28', 'qqqq', 'qqq', 'stef', 1),
(7, '2017-07-23 18:56:35', 'eee', 'eeeee', 'stef', 1);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `recensioni`
--
ALTER TABLE `recensioni`
  ADD PRIMARY KEY (`id_recensione`),
  ADD KEY `username` (`username`),
  ADD KEY `id_prodotto` (`id_prodotto`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `recensioni`
--
ALTER TABLE `recensioni`
  MODIFY `id_recensione` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `recensioni`
--
ALTER TABLE `recensioni`
  ADD CONSTRAINT `recensioni_ibfk_1` FOREIGN KEY (`username`) REFERENCES `utenti` (`username`) ON DELETE CASCADE,
  ADD CONSTRAINT `recensioni_ibfk_2` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`) ON DELETE CASCADE;
