<?php

session_start();

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");

$x = $_POST['nomeprodotto'];

$db->query("SELECT id_prodotto, titolo, durata, tipologia, prezzo,      
                   quantità_disponibile, data, descrizione   
            FROM prodotti WHERE id_prodotto = '{$x}' ");

$row = $db->getResult();

if($row!=false){
    echo json_encode($row[0]);  //per restituire al js la riga restiuita dalla query
}

?>