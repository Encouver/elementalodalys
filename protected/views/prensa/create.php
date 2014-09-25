<?php
/* @var $this PrensaController */
/* @var $model Prensa */

$this->breadcrumbs=array(
	'Prensas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Prensa', 'url'=>array('index')),
	array('label'=>'Manage Prensa', 'url'=>array('admin')),
);
?>

<h1>Create Prensa</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>