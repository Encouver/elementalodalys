<?php
/* @var $this TraPrensaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Prensas',
);

$this->menu=array(
	array('label'=>'Create TraPrensa', 'url'=>array('create')),
	array('label'=>'Manage TraPrensa', 'url'=>array('admin')),
);
?>

<h1>Tra Prensas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
