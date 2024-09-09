<?php
session_start();
include "db_conn.php";
if (isset($_SESSION['id']) && isset($_SESSION['user_name'])) {
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width , initial-scale=1">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Chivo+Mono&family=Inter&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="profile.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Chivo+Mono&family=Inter&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/0469953560.js" crossorigin="anonymous"></script>
    </head>
    <title>About</title>

    <body>
        <header class="header">
            <!-- making the logo link to the main home page -->
            <a href="home.php" class="logo"> <img src="image\partpicker.png"></a>
            <!-- creating a navbar -->
            <nav class="navbar">
                <a href="home.php">home</a>
                <a href="builder.php">builder</a>
                <!-- creating a drop down menu for all the products available -->
                <div class="dropdown">
                    <button class="dropbtn"><a>Browse Products <i class="fa-solid fa-caret-down"></i></button></a>
                    <div class="dropdown-content">
                        <table>
                            <tr>
                                <td>
                                    <div class="gallery">
                                        <a target="_blank" href="cpu.php">
                                            <img src="image/nav-cpu.png" width="100" height="100">
                                        </a>
                                        <div class="desc">CPU</div>
                                    </div>
                                <td>
                                    <div class="gallery">
                                        <a target="_blank" href="memory.php">
                                            <img src="image/nav-memory.png" width="100" height="100">
                                        </a>
                                        <div class="desc">Memory</div>
                                    </div>
                                <td>
                                    <div class="gallery">
                                        <a target="_blank" href="cpucooler.php">
                                            <img src="image/nav-cpucooler.png" width="100" height="100">
                                        </a>
                                        <div class="desc">CPU Cooler</div>
                                    </div>
                                <td>
                                    <div class="gallery">
                                        <a target="_blank" href="motherboard.php">
                                            <img src="image/nav-motherboard.png" width="100" height="100">
                                        </a>
                                        <div class="desc">Motherboard</div>
                                    </div>
                                <td>

                            <tr>
                                <td>
                                    <div class="gallery">
                                        <a target="_blank" href="storage.php">
                                            <img src="image/nav-ssd.png" width="100" height="100">
                                        </a>
                                        <div class="desc">Storage</div>
                                    </div>
                                <td>

                                    <div class="gallery">
                                        <a target="_blank" href="videocard.php">
                                            <img src="image/nav-videocard.png" width="100" height="100">
                                        </a>
                                        <div class="desc">Graphics Card</div>
                                    </div>
                                </td>
                                <td>
                                    <div class="gallery">
                                        <a target="_blank" href="powersupply.php">
                                            <img src="image/nav-powersupply.png" width="100" height="100">
                                        </a>
                                        <div class="desc">Power Supply</div>
                                    </div>
                                </td>
                                <td>
                                    <div class="gallery">
                                        <a target="_blank" href="case.php">
                                            <img src="image/nav-case.png" width="100" height="100">
                                        </a>
                                        <div class="desc">Cabinet</div>
                                    </div>
                                </td>
                        </table>
                    </div>

                </div>

                <a href="Compare.php">Compare</a>
            </nav>
            <!-- Displaying User name at the top -->
            <div class="login-status">

                <a href="profile.php">

                    <i class="fa-solid fa-user"> <?php echo "<styles>" . $_SESSION['user_name'];
                                                    "</styles>" ?></i>
                </a>
            </div>
            <!-- Creating icons for cart,searchbar and logout -->
            <div class="icons">
                <div class="fas fa-bars" id="menu-btn"></div>
                <a href="builder.php">  <div class="fas fa-shopping-cart" id="cart-btn"></div></a>                <a href="logout.php">
                    <div class="fa-solid fa-arrow-right-from-bracket" id="logout-btn"></div>
                </a>
            </div>
            <form action="" class="search-form">
                <input type="search" id="search-box" placeholder="search here...">
                <label for="search-box" class="fas fa-search"></label>
            </form>
        </header>
        <section>
            <h1>Browse Products</h1>
        </section>
        <div class="browse">
        <UL>
        <li><a href="cpu.php">CPUs</a>
        <li><a href="cpucooler.php">CPU Coolers</a>
        <li><a href="motherboard.php">Motherboard</a>
        <li><a href="memory.php">Memory</a>
        <li><a href="storage.php">Storage</a>
        <li><a href="case.php">Cabinet</a>
        <li><a href="videocard.php">Graphics Card</a>
        <li><a href="powersupply.php">Power Supply</a>
</div>
    <section class="footer" id="footer">
            <table>
                <tr>
                    <td>
                        <div class="f1">
                            <img src="image/logo.png">
                            <br>
                            <p>
                                PICK PARTS.<br>
                                BUILD YOUR PC.<br>
                                COMPARE AND SHARE.
                            </p>
                        </div>
                    </td>
                    <td>
                        <div class="f2">
                            <center>
                                <h1>Catergories</h1>
                                <center>
                                    <hr>
                                    <br>
                                    <center>
                                        <p>
                                            <a href="Builder.php">Builder</a><br>
                                            <a href="browse.php">Browse Products</a><br>
                                            <a href="Compare.php">Compare</a>
                                        </p>
                                    </center>
                        </div>
                    </td>
                    <td>
                        <div class="f2">
                            <center>
                                <h1>Company</h1>
                                <center>
                                    <hr>
                                    <br>
                                    <center>
                                        <p>
                                        <a href="about.php">About</a><br>
                                        <a href="ucc.php">User Code Of Conduct</a>
                                        </p>
                                    </center>
                        </div>
                    </td>
                </tr>
            </table>
        </section>
        <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
        <!-- custom js file link  -->
        <script src="script.js"></script>
    </body>
<?php
} else {
    header("Location: login.php");
    exit();
}
?>
<!-- Ending Php session -->

    </html>