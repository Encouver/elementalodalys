<?php
/* @var $this TraExposicionController */
/* @var $model TraExposicion */

$this->breadcrumbs=array(
	'Tra Exposicions'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar idioma_Exposición/Feria', 'url'=>array('index')),
	array('label'=>'Crear idioma_Exposición/Feria', 'url'=>array('create')),
	array('label'=>'Ver idioma_Exposición/Feria', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Administrar idioma_Exposición/Feria', 'url'=>array('admin')),
);
?>

<h1>Actualizar idioma_Exposición/Feria <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>