<?php
/* @var $this ArtistaExpoController */
/* @var $model ArtistaExpo */

$this->breadcrumbs=array(
	'Artista Expos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Artista - Expo/Feria', 'url'=>array('index')),
	array('label'=>'Administrar Artista - Expo/Feria', 'url'=>array('admin')),
);
?>

<h1>Crear Artista - Expo/Feria</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>