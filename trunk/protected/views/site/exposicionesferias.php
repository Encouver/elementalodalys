<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;

	foreach ($expoferias as $expoferia){



			echo '
			<div class="row">
				<div class="col-md-2">

				</div>';
				
			echo '
				<div class="col-md-6 col-md-offset-1"

			      <a href="#" class="head" >'.$expoferia->nombre1.' '.$expoferia->nombre2.'</a><br>
			      <w style="padding-left: 15px;">'.$expoferia->lugar.'. '.$expoferia->pais.'<br>
			      <w style="padding-left: 15px;">'.$expoferia->fecha_inicio. ' al '. $expoferia->fecha_fin.'<br><br>

      </div>
      ';

		echo "<br>";
	}


?>
