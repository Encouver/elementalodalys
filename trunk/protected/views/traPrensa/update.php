<?php
/* @var $this TraPrensaController */
/* @var $model TraPrensa */

$this->breadcrumbs=array(
	'Tra Prensas'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List TraPrensa', 'url'=>array('index')),
	array('label'=>'Create TraPrensa', 'url'=>array('create')),
	array('label'=>'View TraPrensa', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage TraPrensa', 'url'=>array('admin')),
);
?>

<h1>Update TraPrensa <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>