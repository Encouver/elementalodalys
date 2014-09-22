<?php
/* @var $this TraAudioController */
/* @var $model TraAudio */

$this->breadcrumbs=array(
	'Tra Audios'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List TraAudio', 'url'=>array('index')),
	array('label'=>'Create TraAudio', 'url'=>array('create')),
	array('label'=>'View TraAudio', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage TraAudio', 'url'=>array('admin')),
);
?>

<h1>Update TraAudio <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>