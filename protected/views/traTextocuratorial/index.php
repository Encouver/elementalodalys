<?php
/* @var $this TraTextocuratorialController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Textocuratorials',
);

$this->menu=array(
	array('label'=>'Create TraTextocuratorial', 'url'=>array('create')),
	array('label'=>'Manage TraTextocuratorial', 'url'=>array('admin')),
);
?>

<h1>Tra Textocuratorials</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
