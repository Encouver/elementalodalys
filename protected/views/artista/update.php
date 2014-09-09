<?php
/* @var $this ArtistaController */
/* @var $model Artista */

$this->breadcrumbs=array(
	'Artistas'=>array('index'),
	$model->idartista=>array('view','id'=>$model->idartista),
	'Update',
);

$this->menu=array(
	array('label'=>'List Artista', 'url'=>array('index')),
	array('label'=>'Create Artista', 'url'=>array('create')),
	array('label'=>'View Artista', 'url'=>array('view', 'id'=>$model->idartista)),
	array('label'=>'Manage Artista', 'url'=>array('admin')),
);
?>

<h1>Update Artista <?php echo $model->idartista; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>