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
          <!--/stories-->
          <div class="row">    
            <br>

            <div class="col-md-6 col-sm-3 text-center">
								<form method="post" id="send_message" action="send_message.php">
										<div class="control-group">
											<label>Selecciona tu Contacto:</label>
                                          <div class="controls">
                                            <select name="friend_id" class="combo" required>
											<option></option>
															<?php
														$query = $conn->query("select members.member_id , members.firstname , members.lastname , members.image , friends.friends_id   from members  , friends
	where friends.my_friend_id = '$session_id' and members.member_id = friends.my_id
	OR friends.my_id = '$session_id' and members.member_id = friends.my_friend_id
	");
															while($row = $query->fetch()){
															$friend_name = $row['firstname']." ".$row['lastname'];
															$friend_image = $row['image'];
															$id = $row['member_id'];
															?>
                                              	<option value="<?php echo $id; ?>"><?php echo $friend_name; ?></option>
											<?php } ?>
                                            </select>
                                          </div>
                                        </div>
								
							
										<div class="control-group">
											<label>Tu mensaje:</label>
                                          <div class="controls">
											<textarea name="my_message" class="my_message" required></textarea>
                                          </div>
                                        </div>
										<hr>
										<div class="control-group">
                                          <div class="controls">
												<button  class="btn btn-success"><i class="icon-envelope-alt"></i> Enviar </button>

                                          </div>
                                        </div>
                                </form>

            </div>
            <div class="col-md-6 col-sm-9">
             	Bandeja Privada
				<hr>
				<?php 
				$query = $conn->query("select * from message
				LEFT JOIN members on message.sender_id = members.member_id where reciever_id = '$session_id' ");
				while($row = $query->fetch()){
				$id = $row['message_id'];
				
				?>
				<div class="mes">
				<div class="message"><?php echo $row['content']; ?>
				<hr>
				<div class="pull-left"><?php echo $row['date_sended']; ?></div>
				<div class="pull-right">enviado por: <?php echo $row['firstname']." ".$row['lastname']; ?></div>

				<hr>
				<br>
				<a href="delete_message.php<?php echo '?id='.$id; ?>" class="btn btn-danger"><i class="icon-remove"></i> Eliminar</a>
				</div>
				</div>
				<?php } ?>
            </div>
	
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