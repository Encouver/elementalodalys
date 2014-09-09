<?php
/* @var $this ArtistaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Artistas',
);

$this->menu=array(
	array('label'=>'Create Artista', 'url'=>array('create')),
	array('label'=>'Manage Artista', 'url'=>array('admin')),
);
?>

<h1>Artistas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
