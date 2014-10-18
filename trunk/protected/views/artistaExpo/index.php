<?php
/* @var $this ArtistaExpoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Artista Expos',
);

$this->menu=array(
	array('label'=>'Crear Artista - Expo/Feria', 'url'=>array('create')),
	array('label'=>'Administrar Artista - Expo/Feria', 'url'=>array('admin')),
);
?>

<h1>Artista - Expo/Feria</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
