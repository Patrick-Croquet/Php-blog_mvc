<?php require 'inc/header.php' ?>
<?php require 'inc/topbar.php' ?>

<div class="container">
  <h1>Ajouter un film</h1>
  <?php require 'inc/msg.php' ?>
  <form method="post" enctype="multipart/form-data">
	<div class="row">
		<div class="input-field col s12">
			<input type="text" name="title" id="title" required="required">
			<label for="title">Titre</label>
		</div>

		<div class="input-field col s12">
      <label for="editable">Synopsis</label>
      <br><br>
			<textarea name="body" id="editable"></textarea>
		</div>

		<div class="col s12">
			<div class="input-field file-field">
				<div class="btn turquoiseButton">
					<span>Affiche du film</span>
					<input type="file" name="image">
				</div>
				<div class="file-path-wrapper">
					<input type="text" class="file-path validate" readonly>
				</div>
			</div>
		</div>

		<div class="col s12 right-align">
			<br><br>
			<button class="btn brickButton waves-effect waves-light" type="submit" name="add_submit">Publier</button>
		</div>

	</div>
</form>
</div>
