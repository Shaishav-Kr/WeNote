<html>
<center>

    <head>
        <title>
            Previous Year Questions
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
        $sql = "select sid,month,year,test_paper from pyq where sid='$_POST[sid]'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "
            <h1>PREVIOUS-YEAR-QUESTIONS</h1>
            <hr>
            <br>
            <table border='1'>
        <tr>
        <th>Subject Id</th>
        <th>Month</th>
        <th>Year</th>
        <th>Test paper link</th>
        </tr>";

            while ($row = mysqli_fetch_array($result)) {
                echo "<tr>";
                echo "<td>" . $row['sid'] . "</td>";
                echo "<td>" . $row['month'] . "</td>";
                echo "<td>" . $row['year'] . "</td>";
                echo "<td>" . $row['test_paper'] . "</td>";
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