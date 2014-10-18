<?php
/* @var $this TraArtistaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Artistas',
);

$this->menu=array(
	array('label'=>'Crear idioma_Artista', 'url'=>array('create')),
	array('label'=>'Administrar idioma_Artista', 'url'=>array('admin')),
);
?>

<h1>idioma_Artistas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
