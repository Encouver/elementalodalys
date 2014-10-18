<?php
/* @var $this ObraController */
/* @var $model Obra */

$this->breadcrumbs=array(
	'Obras'=>array('index'),
	$model->idobra,
);

$this->menu=array(
	array('label'=>'Listar Obra', 'url'=>array('index')),
	array('label'=>'Crear Obra', 'url'=>array('create')),
	array('label'=>'Actualizar Obra', 'url'=>array('update', 'id'=>$model->idobra)),
	array('label'=>'Eliminar Obra', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idobra),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Obra', 'url'=>array('admin')),
);
?>

<h1>Ver Obra #<?php echo $model->idobra; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idobra',
		'idartista',
		'imagen',
		'imagen_thumb',
		'descripcion',
	),
)); ?>
