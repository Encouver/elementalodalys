<?php
/* @var $this ConversatoraudioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Conversatoraudios',
);

$this->menu=array(
	array('label'=>'Crear Conversatorio audio', 'url'=>array('create')),
	array('label'=>'Administrar Conversatorio audio', 'url'=>array('admin')),
	array('label'=>'Crear en otro idioma', 'url'=>array('traAudio/index')),

);
?>

<h1>Conversatorios audios</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
