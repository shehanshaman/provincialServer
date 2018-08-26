<?php 
	
	echo "<br>--All complete--<br>";

	$fileName = $_GET['fileName'];
	//header("Location: finish.php?fileName=$fileName");
	header("http://localhost/MyphpActivities/elec_meter/provincialReq/addReadingData.php?fileName=$fileName");

 ?>