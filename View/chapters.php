<?php require 'inc/header.php' ?>
<?php require 'inc/topbar.php' ?>
<main>
  <div class="container">
    <h1 class="page-title gray-text">Liste des Films</h1>
    <?php foreach ($this->oPosts as $oPost): ?>
      <div class="row">
        <hr>
  			<div class="col s12 m12 l12">
  				<h4 class="brickColor"><?= $oPost->title ?></h4>
  				<div class="row">
  					<div class="col s12 m6 l6">

					  <br><br>
              <!-- On affiche les 1500 premiers caractères et on affiche pas les images -->
  						<?= preg_replace("/<img[^>]+\>/i", "", nl2br(mb_strimwidth($oPost->body, 0, 1500, '...'))); ?>
			  <br><br>
			  <?php require 'inc/control_buttons.php' ?>
			  <br><br>
					  <a class="btn grayButton waves-effect waves-light" href="<?=ROOT_URL?>blog_post_<?=$oPost->id?>.html">Voir les critiques</a>
  					</div>
  					<div class="col s12 m6 l6">
  						<img src="<?=ROOT_URL?>static/img/posts/<?= $oPost->image ?>" class="materialboxed responsive-img" alt="<?= $oPost->title ?>"/>
  						<br/><br/>
  					</div>
  				</div>
  			</div>
  		</div>
    <?php endforeach ?>
  </div>
</main>
<?php require 'inc/footer.php' ?>
