<html>
<center>

    <head>
        <title>
            Signup
        </title>
    </head>

    <body>
        <form action='signup_p.php' method='post'>
            <h1> SIGNUP-PAGE </h1>
            <hr>
            <br>
            <table border=1>
                <tr>
                    <th>FIRST NAME</th>
                    <th><input type='text' id='first_name' name='first_name' required></th>
                </tr>
                <tr>
                    <th>LAST NAME</th>
                    <th><input type='text' id='last_name' name='last_name' required></th>
                </tr>
                <tr>
                    <th>USERNAME</th>
                    <th><input type='text' id='username' name='username' required></th>
                </tr>
                <tr>
                    <th>EMAIL</th>
                    <th><input type='email' id='email' name='email' required></th>
                </tr>
                <tr>
                    <th>PASSWORD</th>
                    <th><input type='password' id='password' name='password' required></th>
                </tr>
                <tr>
                    <th>PHONE</th>
                    <th><input type='text' id='phone' name='phone' required></th>
                </tr>
                <tr>
                    <th>DATE OF BIRTH</th>
                    <th><input type='date' id='dob' name='dob' required></th>
                </tr>
            </table>
            <br>
            <input type='submit' id='submit' name='submit'>
            <br>
            <br>
            Already a user? <a href='login.php'>Login</a>
        </form>
    </body>
</center>

</html>