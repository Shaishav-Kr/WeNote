<html>
<center>

    <head>
        <title>
            Insert videos data and mod_vid data
        </title>
    </head>

    <body>
        <form action='vid_insertion.php' method=POST>
            <h1> INSERT-VIDEOS </h1>
            <hr>
            <br>
            <table border=1>
                <tr>
                    <td>Video name</td>
                    <td><input type=text name=vid_name required=yes></input></td>
                </tr>
                <tr>
                    <td>Video type</td>
                    <td><input type=text name=vid_type required=yes></input></td>
                </tr>
                <tr>
                    <td>Video link</td>
                    <td><input type=text name=vid_link required=yes></input></td>
                </tr>
                <tr>
                    <td>Video length</td>
                    <td><input type=text name=vid_length required=yes></input></td>
                </tr>
                <tr>
                    <td>Subject id</td>
                    <td><input type=text name=sid required=yes></input></td>
                </tr>
                <tr>
                    <td>Module number</td>
                    <td><input type=text name=mod_no required=yes></input></td>
                </tr>
            </table>
            <br>
            <br>
            <input type=submit value=Submit></input>
            <br>
            <br>
            <a href="admin_options.php">Go to Admin Options page!</a>
            <br>
            <h4> SUBJECT CODE WITH ID'S </h4>
            <table border="1">
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
            </table>
        </form>
    </body>
</center>

</html>