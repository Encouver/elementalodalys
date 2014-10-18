<?php
/* @var $this TextoController */
/* @var $model Texto */

$this->breadcrumbs=array(
	'Textos'=>array('index'),
	$model->idtexto=>array('view','id'=>$model->idtexto),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Texto', 'url'=>array('index')),
	array('label'=>'Crear Texto', 'url'=>array('create')),
	array('label'=>'Ver Texto', 'url'=>array('view', 'id'=>$model->idtexto)),
	array('label'=>'Administrar Texto', 'url'=>array('admin')),
);
?>

<h1>Actualizar Texto <?php echo $model->idtexto; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>