<?php
/* @var $this TraNoticiaController */
/* @var $model TraNoticia */

$this->breadcrumbs=array(
	'Tra Noticias'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List TraNoticia', 'url'=>array('index')),
	array('label'=>'Create TraNoticia', 'url'=>array('create')),
	array('label'=>'Update TraNoticia', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete TraNoticia', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TraNoticia', 'url'=>array('admin')),
);
?>

<h1>View TraNoticia #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'idiomaid',
		'noticiaid',
		'titulo',
		'contenido',
	),
)); ?>
