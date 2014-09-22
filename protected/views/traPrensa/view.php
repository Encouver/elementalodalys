<?php
/* @var $this TraPrensaController */
/* @var $model TraPrensa */

$this->breadcrumbs=array(
	'Tra Prensas'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List TraPrensa', 'url'=>array('index')),
	array('label'=>'Create TraPrensa', 'url'=>array('create')),
	array('label'=>'Update TraPrensa', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete TraPrensa', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TraPrensa', 'url'=>array('admin')),
);
?>

<h1>View TraPrensa #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'idiomaid',
		'titulo',
		'contenido',
		'prensaid',
	),
)); ?>
