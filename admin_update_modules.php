<?php
require('db.php');
include("auth.php");
$mid = $_REQUEST['mid'];
$result = mysqli_query($conn, "SELECT * FROM module WHERE mid='" . $_REQUEST["mid"] . "'");
$row = mysqli_fetch_array($result);
if (!is_array($row)) {
    echo "<script>
        alert('Module didn't change.');
        window.location.href='admin_modules.php';
        </script>";
}
?>
<html>
<center>

    <head>
        <title>Update Module</title>
    </head>

    <body>
        <form method="post" action="admin_update_modules.php">
            <h1>UPDATE MODULES</h1>
            <hr>
            <p><a href="admin_options.php">Admin Options</a>
                | <a href="admin_insert_modules.php">Insert New Module</a>
                | <a href="logout.php">Logout</a></p>
            <?php
            $status = "";
            if (isset($_POST['new']) && $_POST['new'] == 1) {
                $mod_no = $_REQUEST['mod_no'];
                $notes_link = $_REQUEST['notes_link'];
                $impques_file = $_REQUEST['impques_file'];
                $sid = $_REQUEST['sid'];

                $sql1 = "UPDATE `module` SET `mod_no`='$mod_no',`notes_link`='$notes_link',`impques_file`='$impques_file',`sid`='$sid' where mid='$mid'";
                if ($conn->query($sql1) === TRUE) {
                    echo "<script>
                    alert('Module updated successfully');
                    window.location.href='admin_modules.php';
                    </script>";
                } else {
                    echo "<script>
                    alert('Updation not successful');
                            window.location.href='admin_modules.php';
                            </script>";
                }
            } else {
                ?>
                <form name="form" method="post" action="">
                    <input type="hidden" name="new" value="1" />
                    <input name="mid" type="hidden" value="<?php echo $row['mid']; ?>" />
                    <table border="1">
                        <tr>
                            <th>ENTER MODULE NUMBER</th>
                            <td><input type="text" id="mod_no" name="mod_no" required value="<?php echo $row['mod_no']; ?>">
                            </td>
                        </tr>
                        <tr>
                            <th>ENTER NOTES LINK</th>
                            <td><input type="text" id="notes_link" name="notes_link" required value="<?php echo $row['notes_link']; ?>"
                                    </td>
                        </tr>
                        <tr>
                            <th>ENTER IMPORTANT QUESTIONS FILE LINK</th>
                            <td><input type="text" id="impques_file" name="impques_file" required
                                    value="<?php echo $row['impques_file']; ?>" </td>
                        </tr>
                        <tr>
                            <th>ENTER SUBJECT ID</th>
                            <td><input type="text" id="sid" name="sid" required value="<?php echo $row['sid']; ?>">
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