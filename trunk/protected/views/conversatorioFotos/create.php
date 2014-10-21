<?php
/* @var $this ConversatorioFotosController */
/* @var $model ConversatorioFotos */

$this->breadcrumbs=array(
	'Conversatorio Fotoses'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar ConversatorioFotos', 'url'=>array('index')),
	array('label'=>'Administrar ConversatorioFotos', 'url'=>array('admin')),
);
?>

<h1>Crear ConversatorioFotos</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>