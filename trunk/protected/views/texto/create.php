<?php
/* @var $this TextoController */
/* @var $model Texto */

$this->breadcrumbs=array(
	'Textos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Texto', 'url'=>array('index')),
	array('label'=>'Manage Texto', 'url'=>array('admin')),
);
?>

<h1>Create Texto</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>