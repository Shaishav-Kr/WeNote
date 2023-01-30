<?php
require('db.php');
include("auth.php");
$status = "";
if (isset($_POST['new']) && $_POST['new'] == 1) {
    $trn_date = date("Y-m-d H:i:s");
    $name = $_REQUEST['name'];
    $age = $_REQUEST['age'];
    $submittedby = $_SESSION["username"];
    $ins_query = "insert into new_record
    (`trn_date`,`name`,`age`,`submittedby`)values
    ('$trn_date','$name','$age','$submittedby')";
    mysqli_query($conn, $ins_query)
        or die(mysql_error());
    $status = "New Record Inserted Successfully.
    </br></br><a href='view.php'>View Inserted Record</a>";
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
            <p><a href="admin_options.php">Admin options</a>
                | <a href="admin_users.php">View Users</a>
                | <a href="logout.php">Logout</a></p>
            <div>
                <h1>Insert New User</h1>
                <form name="form" method="post" action="">
                    <input type="hidden" name="new" value="1" />
                    <p><input type="text" name="name" placeholder="Enter Name" required /></p>
                    <p><input type="text" name="age" placeholder="Enter Age" required /></p>
                    <p><input name="submit" type="submit" value="Submit" /></p>
                </form>
                <p style="color:#FF0000;">
                    <?php echo $status; ?>
                </p>
            </div>
        </form>
    </body>
</center>

</html>