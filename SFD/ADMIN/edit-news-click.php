<?php

//session_start();

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
//require("../include/auth.inc.php");

$x =$_POST['nomenews'];

$db->query("SELECT id_news,data_news,immagine,titolo,corpo,id_prodotto FROM news WHERE data_news = '{$x}' ");

$row = $db->getResult();

if($row!=false){
    echo json_encode($row[0]);  //per restituire al js la riga restiuita dalla query
}

?>