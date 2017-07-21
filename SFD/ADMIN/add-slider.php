<?php


require("../include/dbms.inc.php");
require("../include/template2.inc.php");
require("../include/auth.inc.php");

    
$nome1 = isset($_POST['selezione1'])?$_POST['selezione1'] : false;


    $main = new Template("index.html");
    $categoria = new Template("add-slider.html");

   
    $db->query("SELECT * FROM immagini"); //foreach per selectbox immagini

    $rowimm = $db->getResult();

    foreach($rowimm as $rowsimm) {

        $categoria->setContent($rowsimm);

    } //end foreach



if (isset($_POST['sub'])) {

  $var = $db->query ( "INSERT INTO slider(id_immagine, id_position) 
                         VALUES ('{$_POST['selezione1']}',
                                 {$_POST['posizione']} )" 
                    );

        $categoria->setContent ("aggiunto","aggiunto");
    }

   



$main->setContent("content",$categoria->get());
$main->close();


?>