<?php

	$server = 'localhost:3307';
	$user = 'root';
	$password = '';
	$db = 'signup';
	
	$con = mysqli_connect($server, $user, $password, $db);
	
	if($con){
		?>
			<script>
				alert("Connection Established");
			</script>
		<?php
	}else{
		?>
			<script>
				alert("Connection not Established");
			</script>
		<?php
	}
?>