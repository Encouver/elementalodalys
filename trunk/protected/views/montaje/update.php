<?php
/* @var $this MontajeController */
/* @var $model Montaje */

$this->breadcrumbs=array(
	'Montajes'=>array('index'),
	$model->idmontaje=>array('view','id'=>$model->idmontaje),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Montaje', 'url'=>array('index')),
	array('label'=>'Crear Montaje', 'url'=>array('create')),
	array('label'=>'Ver Montaje', 'url'=>array('view', 'id'=>$model->idmontaje)),
	array('label'=>'Administrar Montaje', 'url'=>array('admin')),
);
?>

<h1>Actualizar Montaje <?php echo $model->idmontaje; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>