<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");


$main = new Template("index.html");
$categoria = new Template("add-user.html");


if ($db->isConnected()) {
    
$db->query("SELECT user FROM utenti WHERE user='{$_POST['user']}'");
    
    $duplicate = $db->getResult();
    
    $duplicate1 = $db->getNumRows();
    
    if($duplicate1 == 1){
        
        echo ("esiste già");
    }
    
    else {
        
        $db->query("INSERT INTO utenti ( user, password, email) 
             VALUES ('{$_POST['user']}', 
                     '{$_POST['password']}',
                     '{$_POST['email']}' )" 
                  );
        
        //INSERT INTO `utenti`(`id_utente`, `user`, `password`, `email`) VALUES ([value-1],[value-2],[value-3],[value-4])
        
       if (!($_POST['user'])=="")echo "aggiunto ".$_POST['user']; 
    }
    

}   

$main->setContent("content",$categoria->get());
$main->close();




?>