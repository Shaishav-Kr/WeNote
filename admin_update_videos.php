<?php
require('db.php');
include("auth.php");
$vid = $_REQUEST['vid'];
$result = mysqli_query($conn, "SELECT * FROM videos WHERE vid='" . $_REQUEST["vid"] . "'");
$row = mysqli_fetch_array($result);
if (!is_array($row)) {
    echo "<script>
        alert('Video didn't change.');
        window.location.href='admin_videos.php';
        </script>";
}
?>
<html>
<center>

    <head>
        <title>Update Video</title>
    </head>

    <body>
        <form method="post" action="admin_update_videos.php">
            <h1>UPDATE VIDEOS</h1>
            <hr>
            <p><a href="admin_options.php">Admin Options</a>
                | <a href="admin_insert_videos.php">Insert New Video</a>
                | <a href="logout.php">Logout</a></p>
            <?php
            $status = "";
            if (isset($_POST['new']) && $_POST['new'] == 1) {
                $vid_name = $_REQUEST['vid_name'];
                $vid_type = $_REQUEST['vid_type'];
                $vid_link = $_REQUEST['vid_link'];
                $vid_length = $_REQUEST['vid_length'];
                $sid = $_REQUEST['sid'];
                $mod_no = $_REQUEST['mod_no'];

                $sql1 = "UPDATE `subject` SET `vid_name`='$vid_name',`vid_type`='$vid_type',`vid_link`='$vid_link',`vid_length`='$vid_length', `sid`='$sid',`mod_no`='$mod_no' where vid='$vid'";
                if ($conn->query($sql1) === TRUE) {
                    echo "<script>
                    alert('Video updated successfully');
                    window.location.href='admin_videos.php';
                    </script>";
                } else {
                    echo "<script>
                    alert('Updation not successful');
                            window.location.href='admin_videos.php';
                            </script>";
                }
            } else {
                ?>
                <form name="form" method="post" action="">
                    <input type="hidden" name="new" value="1" />
                    <input name="vid" type="hidden" value="<?php echo $row['vid']; ?>" />
                    <table border="1">
                        <tr>
                            <th>ENTER VIDEO NAME</th>
                            <td><input type="text" id="vid_name" name="vid_name" required value="<?php echo $row['vid_name']; ?>">
                            </td>
                        </tr>
                        <tr>
                            <th>ENTER VIDEO TYPE</th>
                            <td><input type="text" id="vid_type" name="vid_type" required
                                    value="<?php echo $row['vid_type']; ?>" </td>
                        </tr>
                        <tr>
                            <th>ENTER VIDEO LINK</th>
                            <td><input type="text" id="vid_link" name="vid_link" required
                                    value="<?php echo $row['vid_link']; ?>" </td>
                        </tr>
                        <tr>
                            <th>ENTER VIDEO LENGTH</th>
                            <td><input type="text" id="vid_length" name="vid_length" required value="<?php echo $row['vid_length']; ?>">
                            </td>
                        </tr>
                        <tr>
                            <th>ENTER SUBJECT ID</th>
                            <td><input type="text" id="sid" name="sid" required value="<?php echo $row['sid']; ?>">
                            </td>
                        <tr>
                            <th>ENTER MODULE NUMBER</th>
                            <td><input type="text" id="mod_no" name="mod_no" required value="<?php echo $row['mod_no']; ?>">
                            </td>
                        </tr>
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