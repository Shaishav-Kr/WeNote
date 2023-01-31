<?php
require('db.php');
$uid = $_REQUEST['uid'];
$sql1 = "DELETE FROM user WHERE uid=$uid";
if ($conn->query($sql1) === TRUE) {
    echo "<script>
    alert('User deleted successfully');
    window.location.href='admin_users.php';
    </script>";
} else {
    echo "<script>
    alert('Deletion not successful');
            window.location.href='admin_users.php';
            </script>";
}
?>