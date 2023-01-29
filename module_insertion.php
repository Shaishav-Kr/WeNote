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

    $sql = "INSERT INTO `module`(`mod_no`, `notes_link`, `impques_file`,`sid`) VALUES ('$_POST[mod_no]','$_POST[notes_link]','$_POST[impques_file]','$_POST[sid]');";

    echo "<br><br>";
    // echo $sql;

    if ($conn->query($sql) === TRUE) {
        echo "<script>
				alert('Notes and important questions added successfully');
				window.location.href='admin_modules.php';
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