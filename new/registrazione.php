<?php

require("include/dbms.inc.php");
echo "fuori dal if";
if (isset($_POST['sub'])) {
echo "dentro if";
    $nome = $_POST['nome'] ;
    $cognome = $_POST['cognome'] ;
    $indirizzo = $_POST['indirizzo'];
    $citta = $_POST['citta'];
    $cap = $_POST['cap'];
    $stato = $_POST['stato'];
    $cellulare = $_POST['cellulare'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST['email'];

echo "finito di raccogliere parametri post";
// query per l 'inserimento di un utente nella table utente'
$var1 = $db->query( "INSERT INTO utenti VALUES ( '{$nome}','{$cognome}','{$citta}','{$indirizzo}',{$cap},'{$stato}',{$cellulare}, '{$username}','{$password}','{$email}' ) ");

echo "eseguita prima query";

//query per aggiungere un utente al gruppo user (default 1)
$var3 = $db->query("INSERT INTO utentigruppi VALUES ('{$username}',1) ");

echo "eseguita seconda query";
}

// ricorda di togliere i commenti
require("include/auth.inc.php");



//ricordati di togliere i commenti
Header("Location: index.php");

echo "finito";
?>
