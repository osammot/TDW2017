<?php

    Class Login {
         
        function Login() {
    
            global $db, $data;
             
            if (isset($_SESSION['auth'])) {
                
                /* user already authenticated */
                
            } else {
             
              
                
                    $db->query("SELECT * FROM utenti WHERE user = '{$_POST['user']}' AND password = MD5('{$_POST['password']}')");
                 
                    if (!$db->isError()) {
                         
                        if ($db->getNumRows() == 1) {
                            $data = $db->getResult();
                            
                            $_SESSION['auth'] = $data[0];
                            
                            $db->query("SELECT utenti.user, 
                                               gruppi.nome, 
                                               servizi.script 
                                          FROM utenti
                                     LEFT JOIN utentigruppi
                                            ON utenti.id_utente = utentigruppi.id_utente
                                     LEFT JOIN gruppi
                                            ON gruppi.id_gruppo = utentigruppi.id_gruppo
                                     LEFT JOIN gruppiservizi
                                            ON gruppiservizi.id_gruppo = gruppi.id_gruppo
                                     LEFT JOIN servizi
                                            ON servizi.id_servizio = gruppiservizi.id_servizio
                                         WHERE utenti.user = '{$_POST['user']}'");
                            
                            if (!$db->isError()) {
                                
                                $services = $db->getResult();
                                
                                foreach ($services as $service) {
                                    $_SESSION['auth']['servizi'][$service['script']] = true;
                                }
                            }
                        
                        
                        
                        
                        } else {
                            Header("Location: error.php?error=login");
                            exit;
                        }
                    
        
                } else {
                    Header("Location: error.php?error=system");
                    exit;
                }
            
            
            }
            
            /* control here if 
             *      1. user already autheticated (already in session)
             *      2. user not in session but logged in with correct login data
             *      
             */
            
            
            if (!isset($_SESSION['auth']['servizi'][basename($_SERVER['SCRIPT_NAME'])])) {
                Header("Location: error.php?error=permission");
                exit;
            }
            
             
        }
    }
    
    new Login();

?>