<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;

	foreach ($expoferias as $expoferia){

    	if ($idioma->id == 2){				    		
		echo $expoferia->exposicion->nombre1;
		echo $expoferia->pais;
    	}else{
    		echo $expoferia->nombre1;
			echo $expoferia->lugar;
    	}

		echo "<br>";
	}


?>
