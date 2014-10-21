<?php
/* @var $this FotosexposicionController */
/* @var $model Fotosexposicion */

$this->breadcrumbs=array(
	'Fotosexposicions'=>array('index'),
	$model->idfotosexposicion,
);

$this->menu=array(
	array('label'=>'Listar Fotosexposicion', 'url'=>array('index')),
	array('label'=>'Crear Fotosexposicion', 'url'=>array('create')),
	array('label'=>'Actualizar Fotosexposicion', 'url'=>array('update', 'id'=>$model->idfotosexposicion)),
	array('label'=>'Eliminar Fotosexposicion', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idfotosexposicion),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Fotosexposicion', 'url'=>array('admin')),
);
?>

<h1>Ver Fotosexposicion #<?php echo $model->idfotosexposicion; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idfotosexposicion',
		'imagen',
		'imagen_thumb',
		'idexposicion',
		'descripcion',
	),
)); ?>
