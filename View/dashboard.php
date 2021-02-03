<?php require 'inc/header.php' ?>
<?php require 'inc/topbar.php' ?>

<div class="container">
  <h2 class="gray-text">My Essential Dashboard</h2>
  <div class="row">
    <?php for($i=0;$i<$this->length;$i++): ?>
			<div class="col l3 m3 s12">
				<div class="card">
					<div class="card-content white-text brickButton">
						<span class="card-title"><?= $this->aTableName[$i] ?></span>
						<h3><?= $this->aInTable[$i][0] ?></h3>
					</div>
				</div>
			</div>
    <?php endfor ?>
  </div>

  <!-- ============================== -->

  <h5 class="gray-text">Critiques non lues</h5>
  <br>
  <div class="row white z-depth-3">
    <div class="col s12">
      <ul class="tabs tabs-fixed-width">
        <li class="tab"><a class="black-text" href="#notSignaled"><strong>Non signalées</strong></a></li>
        <li class="tab"><a class="black-text <?php echo ($this->aNbrSignals[0] > 0)?"active" : ""; ?>" href="#signaled"><strong>Signalées</strong></a></li>
      </ul>
    </div>
    <div id="notSignaled" class="col s12">
      <table class="centered bordered ">
      	<thead>
      		<tr>
      			<th>Film</th>
      			<th>Aperçu des critiques</th>
      			<th>Actions</th>
      		</tr>
      	</thead>
      	<tbody>
      		<?php if(!empty($this->oComments)): ?>
      			<?php foreach($this->oComments as $comment): ?>
      				<tr id="commentaire_<?= $comment->id ?>">
      					<td><a class="brickColor" href="blog_post_<?=$comment->post_id?>.html"><strong><?= $comment->title ?></strong></a></td>
      					<td><?= substr($comment->comment,0,90); ?>...</td>
      					<td>
      						<a id="<?= $comment->id ?>" class="btn-floating btn-small waves-effect waves-light turquoiseButton see_comment"><i class="material-icons">done</i></a>
      						<a id="<?= $comment->id ?>" class="btn-floating btn-small waves-effect waves-light purpleButton delete_comment"><i class="material-icons">delete</i></a>
      						<a href="#comment_<?= $comment->id ?>" class="btn-floating btn-small waves-effect waves-light grayButton modal-trigger"><i class="material-icons">more_vert</i></a>
      						<div class="modal" id="comment_<?= $comment->id ?>">
      							<div class="modal-content">
      								<h4><?= $comment->title ?></h4>
      								<p>Critique postée par <strong><?= $comment->pseudo.'</strong><br/>Le '.date('d/m/y à H:i', strtotime($comment->date)) ?></p>
      								<hr>
      								<p><?= nl2br($comment->comment) ?></p>
      							</div>
      							<div class="modal-footer">
      								<a id="<?= $comment->id ?>" class="modal-action modal-close waves-effect turquoiseButton btn-flat see_comment"><i class="material-icons">done</i></a>
      								<a id="<?= $comment->id ?>" class="modal-action modal-close waves-effect purpleButton btn-flat delete_comment"><i class="material-icons">delete</i></a>
      							</div>
      						</div>
      					</td>
      				</tr>
            <?php endforeach ?>
      		<?php else :?>
            <tr>
              <td></td>
              <td>Aucune critique à valider</td>
              <td></td>
            </tr>
          <?php endif ?>
      	</tbody>
      </table>
    </div>
    <div id="signaled" class="col s12">
      <table class="centered bordered ">
      	<thead>
      		<tr>
      			<th>Film</th>
      			<th>Aperçu des critiques</th>
            	<th>Signalements</th>
      			<th>Actions</th>
      		</tr>
      	</thead>
      	<tbody>
      		<?php if(!empty($this->oSignaledComments)): ?>
      			<?php foreach($this->oSignaledComments as $signaledComment): ?>
      				<tr id="commentaire_<?= $signaledComment->id ?>">
      					<td><a href="blog_post_<?=$signaledComment->post_id?>.html"><strong><?= $signaledComment->title ?></strong></a></td>
      					<td><?= substr($signaledComment->comment,0,100); ?></td>
                <td><?= $signaledComment->signals ?></td>
      					<td>
      						<a id="<?= $signaledComment->id ?>" class="btn-floating btn-small waves-effect waves-light turquoiseButton see_comment"><i class="material-icons">done</i></a>
      						<a id="<?= $signaledComment->id ?>" class="btn-floating btn-small waves-effect waves-light purpleButton delete_comment"><i class="material-icons">delete</i></a>
      						<a href="#comment_<?= $signaledComment->id ?>" class="btn-floating btn-small waves-effect waves-light grayButton modal-trigger"><i class="material-icons">more_vert</i></a>
      						<div class="modal" id="comment_<?= $signaledComment->id ?>">
      							<div class="modal-content">
      								<h4><?= $signaledComment->title ?></h4>
      								<p>Critique postée par <strong><?= $signaledComment->pseudo.'</strong><br/>Le '.date('d/m/y à H:i', strtotime($signaledComment->date)) ?></p>
      								<hr>
      								<p><?= nl2br($signaledComment->comment) ?></p>
      							</div>
      							<div class="modal-footer">
      								<a id="<?= $signaledComment->id ?>" class="modal-action modal-close waves-effect turquoiseButton btn-flat see_comment"><i class="material-icons">done</i></a>
      								<a id="<?= $signaledComment->id ?>" class="modal-action modal-close waves-effect purpleButton btn-flat delete_comment"><i class="material-icons">delete</i></a>
      							</div>
      						</div>
      					</td>
      				</tr>
            <?php endforeach ?>
      		<?php else :?>
      				<tr>
                <td></td>
      					<td>Aucune critique à valider</td>
                <td></td>
                <td></td>
      				</tr>
          <?php endif ?>
      	</tbody>
      </table>
    </div>
  </div>




</div>
