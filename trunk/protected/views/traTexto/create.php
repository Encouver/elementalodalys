<?php
/* @var $this TraTextoController */
/* @var $model TraTexto */

$this->breadcrumbs=array(
	'Tra Textos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TraTexto', 'url'=>array('index')),
	array('label'=>'Manage TraTexto', 'url'=>array('admin')),
);
?>

<h1>Create TraTexto</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>