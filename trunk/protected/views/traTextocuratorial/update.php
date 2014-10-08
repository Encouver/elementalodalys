<?php
/* @var $this TraTextocuratorialController */
/* @var $model TraTextocuratorial */

$this->breadcrumbs=array(
	'Tra Textocuratorials'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List TraTextocuratorial', 'url'=>array('index')),
	array('label'=>'Create TraTextocuratorial', 'url'=>array('create')),
	array('label'=>'View TraTextocuratorial', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage TraTextocuratorial', 'url'=>array('admin')),
);
?>

<h1>Update TraTextocuratorial <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>