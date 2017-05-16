create table utenti (
     user VARCHAR(50) PRIMARY KEY,
     password VARCHAR (50),
     email VARCHAR(50)
     )
     ;

create table anagrafica (
    id_anagrafica int PRIMARY KEY,
    nome VARCHAR(50),
    cognome VARCHAR(50),
    indirizzo VARCHAR(100),
    citta VARCHAR(50),
    CAP int,
    stato VARCHAR(50),
    cellulare int,
    email VARCHAR(255),
    user VARCHAR(50),
    foreign key (user) REFERENCES utenti(user)
   )
   ;
    
    
create table gruppi (
     id_gruppo int PRIMARY KEY,
     nome VARCHAR(50),
     descrizione text
     )
     ;


create table utentigruppi (
     user VARCHAR(50),
     id_gruppo int,
     foreign key (user) REFERENCES utenti(user),
     foreign key (id_gruppo) REFERENCES gruppi(id_gruppo)
     )
     ;


 create table servizi (
     id_servizio int PRIMARY KEY,
     script VARCHAR(50),
     descrizione text
     )
     ;
     

 create table gruppiservizi (
     id_servizio int,
     id_gruppo int,
     foreign key (id_servizio) REFERENCES servizi(id_servizio),
     foreign key (id_gruppo) REFERENCES gruppi(id_gruppo)
     )
     ;


create table categorie(
     id_categoria int PRIMARY KEY,
     nome VARCHAR(50),
     descrizione TEXT
     )
     ;



create table prodotti(
     id_prodotto int PRIMARY KEY,
     nome VARCHAR(50),
     durata VARCHAR(50),
     distribuzione VARCHAR(50),
     formato VARCHAR(50),
     tipologia VARCHAR(50),
     regista VARCHAR(50),.
     prezzo float,
     quantita_disponibile int,
     data_uscita DATE,
     descrizione text,
     path VARCHAR(50),
     id_categoria int,
     foreign key (id_categoria) REFERENCES categorie(id_categoria)
     )
     ;
     
     

 create table news(
     id_news int PRIMARY KEY,
     data_news DATE,
     titolo VARCHAR(50),
     id_prodotto int,
     foreign key (id_prodotto) REFERENCES prodotti(id_prodotto)
     )
     ;


create table prodottinews(
     id_prodotto int,
     id_news int,
     foreign key (id_prodotto) REFERENCES prodotti (id_prodotto),
     foreign key (id_news) REFERENCES news (id_news)
     )
     ;
     

create table ordini(
     id_ordine int PRIMARY KEY,
     data_ordine DATE,
     cellulare_consegna int,
     costo_totale float,
     indirizzo VARCHAR(50),
     citta VARCHAR(50),
     CAP int,
     stato VARCHAR(50),
     user VARCHAR(50),
     id_prodotto int,
     foreign key (user) REFERENCES utenti (user),
     foreign key (id_prodotto) REFERENCES prodotti (id_prodotto)
     )
     ;
     
     
create table dettagli_ordine(
    id_dettaglio int PRIMARY KEY,
    numero_articoli int,
    id_ordine int,
     id_prodotto int,
    foreign key (id_ordine) REFERENCES ordini(id_ordine)
    )
    ;


create table spedizioni(
     id_spedizione int PRIMARY KEY,
     metodo_spedizione VARCHAR(50),
     data_spedizione DATE,
     id_ordine int,
     foreign key (id_ordine) REFERENCES ordini (id_ordine)
     )
     ;


create table pagamenti(
     id_pagamento int PRIMARY KEY,
     importo int,
     metodo_pagamento VARCHAR(50),
     data_pagamento DATE,
     id_ordine int,
     foreign key (id_ordine) REFERENCES ordini (id_ordine)
     )
     ;
     

create table ordiniprodotti(
     id_ordine int,
     id_prodotto int,
     foreign key (id_ordine) REFERENCES ordini (id_ordine),
     foreign key (id_prodotto) REFERENCES prodotti (id_prodotto)
     )
     ;



create table carrello(
     id_sessione int PRIMARY KEY,
     quantita int,
     user VARCHAR(50),
     foreign key (user) REFERENCES utenti (user)
     )
     ;

create table recensioni(
    id_recensione int PRIMARY KEY,
    data_recensione DATE,
    recensione TEXT,
    titolo VARCHAR(50),
    id_prodotto int,
    foreign key (id_prodotto) REFERENCES prodotti(id_prodotto)
    )
    ;


create table galleria_immagini(
    id_immagine int PRIMARY KEY,
    immagine BLOB,
     id_prodotto int,
    foreign key (id_prodotto) REFERENCES prodotti(id_prodotto)
    )
    ;







