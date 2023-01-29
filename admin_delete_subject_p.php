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

    $sql = "delete from subject where sid='$_POST[sid]';";

    echo "<br><br>";
    // echo $sql;

    if ($conn->query($sql) === TRUE) {
        echo "<script>
				alert('Subject deleted successfully');
				window.location.href='admin_delete_subject.php';
				</script>";
    } else {
        echo "error";
        //die();
        echo "<script>
				alert('Deletion failed');
				window.location.href='admin_delete_subject.php';
				</script>";
    }
}
?>