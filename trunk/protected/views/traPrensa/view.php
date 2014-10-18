<?php
/* @var $this TraPrensaController */
/* @var $model TraPrensa */

$this->breadcrumbs=array(
	'Tra Prensas'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Listar idioma_Prensa', 'url'=>array('index')),
	array('label'=>'Crear idioma_Prensa', 'url'=>array('create')),
	array('label'=>'Actualizar idioma_Prensa', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Eliminar idioma_Prensa', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar idioma_Prensa', 'url'=>array('admin')),
);
?>

<h1>Ver idioma_Prensa #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'idiomaid',
		'titulo',
		'contenido',
		'prensaid',
	),
)); ?>
