<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");


$nome = isset($_POST['selezione'])?$_POST['selezione'] : false;
//echo($nome);

$main = new Template("index.html");
$categoria = new Template("add-news.html");

$db->query("SELECT * FROM prodotti");

$row = $db->getResult();

foreach($row as $rows) {

    $categoria->setContent($rows);

} //end foreach

if (isset($_POST['sub'])) {
    
$db->query("SELECT titolo FROM news WHERE titolo='{$_POST['titolo']}'");
    
    $duplicate = $db->getResult();
    
    $duplicate1 = $db->getNumRows();
    
    if($duplicate1 == 1){

        $categoria->setContent ("aggiuntoErrore","aggiuntoErrore");
    }
    
    else {
        
       $var =  $db->query("INSERT INTO news (data_news, immagine, titolo, corpo, id_prodotto) 
             VALUES (
             
                     {$_POST['data_news']},
                     '{$_POST['immagine']}',
                     '{$_POST['titolo']}',
                     '{$_POST['corpo']}',
                     '{$_POST['selezione']}' )" 
                         
                         );

        $categoria->setContent ("aggiunto","aggiunto");
    }
    

}   





$main->setContent("content",$categoria->get());
$main->close();

?>


