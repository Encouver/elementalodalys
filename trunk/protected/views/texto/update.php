<?php
/* @var $this TextoController */
/* @var $model Texto */

$this->breadcrumbs=array(
	'Textos'=>array('index'),
	$model->idtexto=>array('view','id'=>$model->idtexto),
	'Update',
);

$this->menu=array(
	array('label'=>'List Texto', 'url'=>array('index')),
	array('label'=>'Create Texto', 'url'=>array('create')),
	array('label'=>'View Texto', 'url'=>array('view', 'id'=>$model->idtexto)),
	array('label'=>'Manage Texto', 'url'=>array('admin')),
);
?>

<h1>Update Texto <?php echo $model->idtexto; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>