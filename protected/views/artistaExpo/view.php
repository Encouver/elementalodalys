<?php
/* @var $this ArtistaExpoController */
/* @var $model ArtistaExpo */

$this->breadcrumbs=array(
	'Artista Expos'=>array('index'),
	$model->idcolectiva_feria,
);

$this->menu=array(
	array('label'=>'Listar Artista - Expo/Feria', 'url'=>array('index')),
	array('label'=>'Crear Artista - Expo/Feria', 'url'=>array('create')),
	array('label'=>'Actualizar Artista - Expo/Feria', 'url'=>array('update', 'id'=>$model->idcolectiva_feria)),
	array('label'=>'Eliminar Artista - Expo/Feria', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idcolectiva_feria),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Artista - Expo/Feria', 'url'=>array('admin')),
);
?>

<h1>Ver Artista - Expo/Feria #<?php echo $model->idcolectiva_feria; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idcolectiva_feria',
		'idartista',
		'idexposicion',
	),
)); ?>
