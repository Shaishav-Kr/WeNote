<html>

<head>
    <title>
        Forgot password
    </title>
</head>
<center>

    <body>
        <h1>FORGOT-PASSWORD</h1>
        <hr>
        <br>
        <form action="forgot_password_p.php" method="post">
            <table border="1">
                <tr>
                    <th>ENTER EMAIL</th>
                    <th>
                        <input type="email" id="email" name="email">
                    </th>
                </tr>
                <tr>
                    <th>ENTER DATE OF BIRTH</th>
                    <th>
                        <input type="date" id="date" name="date">
                    </th>
                </tr>
                <tr>
                    <th>ENTER NEW PASSWORD</th>
                    <th>
                        <input type="password" id="password" name="password">
                    </th>
                </tr>
            </table>
            <br>
            <input type="submit" name="submit" id="submit">
            <br>
            <br>
            <a href="login.php">Go back</a>
        </form>
    </body>
</center>

</html>