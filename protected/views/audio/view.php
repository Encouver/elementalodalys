<?php
/* @var $this AudioController */
/* @var $model Audio */

$this->breadcrumbs=array(
	'Audios'=>array('index'),
	$model->idaudio,
);

$this->menu=array(
	array('label'=>'List Audio', 'url'=>array('index')),
	array('label'=>'Create Audio', 'url'=>array('create')),
	array('label'=>'Update Audio', 'url'=>array('update', 'id'=>$model->idaudio)),
	array('label'=>'Delete Audio', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idaudio),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Audio', 'url'=>array('admin')),
);
?>

<h1>View Audio #<?php echo $model->idaudio; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idaudio',
		'idexposicion',
	),
)); ?>
