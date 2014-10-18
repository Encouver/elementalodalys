<?php
/* @var $this ArtistaController */
/* @var $model Artista */

$this->breadcrumbs=array(
	'Artistas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Artista', 'url'=>array('index')),
	array('label'=>'Administrar Artista', 'url'=>array('admin')),
	
);
?>

<h1>Crear Artista</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>