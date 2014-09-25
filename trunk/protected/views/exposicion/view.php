<?php
/* @var $this ExposicionController */
/* @var $model Exposicion */

$this->breadcrumbs=array(
	'Exposicions'=>array('index'),
	$model->idexposicion,
);

$this->menu=array(
	array('label'=>'List Exposicion', 'url'=>array('index')),
	array('label'=>'Create Exposicion', 'url'=>array('create')),
	array('label'=>'Update Exposicion', 'url'=>array('update', 'id'=>$model->idexposicion)),
	array('label'=>'Delete Exposicion', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idexposicion),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Exposicion', 'url'=>array('admin')),
);
?>

<h1>View Exposicion #<?php echo $model->idexposicion; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idexposicion',
		'nombre1',
		'nombre2',
		'lugar',
		'fecha_inicio',
		'fecha_fin',
		'tipo',
		'pais',
	),
)); ?>
