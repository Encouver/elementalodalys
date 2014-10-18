<?php
/* @var $this TextocuratorialController */
/* @var $model Textocuratorial */

$this->breadcrumbs=array(
	'Textocuratorials'=>array('index'),
	$model->idtextocuratorial,
);

$this->menu=array(
	array('label'=>'Listar Texto curatorial', 'url'=>array('index')),
	array('label'=>'Crear Texto curatorial', 'url'=>array('create')),
	array('label'=>'Actualizar Texto curatorial', 'url'=>array('update', 'id'=>$model->idtextocuratorial)),
	array('label'=>'Eliminar Texto curatorial', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idtextocuratorial),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Texto curatorial', 'url'=>array('admin')),
);
?>

<h1>Ver Texto curatorial #<?php echo $model->idtextocuratorial; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idtextocuratorial',
		'titulo',
		'autor',
		'cargo_autor',
		'idexposicion',
	),
)); ?>
