<html>
<center>

    <head>
        <title>
            Videos
        </title>
    </head>

    <body>
        <form action='videos_p.php' method='post'>
            <h1> VIDEOS </h1>
            <hr>
            <br>
            <table border=1>
                <tr>
                    <th>SUBJECT ID</th>
                    <th><input type='text' id='sid' name='sid' required></th>
                </tr>
                <tr>
                    <th>MODULE NUMBER</th>
                    <th><input type='text' id='mod_no' name='mod_no' required></th>
                </tr>
            </table>
            <br>
            <input type='submit' id='submit' name='submit'>
            <br>
            <br>
            <a href='logout.php'>logout</a>
            <br>
            <a href="options.php">Go to Options page!</a>
            <br>
            <h4> SUBJECT CODE WITH ID'S </h4>
            <!-- <table border="1">
                <tr>
                    <th>SUBJECT CODE</th>
                    <th>SUBJECT ID</th>
                    <th>SUBJECT NAME</th>
                </tr>
                <tr>
                    <td>18cs51</td>
                    <td>1000</td>
                    <td>MANAGEMENT AND ENTREPRENEURSHIP FOR IT INDUSTRY</td>
                </tr>
                <tr>
                    <td>18cs52</td>
                    <td>1001</td>
                    <td>COMPUTER NETWORKS AND SECURITY</td>
                </tr>
                <tr>
                    <td>18cs53</td>
                    <td>1002</td>
                    <td>DATABASE MANAGEMENT SYSTEM</td>
                </tr>
                <tr>
                    <td>18cs54</td>
                    <td>1003</td>
                    <td>AUTOMATA THEORY AND COMPUTABILITY</td>
                </tr>
                <tr>
                    <td>18cs55</td>
                    <td>1004</td>
                    <td>APPLICATION DEVELOPMENT USING PYTHON</td>
                </tr>
                <tr>
                    <td>18cs56</td>
                    <td>1005</td>
                    <td>UNIX PROGRAMMING</td>
                </tr>
                <tr>
                    <td>18csl57</td>
                    <td>1006</td>
                    <td>COMPUTER NETWORK LABORATORY</td>
                </tr>
                <tr>
                    <td>18csl58</td>
                    <td>1007</td>
                    <td>DBMS LABORATORY WITH MINI PROJECT</td>
                </tr>
                <tr>
                    <td>18csl59</td>
                    <td>1008</td>
                    <td>ENVIRONMENTAL STUDIES</td>
                </tr>
            </table> -->
        </form>
        </form>
        <?php
        require('db.php');
        include("auth.php");
        $sql = "select sid,sub_code from subject";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "
            <table border=1>
        <tr>
        <th>SUBJECT ID</th>
        <th>SUBJECT CODE</th>
        </tr>";

            while ($row = mysqli_fetch_array($result)) {
                echo "<tr>";
                echo "<td>" . $row['sid'] . "</td>";
                echo "<td>" . $row['sub_code'] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        } else {
            echo "0 results";
        }

        $conn->close();
        ?>
    </body>
</center>

</html>