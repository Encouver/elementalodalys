<?php
/* @var $this TraArtistaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Artistas',
);

$this->menu=array(
	array('label'=>'Create TraArtista', 'url'=>array('create')),
	array('label'=>'Manage TraArtista', 'url'=>array('admin')),
);
?>

<h1>Tra Artistas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
