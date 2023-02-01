<?php
require('db.php');
include("auth.php");
?>
<html>
<html>

<head>
    <title>View and modify module notes</title>
</head>

<body>
    <center>
        <form method="post">
            <h1>View MODULES</h1>
            <hr>
            <p><a href="admin_options.php">Admin options</a>
                | <a href="admin_insert_modules.php">Insert New Modules</a>
                | <a href="logout.php">Logout</a></p>
            <table border="1">
                <thead>
                    <tr>
                        <th><strong>MODULE ID</strong></th>
                        <th><strong>MODULE NUMBER</strong></th>
                        <th><strong>NOTES</strong></th>
                        <th><strong>IMPORTANT QUESTIONS</strong></th>
                        <th><strong>SUBJECT ID</strong></th>
                        <th><strong>EDIT</strong></th>
                        <th><strong>DELETE</strong></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sel_query = "Select * from module;";
                    $result = mysqli_query($conn, $sel_query);
                    while ($row = mysqli_fetch_assoc($result)) {
                        ?>
                        <tr>
                            <td align="center">
                                <?php echo $row["mid"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["mod_no"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["notes_link"]; ?>
                            </td>
                            <td align=" center">
                                <?php echo $row["impques_file"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["sid"]; ?>
                            </td>
                            <td align="center">
                                <a href="admin_update_modules.php?mid=<?php echo $row["mid"]; ?>">Edit</a>
                            </td>
                            <td align="center">
                                <a href="admin_delete_modules.php?mid=<?php echo $row["mid"]; ?>">Delete</a>
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