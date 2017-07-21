<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");

if ($db->isConnected()) {   
   
$sel =$_POST['selezione'];
    
$id = $_POST['id_prodotto'];
$titolo =$_POST['titolo'];
$durata =$_POST['durata'];
$tipo =$_POST['tipologia'];
$prez =$_POST['prezzo'];
$quant =$_POST['quantità_disponibile'];
$desc =$_POST['descrizione'];
$s1 =$_POST['selezione1'];
$s2 =$_POST['selezione2'];
$dat =$_POST['data'];

    
   
$db->query("UPDATE prodotti 
            SET 
             id_prodotto = '{$id}', 
             nome='{$nome}', 
             durata = '{$durata}', 
             tipologia='{$tipo}', 
             prezzo = '{$prez}', 
             quantità_disponibile = '{$quant}', 
             descrizione = '{$desc}',
             id_immaginePrincipale ='{$s1}',
             id_categoria ='{$s2}',
             data = '{$dat}' 

            WHERE id_prodotto = '{$sel}' 
            ");
   
  
}

$main = new Template("index.html");
$categoria = new Template("edit-prodotto.html");

$db->query("SELECT * FROM prodotti");
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $categoria->setContent($rows);
 
                 }




$main->setContent("content",$categoria->get());
$main->close();


?>