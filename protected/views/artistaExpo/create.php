<?php
/* @var $this ArtistaExpoController */
/* @var $model ArtistaExpo */

$this->breadcrumbs=array(
	'Artista Expos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List ArtistaExpo', 'url'=>array('index')),
	array('label'=>'Manage ArtistaExpo', 'url'=>array('admin')),
);
?>

<h1>Create ArtistaExpo</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>