<?php
require('db.php');

$result = mysqli_query($conn, "SELECT * FROM user WHERE email='" . $_POST["email"] . "'");
$row = mysqli_fetch_array($result);
if (is_array($row)) {
    $sql1 = "UPDATE `user` SET `password`='$_POST[password]' WHERE email='$_POST[email]'";
    if ($conn->query($sql1) === TRUE) {
        echo "<script>
        alert('Password updated successfull');
        window.location.href='login.php';
        </script>";
    }
} else {
    echo "<script>
        alert('Password didn't change.');
        window.location.href='login.php';
        </script>";
}
?>