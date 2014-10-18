<?php
/* @var $this ArtistaPrensaController */
/* @var $model ArtistaPrensa */

$this->breadcrumbs=array(
	'Artista Prensas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Artista - Prensa', 'url'=>array('index')),
	array('label'=>'Administrar Artista - Prensa', 'url'=>array('admin')),
);
?>

<h1>Crear Artista - Prensa</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>