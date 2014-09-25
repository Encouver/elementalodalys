<?php
/* @var $this ConversatorioController */
/* @var $model Conversatorio */

$this->breadcrumbs=array(
	'Conversatorios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Conversatorio', 'url'=>array('index')),
	array('label'=>'Manage Conversatorio', 'url'=>array('admin')),
);
?>

<h1>Create Conversatorio</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>