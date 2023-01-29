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
        echo "<script>
                alert('Video added successfully');
                window.location.href='admin_add_videos.php';
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