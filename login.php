<html>
<center>

    <head>
        <title>
            Login
        </title>
    </head>

    <body>
        <form action='login_p.php' method='post'>
            <h1> WENOTE-Notes Management System</h1>
            <hr>
            <h2>LOGIN</h2>
            <br>
            <table border=1>
                <tr>                    
                    <th>EMAIL</th>
                    <th><input type='email' id='email' name='email' required></th>
                </tr>
                <tr>
                    <th>PASSWORD</th>
                    <th><input type='password' id='password' name='password' required></th>
                </tr>
            </table>
            <br>
            <input type='submit' id='submit' name='submit'>
            <br>
            <br>
            New here? <a href='signup.php'>SignUp</a>
            <br>
            <br>
            <a href="forgot_password.php">Forgot password?</a>
        </form>
    </body>
</center>

</html>