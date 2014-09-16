<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;

echo '			<div class="row">
';

	foreach ($expoferias as $expoferia){
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
			      <a href="<?php echo Yii::app()->createUrl('site/ver', array('expoferia' => $expoferia->nombre1));?>" class="head"><?php echo $expoferia->nombre1.' '.$expoferia->nombre2.'</a><br>';?>
			      <?php
					if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español
						$separador = " al ";
					}else{
						$separador = " to ";
					}
			      echo '
			      <w style="padding-left: 15px;">'.$expoferia->lugar.'. '.$expoferia->pais.'<br>

			      <w style="padding-left: 15px;">'.TextHelper::convertir_fecha($expoferia->fecha_inicio, $idioma).$separador.TextHelper::convertir_fecha($expoferia->fecha_fin, $idioma).'<br><br>
			    </div>
';
	}
?>

			     
	
		
	</div>

