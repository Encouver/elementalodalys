<?php
/* @var $this TraNoticiaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Noticias',
);

$this->menu=array(
	array('label'=>'Crear idioma_Noticia', 'url'=>array('create')),
	array('label'=>'Administrar idioma_Noticia', 'url'=>array('admin')),
);
?>

<h1>idioma_Noticias</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
