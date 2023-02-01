<?php
require('db.php');
include("auth.php");
$status = "";
if (isset($_POST['new']) && $_POST['new'] == 1) {
    $mod_no = $_REQUEST['mod_no'];
    $notes_link = $_REQUEST['notes_link'];
    $impques_file = $_REQUEST['impques_file'];
    $sid = $_REQUEST['sid'];

    $sql = "INSERT INTO `module`(`mod_no`, `notes_link`, `impques_file`, `sid`) VALUES ('$mod_no','$notes_link','$impques_file','$sid')";
    if ($conn->query($sql) === true) {
        echo "<script>
        alert('Module added successfully');
        window.location.href='admin_modules.php';
        </script>";
    }
    else{
        echo "error";
        echo "<script>
				alert('Insertion failed');
				window.location.href='admin_insert_modules.php';
				</script>";
    }
}
?>
<!DOCTYPE html>
<html>
<center>

    <head>
        <title>Insert New Module</title>
    </head>

    <body>
        <form method="post">
            <h1>Insert New Module</h1>
            <hr>

            <p><a href="admin_options.php">Admin options</a>
                | <a href="admin_modules.php">View Modules</a>
                | <a href="logout.php">Logout</a></p>
            <div>
                <form name="post" method="post" action="admin_insert_modules.php">
                    <input type="hidden" name="new" value="1" />
                    <table border="1">
                        <tr>
                            <th>ENTER MODULE NUMBER</th>
                            <td><input type="text" id="mod_no" name="mod_no" required></td>
                        </tr>
                        <tr>
                            <th>ENTER NOTES LINK</th>
                            <td><input type="text" id="notes_link" name="notes_link" required></td>
                        </tr>
                        <tr>
                            <th>ENTER IMPORTANT QUESTIONS FILE LINK</th>
                            <td><input type="text" id="impques_file" name="impques_file" required></td>
                        </tr>
                        <tr>
                            <th>ENTER SUBJECT ID</th>
                            <td><input type="text" id="sid" name="sid" required></td>
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