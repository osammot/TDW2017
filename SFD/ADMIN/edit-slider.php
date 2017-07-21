<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");

if ($db->isConnected()) {
   
$x =$_POST['selezione'];   
$id =$_POST['id_immagine'];
$position =$_POST['position'];
    
   
$db->query("UPDATE slider 
            SET id_immagine = {$id}, id_position={$position} 
            WHERE id_immagine = {$x} ");  
}

$main = new Template("index.html");
$categoria = new Template("edit-slider.html");


$db->query(" select slider.*, immagini.* 
             from slider left join immagini on slider.id_immagine = immagini.id_immagine");
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $categoria->setContent($rows);
                
                 } //end foreach

 
$main->setContent("content",$categoria->get());
$main->close();

?>