<?php
/* @var $this TextoController */
/* @var $model Texto */

$this->breadcrumbs=array(
	'Textos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Texto', 'url'=>array('index')),
	array('label'=>'Administrar Texto', 'url'=>array('admin')),
);
?>

<h1>Crear Texto</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>