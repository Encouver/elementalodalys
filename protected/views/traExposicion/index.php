<?php
/* @var $this TraExposicionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Exposicions',
);

$this->menu=array(
	array('label'=>'Crear idioma_Exposición/Feria', 'url'=>array('create')),
	array('label'=>'Administrar idioma_Exposición/Feria', 'url'=>array('admin')),
);
?>

<h1>idioma_Exposiciones/Ferias</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
