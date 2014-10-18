<?php
/* @var $this TraConversatorioController */
/* @var $model TraConversatorio */

$this->breadcrumbs=array(
	'Tra Conversatorios'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Listar idioma_Conversatorio', 'url'=>array('index')),
	array('label'=>'Crear idioma_Conversatorio', 'url'=>array('create')),
	array('label'=>'Actualizar idioma_Conversatorio', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Eliminar idioma_Conversatorio', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar idioma_Conversatorio', 'url'=>array('admin')),
);
?>

<h1>Ver idioma_Conversatorio #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'idiomaid',
		'conversatorioid',
		'descripcion',
	),
)); ?>
