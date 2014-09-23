<?php
/* @var $this TraTextoController */
/* @var $model TraTexto */

$this->breadcrumbs=array(
	'Tra Textos'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List TraTexto', 'url'=>array('index')),
	array('label'=>'Create TraTexto', 'url'=>array('create')),
	array('label'=>'Update TraTexto', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete TraTexto', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TraTexto', 'url'=>array('admin')),
);
?>

<h1>View TraTexto #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'texto',
		'textoid',
		'idiomaid',
	),
)); ?>
