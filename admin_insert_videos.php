<?php
require('db.php');
include("auth.php");
$status = "";
if (isset($_POST['new']) && $_POST['new'] == 1) {
    $vid_name = $_REQUEST['vid_name'];
    $vid_type = $_REQUEST['vid_type'];
    $vid_link = $_REQUEST['vid_link'];
    $vid_length = $_REQUEST['vid_length'];
    $sid = $_REQUEST['sid'];
    $mod_no = $_REQUEST['mod_no'];

    $sql = "INSERT INTO `videos`(`vid_name`, `vid_type`, `vid_link`, `vid_length`, `sid`, `mod_no`) VALUES ('$vid_name','$vid_type','$vid_link','$vid_length', '$sid', '$mod_no')";
    if ($conn->query($sql) === true) {
        echo "<script>
        alert('Video added successfully');
        window.location.href='admin_videos.php';
        </script>";
    }
    else{
        echo "error";
        echo "<script>
				alert('Insertion failed');
				window.location.href='admin_insert_videos.php';
				</script>";
    }
}
?>
<!DOCTYPE html>
<html>
<center>

    <head>
        <title>Insert New Video</title>
    </head>

    <body>
        <form method="post">
            <h1>Insert New Video</h1>
            <hr>

            <p><a href="admin_options.php">Admin options</a>
                | <a href="admin_videos.php">View Videos</a>
                | <a href="logout.php">Logout</a></p>
            <div>
                <form name="post" method="post" action="admin_insert_videos.php">
                    <input type="hidden" name="new" value="1" />
                    <table border="1">
                        <tr>
                            <th>ENTER VIDEO NAME</th>
                            <td><input type="text" id="vid_name" name="vid_name" required></td>
                        </tr>
                        <tr>
                            <th>ENTER VIDEO TYPE</th>
                            <td><input type="text" id="vid_type" name="vid_type" required></td>
                        </tr>
                        <tr>
                            <th>ENTER VIDEO LINK</th>
                            <td><input type="text" id="vid_link" name="vid_link" required></td>
                        </tr>
                        <tr>
                            <th>ENTER VIDEO LENGTH</th>
                            <td><input type="text" id="vid_length" name="vid_length" required></td>
                        </tr>
                        <tr>
                            <th>ENTER SUBJECT ID</th>
                            <td><input type="text" id="sid" name="sid" required></td>
                        </tr>
                        <tr>
                            <th>ENTER MODULE NUMBER</th>
                            <td><input type="text" id="mod_no" name="mod_no" required></td>
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