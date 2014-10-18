<?php
/* @var $this ExposicionController */
/* @var $model Exposicion */

$this->breadcrumbs=array(
	'Exposicions'=>array('index'),
	$model->idexposicion=>array('view','id'=>$model->idexposicion),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Exposición/Feria', 'url'=>array('index')),
	array('label'=>'Crear Exposición/Feria', 'url'=>array('create')),
	array('label'=>'Ver Exposición/Feria', 'url'=>array('view', 'id'=>$model->idexposicion)),
	array('label'=>'Administrar Exposición/Feria', 'url'=>array('admin')),
);
?>

<h1>Actualizar Exposición/Feria <?php echo $model->idexposicion; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>