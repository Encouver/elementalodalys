<?php
/* @var $this TraArtistaController */
/* @var $model TraArtista */

$this->breadcrumbs=array(
	'Tra Artistas'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List TraArtista', 'url'=>array('index')),
	array('label'=>'Create TraArtista', 'url'=>array('create')),
	array('label'=>'Update TraArtista', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete TraArtista', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TraArtista', 'url'=>array('admin')),
);
?>

<h1>View TraArtista #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'idiomaid',
		'artistaid',
		'pais',
		'biografia',
	),
)); ?>
