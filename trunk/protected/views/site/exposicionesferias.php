<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;

echo '			<div class="row">
';

	foreach ($expoferias as $expoferia){
/*
		print_r($expoferia);
		echo "<br><br>";

		*/
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
*/



?>
				</div>
				<div class="col-md-10">	
			      <a href="<?php echo Yii::app()->createUrl('site/ver', array('expoferia' => $expoferia->nombre1));?>" class="head"><?php echo $expoferia->nombre1.' '.$expoferia->nombre2.'</a><br>';?>
			      <?php
			      echo '
			      <w style="padding-left: 15px;">'.$expoferia->lugar.'. '.$expoferia->pais.'<br>
			      <w style="padding-left: 15px;">'.$expoferia->fecha_inicio. ' al '. $expoferia->fecha_fin.'<br><br>
';
?>

<?php




echo'
			     </div>
		';

		echo "<br>";
		
	}
echo"      </div>";





?>

<?php echo CHtml::link('Link Text',array('SiteController/expoferias_detalle', 'expo_nombre1'=>$expoferia->nombre1,));?>



