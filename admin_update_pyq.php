<?php
require('db.php');
include("auth.php");
$pid = $_REQUEST['pid'];
$result = mysqli_query($conn, "SELECT * FROM pyq WHERE pid='" . $_REQUEST["pid"] . "'");
$row = mysqli_fetch_array($result);
if (!is_array($row)) {
    echo "<script>
        alert('PYQ didn't change.');
        window.location.href='admin_pyq.php';
        </script>";
}
?>
<html>
<center>

    <head>
        <title>Update PYQ</title>
    </head>

    <body>
        <form method="post" action="admin_update_pyq.php">
            <h1>UPDATE PYQ</h1>
            <hr>
            <p><a href="admin_options.php">Admin Options</a>
                | <a href="admin_insert_pyq.php">Insert New Pyq</a>
                | <a href="logout.php">Logout</a></p>
            <?php
            $status = "";
            if (isset($_POST['new']) && $_POST['new'] == 1) {
                $month = $_REQUEST['month'];
                $year = $_REQUEST['year'];
                $test_paper = $_REQUEST['test_paper'];
                $sid = $_REQUEST['sid'];

                $sql1 = "UPDATE `pyq` SET `month`='$month',`year`='$year',`test_paper`='$test_paper',`sid`='$sid' where pid='$pid'";
                if ($conn->query($sql1) === TRUE) {
                    echo "<script>
                    alert('Pyq updated successfully');
                    window.location.href='admin_pyq.php';
                    </script>";
                } else {
                    echo "<script>
                    alert('Updation not successful');
                            window.location.href='admin_pyq.php';
                            </script>";
                }
            } else {
                ?>
                <form name="form" method="post" action="">
                    <input type="hidden" name="new" value="1" />
                    <input name="pid" type="hidden" value="<?php echo $row['pid']; ?>" />
                    <table border="1">
                        <tr>
                            <th>ENTER MONTH OF RELEASE</th>
                            <td><input type="text" id="month" name="month" required value="<?php echo $row['month']; ?>">
                            </td>
                        </tr>
                        <tr>
                            <th>ENTER YEAR OF RELEASE</th>
                            <td><input type="text" id="year" name="year" required
                                    value="<?php echo $row['year']; ?>" </td>
                        </tr>
                        <tr>
                            <th>ENTER TEST PAPER LINK</th>
                            <td><input type="text" id="test_paper" name="test_paper" required
                                    value="<?php echo $row['test_paper']; ?>" </td>
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