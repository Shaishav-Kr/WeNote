<?php
require('db.php');
include("auth.php");
?>
<html>
<html>

<head>
    <title>View and modify subjects</title>
</head>

<body>
    <center>
        <form method="post">
            <h1>View Subjects</h1>
            <hr>
            <p><a href="admin_options.php">Admin options</a>
                | <a href="admin_insert_subjects.php">Insert New Subjects</a>
                | <a href="logout.php">Logout</a></p>
            <table border="1">
                <thead>
                    <tr>
                        <th><strong>SUBJECT ID</strong></th>
                        <th><strong>SUBJECT CODE</strong></th>
                        <th><strong>SCHEME</strong></th>
                        <th><strong>STUDY HOURS</strong></th>
                        <th><strong>MAXIMUM MARKS</strong></th>
                        <th><strong>USER ID</strong></th>
                        <th><strong>Edit</strong></th>
                        <th><strong>Delete</strong></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sel_query = "Select * from subject;";
                    $result = mysqli_query($conn, $sel_query);
                    while ($row = mysqli_fetch_assoc($result)) {
                        ?>
                        <tr>
                            <td align="center">
                                <?php echo $row["sid"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["sub_code"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["scheme"]; ?>
                            </td>
                            <td align=" center">
                                <?php echo $row["study_hours"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["marks_max"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["uid"]; ?>
                            </td>
                            <td align="center">
                                <a href="admin_update_subjects.php?sid=<?php echo $row["sid"]; ?>">Edit</a>
                            </td>
                            <td align="center">
                                <a href="admin_delete_subjects.php?sid=<?php echo $row["sid"]; ?>">Delete</a>
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