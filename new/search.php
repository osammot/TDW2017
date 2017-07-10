<?php

session_start();

require("include/dbms.inc.php");
require("include/template2.inc.php");
require ("include/varie.php");

$menu = new Template("menu.html");
$body = new Template("shopFilm.html");


//prendo il nome inserito nella form 
$search = $_GET['search'];

//seleziono tutti i campi "nome" di prodotti con 
$db->query("SELECT * FROM prodotti WHERE titolo LIKE '%$search%'"); 
    
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $body->setContent($rows);
                
                 } //end foreach
    
  /*
  $row2 = $db->getResult();
                               
                 foreach($row2 as $rows2) {
                     
                     $varpath1 = $rows2['path'];
                     $varnome1 = $rows2['nome'];
                     $varprezzo1 = $rows2['prezzo'];
                     $vardesc1 = $rows2['descrizione'];
                     

                     $body->setContent("pathc",$varpath1);
                     $body->setContent("nomec",$varnome1);
                     $body->setContent("prezzoc",$varprezzo1);
                     $body->setContent("descrizionec",$vardesc1);
                
                 } //end foreach

$varid = $rows2['id_prodotto'];

$db->query("SELECT path FROM galleria_immagini WHERE id_prodotto='$varid'");
        
        $row3 = $db->getResult();
                               
                 foreach($row3 as $rows3) {
                     $varpath2 = $rows3['path'];
                    
                  $body->setContent("piupath",$varpath2);
                
                 } //end foreach
*/

$main->setContent("menu",$menu->get());
$main->setContent("body",$body->get());
$main->close();

    
?>