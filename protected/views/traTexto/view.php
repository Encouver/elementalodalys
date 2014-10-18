<?php
/* @var $this TraTextoController */
/* @var $model TraTexto */

$this->breadcrumbs=array(
	'Tra Textos'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Listar idioma_Texto', 'url'=>array('index')),
	array('label'=>'Crear idioma_Texto', 'url'=>array('create')),
	array('label'=>'Actualizar idioma_Texto', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Eliminar idioma_Texto', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar idioma_Texto', 'url'=>array('admin')),
);
?>

<h1>Ver idioma_Texto #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'texto',
		'textoid',
		'idiomaid',
	),
)); ?>
