                    
							<form  method="post" action="login.php" autocomplete="on"> 
                                <h3>Ingresar</h3> 
								<hr>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Tu usuario </label>
                                    <input id="username" name="username" required="required" type="text"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Tu contraseña </label>
                                    <input id="password" name="password" required="required" type="password"/> 
                                </p>
                                <p class="login button"> 
                                    <input type="submit" name="login" value="Ingresar" /> 
								</p>
                                <p class="change_link">
									Aun no eres miembro ?
									<a href="#toregister" class="to_register">Regístrate</a>
								</p>
                            </form>