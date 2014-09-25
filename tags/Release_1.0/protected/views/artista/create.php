<?php
/* @var $this ArtistaController */
/* @var $model Artista */

$this->breadcrumbs=array(
	'Artistas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Artista', 'url'=>array('index')),
	array('label'=>'Manage Artista', 'url'=>array('admin')),
	
);
?>

<h1>Create Artista</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>