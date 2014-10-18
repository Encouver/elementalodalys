<?php
/* @var $this ExposicionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Exposiciones',
);

$this->menu=array(
	array('label'=>'Crear Exposición/Feria', 'url'=>array('create')),
	array('label'=>'Administrar Exposición/Feria', 'url'=>array('admin')),
	array('label'=>'Crear en otro idioma ', 'url'=>array('traExposicion/index')),
);
?>

<h1>Exposiciones/Ferias</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
