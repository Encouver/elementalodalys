<?php
/* @var $this TraArtistaController */
/* @var $model TraArtista */

$this->breadcrumbs=array(
	'Tra Artistas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar idioma_Artista', 'url'=>array('index')),
	array('label'=>'Administrar idioma_Artista', 'url'=>array('admin')),
);
?>

<h1>Crear idioma_Artista</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>