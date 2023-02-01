<?php
require('db.php');
include("auth.php");
$status = "";
if (isset($_POST['new']) && $_POST['new'] == 1) {
    $month = $_REQUEST['month'];
    $year = $_REQUEST['year'];
    $test_paper = $_REQUEST['test_paper'];
    $sid = $_REQUEST['sid'];


    $sql = "INSERT INTO `pyq`(`month`, `year`, `test_paper`, `sid`,) VALUES ('$month','$year','$test_paper','$sid')";
    if ($conn->query($sql) === true) {
        echo "<script>
        alert('PYQ added successfully');
        window.location.href='admin_pyq.php';
        </script>";
    }
    else{
        echo "error";
        echo "<script>
				alert('Insertion failed');
				window.location.href='admin_insert_pyq.php';
				</script>";
    }
}
?>
<!DOCTYPE html>
<html>
<center>

    <head>
        <title>Insert New PYQ</title>
    </head>

    <body>
        <form method="post">
            <h1>Insert New PYQ</h1>
            <hr>

            <p><a href="admin_options.php">Admin options</a>
                | <a href="admin_pyq.php">View PYQ</a>
                | <a href="logout.php">Logout</a></p>
            <div>
                <form name="post" method="post" action="admin_insert_pyq.php">
                    <input type="hidden" name="new" value="1" />
                    <table border="1">
                        <tr>
                            <th>ENTER MONTH OF RELEASE</th>
                            <td><input type="text" id="month" name="month" required></td>
                        </tr>
                        <tr>
                            <th>ENTER YEAR OF RELEASE</th>
                            <td><input type="text" id="year" name="year" required></td>
                        </tr>
                        <tr>
                            <th>ENTER TEST PAPER LINK</th>
                            <td><input type="text" id="test_paper" name="test_paper" required></td>
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