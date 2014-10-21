<?php
/* @var $this FotosexposicionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Fotosexposicions',
);

$this->menu=array(
	array('label'=>'Crear Fotosexposicion', 'url'=>array('create')),
	array('label'=>'Administrar Fotosexposicion', 'url'=>array('admin')),
);
?>

<h1>Fotos exposición</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
