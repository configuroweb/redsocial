<?php
include('dbcon.php');
include('session.php');
$friend_id  = $_POST['friend_id'];
$my_message  = $_POST['my_message'];
$conn->query("insert into message(reciever_id,content,date_sended,sender_id) values('$friend_id','$my_message',NOW(),'$session_id')");
?>
<script>alert('Mensaje Enviado');</script>
<script>window.location = 'message.php'; </script>
