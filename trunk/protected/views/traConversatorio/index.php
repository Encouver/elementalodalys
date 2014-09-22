<?php
/* @var $this TraConversatorioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Conversatorios',
);

$this->menu=array(
	array('label'=>'Create TraConversatorio', 'url'=>array('create')),
	array('label'=>'Manage TraConversatorio', 'url'=>array('admin')),
	
);
?>

<h1>Tra Conversatorios</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
