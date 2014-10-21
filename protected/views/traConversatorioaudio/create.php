<?php
/* @var $this TraConversatorioaudioController */
/* @var $model TraConversatorioaudio */

$this->breadcrumbs=array(
	'Tra Conversatorioaudios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar idioma_Conversatorio audio', 'url'=>array('index')),
	array('label'=>'Administrar idioma_Conversatorio audio', 'url'=>array('admin')),
);
?>

<h1>Crear idioma_Conversatorio audio</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>