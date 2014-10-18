<?php
/* @var $this CatalogoController */
/* @var $model Catalogo */

$this->breadcrumbs=array(
	'Catalogos'=>array('index'),
	$model->idcatalogo=>array('view','id'=>$model->idcatalogo),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Catálogo', 'url'=>array('index')),
	array('label'=>'Crear Catálogo', 'url'=>array('create')),
	array('label'=>'Ver Catálogo', 'url'=>array('view', 'id'=>$model->idcatalogo)),
	array('label'=>'Administrar Catálogo', 'url'=>array('admin')),
);
?>

<h1>Actualizar Catálogo <?php echo $model->idcatalogo; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>