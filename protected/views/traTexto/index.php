<?php
/* @var $this TraTextoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Textos',
);

$this->menu=array(
	array('label'=>'Crear idioma_Texto', 'url'=>array('create')),
	array('label'=>'Administrar idioma_Texto', 'url'=>array('admin')),
);
?>

<h1>idioma_Textos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
