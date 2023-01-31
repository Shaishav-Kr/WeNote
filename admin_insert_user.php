<?php
require('db.php');
include("auth.php");
$status = "";
if (isset($_POST['new']) && $_POST['new'] == 1) {
    $fname = $_REQUEST['fname'];
    $lname = $_REQUEST['lname'];
    $username = $_REQUEST['username'];
    $email = $_REQUEST['email'];
    $password = $_REQUEST['password'];
    $dob = $_REQUEST['dob'];
    $phone = $_REQUEST['phone'];

    $sql = "INSERT INTO `user`(`username`, `fname`, `lname`, `email`, `dob`, `phone`, `password`) VALUES ('$username','$fname','$lname','$email','$dob','$phone','$password')";
    if ($conn->query($sql) === true) {
        echo "<script>
        alert('User added successfully');
        window.location.href='admin_users.php';
        </script>";
    }
    else{
        echo "error";
        echo "<script>
				alert('Insertion failed');
				window.location.href='admin_insert_users.php';
				</script>";
    }
}
?>
<!DOCTYPE html>
<html>
<center>

    <head>
        <title>Insert New User</title>
    </head>

    <body>
        <form method="post">
            <h1>Insert New User</h1>
            <hr>

            <p><a href="admin_options.php">Admin options</a>
                | <a href="admin_users.php">View Users</a>
                | <a href="logout.php">Logout</a></p>
            <div>
                <form name="post" method="post" action="admin_insert_user.php">
                    <input type="hidden" name="new" value="1" />
                    <table border="1">
                        <tr>
                            <th>ENTER FIRST NAME</th>
                            <td><input type="text" id="fname" name="fname" required></td>
                        </tr>
                        <tr>
                            <th>ENTER LAST NAME</th>
                            <td><input type="text" id="lname" name="lname" required></td>
                        </tr>
                        <tr>
                            <th>ENTER USERNAME</th>
                            <td><input type="text" id="username" name="username" required></td>
                        </tr>
                        <tr>
                            <th>ENTER EMAIL</th>
                            <td><input type="email" id="email" name="email" required></td>
                        </tr>
                        <tr>
                            <th>ENTER PASSWORD</th>
                            <td><input type="password" id="password" name="password" required></td>
                        </tr>
                        <tr>
                            <th>ENTER DATE OF BIRTH</th>
                            <td><input type="date" id="dob" name="dob" required></td>
                        </tr>
                        <tr>
                            <th>ENTER PHONE NUMBER</th>
                            <td><input type="number" id="phone" name="phone" required></td>
                        </tr>
                    </table>
                    <br>
                    <input type="submit" id="submit" name="submit">
                </form>
            </div>
        </form>
    </body>
</center>

</html>