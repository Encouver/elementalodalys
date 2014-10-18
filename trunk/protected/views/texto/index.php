<?php
/* @var $this TextoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Textos',
);

$this->menu=array(
	array('label'=>'Crear Texto', 'url'=>array('create')),
	array('label'=>'Administrar Texto', 'url'=>array('admin')),
	array('label'=>'Crear en otro idioma', 'url'=>array('traTexto/index')),

);
?>

<h1>Textos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
