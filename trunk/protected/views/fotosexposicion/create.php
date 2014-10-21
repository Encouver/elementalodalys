<?php
/* @var $this FotosexposicionController */
/* @var $model Fotosexposicion */

$this->breadcrumbs=array(
	'Fotosexposicions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Fotosexposicion', 'url'=>array('index')),
	array('label'=>'Administrar Fotosexposicion', 'url'=>array('admin')),
);
?>

<h1>Crear Fotosexposicion</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>