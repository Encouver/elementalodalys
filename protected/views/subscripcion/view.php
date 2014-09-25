<?php
/* @var $this SubscripcionController */
/* @var $model Subscripcion */

$this->breadcrumbs=array(
	'Subscripcions'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Subscripcion', 'url'=>array('index')),
	array('label'=>'Create Subscripcion', 'url'=>array('create')),
	array('label'=>'Update Subscripcion', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Subscripcion', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Subscripcion', 'url'=>array('admin')),
);
?>

<h1>View Subscripcion #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'correo',
	),
)); ?>
