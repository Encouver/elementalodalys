<?php
/* @var $this TraExposicionController */
/* @var $model TraExposicion */

$this->breadcrumbs=array(
	'Tra Exposicions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar idioma_Exposición/Feria', 'url'=>array('index')),
	array('label'=>'Administrar idioma_Exposición/Feria', 'url'=>array('admin')),
);
?>

<h1>Crear idioma_Exposición/Feria</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>