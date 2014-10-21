<?php
/* @var $this ConversatoraudioController */
/* @var $model Conversatoraudio */

$this->breadcrumbs=array(
	'Conversatoraudios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Conversatorio audio', 'url'=>array('index')),
	array('label'=>'Administrar Conversatorio audio', 'url'=>array('admin')),
);
?>

<h1>Crear Conversatorio audio</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>