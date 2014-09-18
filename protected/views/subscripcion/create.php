<?php
/* @var $this SubscripcionController */
/* @var $model Subscripcion */

$this->breadcrumbs=array(
	'Subscripcions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Subscripcion', 'url'=>array('index')),
	array('label'=>'Manage Subscripcion', 'url'=>array('admin')),
);
?>

<h1><?php echo Yii::t('subscripcion','Subscribete');?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>