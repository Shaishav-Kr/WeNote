<?php
require('db.php');
$pid = $_REQUEST['pid'];
$sql1 = "DELETE FROM pyq WHERE pid=$pid";
if ($conn->query($sql1) === TRUE) {
    echo "<script>
    alert('Pyq deleted successfully');
    window.location.href='admin_pyq.php';
    </script>";
} else {
    echo "<script>
    alert('Deletion not successful');
            window.location.href='admin_pyq.php';
            </script>";
}
?>