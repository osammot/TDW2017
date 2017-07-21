-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Lug 17, 2017 alle 18:53
-- Versione del server: 5.6.35
-- Versione PHP: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_tdw`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `carrello`
--

CREATE TABLE `carrello` (
  `id_prodotto` int(11) NOT NULL,
  `quantity` int(3) DEFAULT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie`
--

CREATE TABLE `categorie` (
  `id_categoria` int(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descrizione` varchar(100) DEFAULT 'descrizione mancante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `categorie`
--

INSERT INTO `categorie` (`id_categoria`, `nome`, `descrizione`) VALUES
(3, 'avventura', 'agaggaag'),
(9, 'horror', 'sahas'),
(10, 'dramma', 'dadadaddadaadad'),
(11, 'fantascienza', 'hhh');

-- --------------------------------------------------------

--
-- Struttura della tabella `coupon`
--

CREATE TABLE `coupon` (
  `id_coupon` int(10) NOT NULL,
  `codice_coupon` int(10) NOT NULL,
  `validità` date DEFAULT NULL,
  `sconto` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `coupon`
--

INSERT INTO `coupon` (`id_coupon`, `codice_coupon`, `validità`, `sconto`) VALUES
(2, 4444444, '0000-00-00', 32),
(3, 21212, '2017-02-07', 34);

-- --------------------------------------------------------

--
-- Struttura della tabella `dettagliOrdini`
--

CREATE TABLE `dettagliOrdini` (
  `id_ordine` int(10) NOT NULL,
  `id_prodotto` int(11) NOT NULL,
  `quantità` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `gruppi`
--

CREATE TABLE `gruppi` (
  `id_gruppo` int(10) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descrizione` varchar(100) DEFAULT 'descrizione mancante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `gruppi`
--

INSERT INTO `gruppi` (`id_gruppo`, `nome`, `descrizione`) VALUES
(1, 'admin', 'superadmin'),
(2, 'user', 'normaluser');

-- --------------------------------------------------------

--
-- Struttura della tabella `gruppiservizi`
--

CREATE TABLE `gruppiservizi` (
  `id_gruppo` int(10) DEFAULT NULL,
  `id_servizio` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `gruppiservizi`
--

INSERT INTO `gruppiservizi` (`id_gruppo`, `id_servizio`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(2, 5),
(1, 4),
(1, 6),
(1, 7),
(2, 1),
(1, 8),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 17),
(1, 16),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(1, 40),
(2, 40);

-- --------------------------------------------------------

--
-- Struttura della tabella `immagini`
--

CREATE TABLE `immagini` (
  `id_immagine` int(10) NOT NULL,
  `path` varchar(50) DEFAULT NULL,
  `alt` varchar(50) DEFAULT 'immagine mancante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `immagini`
--

INSERT INTO `immagini` (`id_immagine`, `path`, `alt`) VALUES
(1, './img/serie6.jpg', 'provafilm1'),
(2, './img/serie6.jpg', 'provaslider1'),
(3, 'hhhh', 'a12'),
(4, 'ffff', 'a26'),
(5, './img/film2.jpg', 'Rocky'),
(6, './img/film1.jpg', 'American Sniper'),
(7, './img/film3.jpg', 'Django'),
(8, './img/film4.jpg', 'Perfetti Sconosciuti'),
(9, './img/film5.jpg', 'Revenant'),
(10, './img/film6.jpg', 'Il ponte delle spie'),
(11, './img/film7.jpg', 'Batman vs Superman'),
(12, './img/film8.jpg', 'Fury'),
(13, './img/film9.jpg', '13 Hours'),
(14, './img/film10.jpg', 'Independence Day'),
(15, './img/film11.jpg', 'Il piccolo principe'),
(16, './img/film12.jpg', 'Quo Vado'),
(17, './img/film13.jpg', 'ZOO'),
(18, './img/film14.jpg', 'Gotham'),
(19, './img/revenant-slider.png', 'Revenant (Slider)'),
(20, './img/serie1.jpg', 'Breaking Bad'),
(21, './img/serie2.jpg', 'Heroes'),
(22, './img/serie3.jpg', 'Il trono di spade'),
(23, './img/serie4.jpg', 'Vikings'),
(24, './img/serie5.jpg', 'Downton Abbey'),
(25, './img/serie7.jpg', 'Gomorra'),
(26, './img/serie8.jpg', 'Gomorra'),
(27, './img/serie9.jpg', 'The Shield'),
(28, './img/serie10.jpg', 'Sherlock'),
(29, './img/serie11.jpg', '1992'),
(30, './img/serie12.jpg', 'House of Cards'),
(31, './img/slider2.jpg', 'Insurgent(Slider)'),
(32, './img/slider3.jpg', 'Lo Hobbit (Slider)'),
(33, './img/ted-slider.png', 'ted (Slider)');

-- --------------------------------------------------------

--
-- Struttura della tabella `immaginiProdotto`
--

CREATE TABLE `immaginiProdotto` (
  `id_immagine` int(10) DEFAULT NULL,
  `id_prodotto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `marketingForSpecificUser`
--

CREATE TABLE `marketingForSpecificUser` (
  `id_prodotto` int(11) NOT NULL,
  `contvisualizzazioni` int(12) DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `addremovotocart` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `data_news` date DEFAULT NULL,
  `immagine` varchar(1000) NOT NULL,
  `titolo` varchar(50) DEFAULT NULL,
  `corpo` longtext NOT NULL,
  `id_prodotto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `news`
--

INSERT INTO `news` (`id_news`, `data_news`, `immagine`, `titolo`, `corpo`, `id_prodotto`) VALUES
(1, '2016-12-11', './img/film5.jpg', 'Al cinemaaa', 'Ispirato a eventi realmente accaduti, Revenant - Redivivo è una storia epica sul tema della sopravvivenza e della trasformazione, sullo sfondo della frontiera americana. Costretti a lasciare il territorio incontaminato e sconosciuto del Nord Dakota dove stavano cacciando pelli e pellicce a causa di un attacco indiano che li ha decimati, i sopravvissuti della spedizione si affidano al leggendario esploratore Hugh Glass (Leonardo DiCaprio) per trovare una via di fuga sicura e tornare al loro forte. Le scelte di Glass, e la necessità di abbandonare nei boschi le pelli e il guadagno che rappresentano, suscitano l\'ostilità del rude John Fitzgerald (Tom Hardy). Quando Glass viene ridotto in fin di vita dall\'attacco di un\'orsa, e il gruppo è costretto a separarsi, Fitzgerald abbandona il ferito al suo destino, considerandolo spacciato. Ma, nonostante le feriti mortali e la solitudine, Glass riesce a non soccombere. Grazie alla sua forte determinazione e all\'amore che nutre per sua moglie, una indiana d\'America, percorrerà oltre 300 chilometri in un viaggio simile a un\'odissea, attraverso il grande e selvaggio West, per scovare l\'uomo che lo ha tradito. Il suo inseguimento implacabile diventa un\'epopea che sfida il tempo e le avversità, alimentata dal desiderio di tornare a casa e ottenere la meritata giustizia. Lo sviluppo del progetto cominciò nell\'agosto 2001, quando il produttore Akiva Goldsman acquistò i diritti del libro inedito The Revenant di Michael Punke.[6] Dave Rabe scrisse la sceneggiatura,[7] e la regia venne affidata a Park Chan-wook, che pensò subito a Samuel L. Jackson come protagonista. Park in seguito lasciò il film.[8]\n\nIl progetto entrò in pausa fino al 2010, quando Mark L. Smith scrisse una nuova sceneggiatura del film per l\'Anonymous Content di Steve Golin. Nel maggio 2010 Smith rivelò che John Hillcoat era in trattative per dirigere il film e Christian Bale per interpretare il protagonista.[9] Nell\'ottobre 2010 Hillcoat lasciò il progetto.[10] Jean-François Richet venne considerato come possibile sostituto,[10] ma nell\'agosto 2011 Alejandro González Iñárritu firmò per la regia.[11] A novembre la New Regency Productions si unì alla produzione con Anonymous Content, e la 20th Century Fox fu confermata come distributrice del film.[12][13] Nei giorni seguenti Iñárritu disse di volere Leonardo DiCaprio e Sean Penn in due ruoli principali.[14]\n\nUna volta che Alejandro González Iñárritu venne confermato come regista del film, ha iniziato a lavorare sulla sceneggiatura del film e sulla scrittura del copione.[15] In un\'intervista su Creative Screenwriting, Smith dichiarò che nel corso di questo processo creativo gli sorsero vari dubbi, che lo portarono alla conclusione che Iñárritu non sarebbe stato in grado di filmare alcune delle sequenze che aveva scritto.[16] Mark ricordò inoltre: «Avevamo buttato giù qualche idea, ma non eravamo ancora soddisfatti, e io continuavo a dire \"Alejandro, non ne possiamo tirare fuori niente. Non sta andando bene\" e lui invece mi disse: \"Mark, credimi, siamo in grado di farlo\". Alla fine, aveva ragione.»[17]\n\nIl film fu nuovamente messo in pausa nel marzo 2012, poiché la New Regency assunse Iñárritu per dirigere un adattamento di Film-Flam Man di Jennifer Vogel.[18] A dicembre dello stesso anno Iñárritu rivelò che il suo prossimo progetto sarebbe stato Birdman,[19] film grazie al quale vincerà l\'Oscar per la miglior regia, indicando però anche che dopo Birdman avrebbe girato The Revenant.[20]', 6),
(2, '2017-07-25', './img/serie3.jpg', 'Finalmente', '“L’inverno sta arrivando”. Se solo a sentire questa frase vieni catapultato nei Sette Regni, sei nel posto giusto. Qui trovi tutte le news sulla mitica serie HBO “Game Of Thrones”, tratta dal ciclo di romanzi “Cronache del ghiaccio e del fuoco” dello scrittore statunitense George R.R. Martin. La serie ha conquistato milioni e milioni di fan in tutto il mondo grazie alla forza del racconto, a personaggi epici, e all’alternanza di elementi molto umani con altri magici e oscuri. Ecco tutte le news che non puoi assolutamente perderti', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordini`
--

CREATE TABLE `ordini` (
  `id_ordine` int(10) NOT NULL,
  `data_ordine` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prezzoTotale` int(10) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazioni`
--

CREATE TABLE `prenotazioni` (
  `id_prodotto` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `prezzo` int(10) NOT NULL,
  `quantità` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE `prodotti` (
  `id_prodotto` int(11) NOT NULL,
  `titolo` varchar(50) NOT NULL,
  `durata` int(4) DEFAULT NULL,
  `tipologia` varchar(50) DEFAULT NULL,
  `prezzo` int(10) DEFAULT NULL,
  `quantità_disponibile` int(10) DEFAULT NULL,
  `descrizione` text,
  `id_immaginePrincipale` int(10) DEFAULT NULL,
  `id_categoria` int(10) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `contvisualizzazioni` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`id_prodotto`, `titolo`, `durata`, `tipologia`, `prezzo`, `quantità_disponibile`, `descrizione`, `id_immaginePrincipale`, `id_categoria`, `data`, `contvisualizzazioni`) VALUES
(1, 'Revenant', 180, 'film', 12, 34, 'Revenant - Redivivo (The Revenant) è un film del 2015, diretto, co-scritto e co-prodotto da Alejandro González Iñárritu.[1]\n\nScritto dallo stesso Iñárritu e da Mark Lee Smith e distribuito dalla 20th Century Fox, è in parte basato sul romanzo Revenant - La storia vera di Hugh Glass e della sua vendetta (2002, edito in Italia da Einaudi nel 2014) di Michael Punke ed è parzialmente ispirato alla vita del cacciatore di pelli Hugh Glass,[2] vissuto a cavallo tra il Settecento e l\'Ottocento e che, nel 1823, durante una spedizione commerciale lungo il Missouri, fu abbandonato in fin di vita dai suoi compagni, riuscendo a sopravvivere. Il soggetto è già stato usato da un\'altra pellicola, Uomo bianco, va\' col tuo dio! (Man in the Wilderness) del 1971, così da poter considerare Revenant un remake dello stesso. La pellicola vede come protagonista Leonardo DiCaprio, affiancato da Tom Hardy, Will Poulter e Domhnall Gleeson.\n\nIl film ha vinto molti premi: 3 Golden Globes su 4 nomination,[3] 5 premi BAFTA su 9 nomination e 3 Premi Oscar su 12 candidature ottenute, incluso il premio come \"Miglior attore protagonista\" a Leonardo DiCaprio, che con questo film ottiene la sua prima vittoria agli Oscar.', 9, 3, '2016-08-24', 0),
(6, 'La mafia uccide solo d\'estate ', 340, 'serie', 123, 13, 'Arturo Giammarresi è un giovane giornalista che racconta in maniera originale i fatti relativi alla mafia che hanno punteggiato la sua vita fin dall\'infanzia, a partire dagli anni settanta fino al 1992. Arturo fu concepito nello stesso giorno e nello stesso luogo della strage di viale Lazio: i suoi genitori, che si sposarono proprio nel giorno in cui avvenne la strage mafiosa e consumarono appena convolati a nozze, vivevano nello stesso stabile in cui avvenne la strage. Il piccolo Arturo impiegò molto tempo a iniziare a parlare, e la prima parola da lui pronunciata fu mafia, detta indicando Fra Giacinto, prete opportunista legato a diversi mafiosi (presente in quel momento a benedire la casa), dal quale Arturo era stato battezzato nello stesso giorno in cui a Palermo era stato eletto sindaco Vito Ciancimino, battesimo che il prete aveva celebrato in fretta e furia per riuscire a presenziare ad entrambi gli eventi. Sin da bambino, Arturo sembra avere la capacità di riconoscere i mafiosi semplicemente vedendoli, infatti si spaventa quando, recatosi all\'ospedale in occasione della nascita del fratello minore Emanuele, vi vede Salvatore Riina, pur ignorandone completamente l\'identità.', 1, 3, '2016-09-23', 0),
(7, 'Rocky', 123, 'film', 123, 12, 'Philadelphia, 1975. Rocky Balboa è un bullo di periferia, quasi trentenne, con sangue italiano nelle vene. Con pochi amici e una vita scombinata in uno squallido buco metropolitano per emarginati, Rocky racimola qualche soldo come scagnozzo esattore di uno strozzino e gareggiando in alcuni incontri di pugilato per dilettanti. I pugni sono tutto quel che ha: la boxe è la sua grande passione, ma non è mai riuscito a sfondare, o almeno a provarci. Innamorato della timidissima Adriana, Rocky prova a scalfire le barriere della ragazza con battute da sbruffone, ma la reputazione di fallito lo perseguita. Grazie a un colpo di fortuna, ha finalmente la possibilità di dimostrare ad Adriana, e soprattutto a se stesso, di valere. Il campione del mondo dei pesi massimi, Apollo Creed, si ritrova senza sfidante, per un infortunio, in un match organizzato per festeggiare il bicentenario degli Stati Uniti d\'America, nel quale il campione metterà in palio il titolo mondiale. Affamato di popolarità e denaro, Apollo Creed decide di concedere per la prima volta l\'opportunità di una ribalta così prestigiosa a un pugile sconosciuto. La scelta ricade su Rocky, lo \"stallone italiano\". \nLa parabola di Rocky Balboa, che affronta la vita a muso duro e a pugni tesi, dentro e fuori dal ring, è l\'emblema di un\'America mitologica. Una terra di opportunità a disposizione di chiunque sia animato da buon cuore, sani principi e un\'indomabile forza di volontà. Proprio come quella del testardo Rocky, interessato non tanto alla vittoria, alla fama o ai 150.000 dollari messi a disposizione dello sfidante, che comunque gli cambierebbero la vita. Ciò che conta davvero per Rocky è resistere, resistere a oltranza, a testa alta, per dimostrare alla sua amata e a se stesso di essere un uomo. Negli Stati Uniti dell\'\"American dream\" tutto è possibile, a patto di cogliere le sfide con coraggio e non arretrare di fronte alle proprie paure. Una mitologia alimentata da tanto cinema a stelle e strisce, ma qui talmente ben confezionata da assurgere allo status di cult. Le ragioni essenziali di tanto successo (dodici nomination e tre premi Oscar per la migliore regia, il miglior film e il miglior montaggio, oltre che la genesi di una saga amatissima dal pubblico), per un film che è costato 1 milione di dollari e ne ha incassati 225, vanno ricercate nel carattere esemplare della storia raccontata, in grado di dare il via a un filone di film sportivi - spesso incentrati sulla boxe - dove a contare non è tanto lo sport in sé, quanto i nobili sentimenti che esso suscita in eroi dal volto ordinario, con esempi che si susseguono con successo fino ai giorni nostri (Warrior). \nDi certo Rocky, diretto con professionalità da John G. Avildsen, è molto più favolistico, e anche meno riuscito dal punto di vista squisitamente cinematografico, di altri film che hanno cavalcato le fortune del genere (pensiamo a Toro scatenato di Martin Scorsese o ai più recenti Million Dollar Baby e The Wrestler). Ma fa perfettamente leva sul meccanismo di identificazione tra pubblico e protagonista. È impossibile non fare il tifo per questo perdente che lotta in un mondo di perdenti, tutti ottimamente caratterizzati, dalla dolce e introversa Adriana di Talia Shire al rude allenatore fallito di Burgess Meredith, passando per l\'irascibile e goffo amico (Burt Young) col miraggio della malavita. È in questo universo di sbandati di periferia dai sogni mancati che Rocky - interpretato da un convincente Sylvester Stallone - coglie l\'occasione della vita e, con la disciplina di un duro allenamento, riscatta con lo sport le frustrazioni, le delusioni e i fallimenti di un intero nucleo sociale. \nCome non commuoversi, allora, di fronte alla storia di questo simpatico sbruffone dal cuore tenero, eroe qualunque che tutti vorremmo essere? Una storia simile a quella del suo interprete, un italoamericano di umili origini che non riusciva ad affermarsi nel cinema, prima di sfondare le porte chiuse di Hollywood scrivendo la sceneggiatura di questo film. Un successo calcolato, si potrebbe pensare. Ma, in verità, la favola di Rocky mantiene intatto, dall\'inizio alla fine, quel sapore di fresca e onesta spontaneità che non la riduce a mera operazione commerciale e ne nobilita il risultato, facendone un trionfo di sentimenti molto hollywoodiano, certo, ma anche decisamente emozionante (soprattutto in alcune sequenze, come l\'allenamento in esterni e l\'avvio del match, con Apollo Creed che richiama la mitologia dello \"Zio Sam\"). E le emozioni, non dimentichiamolo, sono alla base del cinema e della vita.', 5, 9, '2000-05-04', 0),
(10, 'Narcos', 34, 'serie', 12, 2, 'DDDDDD', 26, NULL, '0000-00-00', NULL),
(11, 'THE SHIELD', 34, 'serie', 12, 2, 'DDDDDD', 27, NULL, '0000-00-00', NULL),
(12, 'Batman vs Superman', 34, 'film', 12, 2, 'DDDDDD', 11, NULL, '0000-00-00', NULL),
(13, 'Gomorra', 34, 'serie', 12, 2, 'DDDDDD', 25, NULL, '0000-00-00', NULL),
(14, 'Downton Abbey', 34, 'film', 12, 2, 'DDDDDD', 24, NULL, '0000-00-00', NULL),
(15, 'American Sniper', 34, 'film', 12, 2, 'DDDDDD', 6, NULL, '0000-00-00', NULL),
(16, 'Il Piccolo Principe', 565, 'film', 233, 23, 'fffff', 15, 9, '2017-07-25', 0),
(17, 'prova1', 12, 'serie', 12, 12, 'dddd', 6, NULL, NULL, 0);

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

-- --------------------------------------------------------

--
-- Struttura della tabella `servizi`
--

CREATE TABLE `servizi` (
  `id_servizio` int(10) NOT NULL,
  `script` varchar(50) NOT NULL,
  `descrizione` varchar(100) DEFAULT 'descrizione mancante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `servizi`
--

INSERT INTO `servizi` (`id_servizio`, `script`, `descrizione`) VALUES
(1, 'login.php', ''),
(2, 'add-categoria.php', 'aggiunta della categoria '),
(3, 'add-prodotto.php', 'aggiunta prodotti'),
(4, 'index.php', 'pagina iniziale della deshboard'),
(5, 'add-news.php', 'aggiunta news'),
(6, 'edit-user.php', 'modifica degli utenti registrati'),
(7, 'delete-group.php', 'cancellazione di un gruppo'),
(8, 'delete-news.php', 'eliminazione news'),
(9, 'single-product.php', 'pagina singolo prodotto front-end'),
(10, 'add-group.php', 'aggiunta gruppo'),
(11, 'add-immagini.php', 'aggiunta immagini'),
(12, 'add-slider.php', 'aggiunta slider'),
(13, 'add-user.php', 'aggiunta utente'),
(14, 'add-servizio.php', 'aggiunta servizi'),
(16, 'assegnagruppo-servizio.php', 'assegnazione di un gruppo ad uno specifico servizio'),
(17, 'assegnagruppo-user.php', 'assegnazione di un gruppo ad un user'),
(20, 'delete-categoria.php', 'cancellazione categorie'),
(21, 'delete-prodotto.php', 'cancellazione prodotti'),
(22, 'delete-immagini.php', 'cancellazione immagini'),
(23, 'delete-servizio.php', 'cancellazione servizi '),
(24, 'delete-user.php', 'cancellazione utenti '),
(25, 'delete-slider.php', 'cancellazione slider index'),
(26, 'edit-categoria.php', 'modifica categoria'),
(27, 'edit-group.php', 'modifica gruppo'),
(28, 'edit-immagini.php', 'modifica immagini'),
(29, 'edit-news.php', 'modifica news'),
(30, 'edit-prodotto.php', 'modifica prodotto'),
(31, 'edit-servizio.php', 'modifica servizio'),
(32, 'edit-slider.php', 'modifica slider'),
(33, 'add-coupon.php', 'aggiunta coupon'),
(34, 'delete-coupon.php', 'cancellazione coupon'),
(35, 'edit-coupon.php', 'modifica coupon'),
(36, 'index.php', 'descrizione mancante'),
(37, 'single-product.php', 'descrizione mancante'),
(38, 'cart.php', 'descrizione mancante'),
(39, 'checkout.php', 'descrizione mancante'),
(40, 'addProductToCart.php', 'descrizione mancante');

-- --------------------------------------------------------

--
-- Struttura della tabella `slider`
--

CREATE TABLE `slider` (
  `id_immagine` int(10) DEFAULT NULL,
  `id_position` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `slider`
--

INSERT INTO `slider` (`id_immagine`, `id_position`) VALUES
(19, 2),
(31, 3),
(32, 4),
(33, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `città` varchar(50) NOT NULL,
  `indirizzo` varchar(50) NOT NULL,
  `cap` int(10) NOT NULL,
  `stato` varchar(50) NOT NULL,
  `cellulare` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`nome`, `cognome`, `città`, `indirizzo`, `cap`, `stato`, `cellulare`, `username`, `password`, `email`) VALUES
('', '', '', '', 0, '', 0, 'aaaa', '123', 'aaa'),
('', '', '', '', 0, '', 0, 'bbb', 'bbb', 'bbb'),
('', '', '', '', 0, '', 0, 'bom', 'ggg', 'gggg'),
('', '', '', '', 0, '', 0, 'ccc', 'cccc', 'cc'),
('', '', '', '', 0, '', 0, 'ddddd', 'dddd', 'ddddd'),
('', '', '', '', 0, '', 0, 'eee', 'eee', 'e'),
('', '', '', '', 0, '', 0, 'eug', '123', ''),
('', '', '', '', 0, '', 0, 'flavio', 'ddd', 'gg'),
('', '', '', '', 0, '', 0, 'gigi', '123', 'ggg'),
('', '', '', '', 0, '', 0, 'gino', 'agagg', 'agag'),
('', '', '', '', 0, '', 0, 'loris', 'hhhhh', 'dddd'),
('', '', '', '', 0, '', 0, 'luca', '123', ''),
('', '', '', '', 0, '', 0, 'luigi', '123', 'luigi@info.it'),
('', '', '', '', 0, '', 0, 'marco', '123', 'rrrr'),
('', '', '', '', 0, '', 0, 'paolo', 'hhh', 'hhhhh'),
('', '', '', '', 0, '', 0, 'piero', '123', 'sss'),
('', '', '', '', 0, '', 0, 'pierpo', 'hhhh', 'pis'),
('prova1', 'prova1', 'prova1', 'prova1', 90, 'prova1', 900909, 'prova1', 'prova1', 'prova1@dff.it'),
('', '', '', '', 0, '', 0, 'stef', '123', 's.@h.it'),
('', '', '', '', 0, '', 0, 'Stefano', 'AAAA', 'AAAA'),
('', '', '', '', 0, '', 0, 'tito', 'gggg', 'gggg'),
('', '', '', '', 0, '', 0, 'tom', '123', 'ffsd');

-- --------------------------------------------------------

--
-- Struttura della tabella `utentigruppi`
--

CREATE TABLE `utentigruppi` (
  `username` varchar(50) NOT NULL,
  `id_gruppo` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `utentigruppi`
--

INSERT INTO `utentigruppi` (`username`, `id_gruppo`) VALUES
('luca', 1),
('stef', 1),
('tom', 1),
('aaaa', 2),
('bbb', 2),
('ccc', 2),
('ddddd', 2),
('eee', 2),
('eug', 2),
('flavio', 2),
('gigi', 2),
('gino', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `wishlist`
--

CREATE TABLE `wishlist` (
  `id_prodotto` int(11) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `carrello`
--
ALTER TABLE `carrello`
  ADD PRIMARY KEY (`id_prodotto`,`username`),
  ADD KEY `username` (`username`);

--
-- Indici per le tabelle `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Indici per le tabelle `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id_coupon`);

--
-- Indici per le tabelle `dettagliOrdini`
--
ALTER TABLE `dettagliOrdini`
  ADD KEY `id_ordine` (`id_ordine`),
  ADD KEY `id_prodotto` (`id_prodotto`);

--
-- Indici per le tabelle `gruppi`
--
ALTER TABLE `gruppi`
  ADD PRIMARY KEY (`id_gruppo`);

--
-- Indici per le tabelle `gruppiservizi`
--
ALTER TABLE `gruppiservizi`
  ADD KEY `id_gruppo` (`id_gruppo`),
  ADD KEY `id_servizio` (`id_servizio`);

--
-- Indici per le tabelle `immagini`
--
ALTER TABLE `immagini`
  ADD PRIMARY KEY (`id_immagine`);

--
-- Indici per le tabelle `immaginiProdotto`
--
ALTER TABLE `immaginiProdotto`
  ADD KEY `id_prodotto` (`id_prodotto`),
  ADD KEY `id_immagine` (`id_immagine`);

--
-- Indici per le tabelle `marketingForSpecificUser`
--
ALTER TABLE `marketingForSpecificUser`
  ADD KEY `username` (`username`),
  ADD KEY `id_prodotto` (`id_prodotto`);

--
-- Indici per le tabelle `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`),
  ADD KEY `id_prodotto` (`id_prodotto`);

--
-- Indici per le tabelle `ordini`
--
ALTER TABLE `ordini`
  ADD PRIMARY KEY (`id_ordine`),
  ADD KEY `username` (`username`);

--
-- Indici per le tabelle `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD PRIMARY KEY (`id_prodotto`,`username`),
  ADD KEY `username` (`username`);

--
-- Indici per le tabelle `prodotti`
--
ALTER TABLE `prodotti`
  ADD PRIMARY KEY (`id_prodotto`),
  ADD KEY `id_immaginePrincipale` (`id_immaginePrincipale`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indici per le tabelle `recensioni`
--
ALTER TABLE `recensioni`
  ADD PRIMARY KEY (`id_recensione`),
  ADD KEY `username` (`username`),
  ADD KEY `id_prodotto` (`id_prodotto`);

--
-- Indici per le tabelle `servizi`
--
ALTER TABLE `servizi`
  ADD PRIMARY KEY (`id_servizio`);

--
-- Indici per le tabelle `slider`
--
ALTER TABLE `slider`
  ADD KEY `id_immagine` (`id_immagine`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `utentigruppi`
--
ALTER TABLE `utentigruppi`
  ADD PRIMARY KEY (`username`,`id_gruppo`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_gruppo` (`id_gruppo`);

--
-- Indici per le tabelle `wishlist`
--
ALTER TABLE `wishlist`
  ADD KEY `id_prodotto` (`id_prodotto`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT per la tabella `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id_coupon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `gruppi`
--
ALTER TABLE `gruppi`
  MODIFY `id_gruppo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `immagini`
--
ALTER TABLE `immagini`
  MODIFY `id_immagine` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT per la tabella `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `ordini`
--
ALTER TABLE `ordini`
  MODIFY `id_ordine` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  MODIFY `id_prodotto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT per la tabella `recensioni`
--
ALTER TABLE `recensioni`
  MODIFY `id_recensione` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `servizi`
--
ALTER TABLE `servizi`
  MODIFY `id_servizio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `carrello`
--
ALTER TABLE `carrello`
  ADD CONSTRAINT `carrello_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`) ON DELETE CASCADE,
  ADD CONSTRAINT `carrello_ibfk_2` FOREIGN KEY (`username`) REFERENCES `utenti` (`username`) ON DELETE CASCADE;

--
-- Limiti per la tabella `dettagliOrdini`
--
ALTER TABLE `dettagliOrdini`
  ADD CONSTRAINT `dettagliordini_ibfk_1` FOREIGN KEY (`id_ordine`) REFERENCES `ordini` (`id_ordine`) ON DELETE CASCADE,
  ADD CONSTRAINT `dettagliordini_ibfk_2` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`);

--
-- Limiti per la tabella `gruppiservizi`
--
ALTER TABLE `gruppiservizi`
  ADD CONSTRAINT `gruppiservizi_ibfk_1` FOREIGN KEY (`id_gruppo`) REFERENCES `gruppi` (`id_gruppo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gruppiservizi_ibfk_2` FOREIGN KEY (`id_servizio`) REFERENCES `servizi` (`id_servizio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `immaginiProdotto`
--
ALTER TABLE `immaginiProdotto`
  ADD CONSTRAINT `immaginiprodotto_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`) ON DELETE CASCADE,
  ADD CONSTRAINT `immaginiprodotto_ibfk_2` FOREIGN KEY (`id_immagine`) REFERENCES `immagini` (`id_immagine`) ON DELETE CASCADE;

--
-- Limiti per la tabella `marketingForSpecificUser`
--
ALTER TABLE `marketingForSpecificUser`
  ADD CONSTRAINT `marketingforspecificuser_ibfk_1` FOREIGN KEY (`username`) REFERENCES `utenti` (`username`) ON DELETE CASCADE,
  ADD CONSTRAINT `marketingforspecificuser_ibfk_2` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`);

--
-- Limiti per la tabella `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`);

--
-- Limiti per la tabella `ordini`
--
ALTER TABLE `ordini`
  ADD CONSTRAINT `ordini_ibfk_1` FOREIGN KEY (`username`) REFERENCES `utenti` (`username`) ON DELETE CASCADE;

--
-- Limiti per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD CONSTRAINT `prenotazioni_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`),
  ADD CONSTRAINT `prenotazioni_ibfk_2` FOREIGN KEY (`username`) REFERENCES `utenti` (`username`) ON DELETE CASCADE;

--
-- Limiti per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  ADD CONSTRAINT `prodotti_ibfk_1` FOREIGN KEY (`id_immaginePrincipale`) REFERENCES `immagini` (`id_immagine`) ON DELETE CASCADE,
  ADD CONSTRAINT `prodotti_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorie` (`id_categoria`) ON DELETE CASCADE;

--
-- Limiti per la tabella `recensioni`
--
ALTER TABLE `recensioni`
  ADD CONSTRAINT `recensioni_ibfk_1` FOREIGN KEY (`username`) REFERENCES `utenti` (`username`) ON DELETE CASCADE,
  ADD CONSTRAINT `recensioni_ibfk_2` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`) ON DELETE CASCADE;

--
-- Limiti per la tabella `slider`
--
ALTER TABLE `slider`
  ADD CONSTRAINT `slider_ibfk_1` FOREIGN KEY (`id_immagine`) REFERENCES `immagini` (`id_immagine`) ON DELETE CASCADE;

--
-- Limiti per la tabella `utentigruppi`
--
ALTER TABLE `utentigruppi`
  ADD CONSTRAINT `utentigruppi_ibfk_1` FOREIGN KEY (`id_gruppo`) REFERENCES `gruppi` (`id_gruppo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utentigruppi_ibfk_2` FOREIGN KEY (`username`) REFERENCES `utenti` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_prodotto`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`username`) REFERENCES `utenti` (`username`) ON DELETE CASCADE;
