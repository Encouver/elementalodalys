<?php
/* @var $this ConversatorioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Conversatorios',
);

$this->menu=array(
	array('label'=>'Crear Conversatorio', 'url'=>array('create')),
	array('label'=>'Administrar Conversatorio', 'url'=>array('admin')),
	array('label'=>'Crear en otro idioma', 'url'=>array('traConversatorio/index')),
);
?>

<h1>Conversatorios</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
