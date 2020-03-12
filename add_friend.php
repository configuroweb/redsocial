<?php include('dbcon.php'); ?>
<?php include('session.php'); ?>
<?php
	$my_friend_id = $_POST['my_friend_id'];
	$conn ->query("insert into friends (my_id,my_friend_id) values('$session_id','$my_friend_id')");
 	header('location:friends.php'); 
?>