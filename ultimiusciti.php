<?php

require("include/dbms.inc.php");
require("include/template2.inc.php");


$main = new Template("frame-public.html");
$menu = new Template("menu.html");
$body = new Template("ultimiusciti.html");

$db->query("SELECT nome FROM categorie");
        
        $roww = $db->getResult();
                               
                 foreach($roww as $rowsw) {
                     $var = $rowsw['nome'];

                    $menu->setContent("nome",$var);
                
                 } //end foreach

$main->setContent("menu",$menu->get());
$main->setContent("body",$body->get());
$main->close();


?>