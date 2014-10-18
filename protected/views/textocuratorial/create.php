<?php
/* @var $this TextocuratorialController */
/* @var $model Textocuratorial */

$this->breadcrumbs=array(
	'Textocuratorials'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Texto curatorial', 'url'=>array('index')),
	array('label'=>'Administrar Texto curatorial', 'url'=>array('admin')),
);
?>

<h1>Crear Texto curatorial</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>