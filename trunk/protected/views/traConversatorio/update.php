<?php
/* @var $this TraConversatorioController */
/* @var $model TraConversatorio */

$this->breadcrumbs=array(
	'Tra Conversatorios'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List TraConversatorio', 'url'=>array('index')),
	array('label'=>'Create TraConversatorio', 'url'=>array('create')),
	array('label'=>'View TraConversatorio', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage TraConversatorio', 'url'=>array('admin')),
);
?>

<h1>Update TraConversatorio <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>