<?php
/* @var $this TraArtistaController */
/* @var $model TraArtista */

$this->breadcrumbs=array(
	'Tra Artistas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TraArtista', 'url'=>array('index')),
	array('label'=>'Manage TraArtista', 'url'=>array('admin')),
);
?>

<h1>Create TraArtista</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>