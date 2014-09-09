<?php
/* @var $this VerniFiniController */
/* @var $model VerniFini */

$this->breadcrumbs=array(
	'Verni Finis'=>array('index'),
	$model->idverni_fini=>array('view','id'=>$model->idverni_fini),
	'Update',
);

$this->menu=array(
	array('label'=>'List VerniFini', 'url'=>array('index')),
	array('label'=>'Create VerniFini', 'url'=>array('create')),
	array('label'=>'View VerniFini', 'url'=>array('view', 'id'=>$model->idverni_fini)),
	array('label'=>'Manage VerniFini', 'url'=>array('admin')),
);
?>

<h1>Update VerniFini <?php echo $model->idverni_fini; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>