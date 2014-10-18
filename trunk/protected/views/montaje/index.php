<?php
/* @var $this MontajeController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Montajes',
);

$this->menu=array(
	array('label'=>'Crear Montaje', 'url'=>array('create')),
	array('label'=>'Administrar Montaje', 'url'=>array('admin')),
);
?>

<h1>Montajes</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
