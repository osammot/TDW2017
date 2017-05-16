<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");

$nome = isset($_POST['selezione'])?$_POST['selezione'] : false;
//echo($nome);

if ($db->isConnected()) {
    
$db->query("SELECT titolo FROM news WHERE titolo='{$_POST['titolo']}'");
    
    $duplicate = $db->getResult();
    
    $duplicate1 = $db->getNumRows();
    
    if($duplicate1 == 1){
        
        echo ("esiste già");
    }
    
    else {
        
        $db->query("INSERT INTO news (id_news, data_news, titolo, id_prodotto) 
             VALUES ('{$_POST['id_news']}', 
                     '{$_POST['data_news']}',
                     '{$_POST['titolo']}',
                     '{$_POST['selezione']}' )" );
        
       if (!($_POST['id_news'])=="")echo "aggiunto ".$_POST['titolo']; 
    }
    

}   

$main = new Template("index.html");
$categoria = new Template("add-news.html");

$db->query("SELECT * FROM prodotti");
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $categoria->setContent($rows);
                
                 } //end foreach



$main->setContent("content",$categoria->get());
$main->close();


?>