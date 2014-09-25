<?php
/* @var $this TraTextoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Textos',
);

$this->menu=array(
	array('label'=>'Create TraTexto', 'url'=>array('create')),
	array('label'=>'Manage TraTexto', 'url'=>array('admin')),
);
?>

<h1>Tra Textos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
