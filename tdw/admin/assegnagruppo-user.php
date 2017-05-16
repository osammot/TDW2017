<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");


$user = isset($_POST['selezione1']) ? $_POST['selezione1'] : false;
//echo $user;
//echo $_POST['selezione1'];

$gruppo = isset($_POST['selezione2']) ? $_POST['selezione2'] : false;
//echo $gruppo;
//echo $_POST['selezione2']; 




if($db->isConnected()){
    
$db->query("INSERT INTO utentigruppi (user, id_gruppo) VALUES ( 
              '{$user}',
              '{$gruppo}' )"
              );
    
   // INSERT INTO `utentigruppi`(`id_utente`, `id_gruppo`) VALUES ([value-1],[value-2])
    

}

$main = new Template("index.html");
$categoria = new Template("assegnagruppo-user.html");



$db->query("SELECT * FROM utenti");
    
    $rows = $db->getResult();
                               
                 foreach($rows as $row) {

                    $categoria->setContent($row);
                
                 } //end foreach

$db->query("SELECT * FROM gruppi");
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $categoria->setContent($rows);
                     // $categoria->setContent("nometag", $variabiledaassegnare);
                
                 } //end foreach


$main->setContent("content",$categoria->get());
$main->close();


?>