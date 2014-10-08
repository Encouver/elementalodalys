<?php
/* @var $this TextocuratorialController */
/* @var $model Textocuratorial */

$this->breadcrumbs=array(
	'Textocuratorials'=>array('index'),
	$model->idtextocuratorial,
);

$this->menu=array(
	array('label'=>'List Textocuratorial', 'url'=>array('index')),
	array('label'=>'Create Textocuratorial', 'url'=>array('create')),
	array('label'=>'Update Textocuratorial', 'url'=>array('update', 'id'=>$model->idtextocuratorial)),
	array('label'=>'Delete Textocuratorial', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idtextocuratorial),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Textocuratorial', 'url'=>array('admin')),
);
?>

<h1>View Textocuratorial #<?php echo $model->idtextocuratorial; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idtextocuratorial',
		'titulo',
		'contenido',
		'autor',
		'cargo_autor',
		'idexposicion',
	),
)); ?>
