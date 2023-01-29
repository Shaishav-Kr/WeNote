<html>
<center>

    <head>
        <title>
            Subject
        </title>
    </head>

    <body>
        <form action='options.php' method='post'>
            <h1> SUBJECT </h1>
            <hr>
            <br>
            <table border=1>
                <tr>
                    <th>SUBJECT NAME</th>
                    <th><input type='text' id='sub_name' name='sub_name' required></th>
                </tr>
                <tr>
                    <th>SCHEME</th>
                    <th><input type='text' id='scheme' name='scheme' required></th>
                </tr>
                <tr>
                    <th>STUDY HOURS</th>
                    <th><input type='text' id='study_hours' name='study_hours' required value=40 disabled></th>
                </tr>
                <tr>
                    <th>MAX MARKS</th>
                    <th><input type='text' id='max_marks' name='max_marks' required value=100 disabled></th>
                </tr>
            </table>
            <br>
            <input type='submit' id='submit' name='submit'>
            <br>
            <a href='logout.php'>logout</a>
            <br>
        </form>
    </body>
</center>

</html>