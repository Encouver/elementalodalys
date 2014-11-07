<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;

echo '			<div class="row">
';

	foreach ($artistas as $artista){
/*
		print_r($expoferia);
		echo "<br><br>";

		
		echo '
				<div class="col-md-2">
				

						foto
';

/*
										$this->widget('ext.SAImageDisplayer', array(
										    'image' => $expoferia->catalogo->portada,//'xxx.jpg',
										    'size' => 'pequena',
										    'class'=>'media-object',
										    'defaultImage' => 'default.png',
										    'group' => 'catalogo',
										));





				echo '</div>';
*/
?>
				<div id="container" class="col-md-3" style=" padding-left:16px">

			      <div style = "width: 300px; float: left;"> <a href="<?php echo Yii::app()->createUrl('site/artist', array('art' => $artista->apellido, 'id' => $artista->idartista));?>" class="head2"><?php echo $artista->nombre.' '.$artista->apellido.'</a><br>';?>
			      <?php
			      echo $artista->pais.'. '.$artista->ano.'<br><br>
			      </div>
			    </div>
';
	}
?>

			     
	
		
	</div>

