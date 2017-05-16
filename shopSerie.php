<?php

require("include/dbms.inc.php");
require("include/template2.inc.php");


$main = new Template("frame-public.html");
$menu = new Template("menu.html");
$body = new Template("shopFilm.html");

$db->query("SELECT nome FROM categorie");
        
        $roww = $db->getResult();
                               
                 foreach($roww as $rowsw) {
                     $var = $rowsw['nome'];

                    $menu->setContent("nome",$var);
                
                 } //end foreach

$db->query("SELECT prezzo, nome, path FROM prodotti WHERE tipologia = 'serie' ");
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $body->setContent($rows);
                
                 } //end foreach



$main->setContent("menu",$menu->get());
$main->setContent("body",$body->get());
$main->close();


?>