<?php
/* @var $this TextocuratorialController */
/* @var $model Textocuratorial */

$this->breadcrumbs=array(
	'Textocuratorials'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Textocuratorial', 'url'=>array('index')),
	array('label'=>'Manage Textocuratorial', 'url'=>array('admin')),
);
?>

<h1>Create Textocuratorial</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>