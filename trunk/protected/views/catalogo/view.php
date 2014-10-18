<?php
/* @var $this CatalogoController */
/* @var $model Catalogo */

$this->breadcrumbs=array(
	'Catalogos'=>array('index'),
	$model->idcatalogo,
);

$this->menu=array(
	array('label'=>'Listar Catálogo', 'url'=>array('index')),
	array('label'=>'Crear Catálogo', 'url'=>array('create')),
	array('label'=>'Actualizar Catálogo', 'url'=>array('update', 'id'=>$model->idcatalogo)),
	array('label'=>'Eliminar Catálogo', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idcatalogo),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Catálogo', 'url'=>array('admin')),
);
?>

<h1>Ver Catálogo #<?php echo $model->idcatalogo; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idcatalogo',
		'idexposicion',
		'portada',
		'portada_thumb',
		'pdf',
		'datos',
	),
)); ?>
