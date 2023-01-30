<?php
require('db.php');
include("auth.php");
?>
<html>
<html>

<head>
    <title>View and modify Users</title>
</head>

<body>
    <center>
        <form method="post">
            <h1>View USERS</h1>
            <hr>
            <p><a href="admin_option.php">Admin options</a>
                | <a href="admin_insert_user.php">Insert New User</a>
                | <a href="logout.php">Logout</a></p>
            <table border="1" >
                <thead>
                    <tr>
                        <th><strong>UID</strong></th>
                        <th><strong>FIRSTNAME</strong></th>
                        <th><strong>LASTNAME</strong></th>
                        <th><strong>USERNAME</strong></th>
                        <th><strong>EMAIL</strong></th>
                        <th><strong>PASSWORD</strong></th>
                        <th><strong>DATE OF BIRTH</strong></th>
                        <th><strong>PHONE</strong></th>
                        <th><strong>EDIT</strong></th>
                        <th><strong>DELETE</strong></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sel_query = "Select * from user;";
                    $result = mysqli_query($conn, $sel_query);
                    while ($row = mysqli_fetch_assoc($result)) { ?>
                        <tr>
                            <td align="center">
                                <?php echo $row["uid"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["fname"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["lname"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["username"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["email"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["password"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["dob"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["phone"]; ?>
                            </td>
                            <td align="center">
                                <a href="edit.php?id=<?php echo $row["uid"]; ?>">Edit</a>
                            </td>
                            <td align="center">
                                <a href="delete.php?id=<?php echo $row["uid"]; ?>">Delete</a>
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