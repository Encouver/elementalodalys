<?php
/* @var $this IdiomasController */
/* @var $model Idiomas */

$this->breadcrumbs=array(
	'Idiomases'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Idiomas', 'url'=>array('index')),
	array('label'=>'Manage Idiomas', 'url'=>array('admin')),
);
?>

<h1>Create Idiomas</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>