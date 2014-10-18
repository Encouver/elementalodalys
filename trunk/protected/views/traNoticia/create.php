<?php
/* @var $this TraNoticiaController */
/* @var $model TraNoticia */

$this->breadcrumbs=array(
	'Tra Noticias'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar idioma_Noticia', 'url'=>array('index')),
	array('label'=>'Administrar idioma_Noticia', 'url'=>array('admin')),
);
?>

<h1>Crear idioma_Noticia</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>