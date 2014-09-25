<?php
/* @var $this IdiomasController */
/* @var $model Idiomas */

$this->breadcrumbs=array(
	'Idiomases'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Idiomas', 'url'=>array('index')),
	array('label'=>'Create Idiomas', 'url'=>array('create')),
	array('label'=>'View Idiomas', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Idiomas', 'url'=>array('admin')),
);
?>

<h1>Update Idiomas <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>