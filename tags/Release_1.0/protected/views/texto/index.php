<?php
/* @var $this TextoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Textos',
);

$this->menu=array(
	array('label'=>'Create Texto', 'url'=>array('create')),
	array('label'=>'Manage Texto', 'url'=>array('admin')),
	array('label'=>'Create in other languages ', 'url'=>array('traTexto/index')),

);
?>

<h1>Textos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
