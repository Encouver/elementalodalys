<?php
/* @var $this TraConversatorioaudioController */
/* @var $model TraConversatorioaudio */

$this->breadcrumbs=array(
	'Tra Conversatorioaudios'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar idioma_Conversatorio audio', 'url'=>array('index')),
	array('label'=>'Crear idioma_Conversatorio audio', 'url'=>array('create')),
	array('label'=>'Ver idioma_Conversatorio audio', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Administrar idioma_Conversatorio audio', 'url'=>array('admin')),
);
?>

<h1>Actualizar idioma_Conversatorio audio <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>