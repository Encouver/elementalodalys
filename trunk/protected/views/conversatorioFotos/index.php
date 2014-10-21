<?php
/* @var $this ConversatorioFotosController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Conversatorio Fotoses',
);

$this->menu=array(
	array('label'=>'Crear ConversatorioFotos', 'url'=>array('create')),
	array('label'=>'Administrar ConversatorioFotos', 'url'=>array('admin')),
);
?>

<h1>Conversatorio Fotos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
