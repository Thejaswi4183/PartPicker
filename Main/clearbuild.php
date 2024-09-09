<?php
include 'db_conn.php';
$id=$_POST['clear'];
$sql = "DELETE FROM builds WHERE id='$id'";
if (mysqli_query($conn, $sql)) {
    echo "Item deleted successfully";
} else {
    echo "Error deleting record: " . mysqli_error($conn);
}
header("Location: builder.php?success=ok");


if ($_POST['all']== 'all')
{
$sql = "DELETE FROM builds";
if (mysqli_query($conn, $sql)) {
    echo "Item deleted successfully";
} else {
    echo "Error deleting record: " . mysqli_error($conn);
}
header("Location: builder.php?success=ok");
}
?>