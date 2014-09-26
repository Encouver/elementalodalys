<?php
/* @var $this ArtistaExpoController */
/* @var $model ArtistaExpo */

$this->breadcrumbs=array(
	'Artista Expos'=>array('index'),
	$model->idcolectiva_feria,
);

$this->menu=array(
	array('label'=>'List ArtistaExpo', 'url'=>array('index')),
	array('label'=>'Create ArtistaExpo', 'url'=>array('create')),
	array('label'=>'Update ArtistaExpo', 'url'=>array('update', 'id'=>$model->idcolectiva_feria)),
	array('label'=>'Delete ArtistaExpo', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idcolectiva_feria),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage ArtistaExpo', 'url'=>array('admin')),
);
?>

<h1>View ArtistaExpo #<?php echo $model->idcolectiva_feria; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idcolectiva_feria',
		'idartista',
		'idexposicion',
	),
)); ?>
