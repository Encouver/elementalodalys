<?php
/* @var $this ConversatorioFotosController */
/* @var $model ConversatorioFotos */

$this->breadcrumbs=array(
	'Conversatorio Fotoses'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List ConversatorioFotos', 'url'=>array('index')),
	array('label'=>'Manage ConversatorioFotos', 'url'=>array('admin')),
);
?>

<h1>Create ConversatorioFotos</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>