<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");


$main = new Template("index.html");
$categoria = new Template("add-group.html");



if ($db->isConnected()) {
    
$db->query("SELECT nome FROM gruppi WHERE nome='{$_POST['nome']}'");
    
    $duplicate = $db->getResult();
    
    $duplicate1 = $db->getNumRows();
    
    if($duplicate1 == 1){
        
        echo ("esiste già");
    }
    
    else {
        
        $db->query("INSERT INTO gruppi (id_gruppo, nome, descrizione) 
             VALUES ('{$_POST['id_gruppo']}', 
                     '{$_POST['nome']}', 
                     '{$_POST['descrizione']}' )" );
        
        echo "aggiunto ".$_POST['nome'];
    }
    

}   


$main->setContent("content",$categoria->get());
$main->close();


?>