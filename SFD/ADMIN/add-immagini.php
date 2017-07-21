<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");


$main = new Template("index.html");
$categoria = new Template("add-immagini.html");


if (isset($_POST['sub'])) {
    
$var = $db->query("INSERT INTO immagini (path, alt) 
                VALUES ('{$_POST['path']}',
                        '{$_POST['alt']}' )"  );

    $categoria->setContent ("aggiunto","aggiunto");
  }

$main->setContent("content",$categoria->get());
$main->close();



?>