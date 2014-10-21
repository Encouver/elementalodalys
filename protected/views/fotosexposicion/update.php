<?php
/* @var $this FotosexposicionController */
/* @var $model Fotosexposicion */

$this->breadcrumbs=array(
	'Fotosexposicions'=>array('index'),
	$model->idfotosexposicion=>array('view','id'=>$model->idfotosexposicion),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Fotosexposicion', 'url'=>array('index')),
	array('label'=>'Crear Fotosexposicion', 'url'=>array('create')),
	array('label'=>'Ver Fotosexposicion', 'url'=>array('view', 'id'=>$model->idfotosexposicion)),
	array('label'=>'Administrar Fotosexposicion', 'url'=>array('admin')),
);
?>

<h1>Actualizar Fotosexposicion <?php echo $model->idfotosexposicion; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>