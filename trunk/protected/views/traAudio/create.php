<?php
/* @var $this TraAudioController */
/* @var $model TraAudio */

$this->breadcrumbs=array(
	'Tra Audios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TraAudio', 'url'=>array('index')),
	array('label'=>'Manage TraAudio', 'url'=>array('admin')),
);
?>

<h1>Create TraAudio</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>