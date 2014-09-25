<?php
/* @var $this PrensaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Prensas',
);

$this->menu=array(
	array('label'=>'Create Prensa', 'url'=>array('create')),
	array('label'=>'Manage Prensa', 'url'=>array('admin')),
	array('label'=>'Create in other languages ', 'url'=>array('traPrensa/index')),
);
?>

<h1>Prensas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
