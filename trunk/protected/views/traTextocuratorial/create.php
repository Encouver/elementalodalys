<?php
/* @var $this TraTextocuratorialController */
/* @var $model TraTextocuratorial */

$this->breadcrumbs=array(
	'Tra Textocuratorials'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TraTextocuratorial', 'url'=>array('index')),
	array('label'=>'Manage TraTextocuratorial', 'url'=>array('admin')),
);
?>

<h1>Create TraTextocuratorial</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>