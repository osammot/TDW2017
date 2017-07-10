<?php

session_start();

require("include/dbms.inc.php");
require("include/template2.inc.php");
require("include/varie.php");


$body = new Template("shopFilm.html");



$db->query("SELECT prodotti.*, immagini.path FROM prodotti left join immagini on prodotti.id_immaginePrincipale= immagini.id_immagine WHERE tipologia = 'film' ORDER BY titolo ASC");
             
         $row = $db->getResult();
                               
                 foreach($row as $rows) {

                    $body->setContent($rows);
                
                 } //end foreach


/*
$num_elementi = 8;

	if (isset($_GET['page'])) 
	{
		if ($_GET['page'] > 1) 
		{
			$start = ($_GET['page']-1) * $num_elementi;
		}else{
			$start = 0;
		}
	}else{
		$start = 0;
	}

	$db = mysqli_query($con, "SELECT COUNT(*) AS conteggio FROM prodotti") or die().mysqli_errno($con) ;

	$array=mysqli_fetch_assoc($db);

	$tot_righe= $array['conteggio'];

	$tot_pag = ceil(($tot_righe / $num_elementi)+1);



	$q = mysqli_query($con, "SELECT * FROM prodotti LIMIT ".$start.", ".$num_elementi);

	if (mysqli_num_rows($q) != 0)
	{
		while ($row->mysqli_fetch_assoc($q)) 
		{
			$prodotto[] = $row;
		}
	}

	for ($x=1; $x < $tot_pag; $x++) 
	{ 
		$pag[] = $x;
	}

*/


$main->setContent("menu",$menu->get());
$main->setContent("body",$body->get());
$main->close();


?>