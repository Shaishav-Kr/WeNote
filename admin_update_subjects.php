<?php
require('db.php');
include("auth.php");
$sid = $_REQUEST['sid'];
$result = mysqli_query($conn, "SELECT * FROM subject WHERE sid='" . $_REQUEST["sid"] . "'");
$row = mysqli_fetch_array($result);
if (!is_array($row)) {
    echo "<script>
        alert('Subject didn't change.');
        window.location.href='admin_subjects.php';
        </script>";
}
?>
<html>
<center>

    <head>
        <title>Update Subject</title>
    </head>

    <body>
        <form method="post" action="admin_update_subjects.php">
            <h1>UPDATE MODULES</h1>
            <hr>
            <p><a href="admin_options.php">Admin Options</a>
                | <a href="admin_insert_subjects.php">Insert New Subject</a>
                | <a href="logout.php">Logout</a></p>
            <?php
            $status = "";
            if (isset($_POST['new']) && $_POST['new'] == 1) {
                $sub_code = $_REQUEST['sub_code'];
                $scheme = $_REQUEST['scheme'];
                $study_hours = $_REQUEST['study_hours'];
                $marks_max = $_REQUEST['marks_max'];
                $uid = $_REQUEST['uid'];

                $sql1 = "UPDATE `subject` SET `sub_code`='$sub_code',`scheme`='$scheme',`study_hours`='$study_hours',`marks_max`='$marks_max', `uid`='$uid' where sid='$sid'";
                if ($conn->query($sql1) === TRUE) {
                    echo "<script>
                    alert('Subject updated successfully');
                    window.location.href='admin_subjects.php';
                    </script>";
                } else {
                    echo "<script>
                    alert('Updation not successful');
                            window.location.href='admin_subjects.php';
                            </script>";
                }
            } else {
                ?>
                <form name="form" method="post" action="">
                    <input type="hidden" name="new" value="1" />
                    <input name="sid" type="hidden" value="<?php echo $row['sid']; ?>" />
                    <table border="1">
                        <tr>
                            <th>ENTER SUBJECT CODE</th>
                            <td><input type="text" id="sub_code" name="sub_code" required value="<?php echo $row['sub_code']; ?>">
                            </td>
                        </tr>
                        <tr>
                            <th>ENTER SCHEME</th>
                            <td><input type="text" id="scheme" name="scheme" required
                                    value="<?php echo $row['scheme']; ?>" </td>
                        </tr>
                        <tr>
                            <th>ENTER STUDY HOURS</th>
                            <td><input type="text" id="study_hours" name="study_hours" required
                                    value="<?php echo $row['study_hours']; ?>" </td>
                        </tr>
                        <tr>
                            <th>ENTER MAXIMUM MARKS</th>
                            <td><input type="text" id="marks_max" name="marks_max" required value="<?php echo $row['marks_max']; ?>">
                            </td>
                        </tr>
                        <tr>
                            <th>ENTER USER ID</th>
                            <td><input type="text" id="uid" name="uid" required value="<?php echo $row['uid']; ?>">
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