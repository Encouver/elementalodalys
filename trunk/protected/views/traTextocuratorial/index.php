<?php
/* @var $this TraTextocuratorialController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Textocuratorials',
);

$this->menu=array(
	array('label'=>'Crear idioma_TextoCuratorial', 'url'=>array('create')),
	array('label'=>'Administrar idioma_TextoCuratorial', 'url'=>array('admin')),
);
?>

<h1>idioma_TextosCuratoriales</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
