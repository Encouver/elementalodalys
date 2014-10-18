<?php
/* @var $this TraTextoController */
/* @var $model TraTexto */

$this->breadcrumbs=array(
	'Tra Textos'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar idioma_Texto', 'url'=>array('index')),
	array('label'=>'Crear idioma_Texto', 'url'=>array('create')),
	array('label'=>'Ver idioma_Texto', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Administrar idioma_Texto', 'url'=>array('admin')),
);
?>

<h1>Actualizar idioma_Texto <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>