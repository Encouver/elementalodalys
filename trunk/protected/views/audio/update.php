<?php
/* @var $this AudioController */
/* @var $model Audio */

$this->breadcrumbs=array(
	'Audios'=>array('index'),
	$model->idaudio=>array('view','id'=>$model->idaudio),
	'Update',
);

$this->menu=array(
	array('label'=>'List Audio', 'url'=>array('index')),
	array('label'=>'Create Audio', 'url'=>array('create')),
	array('label'=>'View Audio', 'url'=>array('view', 'id'=>$model->idaudio)),
	array('label'=>'Manage Audio', 'url'=>array('admin')),
);
?>

<h1>Update Audio <?php echo $model->idaudio; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>