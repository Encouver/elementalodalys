<?php
/* @var $this ExposicionController */
/* @var $model Exposicion */

$this->breadcrumbs=array(
	'Exposicions'=>array('index'),
	$model->idexposicion,
);

$this->menu=array(
	array('label'=>'Listar Exposición/Feria', 'url'=>array('index')),
	array('label'=>'Create Exposición/Feria', 'url'=>array('create')),
	array('label'=>'Update Exposición/Feria', 'url'=>array('update', 'id'=>$model->idexposicion)),
	array('label'=>'Delete Exposición/Feria', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idexposicion),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Exposición/Feria', 'url'=>array('admin')),
);
?>

<h1>Ver Exposición/Feria #<?php echo $model->idexposicion; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idexposicion',
		'nombre1',
		'nombre2',
		'lugar',
		'fecha_inicio',
		'fecha_fin',
		'tipo',
		'pais',
	),
)); ?>
