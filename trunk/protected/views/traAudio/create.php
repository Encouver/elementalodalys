<?php
/* @var $this TraAudioController */
/* @var $model TraAudio */

$this->breadcrumbs=array(
	'Tra Audios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar idioma_Audio', 'url'=>array('index')),
	array('label'=>'Administrar idioma_Audio', 'url'=>array('admin')),
);
?>

<h1>Crear idioma_Audio</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>