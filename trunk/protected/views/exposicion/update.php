<?php
/* @var $this ExposicionController */
/* @var $model Exposicion */

$this->breadcrumbs=array(
	'Exposicions'=>array('index'),
	$model->idexposicion=>array('view','id'=>$model->idexposicion),
	'Update',
);

$this->menu=array(
	array('label'=>'List Exposicion', 'url'=>array('index')),
	array('label'=>'Create Exposicion', 'url'=>array('create')),
	array('label'=>'View Exposicion', 'url'=>array('view', 'id'=>$model->idexposicion)),
	array('label'=>'Manage Exposicion', 'url'=>array('admin')),
);
?>

<h1>Update Exposicion <?php echo $model->idexposicion; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>