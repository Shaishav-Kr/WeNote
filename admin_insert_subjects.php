<?php
require('db.php');
include("auth.php");
$status = "";
if (isset($_POST['new']) && $_POST['new'] == 1) {
    $sub_code = $_REQUEST['sub_code'];
    $scheme = $_REQUEST['scheme'];
    $study_hours = $_REQUEST['study_hours'];
    $marks_max = $_REQUEST['marks_max'];
    $uid = $_REQUEST['uid'];


    $sql = "INSERT INTO `subject`(`sub_code`, `scheme`, `study_hours`, `marks_max`, `uid`) VALUES ('$sub_code','$scheme','$study_hours','$marks_max', '$uid')";
    if ($conn->query($sql) === true) {
        echo "<script>
        alert('Subject added successfully');
        window.location.href='admin_subjects.php';
        </script>";
    }
    else{
        echo "error";
        echo "<script>
				alert('Insertion failed');
				window.location.href='admin_insert_subjects.php';
				</script>";
    }
}
?>
<!DOCTYPE html>
<html>
<center>

    <head>
        <title>Insert New Subject</title>
    </head>

    <body>
        <form method="post">
            <h1>Insert New Subject</h1>
            <hr>

            <p><a href="admin_options.php">Admin options</a>
                | <a href="admin_subjects.php">View Subjects</a>
                | <a href="logout.php">Logout</a></p>
            <div>
                <form name="post" method="post" action="admin_insert_subjects.php">
                    <input type="hidden" name="new" value="1" />
                    <table border="1">
                        <tr>
                            <th>ENTER SUBJECT CODE</th>
                            <td><input type="text" id="sub_code" name="sub_code" required></td>
                        </tr>
                        <tr>
                            <th>ENTER SCHEME</th>
                            <td><input type="text" id="scheme" name="scheme" required></td>
                        </tr>
                        <tr>
                            <th>ENTER STUDY HOURS</th>
                            <td><input type="text" id="study_hours" name="study_hours" required></td>
                        </tr>
                        <tr>
                            <th>ENTER MAXIMUM MARKS OF SUBJECT</th>
                            <td><input type="text" id="marks_max" name="marks_max" required></td>
                        </tr>
                        <tr>
                            <th>ENTER USER ID</th>
                            <td><input type="text" id="uid" name="uid" required></td>
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