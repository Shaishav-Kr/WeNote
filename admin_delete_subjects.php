<?php
require('db.php');
$sid = $_REQUEST['sid'];
$sql1 = "DELETE FROM subject WHERE sid=$sid";
if ($conn->query($sql1) === TRUE) {
    echo "<script>
    alert('Subject deleted successfully');
    window.location.href='admin_subjects.php';
    </script>";
} else {
    echo "<script>
    alert('Deletion not successful');
            window.location.href='admin_subjects.php';
            </script>";
}
?>