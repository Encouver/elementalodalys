<?php
/* @var $this ArtistaPrensaController */
/* @var $model ArtistaPrensa */

$this->breadcrumbs=array(
	'Artista Prensas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List ArtistaPrensa', 'url'=>array('index')),
	array('label'=>'Manage ArtistaPrensa', 'url'=>array('admin')),
);
?>

<h1>Create ArtistaPrensa</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>