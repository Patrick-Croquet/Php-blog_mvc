<?php require 'inc/header.php' ?>
<?php require 'inc/topbar.php' ?>
<div class="container">
  <div class="row">
  	<div class="col l4 m6 s12 offset-l4 offset-m3">
  		<div class="card-panel">
  			<div class="row">
  				<div class="col s6 offset-s3">
  					<img src="static/img/login-clap.png" alt="connexion" width="100%">
  				</div>
  			</div>

  			<h4 class="center-align">Se connecter</h4>

        <center>
          <?php require 'inc/msg.php' ?>
        </center>

  			<form method="post">
  				<div class="row">
  					<div class="input-field col s12">
  						<input type="email" id="email" name="email" required="required">
  						<label for="email">Email</label>
  					</div>

  					<div class="input-field col s12">
  						<input type="password" id="password" name="password" required="required">
  						<label for="password">Password</label>
  					</div>
  				</div>

  				<center>
  					<button type="submit" name="submit" class="waves-effect waves-light btn brickButton">
  						<i class="material-icons left">perm_identity</i>
  						Se connecter
  					</button>
  				</center>
  			</form>

  		</div>
      <center>
        <a class="brickColor" href="<?=ROOT_URL?>blog_registration.html">Nouveau cinéphile ?</a>
      </center>
  	</div>
  </div>
</div>
