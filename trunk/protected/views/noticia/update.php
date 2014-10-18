<?php
/* @var $this NoticiaController */
/* @var $model Noticia */

$this->breadcrumbs=array(
	'Noticias'=>array('index'),
	$model->idnoticia=>array('view','id'=>$model->idnoticia),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Noticia', 'url'=>array('index')),
	array('label'=>'Crear Noticia', 'url'=>array('create')),
	array('label'=>'Ver Noticia', 'url'=>array('view', 'id'=>$model->idnoticia)),
	array('label'=>'Administrar Noticia', 'url'=>array('admin')),
);
?>

<h1>Actualizar Noticia <?php echo $model->idnoticia; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>