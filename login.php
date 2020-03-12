<?php
include('dbcon.php');
$username = $_POST['username'];
$password = $_POST['password'];

$query = $conn->query("select * from members where username = '$username' and password = '$password'");
$count = $query->rowcount();
$row = $query->fetch();
if ($count > 0){
session_start();
$_SESSION['id'] = $row['member_id'];
 header('location:home.php'); 
}else{
 header('location:index.php'); 
}
?>