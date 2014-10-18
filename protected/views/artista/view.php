<?php
/* @var $this ArtistaController */
/* @var $model Artista */

$this->breadcrumbs=array(
	'Artistas'=>array('index'),
	$model->idartista,
);

$this->menu=array(
	array('label'=>'Listar Artista', 'url'=>array('index')),
	array('label'=>'Crear Artista', 'url'=>array('create')),
	array('label'=>'Actualizar Artista', 'url'=>array('update', 'id'=>$model->idartista)),
	array('label'=>'Eliminar Artista', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idartista),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Artista', 'url'=>array('admin')),
);
?>

<h1>Ver Artista #<?php echo $model->idartista; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idartista',
		'nombre',
		'apellido',
		'ano',
		'pais',
		'biografia',
	),
)); ?>
