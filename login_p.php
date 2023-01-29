<?php
session_start();
$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'wenote';
$conn = new mysqli($servername, $username, $password, $dbname);
if (!$conn) {
    die('Could not Connect MySql:' . mysql_error());
} else {

    $result = mysqli_query($conn, "SELECT * FROM user WHERE email='" . $_POST["email"] . "' and password = '" . $_POST["password"] . "'");
    $row = mysqli_fetch_array($result);
    if (is_array($row)) {

        $_SESSION["email"] = $row['email'];
        if ($row['email'] == "shaishavpatna@gmail.com") {
            echo "<script>
        alert('Admin Login successfull');
        window.location.href='admin_options.php';
        </script>";
        } else {
            echo "<script>
        alert('Login successfull');
        window.location.href='options.php';
        </script>";
        }
    } else {
        echo "<script>
        alert('Login failed');
        window.location.href='login.php';
        </script>";
    }
}
?>