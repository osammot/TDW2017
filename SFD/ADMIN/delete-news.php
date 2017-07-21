<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");

$x =$_POST['selezione'];

$main = new Template("index.html");
$categoria = new Template("delete-news.html");

$db->query("SELECT * FROM news");

$row = $db->getResult();

foreach($row as $rows) {

    $categoria->setContent($rows);

} //end foreach


if (isset($_POST['sub'])) {
    
$db->query("DELETE FROM news WHERE data_news = '{$x}'  ");

    $categoria->setContent ("aggiunto","aggiunto");

}



$main->setContent("content",$categoria->get());
$main->close();


?>