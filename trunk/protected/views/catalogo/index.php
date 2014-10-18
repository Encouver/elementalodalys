<?php
/* @var $this CatalogoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Catalogos',
);

$this->menu=array(
	array('label'=>'Crear Catálogo', 'url'=>array('create')),
	array('label'=>'Administrar Catálogo', 'url'=>array('admin')),
);
?>

<h1>Catálogos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
