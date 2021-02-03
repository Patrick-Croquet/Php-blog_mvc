<?php if(!empty($_SESSION['is_admin'])): ?>

  <a href="<?=ROOT_URL?>admin_editPost_<?=$oPost->id?>.html"><button class="btn turquoiseButton waves-effect waves-light">Editer</button></a>
  <a href="<?=ROOT_URL?>admin_delete_<?=$oPost->id?>.html"><button class="btn purpleButton waves-effect waves-light">Supprimer</button></a>

<?php endif ?>
