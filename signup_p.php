<?php
$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'wenote';
$conn = new mysqli($servername, $username, $password, $dbname);
if (!$conn) {
	die('Could not Connect MySql:' . mysql_error());
} else {

	$sql = "INSERT INTO `user`(`username`, `fname`, `lname`, `email`, `dob`, `phone`, `password`) VALUES ('$_POST[username]','$_POST[first_name]','$_POST[last_name]','$_POST[email]','$_POST[dob]','$_POST[phone]','$_POST[password]')";

	// echo $sql;

	if ($conn->query($sql) === TRUE) {
		echo "<script>
	alert('Data Registered successfully');
	window.location.href='login.php';
	</>";
	} else {
		echo "error";
		// die();
		echo "<script>
	alert('Registration failed');
	window.location.href='signup.php';
	</script>";
	}
}
?>