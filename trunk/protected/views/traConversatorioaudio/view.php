<?php
/* @var $this TraConversatorioaudioController */
/* @var $model TraConversatorioaudio */

$this->breadcrumbs=array(
	'Tra Conversatorioaudios'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Listar idioma_Conversatorio audio', 'url'=>array('index')),
	array('label'=>'Crear idioma_Conversatorio audio', 'url'=>array('create')),
	array('label'=>'Actualizar idioma_Conversatorioaudio', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Eliminar idioma_Conversatorioaudio', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar idioma_Conversatorioaudio', 'url'=>array('admin')),
);
?>

<h1>Ver idioma_Conversatorio audio #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'idiomaid',
		'conversatorioaudioid',
		'datos',
		'audio_ruta',
	),
)); ?>
