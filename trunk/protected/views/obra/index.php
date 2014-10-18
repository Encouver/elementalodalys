<?php
/* @var $this ObraController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Obras',
);

$this->menu=array(
	array('label'=>'Crear Obra', 'url'=>array('create')),
	array('label'=>'Administrar Obra', 'url'=>array('admin')),
);
?>

<h1>Obras</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
