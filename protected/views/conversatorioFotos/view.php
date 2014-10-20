<?php
/* @var $this ConversatorioFotosController */
/* @var $model ConversatorioFotos */

$this->breadcrumbs=array(
	'Conversatorio Fotoses'=>array('index'),
	$model->idconversatorio_fotos,
);

$this->menu=array(
	array('label'=>'List ConversatorioFotos', 'url'=>array('index')),
	array('label'=>'Create ConversatorioFotos', 'url'=>array('create')),
	array('label'=>'Update ConversatorioFotos', 'url'=>array('update', 'id'=>$model->idconversatorio_fotos)),
	array('label'=>'Delete ConversatorioFotos', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idconversatorio_fotos),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage ConversatorioFotos', 'url'=>array('admin')),
);
?>

<h1>View ConversatorioFotos #<?php echo $model->idconversatorio_fotos; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idconversatorio_fotos',
		'imagen',
		'imagen_thumb',
		'idexposicion',
		'descripcion',
	),
)); ?>
