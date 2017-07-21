<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");

$x =$_POST['selezione'];

//echo $x ;

if ($db->isConnected()) {
    
$x = $_POST['selezione'];
$y = $_POST['id_categoria'];
$z = $_POST['nome'];
$r = $_POST['descrizione'];


$db->query("UPDATE categorie SET nome='{$z}', id_categoria = '{$y}', descrizione= '{$r}' WHERE nome = '{$x}' ");
   
        
}

$main = new Template("index.html");
$categoria = new Template("edit-categoria.html");


$db->query("SELECT nome AS nome FROM categorie");
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $categoria->setContent($rows);
 
                 }



$main->setContent("content",$categoria->get());
$main->close();


?>