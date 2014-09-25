<?php
/* @var $this PrensaController */
/* @var $model Prensa */

$this->breadcrumbs=array(
	'Prensas'=>array('index'),
	$model->idprensa,
);

$this->menu=array(
	array('label'=>'List Prensa', 'url'=>array('index')),
	array('label'=>'Create Prensa', 'url'=>array('create')),
	array('label'=>'Update Prensa', 'url'=>array('update', 'id'=>$model->idprensa)),
	array('label'=>'Delete Prensa', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idprensa),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Prensa', 'url'=>array('admin')),
);
?>

<h1>View Prensa #<?php echo $model->idprensa; ?></h1>

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
	),
)); ?>
