<?php
require('db.php');
include("auth.php");
?>
<html>
<html>

<head>
    <title>View and modify previous year questions</title>
</head>

<body>
    <center>
        <form method="post">
            <h1>View PREVIOUS YEAR QUESTIONS</h1>
            <hr>
            <p><a href="admin_options.php">Admin options</a>
                | <a href="admin_insert_pyq.php">Insert New PYQ'S</a>
                | <a href="logout.php">Logout</a></p>
            <table border="1">
                <thead>
                    <tr>
                        <th><strong>PYQ ID</strong></th>
                        <th><strong>MONTH RELEASED</strong></th>
                        <th><strong>YEAR RELEASED</strong></th>
                        <th><strong>TEST PAPER LINK</strong></th>
                        <th><strong>SUBJECT ID</strong></th>
                        <th><strong>Edit</strong></th>
                        <th><strong>Delete</strong></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sel_query = "Select * from pyq;";
                    $result = mysqli_query($conn, $sel_query);
                    while ($row = mysqli_fetch_assoc($result)) {
                        ?>
                        <tr>
                            <td align="center">
                                <?php echo $row["pid"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["month"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["year"]; ?>
                            </td>
                            <td align=" center">
                                <?php echo $row["test_paper"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["sid"]; ?>
                            </td>
                            <td align="center">
                                <a href="admin_update_pyq.php?pid=<?php echo $row["pid"]; ?>">Edit</a>
                            </td>
                            <td align="center">
                                <a href="admin_delete_pyq.php?pid=<?php echo $row["pid"]; ?>">Delete</a>
                            </td>
                        </tr>
                        <?php
                    } ?>
                </tbody>
            </table>
        </form>
    </center>
</body>

</html>