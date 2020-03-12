                            <form  action="signup_save.php" method="post" autocomplete="on"> 
                                <h4> Formulario de Registro </h4> 
								<hr>
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Tu usuario</label>
                                    <input id="usernamesignup" name="username" required="required" type="text" placeholder="Usuario" />
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Tu contraseña </label>
                                    <input id="passwordsignup" name="password" required="required" type="password" placeholder="Contraseña"/>
                                </p>
								<p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="u">Nombre </label>
                                    <input id="passwordsignup" name="firstname" required="required" type="text" placeholder="First Name"/>
                                </p>
								<p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="u">Apellido </label>
                                    <input id="passwordsignup" name="lastname" required="required" type="text" placeholder="Last Name"/>
                                </p>
								<p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="">Tu género </label>
									<select id="passwordsignup"  name="gender">
										<option></option>
										<option>Hombre</option>
										<option>Mujer</option>
									</select>
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                                <p class="change_link">  
									Ya estás registrado ?
									<a href="#tologin" class="to_register"> Ingresar </a>
								</p>
                            </form>