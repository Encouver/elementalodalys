<?php
/* @var $this ConversatorioController */
/* @var $model Conversatorio */

$this->breadcrumbs=array(
	'Conversatorios'=>array('index'),
	$model->idconversatorio,
);

$this->menu=array(
	array('label'=>'Listar Conversatorio', 'url'=>array('index')),
	array('label'=>'Crear Conversatorio', 'url'=>array('create')),
	array('label'=>'Actualizar Conversatorio', 'url'=>array('update', 'id'=>$model->idconversatorio)),
	array('label'=>'Eliminar Conversatorio', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idconversatorio),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Conversatorio', 'url'=>array('admin')),
);
?>

<h1>Ver Conversatorio #<?php echo $model->idconversatorio; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idconversatorio',
		'link',
		'idexposicion',
		'descripcion',
	),
)); ?>
