<?php
/* @var $this TraNoticiaController */
/* @var $model TraNoticia */

$this->breadcrumbs=array(
	'Tra Noticias'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TraNoticia', 'url'=>array('index')),
	array('label'=>'Manage TraNoticia', 'url'=>array('admin')),
);
?>

<h1>Create TraNoticia</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>