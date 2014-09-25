<?php
/* @var $this VerniFiniController */
/* @var $model VerniFini */

$this->breadcrumbs=array(
	'Verni Finis'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List VerniFini', 'url'=>array('index')),
	array('label'=>'Manage VerniFini', 'url'=>array('admin')),
);
?>

<h1>Create VerniFini</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>