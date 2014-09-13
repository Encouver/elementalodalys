<?php
/* @var $this MontajeController */
/* @var $model Montaje */

$this->breadcrumbs=array(
	'Montajes'=>array('index'),
	$model->idmontaje,
);

$this->menu=array(
	array('label'=>'List Montaje', 'url'=>array('index')),
	array('label'=>'Create Montaje', 'url'=>array('create')),
	array('label'=>'Update Montaje', 'url'=>array('update', 'id'=>$model->idmontaje)),
	array('label'=>'Delete Montaje', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idmontaje),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Montaje', 'url'=>array('admin')),
);
?>

<h1>View Montaje #<?php echo $model->idmontaje; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idmontaje',
		'imagen',
		'imagen_thumb',
		'idexposicion',
		'descripcion',
	),
)); ?>
