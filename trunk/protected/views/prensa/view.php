<?php
/* @var $this PrensaController */
/* @var $model Prensa */

$this->breadcrumbs=array(
	'Prensas'=>array('index'),
	$model->idprensa,
);

$this->menu=array(
	array('label'=>'Listar Prensa', 'url'=>array('index')),
	array('label'=>'Crear Prensa', 'url'=>array('create')),
	array('label'=>'Actualizar Prensa', 'url'=>array('update', 'id'=>$model->idprensa)),
	array('label'=>'Eliminar Prensa', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idprensa),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Prensa', 'url'=>array('admin')),
);
?>

<h1>Ver Prensa #<?php echo $model->idprensa; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idprensa',
		'fecha',
		'imagen',
		'imagen_thumb',
		'idexposicion',
		'titulo',
		'contenido',
		'link',
	),
)); ?>
