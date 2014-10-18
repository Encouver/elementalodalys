<?php
/* @var $this TraAudioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Audios',
);

$this->menu=array(
	array('label'=>'Crear idioma_Audio', 'url'=>array('create')),
	array('label'=>'Administrar idioma_Audio', 'url'=>array('admin')),
);
?>

<h1>Tra Audios</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
