<?php
/* @var $this TraAudioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tra Audios',
);

$this->menu=array(
	array('label'=>'Create TraAudio', 'url'=>array('create')),
	array('label'=>'Manage TraAudio', 'url'=>array('admin')),
);
?>

<h1>Tra Audios</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
