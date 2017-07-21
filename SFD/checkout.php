<?php
session_start();
require("include/dbms.inc.php");
require("include/template2.inc.php");
require ("include/varie.php");


$checkout = new Template("checkout.html");




if(isset($_SESSION['auth'])){

    $username = $_SESSION['auth']['username'];

    $db->query("select * from utenti where username = '$username' ");
    
    $result = $db->getResult();
    
    if($result != null){
        
         foreach($result as $user) {
            
             $nome = $user['nome'];
             $cognome = $user['cognome'];
             $città  = $user['citta'];
             $indirizzo = $user['indirizzo'];
             $cap = $user['cap'];
             $stato = $user['stato'];
             $cell = $user['cellulare'];
             
             
             
             $checkout->setContent("nome", $nome);
             $checkout->setContent("cognome", $cognome);
             $checkout->setContent("città", $città);
             $checkout->setContent("indirizzo", $indirizzo);
             $checkout->setContent("cap", $cap);
             $checkout->setContent("stato", $stato);
             $checkout->setContent("telefono", $cell);

            
         }
        
        
    }
}












$main->setContent("body",$checkout->get());
$main->setContent("menu",$menu->get());
$main->close();
?>