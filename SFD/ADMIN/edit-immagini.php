<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");

if ($db->isConnected()) {
   
$x = $_POST['selezione'];   
$id = $_POST['id_immagine'];
$pat = $_POST['path'];
$alte = $_POST['alt'];
    
   
$db->query("UPDATE immagini 
            SET id_immagine = {$id}, path='{$pat}', alt = '{$alte}' WHERE alt = '{$x}' "
          );
   
}

$main = new Template("index.html");
$categoria = new Template("edit-immagini.html");


$db->query("SELECT * FROM immagini");
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $categoria->setContent($rows);
                
                 } //end foreach

 
$main->setContent("content",$categoria->get());
$main->close();

?>