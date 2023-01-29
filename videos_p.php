<html>
<center>

    <head>
        <title>
            Videos
        </title>
    </head>


    <?php
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'wenote';
    $conn = new mysqli($servername, $username, $password, $dbname);
    if (!$conn) {
        die('Could not Connect MySql:' . mysql_error());
    } else {
        $sql = "select vid_name,vid_link,vid_length from videos where sid='$_POST[sid]' and mod_no='$_POST[mod_no]'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "
            <h1>VIDEOS-AND-LECTURES</h1>
            <hr>
            <br>
            <table border='1'>
        <tr>
        <th>VIDEO NAME</th>
        <th>VIDEO LINK</th>
        <th>VIDEO LENGTH (minutes)</th>
        </tr>";

            while ($row = mysqli_fetch_array($result)) {
                echo "<tr>";
                echo "<td>" . $row['vid_name'] . "</td>";
                echo "<td>" . $row['vid_link'] . "</td>";
                echo "<td>" . $row['vid_length'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        } else {
            echo "0 results";
        }
    }
    $conn->close();
    ?>
    <br>
    <br>
    <a href="options.php">Go to Options page!</a>
</center>

</html>