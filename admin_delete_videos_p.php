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

    $sql = "delete from videos where sid='$_POST[sid]' and mod_no='$_POST[mod_no]';";

    echo "<br><br>";
    // echo $sql;

    if ($conn->query($sql) === TRUE) {
        echo "<script>
				alert('Lecture deleted successfully');
				window.location.href='admin_delete_videos.php';
				</script>";
    } else {
        echo "error";
        //die();
        echo "<script>
				alert('Deletion failed');
				window.location.href='admin_delete_videos.php';
				</script>";
    }
}
?>