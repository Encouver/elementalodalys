<?php
/* @var $this TextocuratorialController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Textocuratorials',
);

$this->menu=array(
	array('label'=>'Crear Texto curatorial', 'url'=>array('create')),
	array('label'=>'Administrar Texto curatorial', 'url'=>array('admin')),
	array('label'=>'Crear en otro idioma', 'url'=>array('traTextocuratorial/index')),

);
?>

<h1>Textos curatoriales</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
