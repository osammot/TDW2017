<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");

$user = isset($_POST['selezione1']) ? $_POST['selezione1'] : false;
//echo $user;
//echo $_POST['selezione1'];

$gruppo = isset($_POST['selezione2']) ? $_POST['selezione2'] : false;
//echo $gruppo;
//echo $_POST['selezione2']; 

$main = new Template("index.html");
$categoria = new Template("assegnagruppo-user.html");



$db->query("SELECT username FROM utenti");

$rows = $db->getResult();

foreach($rows as $row) {

    $categoria->setContent($row);

} //end foreach





$db->query("SELECT nome FROM gruppi");

$rows = $db->getResult();

foreach($rows as $row) {
    $varnome = $row['nome'];

    $categoria->setContent("nome",$varnome);
} //end foreach







if (isset($_POST['sub'])) {
    
$db->query("INSERT INTO utentigruppi (username, id_gruppo) VALUES ( 
              '{$user}',
              '{$gruppo}' )"
              );

    $categoria->setContent ("aggiunto","aggiunto");


}




$main->setContent("content",$categoria->get());
$main->close();


?>