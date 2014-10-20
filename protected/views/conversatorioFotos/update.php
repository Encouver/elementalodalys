<?php
/* @var $this ConversatorioFotosController */
/* @var $model ConversatorioFotos */

$this->breadcrumbs=array(
	'Conversatorio Fotoses'=>array('index'),
	$model->idconversatorio_fotos=>array('view','id'=>$model->idconversatorio_fotos),
	'Update',
);

$this->menu=array(
	array('label'=>'List ConversatorioFotos', 'url'=>array('index')),
	array('label'=>'Create ConversatorioFotos', 'url'=>array('create')),
	array('label'=>'View ConversatorioFotos', 'url'=>array('view', 'id'=>$model->idconversatorio_fotos)),
	array('label'=>'Manage ConversatorioFotos', 'url'=>array('admin')),
);
?>

<h1>Update ConversatorioFotos <?php echo $model->idconversatorio_fotos; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>