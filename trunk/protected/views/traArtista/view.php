<?php
/* @var $this TraArtistaController */
/* @var $model TraArtista */

$this->breadcrumbs=array(
	'Tra Artistas'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Listar idioma_Artista', 'url'=>array('index')),
	array('label'=>'Crear idioma_Artista', 'url'=>array('create')),
	array('label'=>'Actualizar idioma_Artista', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Eliminar idioma_Artista', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar idioma_Artista', 'url'=>array('admin')),
);
?>

<h1>Ver idioma_Artista #<?php echo $model->id; ?></h1>

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
