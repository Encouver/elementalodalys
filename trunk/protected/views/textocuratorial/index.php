<?php
/* @var $this TextocuratorialController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Textocuratorials',
);

$this->menu=array(
	array('label'=>'Create Textocuratorial', 'url'=>array('create')),
	array('label'=>'Manage Textocuratorial', 'url'=>array('admin')),
	array('label'=>'Create in other languages ', 'url'=>array('traTextocuratorial/index')),

);
?>

<h1>Textocuratorials</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
