<?php
/* @var $this VerniFiniController */
/* @var $model VerniFini */

$this->breadcrumbs=array(
	'Verni Finis'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar VerniFini', 'url'=>array('index')),
	array('label'=>'Administrar VerniFini', 'url'=>array('admin')),
);
?>

<h1>Crear VerniFini</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>