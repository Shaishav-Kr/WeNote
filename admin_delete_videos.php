<?php
require('db.php');
$vid = $_REQUEST['vid'];
$sql1 = "DELETE FROM videos WHERE vid=$vid";
if ($conn->query($sql1) === TRUE) {
    echo "<script>
    alert('Video deleted successfully');
    window.location.href='admin_videos.php';
    </script>";
} else {
    echo "<script>
    alert('Deletion not successful');
            window.location.href='admin_videos.php';
            </script>";
}
?>