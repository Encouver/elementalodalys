<?php
/* @var $this VerniFiniController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Verni Finis',
);

$this->menu=array(
	array('label'=>'Create VerniFini', 'url'=>array('create')),
	array('label'=>'Manage VerniFini', 'url'=>array('admin')),
);
?>

<h1>Verni Finis</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
