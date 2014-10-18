<?php
/* @var $this TextoController */
/* @var $model Texto */

$this->breadcrumbs=array(
	'Textos'=>array('index'),
	$model->idtexto,
);

$this->menu=array(
	array('label'=>'Listar Texto', 'url'=>array('index')),
	array('label'=>'Crear Texto', 'url'=>array('create')),
	array('label'=>'Actualizar Texto', 'url'=>array('update', 'id'=>$model->idtexto)),
	array('label'=>'Eliminar Texto', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idtexto),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Texto', 'url'=>array('admin')),
);
?>

<h1>Ver Texto #<?php echo $model->idtexto; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idtexto',
		'lugar',
		'texto',
	),
)); ?>
