<?php
session_start();
if (isset($_SESSION['id']) || isset($_SESSION['user_name'])) {

?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="../assets/img/favicon.png">
        <title>
            Admin Panel
        </title>
        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
        <!-- Nucleo Icons -->
        <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
        <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
        <!-- Font Awesome Icons -->
        <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
        <!-- Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
        <!-- CSS Files -->
        <link id="pagestyle" href=".\css\material-dashboard.css" rel="stylesheet" />
    </head>
    <!-- Alerify JS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css" />
    </head>
    <style>
        .form-control {
            border: 1px solid #b3a1a1 !important;
            padding: 8px 10px;
        }

        .button {
            background-color: #fc5603;
            color: #fff;
            font-weight: 430;
            padding-right: 3%;
            padding-left: 3%;
            padding-bottom: 7px;
            padding-top: 7px;
            border-radius: 5px;
            border-width: 0px;
            margin-top: 6px;
        }
    </style>

    <body class="g-sidenav-show  bg-gray-200">
        <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
            <div class="sidenav-header">
                <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
                <a class="navbar-brand m-0" href="admin.php">
                    <span class="ms-1 font-weight-bold text-white">Admin Panel</span>
                </a>
            </div>
            <hr class="horizontal light mt-0 mb-2">
            <div class="collapse navbar-collapse  w-auto  max-height-vh-100" id="sidenav-collapse-main">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link text-white" href="category.php">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">table_view</i>
                            </div>
                            <span class="nav-link-text ms-1">All Categories</span>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link text-white" href="category.php">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">table_view</i>
                            </div>
                            <span class="nav-link-text ms-1">All Items</span>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link text-white active" href="add_category.php">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">add</i>
                            </div>
                            <span class="nav-link-text ms-1">Add Category</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white active bg-gradient-primary " href="#">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">add</i>
                            </div>
                            <span class="nav-link-text ms-1">Add Item</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="sidenav-footer position-absolute w-100 bottom-0 ">
                <div class="mx-3">
                    <a class="btn bg-gradient-primary mt-4 w-100" href="adminlogout.php" type="button">Log Out</a>
                </div>
            </div>
        </aside>
        <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">


            <div class="container-fluid py-6">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h2 class="font-weight-bolder mb-0">Add Item</h2>
                            </div>
                            <div class="card-body">
                                <form action="code.php" method="post" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="mb-0">Select Category</label>
                                            <select name="category_id" class="form-control mb-2">
                                                <option selected>Select Category</option>
                                                <?php
                                                include('db_conn.php');
                                                function getAll($categories)
                                                {
                                                    global $conn;
                                                    $query = "SELECT * FROM $categories";
                                                    return $query_run = mysqli_query($conn, $query);
                                                }
                                                $category = getAll("categories");
                                                if (mysqli_num_rows($category) > 0) {
                                                    foreach ($category as $item) {
                                                ?>
                                                        <option value="<?= $item['category_id']; ?>"><?= $item['name']; ?></option>
                                                <?php
                                                    }
                                                } else {
                                                    echo "No Category Available";
                                                }
                                                ?>
                                            </select>
                                        </div>

                                        <div class="col-md-6">
                                            <label class="mb-0">Name</label>
                                            <input type="text" name="name" placeholder="Enter Item Name" required class="form-control mb-2">
                                        </div>

                                        <div class="col-md-8">
                                            <label class="mb-0">Description</label>
                                            <input type="text" name="description" required placeholder="Enter Description" required class="form-control mb-2">
                                            </textarea>
                                        </div>

                                        <div class="col-md-12">
                                            <label class="mb-0">Upload Image</label>
                                            <input type="file" name="image" required class="form-control mb-2">
                                        </div>

                                        <div class="col-md-12">
                                            <label class="mb-0">Enter Price</label>
                                            <input type="text" name="price" required placeholder="Enter Price" class="form-control mb-2">
                                        </div>

                                        <div class="col-md-12">
                                            <label class="mb-0">Meta Keywords</label>
                                            <input type="text" name="meta_keywords" required placeholder="Enter Meta Keywords" class="form-control mb-2">
                                        </div>

                                        <div class="col-md-12">
                                            <label class="mb-0">Enter Slug</label>
                                            <input type="text" name="slug" required placeholder="Enter Slug" class="form-control mb-2">
                                        </div>

                                        <br>
                                        <div class="col-md-6">
                                            <label class="mb-0">Status</label>
                                            <input type="checkbox" name="status">
                                        </div>
                                        <div class="col-md-12">
                                            <button type="submit" class="button" name="add_item_btn">Save</button>
                                        </div>

                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
            <script>
                <?php if (isset($_SESSION['message'])) { ?>

                    alertify.set('notifier', 'position', 'top-right');
                    alertify.success('<?= $_SESSION['message'] ?>');
                <?php
                    unset($_SESSION['message']);
                }
                ?>
            </script>
    </body>
<?php
} else {
    header("Location: login.php");
    exit();
}
?>
<!-- Ending php Session -->

    </html>