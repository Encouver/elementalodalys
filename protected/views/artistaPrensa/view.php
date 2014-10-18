<?php
/* @var $this ArtistaPrensaController */
/* @var $model ArtistaPrensa */

$this->breadcrumbs=array(
	'Artista Prensas'=>array('index'),
	$model->idartista_prensa,
);

$this->menu=array(
	array('label'=>'Listar Artista - Prensa', 'url'=>array('index')),
	array('label'=>'Crear Artista - Prensa', 'url'=>array('create')),
	array('label'=>'Actualizar Artista - Prensa', 'url'=>array('update', 'id'=>$model->idartista_prensa)),
	array('label'=>'Eliminar Artista - Prensa', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idartista_prensa),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Artista - Prensa', 'url'=>array('admin')),
);
?>

<h1>Ver Artista - Prensa #<?php echo $model->idartista_prensa; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idartista_prensa',
		'idartista',
		'idprensa',
	),
)); ?>
