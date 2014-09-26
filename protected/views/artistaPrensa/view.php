<?php
/* @var $this ArtistaPrensaController */
/* @var $model ArtistaPrensa */

$this->breadcrumbs=array(
	'Artista Prensas'=>array('index'),
	$model->idartista_prensa,
);

$this->menu=array(
	array('label'=>'List ArtistaPrensa', 'url'=>array('index')),
	array('label'=>'Create ArtistaPrensa', 'url'=>array('create')),
	array('label'=>'Update ArtistaPrensa', 'url'=>array('update', 'id'=>$model->idartista_prensa)),
	array('label'=>'Delete ArtistaPrensa', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idartista_prensa),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage ArtistaPrensa', 'url'=>array('admin')),
);
?>

<h1>View ArtistaPrensa #<?php echo $model->idartista_prensa; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idartista_prensa',
		'idartista',
		'idprensa',
	),
)); ?>
