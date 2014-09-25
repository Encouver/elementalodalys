<?php
/* @var $this TraNoticiaController */
/* @var $model TraNoticia */

$this->breadcrumbs=array(
	'Tra Noticias'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List TraNoticia', 'url'=>array('index')),
	array('label'=>'Create TraNoticia', 'url'=>array('create')),
	array('label'=>'View TraNoticia', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage TraNoticia', 'url'=>array('admin')),
);
?>

<h1>Update TraNoticia <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>