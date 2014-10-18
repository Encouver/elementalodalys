<?php
/* @var $this TraTextoController */
/* @var $model TraTexto */

$this->breadcrumbs=array(
	'Tra Textos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar idioma_Texto', 'url'=>array('index')),
	array('label'=>'Administrar idioma_Texto', 'url'=>array('admin')),
);
?>

<h1>Crear idioma_Texto</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>