<?php
/* @var $this ArtistaController */
/* @var $model Artista */

$this->breadcrumbs=array(
	'Artistas'=>array('index'),
	$model->idartista,
);

$this->menu=array(
	array('label'=>'List Artista', 'url'=>array('index')),
	array('label'=>'Create Artista', 'url'=>array('create')),
	array('label'=>'Update Artista', 'url'=>array('update', 'id'=>$model->idartista)),
	array('label'=>'Delete Artista', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idartista),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Artista', 'url'=>array('admin')),
);
?>

<h1>View Artista #<?php echo $model->idartista; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idartista',
		'nombre',
		'apellido',
		'ano',
		'pais',
		'biografia',
	),
)); ?>
