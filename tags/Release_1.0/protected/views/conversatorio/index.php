<?php
/* @var $this ConversatorioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Conversatorios',
);

$this->menu=array(
	array('label'=>'Create Conversatorio', 'url'=>array('create')),
	array('label'=>'Manage Conversatorio', 'url'=>array('admin')),
	array('label'=>'Create in other languages ', 'url'=>array('traConversatorio/index')),
);
?>

<h1>Conversatorios</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
