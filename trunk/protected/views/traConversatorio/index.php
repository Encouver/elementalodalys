<?php
/* @var $this TraConversatorioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Conversatorios',
);

$this->menu=array(
	array('label'=>'Crear idioma_Conversatorio', 'url'=>array('create')),
	array('label'=>'Administrar idioma_Conversatorio', 'url'=>array('admin')),
	
);
?>

<h1>idioma_Conversatorios</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
