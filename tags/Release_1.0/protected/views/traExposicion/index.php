<?php
/* @var $this TraExposicionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Exposicions',
);

$this->menu=array(
	array('label'=>'Create TraExposicion', 'url'=>array('create')),
	array('label'=>'Manage TraExposicion', 'url'=>array('admin')),
);
?>

<h1>Tra Exposicions</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
