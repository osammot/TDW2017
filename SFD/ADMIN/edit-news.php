<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");

if ($db->isConnected()) {
    
$x =$_POST['selezione'];
$y =$_POST['id_news'];
$z =$_POST['data'];
$c =$_POST['immagine'];
$r =$_POST['titolo'];
$p =$_POST['corpo'];
$s =$_POST['selezione2'];


$db->query("UPDATE news SET id_news= '{$y}', data_news='{$z}', immagine='$c', titolo= '{$r}', corpo = '$p', id_prodotto='{$s}' WHERE data_news = '{$x}' ");
   
        
}

$main = new Template("index.html");
$categoria = new Template("edit-news.html");

$db->query("SELECT * FROM news");
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $categoria->setContent($rows);
 
                 }



$main->setContent("content",$categoria->get());
$main->close();


?>