<?php
/* @var $this ExposicionController */
/* @var $model Exposicion */

$this->breadcrumbs=array(
	'Exposicions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Exposicion', 'url'=>array('index')),
	array('label'=>'Manage Exposicion', 'url'=>array('admin')),
);
?>

<h1>Create Exposicion</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>