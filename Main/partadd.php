<?php
session_start();
include "db_conn.php";
global $conn;
    $id=$_GET['item'];
    echo $id;
    $sql = "SELECT category_id from products where id=$id";
    $result = $conn->query($sql);
    $res = $result->fetch_assoc();
    $cat=$res['category_id'];
    $sql = "SELECT price from products where id=$id";
    $result = $conn->query($sql);
    $res = $result->fetch_assoc();
    $price=$res['price'];
    echo $cat;
 
    $sql = "INSERT INTO builds(id,category_id,price) VALUES('$id','$cat','$price')";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        header("Location: builder.php?success=Your part has been added successfully");
     exit();
    }