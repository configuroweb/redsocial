<?php include('header.php'); ?>    
<?php include('session.php'); ?>    
    <body>
	<?php include('navbar.php'); ?>
			<div id="masthead">  
				<div class="container">
					    <div class="row">
      <div class="col-md-2">
		<hr>
		<center><img class="pp" src="<?php echo $image; ?>" height="140" width="160"></center>
		<hr>
		<button class="btn btn-success">Cambiar Foto de Perfil</button>
      </div>
		<div class="col-md-10">
			<?php
	$query = $conn->query("select * from members where member_id = '$session_id'");
	$row = $query->fetch();
	$id = $row['member_id'];
	?>
	<hr>
					<form method="post" action="save_edit.php">
	<input type="hidden" name="member_id" value="<?php echo $id; ?>">
	Usuario:<input type="text" name="username" value="<?php echo $row['username']; ?>">
	<hr>
	Nombre:<input type="text" name="firstname" value="<?php echo $row['firstname']; ?>">
	<hr>
	Apellido:<input type="text" name="lastname" value="<?php echo $row['lastname']; ?>">
	<hr>
	Género:
	<select name="gender">
		<option><?php echo $row['gender']; ?></option>
		<option>Hombre</option>
		<option>Mujer</option>
	</select>
	<hr>
	Fecha de Nacimiento:<input name="birthdate" type="text" value="<?php echo $row['birthdate']; ?>">
	<hr>
	Dirección:<input name="address" type="text" value="<?php echo $row['address']; ?>">
	<hr>
	Estado:<input name="status" type="text" value="<?php echo $row['status']; ?>">
	<hr>
	Móvil:<input name="mobile" type="text" value="<?php echo $row['mobile']; ?>">
	<hr>
	Trabajo:<input name="work" type="text" value="<?php echo $row['work']; ?>">
	<hr>
	Religión:<input name="religion" type="text" value="<?php echo $row['religion']; ?>">
	<hr>
	<br>
			<center>
			<button name="save" class="btn edit">Guardar</button>
			</center>
	<br>
	<form>
		</div>

    </div> 
				</div><!-- /cont -->
				<div class="container">
					<div class="row">
					<div class="col-md-12">
						<div class="top-spacer"> </div>
					</div>
					</div> 
				</div><!-- /cont -->
			</div>

                                                
                                                                                
<?php include('footer.php'); ?>
        
    </body>
</html>