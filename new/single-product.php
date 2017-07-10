<?php

session_start();

//require ("include/auth.inc.php");
require("include/dbms.inc.php");
require("include/template2.inc.php");
require ("include/varie.php");


$body = new Template("single-product.html");

if(isset($_GET['id'])){
    $var = $_GET['id']; //per riportare con get l'id del prodotto (PER DIV ALCUNI PRODOTTI)

    $db->query("SELECT prodotti.*, immagini.path FROM prodotti left join immagini on prodotti.id_immaginePrincipale= immagini.id_immagine WHERE id_prodotto= '$var' ");

    $row2 = $db->getResult();
    if($row2!=null){
        foreach($row2 as $rows2) {
            $varpath1 = $rows2['path'];
            $varnome1 = $rows2['nome'];
            $varprezzo1 = $rows2['prezzo'];
            $vardesc1 = $rows2['descrizione'];

            $body->setContent("id_prodotto",$var);//campo hidden per carrello
            $body->setContent("pathc",$varpath1);
            $body->setContent("nomec",$varnome1);
            $body->setContent("prezzoc",$varprezzo1);
            $body->setContent("descrizionec",$vardesc1);

        } //end foreach
    }

    $db->query("SELECT * FROM immagini WHERE id_prodotto='$var'");

    $row3 = $db->getResult();

    if($row3!= null){
        foreach($row3 as $rows3) {
            $varpath2 = $rows3['path'];

            $body->setContent("piupath",$varpath2);

        } //end foreach
    }
    
    
   
        
    $db->query("SELECT * FROM recensioni WHERE id_prodotto='$var'");

    $row4 = $db->getResult();
    
    if($row4!=null){
        foreach($row4 as $rows4) {
            
            $varusernameR = $rows4['username'];
            $vartitoloR = $rows4['titolo'];
            $vartestoR = $rows4['testo'];
            $vardataR = $rows4['data'];

            
            $body->setContent("username",$varusernameR);
            $body->setContent("titolo",$vartitoloR);
            $body->setContent("testo",$vartestoR);
            $body->setContent("data",$vardataR);

        } //end foreach
    }
    
   } 



    if (isset($_POST['rec'])) {
    if(isset($_SESSION['username'])){    
    $var_username = $_SESSION['username'] ;     // da prendere dalla sessione
    $var_titolo = $_POST['titolo'] ;
    $var_testo = $_POST['testo'] ;
    $var_data = $_POST['data'] ;
        
        
    $db->query("INSERT INTO recensioni (username, titolo, testo, data) 
                           VALUES ( '$var_username', '$var_titolo', '$var_testo', '$var_data')"
          );
          
    }
    }

  
   
    



// else ritornare errore
$main->setContent("menu",$menu->get());
$main->setContent("body",$body->get());
$main->close();


?>