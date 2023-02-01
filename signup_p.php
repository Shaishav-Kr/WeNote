<?php
require('db.php');

$sql = "INSERT INTO `user`(`username`, `fname`, `lname`, `email`, `dob`, `phone`, `password`) VALUES ('$_POST[username]','$_POST[first_name]','$_POST[last_name]','$_POST[email]','$_POST[dob]','$_POST[phone]','$_POST[password]')";

if ($conn->query($sql) === TRUE) {
	echo "<script>
	alert('Data Registered successfully');
	window.location.href='login.php';
	</script>";
} else {
	echo "error";
	// die();
	echo "<script>
	alert('Registration failed');
	window.location.href='signup.php';
	</script>";
}

?>