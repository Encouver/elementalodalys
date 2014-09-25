<?php
/* @var $this TraAudioController */
/* @var $model TraAudio */

$this->breadcrumbs=array(
	'Tra Audios'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List TraAudio', 'url'=>array('index')),
	array('label'=>'Create TraAudio', 'url'=>array('create')),
	array('label'=>'Update TraAudio', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete TraAudio', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TraAudio', 'url'=>array('admin')),
);
?>

<h1>View TraAudio #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'idiomaid',
		'audioid',
		'datos',
		'audio_ruta',
	),
)); ?>
