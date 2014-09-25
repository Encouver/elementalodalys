<?php
/* @var $this TraConversatorioController */
/* @var $model TraConversatorio */

$this->breadcrumbs=array(
	'Tra Conversatorios'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List TraConversatorio', 'url'=>array('index')),
	array('label'=>'Create TraConversatorio', 'url'=>array('create')),
	array('label'=>'Update TraConversatorio', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete TraConversatorio', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TraConversatorio', 'url'=>array('admin')),
);
?>

<h1>View TraConversatorio #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'idiomaid',
		'conversatorioid',
		'descripcion',
	),
)); ?>
