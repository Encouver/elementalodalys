<?php
/* @var $this NoticiaController */
/* @var $model Noticia */

$this->breadcrumbs=array(
	'Noticias'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Noticia', 'url'=>array('index')),
	array('label'=>'Administrar Noticia', 'url'=>array('admin')),
);
?>

<h1>Crear Noticia</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>