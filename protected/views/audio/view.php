<?php
/* @var $this AudioController */
/* @var $model Audio */

$this->breadcrumbs=array(
	'Audios'=>array('index'),
	$model->idaudio,
);

$this->menu=array(
	array('label'=>'Listar Audio', 'url'=>array('index')),
	array('label'=>'Crear Audio', 'url'=>array('create')),
	array('label'=>'Actualizar Audio', 'url'=>array('update', 'id'=>$model->idaudio)),
	array('label'=>'Eliminar Audio', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idaudio),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Audio', 'url'=>array('admin')),
);
?>

<h1>Ver Audio #<?php echo $model->idaudio; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idaudio',
		'idexposicion',
		'datos',
		'audio_ruta',
	),
)); ?>
