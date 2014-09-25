<?php
/* @var $this PrensaController */
/* @var $model Prensa */

$this->breadcrumbs=array(
	'Prensas'=>array('index'),
	$model->idprensa=>array('view','id'=>$model->idprensa),
	'Update',
);

$this->menu=array(
	array('label'=>'List Prensa', 'url'=>array('index')),
	array('label'=>'Create Prensa', 'url'=>array('create')),
	array('label'=>'View Prensa', 'url'=>array('view', 'id'=>$model->idprensa)),
	array('label'=>'Manage Prensa', 'url'=>array('admin')),
);
?>

<h1>Update Prensa <?php echo $model->idprensa; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>