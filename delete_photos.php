<?php
include('dbcon.php');
$get_id = $_GET['id'];
$conn->query("delete from photos where photos_id='$get_id'");
header('location:photos.php');
?>