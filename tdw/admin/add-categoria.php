<?php

session_start();

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
//require("../include/auth.inc.php");


$main = new Template("index.html");
$categoria = new Template("add-categoria.html");


if ($db->isConnected()) {
    
$db->query("SELECT nome FROM categorie WHERE nome='{$_POST['nome']}'");
    
    $duplicate = $db->getResult();
    
    $duplicate1 = $db->getNumRows();
    
    if($duplicate1 == 1){
        
        echo ("esiste già");
    }
    
    else {
        
        $db->query("INSERT INTO categorie (id_categoria, nome, descrizione) 
             VALUES ('{$_POST['id_categoria']}', 
                     '{$_POST['nome']}', 
                     '{$_POST['descrizione']}' )" );
        
       if (!($_POST['id_categoria'])=="") echo "aggiunto ".$_POST['nome']; 
    }
    

}   

$main->setContent("content",$categoria->get());
$main->close();




?>