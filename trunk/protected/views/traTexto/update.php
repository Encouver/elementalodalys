<?php
/* @var $this TraTextoController */
/* @var $model TraTexto */

$this->breadcrumbs=array(
	'Tra Textos'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List TraTexto', 'url'=>array('index')),
	array('label'=>'Create TraTexto', 'url'=>array('create')),
	array('label'=>'View TraTexto', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage TraTexto', 'url'=>array('admin')),
);
?>

<h1>Update TraTexto <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>