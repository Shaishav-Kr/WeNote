<?php
$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'wenote';
$conn = new mysqli($servername, $username, $password, $dbname);
if (!$conn) {
    die('Could not Connect MySql:' . mysql_error());
} else {
    echo "connected to db";

    $sql = "delete from user where email='$_POST[email]';";

    echo "<br><br>";
    // echo $sql;

    if ($conn->query($sql) === TRUE) {
        echo "<script>
				alert('User deleted successfully');
				window.location.href='admin_delete_user.php';
				</script>";
    } else {
        echo "error";
        //die();
        echo "<script>
				alert('Deletion failed');
				window.location.href='admin_delete_user.php';
				</script>";
    }
}
?>