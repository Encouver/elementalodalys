<?php
/* @var $this SubscripcionController */
/* @var $model Subscripcion */

$this->breadcrumbs=array(
	'Subscripcions'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Subscripcion', 'url'=>array('index')),
	array('label'=>'Create Subscripcion', 'url'=>array('create')),
	array('label'=>'View Subscripcion', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Subscripcion', 'url'=>array('admin')),
);
?>

<h1>Update Subscripcion <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>