<?php
/* @var $this ConversatoraudioController */
/* @var $model Conversatoraudio */

$this->breadcrumbs=array(
	'Conversatoraudios'=>array('index'),
	$model->idaudio,
);

$this->menu=array(
	array('label'=>'Listar Conversatorio audio', 'url'=>array('index')),
	array('label'=>'Crear Conversatorio audio', 'url'=>array('create')),
	array('label'=>'Actualizar Conversatorio audio', 'url'=>array('update', 'id'=>$model->idaudio)),
	array('label'=>'Eliminar Conversatorio audio', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idaudio),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Conversatorio audio', 'url'=>array('admin')),
);
?>

<h1>Ver Conversatorio audio #<?php echo $model->idaudio; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idaudio',
		'idexposicion',
		'datos',
		'audio_ruta',
	),
)); ?>
