<?php require_once('../inc/connection_province.php'); ?>

<?php 

/*	send_file();

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
*/

	
	if(isset($_GET['meter_id'])){

		$meter_id = $_GET['meter_id'];
		$client_id = $_GET['client_id'];
		$password = $_GET['password'];

		//$query = "INSERT INTO disconnect_tb(meter_id,lost_time) VALUES ('{$meter_id}',NOW())";
		$query = "INSERT INTO meter_tb(meter_id,client_id,password) VALUES ('{$meter_id}','{$client_id}','{$password}')";

		mysqli_query($connection_pro,$query);
		header("Location:../Admin_search/admin_search.php");
	}
	else{
		//echo $query;
		echo "erro";
	}

 ?>