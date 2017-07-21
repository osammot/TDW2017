<?php
    
    session_start();

    require("include/dbms.inc.php");
    require("include/template2.inc.php");
    require ("include/varie.php");

   
    $formindirizzo = new Template("modificaindirizzo.html");
    $main->setContent("menu",$menu->get());
    $main->setContent("body",$formindirizzo->get());
    $main->close();

?>