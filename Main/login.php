<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="login.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width , initial-scale=1">
    <div class="img">
        <a href="login.php"><img src="image/partpicker.png" alt="logo"></a>
    </div>
</head>
<title>login</title>


<body>



    <h1>Your Account</h1>
    <div class="login">
        <h2>Sign in</h2>
        <hr>

        <section>
            <form action="logincheck.php" method="post">

                <?php if (isset($_GET['error'])) { ?>
                    <p class="error"><?php echo $_GET['error']; ?></p>
                <?php } ?>

                <?php if (isset($_GET['success'])) { ?>
                    <p class="success"><?php echo $_GET['success']; ?></p>
                <?php } ?>
                <!-- <br> -->
                <input type="text" name="uname" placeholder=" User Name">
                <p>
                </p>


                <input type="password" name="password" placeholder=" Password">
                <p>
                    <input type="submit" value="Sign In">
                </p>
            </form>
            <a href="forgot.php">Forgot Password?</p></a>

            <h4>Not a Member?</h4>
            <a href='signup.php'>
                <button class="registerb">
                    <b>Register Here</b>
                </button>
            </a>

            </form>

        </section>
    </div>

</body>

</html>