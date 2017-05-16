<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");


$main = new Template("index.html");
$categoria = new Template("add-immagini.html");

/*
$result = false;

  $result = @is_uploaded_file($_FILES['file']['tmp_name']);

    
    $id_immagine = $_POST['id_immagine'];
    $immagine = @file_get_contents($_FILES['file']['tmp_name']);
    $immagine = addslashes ($immagine);
    $nome = $_FILES['file']['name'];
    $type = $_FILES['file']['type'];
    $id_prodotto = $_POST['id_prodotto']
    
    $db->query("INSERT INTO galleria_immagini (id_immagine, immagine, nome, type, id_prodotto) VALUES 
    ( '$id_immagine', '$immagine', '$nome','$type', '$id_prodotto'' )" );
  }
*/


$main->setContent("content",$categoria->get());
$main->close();


?>