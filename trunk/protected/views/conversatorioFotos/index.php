<?php
/* @var $this ConversatorioFotosController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Conversatorio Fotoses',
);

$this->menu=array(
	array('label'=>'Create ConversatorioFotos', 'url'=>array('create')),
	array('label'=>'Manage ConversatorioFotos', 'url'=>array('admin')),
);
?>

<h1>Conversatorio Fotoses</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
