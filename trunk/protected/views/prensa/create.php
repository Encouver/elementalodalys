<?php
/* @var $this PrensaController */
/* @var $model Prensa */

$this->breadcrumbs=array(
	'Prensas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Prensa', 'url'=>array('index')),
	array('label'=>'Administrar Prensa', 'url'=>array('admin')),
);
?>

<h1>Crear Prensa</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>