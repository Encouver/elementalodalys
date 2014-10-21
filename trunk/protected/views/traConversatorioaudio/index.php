<?php
/* @var $this TraConversatorioaudioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Conversatorioaudios',
);

$this->menu=array(
	array('label'=>'Create idioma_Conversatorio audio', 'url'=>array('create')),
	array('label'=>'Administrar idioma_Conversatorio audio', 'url'=>array('admin')),
);
?>

<h1>idioma_Conversatorio audio</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
