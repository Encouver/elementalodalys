<?php
/* @var $this MontajeController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Montajes',
);

$this->menu=array(
	array('label'=>'Create Montaje', 'url'=>array('create')),
	array('label'=>'Manage Montaje', 'url'=>array('admin')),
);
?>

<h1>Montajes</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
