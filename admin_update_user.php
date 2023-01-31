<?php
require('db.php');
include("auth.php");
$uid = $_REQUEST['uid'];
$result = mysqli_query($conn, "SELECT * FROM user WHERE uid='" . $_REQUEST["uid"] . "'");
$row = mysqli_fetch_array($result);
if (!is_array($row)) {
    echo "<script>
        alert('Password didn't change.');
        window.location.href='admin_users.php';
        </script>";
}
?>
<html>
<center>

    <head>
        <title>Update User</title>
    </head>

    <body>
        <form method="post" action="admin_update_user.php">
            <p><a href="admin_options.php">Admin Options</a>
                | <a href="insert.php">Insert New Record</a>
                | <a href="logout.php">Logout</a></p>
            <h1>UPDATE USER</h1>
            <?php
            $status = "";
            if (isset($_POST['new']) && $_POST['new'] == 1) {
                $uid = $_REQUEST['uid'];
                $fname = $_REQUEST['fname'];
                $lname = $_REQUEST['lname'];
                $username = $_REQUEST['username'];
                $email = $_REQUEST['email'];
                $password = $_REQUEST['password'];
                $dob = $_REQUEST['dob'];
                $phone = $_REQUEST['phone'];

                $sql1 = "UPDATE `user` SET `username`='$username',`fname`='$fname',`lname`='$lname',`email`='$email',`dob`='$dob',`phone`='$phone',`password`='$password' where 1";
                if ($conn->query($sql1) === true) {
                    echo "<script>
                    alert('User updated successfully');
                    window.location.href='admin_users.php';
                } else {
                    </script>";
                    echo "<script>
                            alert('Insertion failed');
                            window.location.href='admin_users.php';
                            </script>";
                }
            } else {
                ?>
                <form name="form" method="post" action="">
                    <input type="hidden" name="new" value="1" />
                    <input name="uid" type="hidden" value="<?php echo $row['uid']; ?>" />
                    <table border="1">
                        <tr>
                            <th>ENTER FIRST NAME</th>
                            <td><input type="text" id="fname" name="fname" required value="<?php echo $row['fname']; ?>">
                            </td>
                        </tr>
                        <tr>
                            <th>ENTER LAST NAME</th>
                            <td><input type="text" id="lname" name="lname" required value="<?php echo $row['lname']; ?>"
                                    </td>
                        </tr>
                        <tr>
                            <th>ENTER USERNAME</th>
                            <td><input type="text" id="username" name="username" required
                                    value="<?php echo $row['username']; ?>" </td>
                        </tr>
                        <tr>
                            <th>ENTER EMAIL</th>
                            <td><input type="email" id="email" name="email" required value="<?php echo $row['email']; ?>">
                            </td>
                        </tr>
                        <tr>
                            <th>ENTER PASSWORD</th>
                            <td><input type="password" id="password" name="password" required
                                    value="<?php echo $row['password']; ?>"></td>
                        </tr>
                        <tr>
                            <th>ENTER DATE OF BIRTH</th>
                            <td><input type="date" id="dob" name="dob" required value="<?php echo $row['dob']; ?>"></td>
                        </tr>
                        <tr>
                            <th>ENTER PHONE NUMBER</th>
                            <td><input type="number" id="phone" name="phone" required value="<?php echo $row['phone']; ?>">
                            </td>
                        </tr>
                    </table>
                    <br>
                    <input type="submit" id="submit" name="submit" value="update">
                </form>
            </form>
        <?php } ?>
        </form>
    </body>
</center>

</html>