<?php
/* @var $this ArtistaPrensaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Artista Prensas',
);

$this->menu=array(
	array('label'=>'Create ArtistaPrensa', 'url'=>array('create')),
	array('label'=>'Manage ArtistaPrensa', 'url'=>array('admin')),
);
?>

<h1>Artista Prensas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
