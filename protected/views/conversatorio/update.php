<?php
/* @var $this ConversatorioController */
/* @var $model Conversatorio */

$this->breadcrumbs=array(
	'Conversatorios'=>array('index'),
	$model->idconversatorio=>array('view','id'=>$model->idconversatorio),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Conversatorio', 'url'=>array('index')),
	array('label'=>'Crear Conversatorio', 'url'=>array('create')),
	array('label'=>'Ver Conversatorio', 'url'=>array('view', 'id'=>$model->idconversatorio)),
	array('label'=>'Administrar Conversatorio', 'url'=>array('admin')),
);
?>

<h1>Actualizar Conversatorio <?php echo $model->idconversatorio; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>