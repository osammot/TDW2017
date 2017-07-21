<?php
require("include/dbms.inc.php");

if (isset($_POST['sub'])) {

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

    // query per l 'inserimento di un utente nella table utente'
$var1 = $db->query( "INSERT INTO utenti 
                    VALUES ( '{$nome}','{$cognome}','{$citta}','{$indirizzo}',
                            {$cap},'{$stato}',{$cellulare}, '{$username}','{$password}','{$email}' ) ");

    //query per aggiungere un utente al gruppo user (default 1)
$var3 = $db->query("INSERT INTO utentigruppi VALUES ('{$username}',2) ");
}

session_start();
        global $db, $data;
        if (isset($_SESSION['auth']));
        else {
            if(isset($_POST['Username'] ) && ($_POST['Username'] != "")   && isset($_POST['Password'])&& ($_POST['Password'] != "")){
                $db->query("SELECT * FROM utenti 
                            WHERE username = '{$_POST['Username']}' AND password = '{$_POST['Password']}' ");
                if (!$db->isError()) {
                    if ($db->getNumRows() == 1) {
                        $data =  $db->getResult();
                        $_SESSION['auth'] = $data[0];
                        $db->query("SELECT utenti.username,
                                               gruppi.nome,
                                               servizi.script
                                          FROM utenti
                                     LEFT JOIN utentigruppi
                                            ON utenti.username = utentigruppi.username
                                     LEFT JOIN gruppi
                                            ON utentigruppi.id_gruppo = gruppi.id_gruppo
                                     LEFT JOIN gruppiservizi
                                            ON gruppi.id_gruppo = gruppiservizi.id_gruppo
                                     LEFT JOIN servizi
                                            ON gruppiservizi.id_servizio = servizi.id_servizio
                                         WHERE utenti.username = '{$_POST['Username']}'");
                        $services = $db->getResult();

                        $_SESSION['auth']['nome']= $services[0]['nome'];

                        foreach ($services as $service) {

                            $_SESSION['auth']['servizi'][$service['script']] = true;
                        }
                    }
                }
            }
        }
//ricordati di togliere i commenti
Header("Location: index.php");
echo "finito";
?>