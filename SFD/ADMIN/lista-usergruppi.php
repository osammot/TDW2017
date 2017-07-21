<?php


//require ("../include/auth.inc.php");
require("../include/dbms.inc.php");
require("../include/template2.inc.php");


$main = new Template("index.html");
$categoria = new Template("lista-usergruppi.html");

$db->query("SELECT username, id_gruppo FROM utentigruppi");

$row = $db->getResult();

foreach($row as $rows) {

    $categoria->setContent($rows);

} //end foreach


$db->query("SELECT * FROM servizi");

$row = $db->getResult();

foreach($row as $rows) {

    $categoria->setContent($rows);
    // $categoria->setContent("nometag", $variabiledaassegnare);

} //end foreach


$db->query("SELECT * FROM gruppi");

$row = $db->getResult();

foreach($row as $rows) {

    $categoria->setContent($rows);

} //end foreach


$main->setContent("content",$categoria->get());
$main->close();

?>

