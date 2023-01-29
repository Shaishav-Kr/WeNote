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

    $sql = "INSERT INTO `videos`(`vid_name`, `vid_type`, `vid_link`,`vid_length`,`sid`,`mod_no`) VALUES ('$_POST[vid_name]','$_POST[vid_type]','$_POST[vid_link]','$_POST[vid_length]','$_POST[sid]','$_POST[mod_no]');";

    echo "<br><br>";
    // echo $sql;

    if ($conn->query($sql) === TRUE) {

        $sql1 = "SELECT vid FROM mod_vid where sid='" . $_POST["sid"] . "' and mod_no = '" . $_POST["mod_no"] . "' ";
        $result = mysqli_query($conn, $sql1);
        $sql2 = "INSERT INTO `mod_vid`(`vid`, `sid`, `mod_no`) VALUES ('$result','$_POST[sid]','$_POST[mod_no]');";
        
        if ($conn->query($sql2) === true) {
            echo "<script>
				alert('Video added successfully');
				window.location.href='admin_add_videos.php';
				</script>";
        }
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