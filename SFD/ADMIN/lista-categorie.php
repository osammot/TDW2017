<?php


//require ("../include/auth.inc.php");
require("../include/dbms.inc.php");
require("../include/template2.inc.php");


$main = new Template("index.html");
$categoria = new Template("lista-categorie.html");

$db->query("SELECT * FROM categorie");

$row = $db->getResult();

foreach($row as $rows) {

    $categoria->setContent($rows);

} //end foreach


$main->setContent("content",$categoria->get());
$main->close();

?>

