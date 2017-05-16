<?php

require("include/dbms.inc.php");
require("include/template2.inc.php");


$main = new Template("frame-public.html");
$menu = new Template("menu.html");
$body = new Template("index.html");


$db->query("SELECT nome FROM categorie");
        
        $roww = $db->getResult();
                               
                 foreach($roww as $rowsw) {
                     $var = $rowsw['nome'];

                    $menu->setContent("nome",$var);
                
                 } //end foreach


$db->query("SELECT prezzo, nome, path FROM prodotti LIMIT 6");
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $body->setContent($rows);
                
                 } //end foreach

$db->query("SELECT prezzo, nome, path FROM prodotti WHERE prezzo <= 20.00 LIMIT 3");
        
        $row1 = $db->getResult();
                               
                 foreach($row1 as $rows1) {
                     $varnome = $rows1['nome'];
                     $varprezzo = $rows1['prezzo'];
                     $varpath = $rows1['path'];

                     $body->setContent("offertanome",$varnome);
                     $body->setContent("offertaprezzo",$varprezzo);
                     $body->setContent("offertapath",$varpath);
                
                 } //end foreach

$db->query("SELECT prezzo, nome, data_uscita, path FROM prodotti ORDER BY data_uscita DESC LIMIT 3");
        
        $row2 = $db->getResult();
                               
                 foreach($row2 as $rows2) {
                     $varnome2 = $rows2['nome'];
                     $vardata2 = $rows2['data_uscita'];
                     $varprezzo2 = $rows2['prezzo'];
                     $varpath2 = $rows2['path'];

                     $body->setContent("newsnome",$varnome2);
                     $body->setContent("newsdata",$vardata2);
                     $body->setContent("newsprezzo",$varprezzo2);
                     $body->setContent("newspath",$varpath2);
                
                 } //end foreach


$main->setContent("menu",$menu->get());
$main->setContent("body",$body->get());
$main->close();


?>
