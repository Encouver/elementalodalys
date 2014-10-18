<?php
/* @var $this ExposicionController */
/* @var $model Exposicion */

$this->breadcrumbs=array(
	'Exposicions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Exposición/Feria', 'url'=>array('index')),
	array('label'=>'Administrar Exposición/Feria', 'url'=>array('admin')),
);
?>

<h1>Crear Exposición/Feria</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>