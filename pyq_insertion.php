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

    $sql = "INSERT INTO `pyq`(`month`, `year`, `test_paper`,`sid`) VALUES ('$_POST[month]','$_POST[year]','$_POST[test_paper]','$_POST[sid]');";

    echo "<br><br>";
    // echo $sql;

    if ($conn->query($sql) === TRUE) {
        echo "<script>
				alert('Previous year questions added successfully');
				window.location.href='admin_pyq.php';
				</script>";
    } else {
        echo "error";
        //die();
        echo "<script>
				alert('Insertion failed');
				window.location.href='admmin_add_videos_and_mod_vid.php';
				</script>";
    }
}
?>