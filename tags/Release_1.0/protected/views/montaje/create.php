<?php
/* @var $this MontajeController */
/* @var $model Montaje */

$this->breadcrumbs=array(
	'Montajes'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Montaje', 'url'=>array('index')),
	array('label'=>'Manage Montaje', 'url'=>array('admin')),
);
?>

<h1>Create Montaje</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>