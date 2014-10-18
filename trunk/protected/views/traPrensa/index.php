<?php
/* @var $this TraPrensaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Prensas',
);

$this->menu=array(
	array('label'=>'Crear idioma_Prensa', 'url'=>array('create')),
	array('label'=>'Administrar idioma_Prensa', 'url'=>array('admin')),
);
?>

<h1>idioma_Prensas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
