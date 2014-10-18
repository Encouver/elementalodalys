<?php
/* @var $this TraTextocuratorialController */
/* @var $model TraTextocuratorial */

$this->breadcrumbs=array(
	'Tra Textocuratorials'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Listar idioma_TextoCuratorial', 'url'=>array('index')),
	array('label'=>'Crear idioma_TextoCuratorial', 'url'=>array('create')),
	array('label'=>'Actualizar idioma_TextoCuratorial', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Eliminar idioma_TextoCuratorial', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar idioma_TextoCuratorial', 'url'=>array('admin')),
);
?>

<h1>Ver idioma_TextoCuratorial #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'idiomaid',
		'textocuratorialid',
		'titulo',
		'contenido',
		'cargo_autor',
	),
)); ?>
