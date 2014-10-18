<?php
/* @var $this TraAudioController */
/* @var $model TraAudio */

$this->breadcrumbs=array(
	'Tra Audios'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Listar idioma_Audio', 'url'=>array('index')),
	array('label'=>'Crear idioma_Audio', 'url'=>array('create')),
	array('label'=>'Actualizar idioma_Audio', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Eliminar idioma_Audio', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar idioma_Audio', 'url'=>array('admin')),
);
?>

<h1>Ver idioma_Audio #<?php echo $model->id; ?></h1>

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
