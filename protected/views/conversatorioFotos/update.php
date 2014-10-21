<?php
/* @var $this ConversatorioFotosController */
/* @var $model ConversatorioFotos */

$this->breadcrumbs=array(
	'Conversatorio Fotoses'=>array('index'),
	$model->idconversatorio_fotos=>array('view','id'=>$model->idconversatorio_fotos),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar ConversatorioFotos', 'url'=>array('index')),
	array('label'=>'Crear ConversatorioFotos', 'url'=>array('create')),
	array('label'=>'Ver ConversatorioFotos', 'url'=>array('view', 'id'=>$model->idconversatorio_fotos)),
	array('label'=>'Administrar ConversatorioFotos', 'url'=>array('admin')),
);
?>

<h1>Actualizar ConversatorioFotos <?php echo $model->idconversatorio_fotos; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>