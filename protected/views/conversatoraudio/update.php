<?php
/* @var $this ConversatoraudioController */
/* @var $model Conversatoraudio */

$this->breadcrumbs=array(
	'Conversatoraudios'=>array('index'),
	$model->idaudio=>array('view','id'=>$model->idaudio),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Conversatorio audio', 'url'=>array('index')),
	array('label'=>'Crear Conversatorio audio', 'url'=>array('create')),
	array('label'=>'Ver Conversatorio audio', 'url'=>array('view', 'id'=>$model->idaudio)),
	array('label'=>'Administrar Conversatorio audio', 'url'=>array('admin')),
);
?>

<h1>Actualizar Conversatorio audio <?php echo $model->idaudio; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>