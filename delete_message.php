<?php
include('dbcon.php');
$get_id = $_GET['id'];
$conn->query("delete from message where message_id = '$get_id'");
header('location:message.php');
?>