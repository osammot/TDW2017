<?php

//session_start();

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
//require("../include/auth.inc.php");

$x = $_POST['nomeimmagini'];

$db->query("SELECT id_immagine, path, alt  
            FROM immagini WHERE alt = '{$x}' ");

$row = $db->getResult();

if($row!=false){
    echo json_encode($row[0]);  
}

?>