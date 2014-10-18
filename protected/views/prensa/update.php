<?php
/* @var $this PrensaController */
/* @var $model Prensa */

$this->breadcrumbs=array(
	'Prensas'=>array('index'),
	$model->idprensa=>array('view','id'=>$model->idprensa),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Prensa', 'url'=>array('index')),
	array('label'=>'Crear Prensa', 'url'=>array('create')),
	array('label'=>'Ver Prensa', 'url'=>array('view', 'id'=>$model->idprensa)),
	array('label'=>'Administrar Prensa', 'url'=>array('admin')),
);
?>

<h1>Actualizar Prensa <?php echo $model->idprensa; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>