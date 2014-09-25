<?php
/* @var $this TraExposicionController */
/* @var $model TraExposicion */

$this->breadcrumbs=array(
	'Tra Exposicions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TraExposicion', 'url'=>array('index')),
	array('label'=>'Manage TraExposicion', 'url'=>array('admin')),
);
?>

<h1>Create TraExposicion</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>