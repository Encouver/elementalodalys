<?php
/* @var $this AudioController */
/* @var $model Audio */

$this->breadcrumbs=array(
	'Audios'=>array('index'),
	$model->idaudio=>array('view','id'=>$model->idaudio),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Audio', 'url'=>array('index')),
	array('label'=>'Crear Audio', 'url'=>array('create')),
	array('label'=>'Ver Audio', 'url'=>array('view', 'id'=>$model->idaudio)),
	array('label'=>'Administrar Audio', 'url'=>array('admin')),
);
?>

<h1>Actualizar Audio <?php echo $model->idaudio; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>