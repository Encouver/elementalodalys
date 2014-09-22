<?php
/* @var $this TraExposicionController */
/* @var $model TraExposicion */

$this->breadcrumbs=array(
	'Tra Exposicions'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List TraExposicion', 'url'=>array('index')),
	array('label'=>'Create TraExposicion', 'url'=>array('create')),
	array('label'=>'View TraExposicion', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage TraExposicion', 'url'=>array('admin')),
);
?>

<h1>Update TraExposicion <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>