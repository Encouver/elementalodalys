<?php
/* @var $this VerniFiniController */
/* @var $model VerniFini */

$this->breadcrumbs=array(
	'Verni Finis'=>array('index'),
	$model->idverni_fini,
);

$this->menu=array(
	array('label'=>'Listar VerniFini', 'url'=>array('index')),
	array('label'=>'Creae VerniFini', 'url'=>array('create')),
	array('label'=>'Actualizar VerniFini', 'url'=>array('update', 'id'=>$model->idverni_fini)),
	array('label'=>'Eliminar VerniFini', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idverni_fini),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar VerniFini', 'url'=>array('admin')),
);
?>

<h1>Ver VerniFini #<?php echo $model->idverni_fini; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idverni_fini',
		'imagen',
		'imagen_thumb',
		'idexposicion',
		'descripcion',
	),
)); ?>
