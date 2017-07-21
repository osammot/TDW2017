<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");

$x =$_POST['selezione'];

$main = new Template("index.html");
$categoria = new Template("delete-categoria.html");


$db->query("SELECT nome AS nome FROM categorie");

$row = $db->getResult();

foreach($row as $rows) {

    $categoria->setContent($rows);

} //end foreach


if (isset($_POST['sub'])) {
    
$db->query("DELETE FROM categorie WHERE nome = '{$x}'  ");

    $categoria->setContent ("aggiunto","aggiunto");

}



 
$main->setContent("content",$categoria->get());
$main->close();

?>