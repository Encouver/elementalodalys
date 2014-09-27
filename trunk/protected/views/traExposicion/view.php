<?php
/* @var $this TraExposicionController */
/* @var $model TraExposicion */

$this->breadcrumbs=array(
	'Tra Exposicions'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List TraExposicion', 'url'=>array('index')),
	array('label'=>'Create TraExposicion', 'url'=>array('create')),
	array('label'=>'Update TraExposicion', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete TraExposicion', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TraExposicion', 'url'=>array('admin')),
);
?>

<h1>View TraExposicion #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'pais',
		'exposicion.nombre1',
		'idioma.nombre',
	),
)); ?>
