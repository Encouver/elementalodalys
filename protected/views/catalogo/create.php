<?php
/* @var $this CatalogoController */
/* @var $model Catalogo */

$this->breadcrumbs=array(
	'Catalogos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Catálogo', 'url'=>array('index')),
	array('label'=>'Administrar Catálogo', 'url'=>array('admin')),
);
?>

<h1>Crear Catálogo</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>