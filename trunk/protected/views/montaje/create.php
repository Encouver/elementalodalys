<?php
/* @var $this MontajeController */
/* @var $model Montaje */

$this->breadcrumbs=array(
	'Montajes'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Montaje', 'url'=>array('index')),
	array('label'=>'Administrar Montaje', 'url'=>array('admin')),
);
?>

<h1>Crear Montaje</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>