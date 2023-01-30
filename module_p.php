<html>
<center>

    <head>
        <title>
            Module notes
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
        $sql = "select mod_no,notes_link,impques_file from module where sid='$_POST[sid]' and mod_no='$_POST[mod_no]'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "
            <h1>MODULE-WISE-NOTES</h1>
            <hr>
            <br>
            <table border='1'>
        <tr>
        <th>Module number</th>
        <th>Notes link</th>
        <th>Important questions file link</th>
        </tr>";

            while ($row = mysqli_fetch_array($result)) {
                echo "<tr>";
                echo "<td>" . $row['mod_no'] . "</td>";
                echo "<td>" . $row['notes_link'] . "</td>";
                echo "<td>" . $row['impques_file'] . "</td>";
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