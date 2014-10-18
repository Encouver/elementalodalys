<?php
/* @var $this TraAudioController */
/* @var $model TraAudio */

$this->breadcrumbs=array(
	'Tra Audios'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar idioma_Audio', 'url'=>array('index')),
	array('label'=>'Crear idioma_Audio', 'url'=>array('create')),
	array('label'=>'Ver idioma_Audio', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Administrar idioma_Audio', 'url'=>array('admin')),
);
?>

<h1>Actualizar idioma_Audio <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>