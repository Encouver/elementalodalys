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

echo'


				</div>
				<div class="col-md-10">	
			      <a href="#" class="head" >'.$expoferia->nombre1.' '.$expoferia->nombre2.'</a><br>
			      <w style="padding-left: 15px;">'.$expoferia->lugar.'. '.$expoferia->pais.'<br>
			      <w style="padding-left: 15px;">'.$expoferia->fecha_inicio. ' al '. $expoferia->fecha_fin.'<br><br>

			     </div>
		';

		echo "<br>";
		
	}
echo"      </div>";


?>



