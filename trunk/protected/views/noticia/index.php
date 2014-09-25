<?php
/* @var $this NoticiaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Noticias',
);

$this->menu=array(
	array('label'=>'Create Noticia', 'url'=>array('create')),
	array('label'=>'Manage Noticia', 'url'=>array('admin')),
	array('label'=>'Create in other languages ', 'url'=>array('traNoticia/index')),
);
?>

<h1>Noticias</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
