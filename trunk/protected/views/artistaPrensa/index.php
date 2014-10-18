<?php
/* @var $this ArtistaPrensaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Artista Prensas',
);

$this->menu=array(
	array('label'=>'Crear Artista - Prensa', 'url'=>array('create')),
	array('label'=>'Administrar Artista - Prensa', 'url'=>array('admin')),
);
?>

<h1>Artista - Prensa</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
