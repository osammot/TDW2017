

CREATE TABLE `anagrafica` (
  `id_anagrafica` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `indirizzo` varchar(100) DEFAULT NULL,
  `citta` varchar(50) DEFAULT NULL,
  `CAP` int(11) DEFAULT NULL,
  `stato` varchar(50) DEFAULT NULL,
  `cellulare` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `carrello` (
  `id_sessione` int(11) NOT NULL,
  `quantita` int(11) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `categorie` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `descrizione` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `categorie` (`id_categoria`, `nome`, `descrizione`) VALUES
(0, '', ''),
(1, 'Avventura', ''),
(2, 'horror', 'ssss'),
(3, 'dramma', 'hays'),
(5, 'fantasy', '');


CREATE TABLE `dettagli_ordine` (
  `id_dettaglio` int(11) NOT NULL,
  `numero_articoli` int(11) DEFAULT NULL,
  `id_ordine` int(11) DEFAULT NULL,
  `id_prodotto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `galleria_immagini` (
  `id_immagine` int(11) NOT NULL,
  `immagine` blob,
  `id_prodotto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `gruppi` (
  `id_gruppo` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `descrizione` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `gruppi` (`id_gruppo`, `nome`, `descrizione`) VALUES
(0, '', ''),
(1, 'admin', 'dddd');



CREATE TABLE `gruppiservizi` (
  `id_servizio` int(11) DEFAULT NULL,
  `id_gruppo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `gruppiservizi` (`id_servizio`, `id_gruppo`) VALUES
(1, 1),
(2, 1);



CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `data_news` date DEFAULT NULL,
  `titolo` varchar(50) DEFAULT NULL,
  `id_prodotto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `news` (`id_news`, `data_news`, `titolo`, `id_prodotto`) VALUES
(0, '0000-00-00', '', 0);



CREATE TABLE `ordini` (
  `id_ordine` int(11) NOT NULL,
  `data_ordine` date DEFAULT NULL,
  `cellulare_consegna` int(11) DEFAULT NULL,
  `costo_totale` float DEFAULT NULL,
  `indirizzo` varchar(50) DEFAULT NULL,
  `citta` varchar(50) DEFAULT NULL,
  `CAP` int(11) DEFAULT NULL,
  `stato` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `id_prodotto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `ordiniprodotti` (
  `id_ordine` int(11) DEFAULT NULL,
  `id_prodotto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `pagamenti` (
  `id_pagamento` int(11) NOT NULL,
  `importo` int(11) DEFAULT NULL,
  `metodo_pagamento` varchar(50) DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `id_ordine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `prodotti` (
  `id_prodotto` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `durata` varchar(50) DEFAULT NULL,
  `distribuzione` varchar(50) DEFAULT NULL,
  `formato` varchar(50) DEFAULT NULL,
  `tipologia` varchar(50) DEFAULT NULL,
  `regista` varchar(50) DEFAULT NULL,
  `prezzo` float DEFAULT NULL,
  `quantita_disponibile` int(11) DEFAULT NULL,
  `data_uscita` date DEFAULT NULL,
  `descrizione` text,
  `path` varchar(1000) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `prodotti` (`id_prodotto`, `nome`, `durata`, `distribuzione`, `formato`, `tipologia`, `regista`, `prezzo`, `quantita_disponibile`, `data_uscita`, `descrizione`, `path`, `id_categoria`) VALUES
(0, 'Narcos', '180', '', '', 'serie', '', 45.78, 0, '0000-00-00', '', './img/serie8.jpg', 0),
(1, 'revenant', '180', 'universa', 'dvd', 'film', 'fs', 15, 34, '2016-02-02', '', './img/film5.jpg', 1),
(2, 'Rocky', '180', 'universa', 'dvd', 'film', 'dddd', 100, 4, '1995-02-02', '', './img/film2.jpg', 0),
(4, 'Perfetti Sconosciuti', '120', 'dddd', 'dvd', 'film', 'ddd', 23, 23, '2016-03-02', '', ' ./img/film4.jpg', 0),
(5, 'breaking bad', NULL, NULL, NULL, 'serie', NULL, 12, NULL, '2015-05-16', NULL, './img/serie1.jpg', NULL),
(43, 'Fury', '233', 'fff', 'fff', 'film', 'fff', 12, 10, '2017-01-01', '', ' ./img/film8.jpg', 0),
(56, '13 Hours', '122', 'ggg', 'ggg', 'film', 'ggg', 12, NULL, '2014-05-16', NULL, './img/film9.jpg', NULL),
(344, 'house of cards', '45', NULL, NULL, 'serie', NULL, 76, NULL, '2017-05-24', NULL, './img/serie12.jpg', NULL),
(566, 'Vikings', NULL, NULL, NULL, 'serie', NULL, 100, NULL, '2017-05-26', NULL, './img/serie4.jpg', NULL),
(3232, 'Gomorra', '320', 'Universal', 'dvd', 'serie', 'fff', 12, 34, '2016-09-03', '', ' ./img/serie7.jpg', 0);



CREATE TABLE `prodottinews` (
  `id_prodotto` int(11) DEFAULT NULL,
  `id_news` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `recensioni` (
  `id_recensione` int(11) NOT NULL,
  `data_recensione` date DEFAULT NULL,
  `recensione` text,
  `titolo` varchar(50) DEFAULT NULL,
  `id_prodotto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `servizi` (
  `id_servizio` int(11) NOT NULL,
  `script` varchar(50) DEFAULT NULL,
  `descrizione` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `servizi` (`id_servizio`, `script`, `descrizione`) VALUES
(1, 'login.php', NULL),
(2, 'add-categoria.php', NULL);

CREATE TABLE `spedizioni` (
  `id_spedizione` int(11) NOT NULL,
  `metodo_spedizione` varchar(50) DEFAULT NULL,
  `data_spedizione` date DEFAULT NULL,
  `id_ordine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `utenti` (
  `user` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `utenti` (`user`, `password`, `email`) VALUES
('', '', ''),
('Stefano', 'fffff', 'fffffff@.com');



CREATE TABLE `utentigruppi` (
  `user` varchar(50) DEFAULT NULL,
  `id_gruppo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `utentigruppi` (`user`, `id_gruppo`) VALUES
('', 0),
('', 1),
('', 0),
('Stefano', 1),
('Stefano', 1),
('', NULL);


ALTER TABLE `anagrafica`
  ADD PRIMARY KEY (`id_anagrafica`),
  ADD KEY `user` (`user`);


ALTER TABLE `carrello`
  ADD PRIMARY KEY (`id_sessione`),
  ADD KEY `user` (`user`);

--
-- Indici per le tabelle `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categoria`);


ALTER TABLE `dettagli_ordine`
  ADD PRIMARY KEY (`id_dettaglio`),
  ADD KEY `id_ordine` (`id_ordine`);


ALTER TABLE `galleria_immagini`
  ADD PRIMARY KEY (`id_immagine`),
  ADD KEY `id_prodotto` (`id_prodotto`);


ALTER TABLE `gruppi`
  ADD PRIMARY KEY (`id_gruppo`);


ALTER TABLE `gruppiservizi`
  ADD KEY `id_servizio` (`id_servizio`),
  ADD KEY `id_gruppo` (`id_gruppo`);

ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`),
  ADD KEY `id_prodotto` (`id_prodotto`);


ALTER TABLE `ordini`
  ADD PRIMARY KEY (`id_ordine`),
  ADD KEY `user` (`user`),
  ADD KEY `id_prodotto` (`id_prodotto`);

ALTER TABLE `ordiniprodotti`
  ADD KEY `id_ordine` (`id_ordine`),
  ADD KEY `id_prodotto` (`id_prodotto`);


ALTER TABLE `pagamenti`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `id_ordine` (`id_ordine`);


ALTER TABLE `prodotti`
  ADD PRIMARY KEY (`id_prodotto`),
  ADD KEY `id_categoria` (`id_categoria`);


ALTER TABLE `prodottinews`
  ADD KEY `id_prodotto` (`id_prodotto`),
  ADD KEY `id_news` (`id_news`);


ALTER TABLE `recensioni`
  ADD PRIMARY KEY (`id_recensione`),
  ADD KEY `id_prodotto` (`id_prodotto`);


ALTER TABLE `servizi`
  ADD PRIMARY KEY (`id_servizio`);


ALTER TABLE `spedizioni`
  ADD PRIMARY KEY (`id_spedizione`),
  ADD KEY `id_ordine` (`id_ordine`);


ALTER TABLE `utenti`
  ADD PRIMARY KEY (`user`);

ALTER TABLE `utentigruppi`
  ADD KEY `user` (`user`),
  ADD KEY `id_gruppo` (`id_gruppo`);



ALTER TABLE `anagrafica`
  ADD CONSTRAINT `anagrafica_ibfk_1` FOREIGN KEY (`user`) REFERENCES `utenti` (`user`);


ALTER TABLE `carrello`
  ADD CONSTRAINT `carrello_ibfk_1` FOREIGN KEY (`user`) REFERENCES `utenti` (`user`);


ALTER TABLE `dettagli_ordine`
  ADD CONSTRAINT `dettagli_ordine_ibfk_1` FOREIGN KEY (`id_ordine`) REFERENCES `ordini` (`id_ordine`);

ALTER TABLE `galleria_immagini`
  ADD CONSTRAINT `galleria_immagini_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`);


ALTER TABLE `gruppiservizi`
  ADD CONSTRAINT `gruppiservizi_ibfk_1` FOREIGN KEY (`id_servizio`) REFERENCES `servizi` (`id_servizio`),
  ADD CONSTRAINT `gruppiservizi_ibfk_2` FOREIGN KEY (`id_gruppo`) REFERENCES `gruppi` (`id_gruppo`);


ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`);


ALTER TABLE `ordini`
  ADD CONSTRAINT `ordini_ibfk_1` FOREIGN KEY (`user`) REFERENCES `utenti` (`user`),
  ADD CONSTRAINT `ordini_ibfk_2` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`);

--
-- Limiti per la tabella `ordiniprodotti`
--
ALTER TABLE `ordiniprodotti`
  ADD CONSTRAINT `ordiniprodotti_ibfk_1` FOREIGN KEY (`id_ordine`) REFERENCES `ordini` (`id_ordine`),
  ADD CONSTRAINT `ordiniprodotti_ibfk_2` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`);


ALTER TABLE `pagamenti`
  ADD CONSTRAINT `pagamenti_ibfk_1` FOREIGN KEY (`id_ordine`) REFERENCES `ordini` (`id_ordine`);


ALTER TABLE `prodotti`
  ADD CONSTRAINT `prodotti_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorie` (`id_categoria`);


ALTER TABLE `prodottinews`
  ADD CONSTRAINT `prodottinews_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`),
  ADD CONSTRAINT `prodottinews_ibfk_2` FOREIGN KEY (`id_news`) REFERENCES `news` (`id_news`);


ALTER TABLE `recensioni`
  ADD CONSTRAINT `recensioni_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`);


ALTER TABLE `spedizioni`
  ADD CONSTRAINT `spedizioni_ibfk_1` FOREIGN KEY (`id_ordine`) REFERENCES `ordini` (`id_ordine`);


ALTER TABLE `utentigruppi`
  ADD CONSTRAINT `utentigruppi_ibfk_1` FOREIGN KEY (`user`) REFERENCES `utenti` (`user`),
  ADD CONSTRAINT `utentigruppi_ibfk_2` FOREIGN KEY (`id_gruppo`) REFERENCES `gruppi` (`id_gruppo`);
