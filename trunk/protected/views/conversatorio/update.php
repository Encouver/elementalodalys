<?php
/* @var $this ConversatorioController */
/* @var $model Conversatorio */

$this->breadcrumbs=array(
	'Conversatorios'=>array('index'),
	$model->idconversatorio=>array('view','id'=>$model->idconversatorio),
	'Update',
);

$this->menu=array(
	array('label'=>'List Conversatorio', 'url'=>array('index')),
	array('label'=>'Create Conversatorio', 'url'=>array('create')),
	array('label'=>'View Conversatorio', 'url'=>array('view', 'id'=>$model->idconversatorio)),
	array('label'=>'Manage Conversatorio', 'url'=>array('admin')),
);
?>

<h1>Update Conversatorio <?php echo $model->idconversatorio; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>