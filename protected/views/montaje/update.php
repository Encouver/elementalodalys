<?php
/* @var $this MontajeController */
/* @var $model Montaje */

$this->breadcrumbs=array(
	'Montajes'=>array('index'),
	$model->idmontaje=>array('view','id'=>$model->idmontaje),
	'Update',
);

$this->menu=array(
	array('label'=>'List Montaje', 'url'=>array('index')),
	array('label'=>'Create Montaje', 'url'=>array('create')),
	array('label'=>'View Montaje', 'url'=>array('view', 'id'=>$model->idmontaje)),
	array('label'=>'Manage Montaje', 'url'=>array('admin')),
);
?>

<h1>Update Montaje <?php echo $model->idmontaje; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>