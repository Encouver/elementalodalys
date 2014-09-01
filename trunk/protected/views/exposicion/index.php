<?php
/* @var $this ExposicionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Exposicions',
);

$this->menu=array(
	array('label'=>'Create Exposicion', 'url'=>array('create')),
	array('label'=>'Manage Exposicion', 'url'=>array('admin')),
);
?>

<h1>Exposicions</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
