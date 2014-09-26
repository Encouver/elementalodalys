<?php
/* @var $this ArtistaExpoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Artista Expos',
);

$this->menu=array(
	array('label'=>'Create ArtistaExpo', 'url'=>array('create')),
	array('label'=>'Manage ArtistaExpo', 'url'=>array('admin')),
);
?>

<h1>Artista Expos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
