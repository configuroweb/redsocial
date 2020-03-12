<?php include('header.php'); ?>    
<?php include('session.php'); ?>    
    <body>
	<?php include('navbar.php'); ?>

<div id="masthead">  
  <div class="container">
	<?php include('heading.php'); ?> 
  </div><!-- /cont -->
  
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="top-spacer"> </div>
      </div>
    </div> 
  </div><!-- /cont -->
  
</div>


<div class="container">
  <div class="row">
    
    <div class="col-md-12"> 
      
      <div class="panel">
        <div class="panel-body">
          
			<h2 id="po">Mis Fotos</h2>
				<div class="pull-right">
							<form id="photos"   method="POST" enctype="multipart/form-data">

									<label class="control-label" for="input01">Imagen:</label>
									
										<input type="file" name="image" class="font" required>
									
								
						
								
										<br><button type="submit" name="submit" class="btn btn-success"><i class="icon-upload"></i> Subir Foto</button>
								
							</form>
							<?php 
								if (isset($_POST['submit'])) {
 
		$image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
		$image_name = addslashes($_FILES['image']['name']);
		$image_size = getimagesize($_FILES['image']['tmp_name']);
 
		move_uploaded_file($_FILES["image"]["tmp_name"], "upload/" . $_FILES["image"]["name"]);
		$location = "upload/" . $_FILES["image"]["name"];
		$conn->query("insert into photos (location,member_id) values ('$location','$session_id')");
	?>
	<script>
		window.location = 'photos.php';
	</script>
	<?php
	}
	?>
				</div>
			
          <div class="row">  		  
            <hr>
            <hr>
				<?php
	$query = $conn->query("select * from photos where member_id='$session_id'");
	while($row = $query->fetch()){
	$id = $row['photos_id'];
	?>
            <div class="col-md-2 col-sm-3 text-center">
				<img class="photo" src="<?php echo $row['location']; ?>" >
				<hr>
	<a class="btn btn-danger" href="delete_photos.php<?php echo '?id='.$id; ?>"><i class="icon-remove"></i> Eliminar</a>
            </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<?php } ?>
          </div>
          <hr>
                  
    


          


          
        </div>
      </div>
                                                                                       
	                                                
                                                      
   	</div><!--/col-12-->
  </div>
</div>
                                                
                                                                                
<?php include('footer.php'); ?>
        
    </body>
</html>