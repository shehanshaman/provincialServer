<?php require_once('../inc/connection_province.php'); ?>

<?php 

	send_file();

	// load file
	$data = file_get_contents('newUpdate.json');

	// decode json to associative array
	$new_meter = json_decode($data, true);

	foreach ($new_meter as $row) {
		echo $row["meter_id"] ;
		echo " ";
		$query = "INSERT INTO meter_tb(meter_id,client_id,password) VALUES ('".$row["meter_id"]."','".$row["client_id"]."','".$row["password"]."')";

		mysqli_query($connection_pro,$query);
	}

function send_file(){

	$source = ("http://localhost/MyphpActivities/elec_meter/Forms/newmeterList.json");
	$destination = 'newUpdate.json';

	$data = file_get_contents($source);

	$handle = fopen($destination,"w");
	fwrite($handle, $data);
	fclose($handle);
}

 ?>