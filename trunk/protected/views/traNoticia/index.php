<?php
/* @var $this TraNoticiaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Noticias',
);

$this->menu=array(
	array('label'=>'Create TraNoticia', 'url'=>array('create')),
	array('label'=>'Manage TraNoticia', 'url'=>array('admin')),
);
?>

<h1>Tra Noticias</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
