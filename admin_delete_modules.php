<?php
require('db.php');
$mid = $_REQUEST['mid'];
$sql1 = "DELETE FROM user WHERE mid=$mid";
if ($conn->query($sql1) === TRUE) {
    echo "<script>
    alert('Module deleted successfully');
    window.location.href='admin_modules.php';
    </script>";
} else {
    echo "<script>
    alert('Deletion not successful');
            window.location.href='admin_modules.php';
            </script>";
}
?>