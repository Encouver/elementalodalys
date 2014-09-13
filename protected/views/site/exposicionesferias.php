<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;

	foreach ($expoferias as $expoferia){

		echo $expoferia->nombre1;
		echo $expoferia->pais;

	}


?>
