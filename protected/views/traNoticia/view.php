<?php
/* @var $this TraNoticiaController */
/* @var $model TraNoticia */

$this->breadcrumbs=array(
	'Tra Noticias'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Listar idioma_Noticia', 'url'=>array('index')),
	array('label'=>'Crear idioma_Noticia', 'url'=>array('create')),
	array('label'=>'Actualizar idioma_Noticia', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Eliminar idioma_Noticia', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar idioma_Noticia', 'url'=>array('admin')),
);
?>

<h1>Ver idioma_Noticia #<?php echo $model->id; ?></h1>

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
