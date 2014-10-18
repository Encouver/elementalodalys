<?php
/* @var $this ObraController */
/* @var $model Obra */

$this->breadcrumbs=array(
	'Obras'=>array('index'),
	$model->idobra=>array('view','id'=>$model->idobra),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Obra', 'url'=>array('index')),
	array('label'=>'Crear Obra', 'url'=>array('create')),
	array('label'=>'Ver Obra', 'url'=>array('view', 'id'=>$model->idobra)),
	array('label'=>'Administrar Obra', 'url'=>array('admin')),
);
?>

<h1>Actualizar Obra <?php echo $model->idobra; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>