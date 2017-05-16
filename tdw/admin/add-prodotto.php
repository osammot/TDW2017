<?php

require("../include/dbms.inc.php");
require("../include/template2.inc.php");

if ($db->isConnected()) {
    
    
$nome = isset($_POST['selezione'])?$_POST['selezione'] : false;
//echo($nome);
    
$db->query("SELECT nome FROM prodotti WHERE nome='{$_POST['nome']}'");
    
    $duplicate = $db->getResult();
    
    $duplicate1 = $db->getNumRows();
    
    if($duplicate1 == 1){
        
        echo ("esiste già");
    }
    
    else {
        
        $db->query ("INSERT INTO prodotti (id_prodotto, nome, durata, distribuzione, formato, tipologia, regista, prezzo, quantita_disponibile, data_uscita, descrizione, path, id_categoria) 
        VALUES (
        '{$_POST['id_prodotto']}',
        '{$_POST['nome']}',
        '{$_POST['durata']}',
        '{$_POST['distribuzione']}',
        '{$_POST['formato']}',
        '{$_POST['tipologia']}',
        '{$_POST['regista']}',
        '{$_POST['prezzo']}',
        '{$_POST['quantita_disponibile']}',
        '{$_POST['data_uscita']}',
        '{$_POST['descrizione']}',
        '{$_POST['path']}',
        '{$_POST['selezione']}' )" 
        );
        
        if (!($_POST['id_prodotto'])=="") echo "aggiunto ".$_POST['nome'];
    }
    

}   


$main = new Template("index.html");
$categoria = new Template("add-prodotto.html");


$db->query("SELECT * FROM categorie");
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $categoria->setContent($rows);
                
                 } //end foreach


$main->setContent("content",$categoria->get());
$main->close();


?>