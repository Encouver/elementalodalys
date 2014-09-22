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
				<div class="col-md-12">	
			      <a href="<?php echo Yii::app()->createUrl('site/artista', array('id' => $artista->idartista, 'art' => $artista->apellido));?>" class="head2"><?php echo $artista->nombre.' '.$artista->apellido.'</a><br>';?>
			      <?php
			      echo '
			      <w class="segundonivel">'.$artista->pais.'. '.$artista->ano.'<br><br>
			    </div>
';
	}
?>

			     
	
		
	</div>

