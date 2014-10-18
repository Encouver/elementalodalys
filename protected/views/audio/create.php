<?php
/* @var $this AudioController */
/* @var $model Audio */

$this->breadcrumbs=array(
	'Audios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Audio', 'url'=>array('index')),
	array('label'=>'Administrar Audio', 'url'=>array('admin')),
);
?>

<h1>Crear Audio</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>