<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");


$main = new Template("index.html");
$categoria = new Template("add-servizio.html");



if ($db->isConnected()) {
    
$db->query("SELECT script FROM servizi WHERE script='{$_POST['script']}'");
    
    $duplicate = $db->getResult();
    
    $duplicate1 = $db->getNumRows();
    
    if($duplicate1 == 1){
        
        echo ("esiste già");
    }
    
    else {
        
        $db->query("INSERT INTO servizi (id_servizio, script, descrizione) 
             VALUES ('{$_POST['id_servizio']}', 
                     '{$_POST['script']}', 
                     '{$_POST['descrizione']}' )" );
        
        echo "aggiunto ".$_POST['script'];
    }
    

}   


$main->setContent("content",$categoria->get());
$main->close();


?>