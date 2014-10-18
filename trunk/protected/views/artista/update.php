<?php
/* @var $this ArtistaController */
/* @var $model Artista */

$this->breadcrumbs=array(
	'Artistas'=>array('index'),
	$model->idartista=>array('view','id'=>$model->idartista),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Artista', 'url'=>array('index')),
	array('label'=>'Crear Artista', 'url'=>array('create')),
	array('label'=>'Ver Artista', 'url'=>array('view', 'id'=>$model->idartista)),
	array('label'=>'Administrar Artista', 'url'=>array('admin')),
);
?>

<h1>Actualizar Artista <?php echo $model->idartista; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>