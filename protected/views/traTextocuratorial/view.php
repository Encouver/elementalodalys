<?php
/* @var $this TraTextocuratorialController */
/* @var $model TraTextocuratorial */

$this->breadcrumbs=array(
	'Tra Textocuratorials'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List TraTextocuratorial', 'url'=>array('index')),
	array('label'=>'Create TraTextocuratorial', 'url'=>array('create')),
	array('label'=>'Update TraTextocuratorial', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete TraTextocuratorial', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TraTextocuratorial', 'url'=>array('admin')),
);
?>

<h1>View TraTextocuratorial #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'idiomaid',
		'textocuratorialid',
		'titulo',
		'contenido',
		'cargo_autor',
	),
)); ?>
