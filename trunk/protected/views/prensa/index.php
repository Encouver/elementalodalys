<?php
/* @var $this PrensaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Prensas',
);

$this->menu=array(
	array('label'=>'Crear Prensa', 'url'=>array('create')),
	array('label'=>'Administrar Prensa', 'url'=>array('admin')),
	array('label'=>'Crear en otro idioma', 'url'=>array('traPrensa/index')),
	array('label'=>'Asociar prensa a artista ', 'url'=>array('artistaPrensa/index')),

);
?>

<h1>Prensas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
