<?php
/* @var $this TraPrensaController */
/* @var $model TraPrensa */

$this->breadcrumbs=array(
	'Tra Prensas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TraPrensa', 'url'=>array('index')),
	array('label'=>'Manage TraPrensa', 'url'=>array('admin')),
);
?>

<h1>Create TraPrensa</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>