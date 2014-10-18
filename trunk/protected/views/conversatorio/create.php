<?php
/* @var $this ConversatorioController */
/* @var $model Conversatorio */

$this->breadcrumbs=array(
	'Conversatorios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Conversatorio', 'url'=>array('index')),
	array('label'=>'Administrar Conversatorio', 'url'=>array('admin')),
);
?>

<h1>Crear Conversatorio</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>