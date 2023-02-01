<?php
require('db.php');
include("auth.php");
?>
<html>
<html>

<head>
    <title>View and modify videos and lectures</title>
</head>

<body>
    <center>
        <form method="post">
            <h1>View Videos and Lectures</h1>
            <hr>
            <p><a href="admin_options.php">Admin options</a>
                | <a href="admin_insert_videos.php">Insert New Videos</a>
                | <a href="logout.php">Logout</a></p>
            <table border="1">
                <thead>
                    <tr>
                        <th><strong>VID</strong></th>
                        <th><strong>VIDEO NAME</strong></th>
                        <th><strong>VIDEO TYPE</strong></th>
                        <th><strong>VIDEO LINK</strong></th>
                        <th><strong>VIDEO LENGTH</strong></th>
                        <th><strong>SUBJECT ID</strong></th>
                        <th><strong>MODULE NUMBER</strong></th>
                        <th><strong>Edit</strong></th>
                        <th><strong>Delete</strong></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sel_query = "Select * from videos;";
                    $result = mysqli_query($conn, $sel_query);
                    while ($row = mysqli_fetch_assoc($result)) {
                        ?>
                        <tr>
                            <td align="center">
                                <?php echo $row["vid"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["vid_name"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["vid_type"]; ?>
                            </td>
                            <td align=" center">
                                <?php echo $row["vid_link"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["vid_length"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["sid"]; ?>
                            </td>
                            <td align="center">
                                <?php echo $row["mod_no"]; ?>
                            </td>
                            <td align="center">
                                <a href="admin_update_videos.php?vid=<?php echo $row["vid"]; ?>">Edit</a>
                            </td>
                            <td align="center">
                                <a href="admin_delete_videos.php?vid=<?php echo $row["vid"]; ?>">Delete</a>
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