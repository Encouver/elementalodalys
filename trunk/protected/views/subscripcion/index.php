<?php
/* @var $this SubscripcionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Subscripcions',
);

$this->menu=array(
	array('label'=>'Create Subscripcion', 'url'=>array('create')),
	array('label'=>'Manage Subscripcion', 'url'=>array('admin')),
);
?>

<h1>Subscripcions</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
